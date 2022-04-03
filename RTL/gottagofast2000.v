/*
GottaGoFastRAMZ2 - Zorro 2 8MB Autoconfig FastRAM for Amiga 2000
Copyright 2021 Matthew Harlum

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

*/

// Config defines
`ifndef makefile_defines
`define SERIAL 32'd421
`define PRODID 8'02

`define autoconfig  // If disabled RAM is always mapped to $200000-9FFFFF
//`define Offer_6M  // If told to shutup when offering 8MB, offer up a 2MB and also 4MB block next (useful with an A590/2091)
`endif
module gottagofast2000(
    input C1n,
    input C3n,
    input CDAC,
    input DOE,
    input RESETn,
    input CFGINn,
    input UDSn,
    input LDSn,
    input ASn,
    input RWn,
    input J4MB,
    input BERRn,
    input [23:1] ADDR,
    inout [15:12] DBUS,
    output reg [9:0] MADDR,
    output reg CFGOUTn,
    output RAS1n,
    output RAS2n,
    output RAS3n,
    output RAS4n,
    output UCASn,
    output LCASn,
    output OEn,
    output SLAVEn,
    output MEMWn,
    output reg DTACKn,
    output OVRn
    );


wire CLK;
assign CLK = !(C1n ^ C3n); // Generate 7MHz clock from C1n XOR C3n

wire autoconfig_cycle;
`ifndef autoconfig
assign autoconfig_cycle = 0;
`else
// Autoconfig
localparam [15:0] mfg_id  = 16'h07DB;
localparam [7:0]  prod_id = `PRODID;
localparam [31:0] serial = `SERIAL;

reg [7:0] addr_match;
reg CFGINnr;
reg shutup;
reg configured;
reg [2:0] autoconfig_state;
reg [3:0] data_out;

localparam   Offer_8M = 3'b000,
// If offering 2MB + 4MB blocks you need to offer the 2MB block first
// This is because of a kickstart bug where the memory config overflows if there is already 2MB configured before another 4MB then 2MB is configured...
`ifdef Offer_6M
        Offer_2M = 3'b001,
        Offer_4M = 3'b010,
`else
        Offer_4M = 3'b001,
        Offer_2M = 3'b010,
`endif
        Offer_1M = 3'b011,
        SHUTUP   = 3'b100;

assign DBUS[15:12] = (autoconfig_cycle & RWn & !ASn & !UDSn) ? data_out[3:0] : 4'bZ;

