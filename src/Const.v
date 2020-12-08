// ALU Control is my own definition
`define ALU_CTL_AND  4'd0
`define ALU_CTL_OR   4'd1
`define ALU_CTL_XOR  4'd2
`define ALU_CTL_NAND 4'd3
`define ALU_CTL_NOR  4'd4

`define ALU_CTL_ADD  4'd6
`define ALU_CTL_SUB  4'd7
`define ALU_CTL_MUL  4'd8
`define ALU_CTL_DIV  4'd9

`define ALU_CTL_SLL  4'd11
`define ALU_CTL_SRL  4'd12
`define ALU_CTL_SRA  4'd13

`define ALU_OP_REG 2'd0  // R-type instruction
`define ALU_OP_IMM 2'd1  // I-type instruction
`define ALU_OP_STR 2'd2  // S-type instruction

`define ALU_OP_STORE 2'd2 // S-type instruction
`define ALU_OP_BRANCH 2'd3  // SB-type instruction



// Forwarding Unit
`define FW_Reg_src 2'b00
`define FW_EX_src 2'b10
`define FW_MEM_src 2'b01






// Funct3 and Funct7 follows RISC-V spec
// `define FUNCT7_ADD  7'b0000000
// `define FUNCT7_SLT  7'b0000000
// `define FUNCT7_SLTU 7'b0000000
// `define FUNCT7_AND  7'b0000000
// `define FUNCT7_OR   7'b0000000
// `define FUNCT7_XOR  7'b0000000
// `define FUNCT7_SLL  7'b0000000
// `define FUNCT7_SRL  7'b0000000
// `define FUNCT7_SLLI 7'b0000000
// `define FUNCT7_SRLI 7'b0000000
//
// `define FUNCT7_SUB  7'b0100000
// `define FUNCT7_SRA  7'b0100000
// `define FUNCT7_SRAI 7'b0100000
//
// `define FUNCT7_MUL  7'b0000001
//
//
// `define FUNCT3_AND 3'b111
// `define FUNCT3_XOR 3'b100
// `define FUNCT3_SLL 3'b001
// `define FUNCT3_ADD 3'b000
// `define FUNCT3_SUB 3'b000
// `define FUNCT3_MUL 3'b000
// `define FUNCT3_ADDI 3'b000
// `define FUNCT3_SRAI 3'b101

// `define FUNCT3_SLTI 3'b
// `define FUNCT3_SLTIU 3'b
// `define FUNCT3_ANDI 3'b
// `define FUNCT3_ORI 3'b
// `define FUNCT3_XORI 3'b



// OPCODE follows RISC-V spec
`define OPCODE_OP            7'b0110011
`define OPCODE_OP_IMM        7'b0010011
`define OPCODE_LOAD          7'b0000011
`define OPCODE_STORE         7'b0100011
`define OPCODE_BRANCH        7'b1100011
`define OPCODE_LUI           7'b0110111
`define OPCODE_JALR          7'b1100111
`define OPCODE_JAL           7'b1101111
