PROJECT=gottagofast2000
PART=XC9572XL-10-TQ100
WORKDIR=tmp
BINDIR=../Binary

DEFINES=autoconfig

SERIAL=$(shell git rev-parse --short=8 HEAD)
PRODID=69

CABLE=usb21

CPLDFITFLAGS=-loc on -slew slow -init low -terminate keeper -nogclkopt -nogtsopt -nogsropt -power std -ignoretspec -optimize speed -keepio -inputs 54 -pterms 25

.PHONY:	all clean

all:	$(BINDIR)/$(PROJECT).jed

$(PROJECT).prj:
	@echo verilog work $(PROJECT).v > $@

$(WORKDIR)/$(PROJECT).ngc:	$(PROJECT).v $(PROJECT).prj
	@mkdir $(WORKDIR) || true
	@sed -r "s#^(-top).*#\1 $(PROJECT)#g;s#^(-ofn).*#\1 ..\/$@#g;s#^(-ifn).*#\1 ../$(PROJECT).prj#g;s#^(-define).*#\1 {makefile_defines $(DEFINES) SERIAL=32'h${SERIAL} PRODID=${PRODID}}#g" template.xst > $@.xst
	cd $(WORKDIR) && xst -ifn ../$@.xst -ofn $(PROJECT)-xst.log

$(WORKDIR)/$(PROJECT)-6MB.ngc:	$(PROJECT).v $(PROJECT).prj
	@mkdir $(WORKDIR) || true
	@sed -r "s#^(-top).*#\1 $(PROJECT)#g;s#^(-ofn).*#\1 ..\/$@#g;s#^(-ifn).*#\1 ../$(PROJECT).prj#g;s#^(-define).*#\1 {makefile_defines $(DEFINES) SERIAL=32'h${SERIAL} PRODID=${PRODID} Offer_6M}#g" template.xst > $@.xst
	cd $(WORKDIR) && xst -ifn ../$@.xst -ofn $(PROJECT)-xst.log

$(WORKDIR)/%.ngd:	$(WORKDIR)/%.ngc $(PROJECT).ucf
	cd $(WORKDIR) && ngdbuild -p $(PART) -uc ../$(PROJECT).ucf ../$< ../$@

$(WORKDIR)/%.vm6:	$(WORKDIR)/%.ngd $(PROJECT).ucf
	cd $(WORKDIR) && cpldfit $(CPLDFITFLAGS) -p $(PART) ../$<

$(WORKDIR)/%.tim:	$(WORKDIR)/%.vm6
	cd $(WORKDIR) && taengine -l ../$@ -f $(PROJECT)

%.jed:	$(WORKDIR)/%.vm6
	hprep6 -i $<

$(BINDIR)/%.jed: %.jed
	cp $< $(BINDIR)

timing:	$(WORKDIR)/$(PROJECT).tim

fit:	$(WORKDIR)/$(PROJECT).vm6

clean:
	- rm -rvf tmp
	- rm -fv *.jed
	- rm -fv *.prj

cleanjeds:
	- @rm -fv $(BINDIR)/*.jed

flash:	$(PROJECT).jed
	@echo "setMode -bs\n"\
	"setCable -p $(CABLE)\n"\
	"identify\n"\
	"assignfile -p 1 -file $<\n"\
	"erase -p 1\n"\
	"program -p 1\n"\
	"verify -p 1\n"\
	"exit" > tmp/batch
	LD_PRELOAD=/opt/Xilinx/usb-driver/libusb-driver.so impact -batch tmp/batch

flash-6MB:	$(PROJECT)-6MB.jed
	@echo "setMode -bs\n"\
	"setCable -p $(CABLE)\n"\
	"identify\n"\
	"assignfile -p 1 -file $<\n"\
	"erase -p 1\n"\
	"program -p 1\n"\
	"verify -p 1\n"\
	"exit" > tmp/batch
	LD_PRELOAD=/opt/Xilinx/usb-driver/libusb-driver.so impact -batch tmp/batch
