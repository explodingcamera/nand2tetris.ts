// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

(LOOP)
  @SCREEN
  D=A
  @i // iterate over each group of pixels
  M=D

  // jump to black if any key is pressed
  @KBD
  D=M
  @BLACK
  D;JGT

  (WHITE)
    @COLOR
    M=0
    @UPDATE
    0;JMP

  (BLACK)
    @COLOR
    M=-1
    @UPDATE
    0;JMP

  (UPDATE)
    @COLOR
    D=M

    @i
    A=M // the current screen adress
    M=D // fill the current screen address with @COLOR

    @i
    MD=M+1 // i++
    @24575 // (position of the last screen pixel)
    D=A-D

    @UPDATE
    D;JGE	// keep updating until the end is reached

@LOOP
0;JMP