PROJECT=gottagofast2000
PART=XC9572XL
PART2=XC95144XL
SPEED=10
PACKAGE=TQ100
WORKDIR=tmp
BINDIR=../Binary

DEFINES=autoconfig

SERIAL=$(shell git rev-parse --short=8 HEAD)
PRODID=69

CABLE=usb21

CPLDFITFLAGS=-loc on -slew slow -init low -terminate keeper -nogclkopt -nogtsopt -nogsropt -power std -ignoretspec -optimize speed -keepio -inputs 54 -pterms 25

.PHONY:	all clean 9572 95144

all:	$(BINDIR)/$(PART)/$(PROJECT).jed $(BINDIR)/$(PART)/$(PROJECT)-6MB.jed $(BINDIR)/$(PART2)/$(PROJECT).jed $(BINDIR)/$(PART2)/$(PROJECT)-6MB.jed

9572:	$(BINDIR)/$(PART)/$(PROJECT).jed $(BINDIR)/$(PART)/$(PROJECT)-6MB.jed
95144:	$(BINDIR)/$(PART2)/$(PROJECT).jed $(BINDIR)/$(PART2)/$(PROJECT)-6MB.jed

$(PROJECT).prj:
	@echo verilog work $(PROJECT).v > $@

$(WORKDIR)/$(PROJECT).ngc:	$(PROJECT).v $(PROJECT).prj
	-@mkdir -p $(WORKDIR)/$(PART)
	-@mkdir -p $(WORKDIR)/$(PART2)
	@sed -r "s#^(-top).*#\1 $(PROJECT)#g;s#^(-ofn).*#\1 ..\/$@#g;s#^(-ifn).*#\1 ../$(PROJECT).prj#g;s#^(-define).*#\1 {makefile_defines $(DEFINES) SERIAL=32'h${SERIAL} PRODID=${PRODID}}#g" template.xst > $@.xst
	cd $(WORKDIR) && xst -ifn ../$@.xst -ofn $(PROJECT)-xst.log

$(WORKDIR)/$(PROJECT)-6MB.ngc:	$(PROJECT).v $(PROJECT).prj
	-@mkdir -p $(WORKDIR)/$(PART)
	-@mkdir -p $(WORKDIR)/$(PART2)
	@sed -r "s#^(-top).*#\1 $(PROJECT)#g;s#^(-ofn).*#\1 ..\/$@#g;s#^(-ifn).*#\1 ../$(PROJECT).prj#g;s#^(-define).*#\1 {makefile_defines $(DEFINES) SERIAL=32'h${SERIAL} PRODID=${PRODID} Offer_6M}#g" template.xst > $@.xst
	cd $(WORKDIR) && xst -ifn ../$@.xst -ofn $(PROJECT)-xst.log

$(WORKDIR)/$(PART)/%.ngd:	$(WORKDIR)/%.ngc $(PROJECT).ucf
	cd $(WORKDIR)/$(PART) && ngdbuild -p $(PART)-$(SPEED)-$(PACKAGE) -uc ../../$(PROJECT).ucf ../../$< ../../$@

$(WORKDIR)/$(PART)/%.vm6:	$(WORKDIR)/$(PART)/%.ngd $(PROJECT).ucf
	cd $(WORKDIR)/$(PART) && cpldfit $(CPLDFITFLAGS) -p $(PART)-$(SPEED)-$(PACKAGE) ../../$<

$(WORKDIR)/$(PART)/%.jed:	$(WORKDIR)/$(PART)/%.vm6
	cd $(WORKDIR)/$(PART) && hprep6 -i ../../$<

#	Build also for XC95144XL
$(WORKDIR)/$(PART2)/%.ngd:	$(WORKDIR)/%.ngc $(PROJECT).ucf
	cd $(WORKDIR)/$(PART2) && ngdbuild -p $(PART2)-$(SPEED)-$(PACKAGE) -uc ../../$(PROJECT).ucf ../../$< ../../$@

$(WORKDIR)/$(PART2)/%.vm6:	$(WORKDIR)/$(PART2)/%.ngd $(PROJECT).ucf
	cd $(WORKDIR)/$(PART2) && cpldfit $(CPLDFITFLAGS) -p $(PART2)-$(SPEED)-$(PACKAGE) ../../$<

$(WORKDIR)/$(PART2)/%.jed:	$(WORKDIR)/$(PART2)/%.vm6
	cd $(WORKDIR)/$(PART2) && hprep6 -i ../../$<


$(WORKDIR)/$(PART)/%.tim:	$(WORKDIR)/$(PART)/%.vm6
	cd $(WORKDIR) && taengine -l ../$@ -f $(PROJECT)


$(BINDIR)/$(PART)/%.jed:	$(WORKDIR)/$(PART)/%.jed
	-@ mkdir -p $(BINDIR)/$(PART)
	cp $< $(BINDIR)/$(PART)

$(BINDIR)/$(PART2)/%.jed:	$(WORKDIR)/$(PART2)/%.jed
	-@ mkdir -p $(BINDIR)/$(PART2)
	cp $< $(BINDIR)/$(PART2)

timing:	$(WORKDIR)/$(PART)/$(PROJECT).tim

fit:	$(WORKDIR)/$(PART)/$(PROJECT).vm6

clean:
	- rm -rvf tmp
	- rm -fv *.jed
	- rm -fv *.prj

cleanjeds:
	- @rm -fv $(BINDIR)/$(PART)/*.jed
	- @rm -fv $(BINDIR)/$(PART2)/*.jed

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
