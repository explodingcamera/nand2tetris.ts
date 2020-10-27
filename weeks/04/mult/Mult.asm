// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

@R2 // initialize the result with 0
M=0

// if (r0 == 0) return
@R1
D=M
@END
D;JEQ

// if (r1 == 0) return
@R1
D=M
@END
D;JEQ

// set the amount of iterations we need to loop through to R1
@i
M=D

(LOOP)
  @R0 // load R0
  D=M

  @R2 // add R0 to the result
  M=M+D

  @i // i--
  M=M-1
  D=M

  // if (i > 0) continue
  @LOOP
  D;JGT

(END)