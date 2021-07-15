version = -g2005-sv
files = FDC FDCE FDPE

all : $(addsuffix .vcd, $(files))

%.vcd : %.vvp
	vvp $<

FDC.vvp : FDC.v FDC_t.v
	iverilog $(version) -o FDC.vvp FDC.v FDC_t.v

FDCE.vvp : FDCE.v FDCE_t.v
	iverilog $(version) -o FDCE.vvp FDCE.v FDCE_t.v

FDPE.vvp : FDPE.v FDPE_t.v
	iverilog $(version) -o FDPE.vvp FDPE.v FDPE_t.v