assign autoconfig_cycle = (ADDR[23:16] == 8'hE8) & !CFGINnr & CFGOUTn;

// Register Config in/out at end of bus cycle
always @(posedge ASn or negedge RESETn)
begin
  if (!RESETn) begin
    CFGOUTn <= 1'b1;
    CFGINnr <= 1'b1;
  end else begin
    CFGOUTn <= !shutup;
    CFGINnr <= CFGINn;
  end
end

// Offers an 8MB block first, if there's no space offer 4MB, 2MB then 1MB before giving up
always @(negedge UDSn or negedge RESETn)
begin
  if (!RESETn) begin
    data_out <= 'bZ;
    configured <= 1'b0;
    shutup <= 1'b0;
    addr_match <= 8'b00000000;

//`ifdef Offer_6M
//  autoconfig_state <= Offer_8M;
//`else
    if (!J4MB) begin
      autoconfig_state <= Offer_4M;
    end else begin
      autoconfig_state <= Offer_8M;
    end
//`endif
  end else if (autoconfig_cycle & RWn) begin
    case (ADDR[8:1])
      8'h00:   data_out <= 4'b1110;        // Type: Zorro II, link to free pool
      8'h01:
        case (autoconfig_state)
          Offer_8M: data_out <= 4'b0000;
          Offer_4M: data_out <= 4'b0111;
          Offer_2M: data_out <= 4'b0110;
          Offer_1M: data_out <= 4'b0101;
          default:  data_out <= 4'b0000;
        endcase
      8'h02:   data_out <= ~prod_id[7:4];  // Product number
      8'h03:   data_out <= ~prod_id[3:0];  // Product number
      8'h04:   data_out <= ~4'b1000;       // Place in 8M Space
      8'h05:   data_out <= ~4'b0000;       // Logical size matches physical size
      8'h08:   data_out <= ~mfg_id[15:12]; // Manufacturer ID
      8'h09:   data_out <= ~mfg_id[11:8];  // Manufacturer ID
      8'h0A:   data_out <= ~mfg_id[7:4];   // Manufacturer ID
      8'h0B:   data_out <= ~mfg_id[3:0];   // Manufacturer ID
      8'h0C:   data_out <= ~serial[31:28]; // Serial number
      8'h0D:   data_out <= ~serial[27:24]; // Serial number
      8'h0E:   data_out <= ~serial[23:20]; // Serial number
      8'h0F:   data_out <= ~serial[19:16]; // Serial number
      8'h10:   data_out <= ~serial[15:12]; // Serial number
      8'h11:   data_out <= ~serial[11:8];  // Serial number
      8'h12:   data_out <= ~serial[7:4];   // Serial number
      8'h13:   data_out <= ~serial[3:0];   // Serial number
      default: data_out <= 4'hF;
    endcase
  end else if (autoconfig_cycle & !ASn & !RWn) begin
    if (ADDR[8:1] == 8'h26) begin
      // We've been told to shut up (not enough memory space)
      // Try offering a smaller block
      if (autoconfig_state >= SHUTUP-1) begin
        // All options exhausted - time to shut up!
        shutup <= 1;
        autoconfig_state <= SHUTUP;
      end else begin
        // Offer the next smallest block
        autoconfig_state <= autoconfig_state + 1;
      end
    end
    else if (ADDR[8:1] == 8'h24) begin
      // Configure the memory block assigned to us by the Amiga
      //
      // addr_match is an array of 1MB blocks.
      // This is so the card can make multiple offers to Autoconfig & accept multiple address allocations at the same time
      // i.e to facilitate a 6MB config by appearing as a 2MB card and a 4MB card.
      case (autoconfig_state)
        Offer_8M:
          begin
            addr_match <= 8'hFF;
            shutup     <= 1'b1;
          end
        Offer_4M:
          begin
            case(DBUS)
              4'h2:    addr_match <= (addr_match|8'b00001111);
              4'h4:    addr_match <= (addr_match|8'b00111100);
              4'h6:    addr_match <= (addr_match|8'b11110000);
            endcase
            shutup     <= 1'b1;
          end
        Offer_2M:
          begin
            case(DBUS)
              4'h2:    addr_match <= (addr_match|8'b00000011);
              4'h4:    addr_match <= (addr_match|8'b00001100);
              4'h6:    addr_match <= (addr_match|8'b00110000);
              4'h8:    addr_match <= (addr_match|8'b11000000);
            endcase
            `ifdef Offer_6M
            autoconfig_state <= Offer_4M;
            `else
            shutup     <= 1'b1;
            `endif
          end
        Offer_1M:
          begin
            case(DBUS)
              4'h2:    addr_match <= (addr_match|8'b00000001);
              4'h3:    addr_match <= (addr_match|8'b00000010);
              4'h4:    addr_match <= (addr_match|8'b00000100);
              4'h5:    addr_match <= (addr_match|8'b00001000);
              4'h6:    addr_match <= (addr_match|8'b00010000);
              4'h7:    addr_match <= (addr_match|8'b00100000);
              4'h8:    addr_match <= (addr_match|8'b01000000);
              4'h9:    addr_match <= (addr_match|8'b10000000);
            endcase
            shutup     <= 1'b1;
          end
        default:  addr_match <= 8'b0;
      endcase
      configured <= 1'b1;
    end
  end
end

`endif

// Memory controller

reg ram_cycle;
reg access_ras;
reg access_ucas;
reg access_lcas;
reg refresh_ras;
reg refresh_cas;
wire ram_addrmatched;

