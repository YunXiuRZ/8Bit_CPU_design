version = -g2005-sv
files = Join_16B Split_16B

all : $(addsuffix .vcd, $(files))

%.vcd : %.vvp
	vvp $<

Join_16B.vvp : Join_16B.v Join_16B_t.v
	iverilog $(version) -o Join_16B.vvp Join_16B.v Join_16B_t.v

Split_16B.vvp : Split_16B.v Split_16B_t.v
	iverilog $(version) -o Split_16B.vvp Split_16B.v Split_16B_t.v

