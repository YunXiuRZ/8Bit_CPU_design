version = -g2005-sv
files = SequenceGenerator InstructionDecoder CompleteInstructionDecoder JumpLogic Decoder

all : $(addsuffix .vcd, $(files))

%.vcd : %.vvp
	vvp $<

SequenceGenerator.vvp : ../FlipFlop/FDCE.v ../FlipFlop/FDPE.v SequenceGenerator.v SequenceGenerator_t.v
	iverilog $(version) -o SequenceGenerator.vvp ../FlipFlop/FDCE.v ../FlipFlop/FDPE.v SequenceGenerator.v SequenceGenerator_t.v

InstructionDecoder.vvp : InstructionDecoder.v InstructionDecoder_t.v
	iverilog $(version) -o InstructionDecoder.vvp InstructionDecoder.v InstructionDecoder_t.v

CompleteInstructionDecoder.vvp : InstructionDecoder.v CompleteInstructionDecoder.v SequenceGenerator.v CompleteInstructionDecoder_t
	iverilog $(version) -o CompleteInstructionDecoder.vvp InstructionDecoder.v CompleteInstructionDecoder.v SequenceGenerator.v CompleteInstructionDecoder_t

JumpLogic.vvp : ../FlipFlop/FDC.v JumpLogic.v JumpLogic_t.v
	iverilog $(version) -o JumpLogic.vvp ../FlipFlop/FDC.v JumpLogic.v JumpLogic_t.v

Decoder.vvp : StatusRegister.v CompleteInstructionDecoder.v JumpLogic.v SequenceGenerator.v Decoder.v Decoder_t.v
	iverilog $(version) -o Decoder.vvp StatusRegister.v CompleteInstructionDecoder.v JumpLogic.v SequenceGenerator.v Decoder.v Decoder_t.v
