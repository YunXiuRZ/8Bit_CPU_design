version = -g2005-sv
files = SequenceGenerator InstructionDecoder CompleteInstructionDecoder JumpLogic Decoder

all : $(addsuffix .vcd, $(files))

%.vcd : %.vvp
	vvp $<

SequenceGenerator.vvp : ../FlipFlop/FDCE.v ../FlipFlop/FDPE.v SequenceGenerator.v SequenceGenerator_t.v
	iverilog $(version) -o SequenceGenerator.vvp ../FlipFlop/FDCE.v ../FlipFlop/FDPE.v SequenceGenerator.v SequenceGenerator_t.v

InstructionDecoder.vvp : InstructionDecoder.v InstructionDecoder_t.v
	iverilog $(version) -o InstructionDecoder.vvp InstructionDecoder.v InstructionDecoder_t.v

CompleteInstructionDecoder.vvp : InstructionDecoder.v CompleteInstructionDecoder.v SequenceGenerator.v CompleteInstructionDecoder_t.v
	iverilog $(version) -o CompleteInstructionDecoder.vvp InstructionDecoder.v CompleteInstructionDecoder.v SequenceGenerator.v CompleteInstructionDecoder_t.v

JumpLogic.vvp : ../FlipFlop/FDC.v JumpLogic.v JumpLogic_t.v
	iverilog $(version) -o JumpLogic.vvp ../FlipFlop/FDC.v JumpLogic.v JumpLogic_t.v

Decoder.vvp : ../Register/Register_2B.v StatusRegister.v InstructionDecoder.v CompleteInstructionDecoder.v ../FlipFlop/FDC.v JumpLogic.v ../FlipFlop/FDCE.v ../FlipFlop/FDPE.v SequenceGenerator.v Decoder.v Decoder_t.v
	iverilog $(version) -o Decoder.vvp ../Register/Register_2B.v StatusRegister.v InstructionDecoder.v CompleteInstructionDecoder.v ../FlipFlop/FDC.v JumpLogic.v ../FlipFlop/FDCE.v ../FlipFlop/FDPE.v SequenceGenerator.v Decoder.v Decoder_t.v