`ifdef autoconfig
assign ram_addrmatched = (
      ((ADDR[23:20] == 4'h2) & addr_match[0]) |
      ((ADDR[23:20] == 4'h3) & addr_match[1]) |
      ((ADDR[23:20] == 4'h4) & addr_match[2]) |
      ((ADDR[23:20] == 4'h5) & addr_match[3]) |
      ((ADDR[23:20] == 4'h6) & addr_match[4]) |
      ((ADDR[23:20] == 4'h7) & addr_match[5]) |
      ((ADDR[23:20] == 4'h8) & addr_match[6]) |
      ((ADDR[23:20] == 4'h9) & addr_match[7])
      ) & configured;
`else
assign ram_addrmatched = ((ADDR[23:20] >= 4'h2) & (ADDR[23:20] <= 4'h9));
`endif

assign RAS1n = !((ADDR[22:21] == 2'b01 & access_ras) | (refresh_ras & refresh_cas)); // $200000-3FFFFF
assign RAS2n = !((ADDR[22:21] == 2'b10 & access_ras) | (refresh_ras & refresh_cas)); // $400000-5FFFFF
assign RAS3n = !((ADDR[22:21] == 2'b11 & access_ras) | (refresh_ras & refresh_cas)); // $600000-7FFFFF
assign RAS4n = !((ADDR[22:21] == 2'b00 & access_ras) | (refresh_ras & refresh_cas)); // $800000-9FFFFF

assign UCASn = !(access_ucas | refresh_cas);
assign LCASn = !(access_lcas | refresh_cas);

// Buffer enables early on writes to ensure timing is met otherwise not until DOE is asserted.
assign OEn   = !(!RWn | ((autoconfig_cycle | ram_cycle) & !ASn & DOE & BERRn) & RESETn);

// DOE doesn't get asserted by Buster until the access cycle is in the correct phase with C1/Custom chips
// For some reason this seems to sometimes assert late into S6 which doesn't give enough time to 
// propogate from the RAM through the buffers
// So we need hold off DTACK using ASq (internally generated DOE) instead of ASn.
//
// This is known to solve issues GadgetUK164 was experiencing with this card, and the odd crash I experienced.
//
// ASNq valid from middle of S3 which means no waitstates.
// Using DOE instead of ASNq would cause a waitstate as DOE is not active until S4 rise
reg C2;
reg ASq;

// Generate C2 Clock
always @(negedge CDAC) begin
  C2 <= !C1n;
end

// Qualify ASn with C2
always @(posedge C2 or posedge ASn) begin
  if (ASn)
    ASq <= 1;
  else
    ASq <= ASn;
end

assign dtack_enable = (ram_addrmatched & !ASq);

// OVRn/DTACKn go through an open-collector buffer so no need to tristate here.
always @(posedge CLK or posedge ASn)
begin
  if (ASn) begin
    DTACKn <= 1;
  end else begin
    if (dtack_enable)
      DTACKn <= 0;
  end
end

assign OVRn   = !(ram_addrmatched & !ASn);

assign SLAVEn = !((autoconfig_cycle | ram_addrmatched) & !ASn);
assign MEMWn  = refresh_cas | RWn; // Write should be high for CBR refresh

// CAS before RAS refresh
// CAS Asserted in S1 & S2
// RAS Asserted in S2
always @(negedge CLK or negedge RESETn)
begin
  if (!RESETn) begin
    refresh_cas <= 1'b0;
  end else begin
    refresh_cas <= (!refresh_cas & ASn & !access_ras);
  end
end

always @(posedge CLK or negedge RESETn)
begin
  if (!RESETn) begin
    refresh_ras <= 1'b0;
  end else begin
    refresh_ras <= refresh_cas;
  end
end


// Memory access
always @(negedge CLK or negedge RESETn)
begin
  if (!RESETn) begin
    ram_cycle <= 1'b0;
  end else begin
    ram_cycle <= ram_addrmatched & !ASn;
  end
end

always @(posedge CLK or posedge ASn)
begin
  if (ASn) begin
    access_ras  <= 1'b0;
  end else begin
    access_ras  <= (ram_cycle); // Assert @ S4, Deassert @ S7
  end
end

always @(negedge CLK or posedge ASn)
begin
  if (ASn) begin
    access_ucas <= 1'b0;
    access_lcas <= 1'b0;
  end else begin
    access_ucas <= (access_ras & !UDSn); // Assert @ S5, Deassert @ S7
    access_lcas <= (access_ras & !LDSn); // Assert @ S5, Deassert @ S7
  end
end

// Row/Col mux
// Switches from Row to Column in the middle of S4
always @(posedge CDAC)
begin
  if (!access_ras) begin
    MADDR[9:0]  <= ADDR[20:11]; // Row Address
  end else begin
    MADDR[9:0]  <= ADDR[10:1];  // Column Address
  end
end

endmodule
