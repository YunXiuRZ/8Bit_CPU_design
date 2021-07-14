version = -g2005-sv
files = Register_2B Register_4B Register_8B Register_16B

all : $(addsuffix .vcd, $(files))

%.vcd : %.vvp
	vvp $<

Register_2B.vvp : ../FlipFlop/FDCE.v Register_2B.v Register_2B_t.v
	iverilog $(version) -o Register_2B.vvp ../FlipFlop/FDCE.v Register_2B.v Register_2B_t.v

Register_4B.vvp : ../FlipFlop/FDCE.v Register_2B.v Register_4B.v Register_4B_t.v
	iverilog $(version) -o Register_4B.vvp ../FlipFlop/FDCE.v Register_2B.v Register_4B.v Register_4B_t.v

Register_8B.vvp : ../FlipFlop/FDCE.v Register_2B.v Register_4B.v Register_8B.v Register_8B_t.v
	iverilog $(version) -o Register_8B.vvp ../FlipFlop/FDCE.v Register_2B.v Register_4B.v Register_8B.v Register_8B_t.v

Register_16B.vvp : ../FlipFlop/FDCE.v Register_2B.v Register_4B.v Register_8B.v Register_16B.v Register_16B_t.v
	iverilog $(version) -o Register_16B.vvp ../FlipFlop/FDCE.v Register_2B.v Register_4B.v Register_8B.v Register_16B.v Register_16B_t.v

