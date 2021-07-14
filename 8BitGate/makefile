version = -g2005-sv
files = BitWiseAndGate_8B BitWiseInverter_8B NorGate_8B Replicater_8B

all : $(addsuffix .vcd, $(files))

%.vcd : %.vvp
	vvp $<

BitWiseAndGate_8B.vvp : BitWiseAndGate_8B.v BitWiseAndGate_8B_t.v
	iverilog $(version) -o BitWiseAndGate_8B.vvp BitWiseAndGate_8B.v BitWiseAndGate_8B_t.v

BitWiseInverter_8B.vvp : BitWiseInverter_8B.v BitWiseInverter_8B_t.v
	iverilog $(version) -o BitWiseInverter_8B.vvp BitWiseInverter_8B.v BitWiseInverter_8B_t.v

NorGate_8B.vvp : NorGate_8B.v NorGate_8B_t.v
	iverilog $(version) -o NorGate_8B.vvp NorGate_8B.v NorGate_8B_t.v

Replicater_8B.vvp : Replicater_8B.v Replicater_8B_t.v
	iverilog $(version) -o Replicater_8B.vvp Replicater_8B.v Replicater_8B_t.v

