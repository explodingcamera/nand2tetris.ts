@256
D=A
@SP
M=D
@Sys.init$RETURN$0
D=A
@SP
A=M
M=D
@SP
M=M+1 // call Sys.init$RETURN$0
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@5
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.init
0;JMP
(Sys.init$RETURN$0)
(SimpleFunction.test) // line 0, instruction: function SimpleFunction.test 2
@0       // line 0, instruction: function SimpleFunction.test 2
D=A      // line 0, instruction: function SimpleFunction.test 2
@SP      // line 0, instruction: function SimpleFunction.test 2
A=M      // line 0, instruction: function SimpleFunction.test 2
M=D      // line 0, instruction: function SimpleFunction.test 2
@SP      // line 0, instruction: function SimpleFunction.test 2
M=M+1    // line 0, instruction: function SimpleFunction.test 2
@0       // line 0, instruction: function SimpleFunction.test 2
D=A      // line 0, instruction: function SimpleFunction.test 2
@SP      // line 0, instruction: function SimpleFunction.test 2
A=M      // line 0, instruction: function SimpleFunction.test 2
M=D      // line 0, instruction: function SimpleFunction.test 2
@SP      // line 0, instruction: function SimpleFunction.test 2
M=M+1    // line 0, instruction: function SimpleFunction.test 2

@LCL     // line 1, instruction: push local 0
D=M      // line 1, instruction: push local 0
@0       // line 1, instruction: push local 0
A=D+A    // line 1, instruction: push local 0
D=M      // line 1, instruction: push local 0
@SP      // line 1, instruction: push local 0
A=M      // line 1, instruction: push local 0
M=D      // line 1, instruction: push local 0
@SP      // line 1, instruction: push local 0
M=M+1    // line 1, instruction: push local 0

@LCL     // line 2, instruction: push local 1
D=M      // line 2, instruction: push local 1
@1       // line 2, instruction: push local 1
A=D+A    // line 2, instruction: push local 1
D=M      // line 2, instruction: push local 1
@SP      // line 2, instruction: push local 1
A=M      // line 2, instruction: push local 1
M=D      // line 2, instruction: push local 1
@SP      // line 2, instruction: push local 1
M=M+1    // line 2, instruction: push local 1

@SP      // line 3, instruction: add
M=M-1    // line 3, instruction: add
A=M      // line 3, instruction: add
D=M      // line 3, instruction: add
@SP      // line 3, instruction: add
M=M-1    // line 3, instruction: add
A=M      // line 3, instruction: add
D=D+M    // line 3, instruction: add
@SP      // line 3, instruction: add
A=M      // line 3, instruction: add
M=D      // line 3, instruction: add
@SP      // line 3, instruction: add
M=M+1    // line 3, instruction: add

@SP      // line 4, instruction: not
M=M-1    // line 4, instruction: not
A=M      // line 4, instruction: not
D=M      // line 4, instruction: not
D=!D     // line 4, instruction: not
@SP      // line 4, instruction: not
A=M      // line 4, instruction: not
M=D      // line 4, instruction: not
@SP      // line 4, instruction: not
M=M+1    // line 4, instruction: not

@ARG     // line 5, instruction: push argument 0
D=M      // line 5, instruction: push argument 0
@0       // line 5, instruction: push argument 0
A=D+A    // line 5, instruction: push argument 0
D=M      // line 5, instruction: push argument 0
@SP      // line 5, instruction: push argument 0
A=M      // line 5, instruction: push argument 0
M=D      // line 5, instruction: push argument 0
@SP      // line 5, instruction: push argument 0
M=M+1    // line 5, instruction: push argument 0

@SP      // line 6, instruction: add
M=M-1    // line 6, instruction: add
A=M      // line 6, instruction: add
D=M      // line 6, instruction: add
@SP      // line 6, instruction: add
M=M-1    // line 6, instruction: add
A=M      // line 6, instruction: add
D=D+M    // line 6, instruction: add
@SP      // line 6, instruction: add
A=M      // line 6, instruction: add
M=D      // line 6, instruction: add
@SP      // line 6, instruction: add
M=M+1    // line 6, instruction: add

@ARG     // line 7, instruction: push argument 1
D=M      // line 7, instruction: push argument 1
@1       // line 7, instruction: push argument 1
A=D+A    // line 7, instruction: push argument 1
D=M      // line 7, instruction: push argument 1
@SP      // line 7, instruction: push argument 1
A=M      // line 7, instruction: push argument 1
M=D      // line 7, instruction: push argument 1
@SP      // line 7, instruction: push argument 1
M=M+1    // line 7, instruction: push argument 1

@SP      // line 8, instruction: sub
M=M-1    // line 8, instruction: sub
A=M      // line 8, instruction: sub
D=M      // line 8, instruction: sub
@SP      // line 8, instruction: sub
M=M-1    // line 8, instruction: sub
A=M      // line 8, instruction: sub
D=M-D    // line 8, instruction: sub
@SP      // line 8, instruction: sub
A=M      // line 8, instruction: sub
M=D      // line 8, instruction: sub
@SP      // line 8, instruction: sub
M=M+1    // line 8, instruction: sub

@LCL     // line 9, instruction: return
D=M      // line 9, instruction: return
@R13     // line 9, instruction: return
M=D      // line 9, instruction: return
@R13     // line 9, instruction: return
D=M      // line 9, instruction: return
@5       // line 9, instruction: return
A=D-A    // line 9, instruction: return
D=M      // line 9, instruction: return
@R14     // line 9, instruction: return
M=D      // line 9, instruction: return
@SP      // line 9, instruction: return
M=M-1    // line 9, instruction: return
A=M      // line 9, instruction: return
D=M      // line 9, instruction: return
@ARG     // line 9, instruction: return
A=M      // line 9, instruction: return
M=D      // line 9, instruction: return
@ARG     // line 9, instruction: return
D=M+1    // line 9, instruction: return
@SP      // line 9, instruction: return
M=D      // line 9, instruction: return
@R13     // line 9, instruction: return
D=M      // line 9, instruction: return
@1       // line 9, instruction: return
A=D-A    // line 9, instruction: return
D=M      // line 9, instruction: return
@THAT    // line 9, instruction: return
M=D      // line 9, instruction: return
@R13     // line 9, instruction: return
D=M      // line 9, instruction: return
@2       // line 9, instruction: return
A=D-A    // line 9, instruction: return
D=M      // line 9, instruction: return
@THIS    // line 9, instruction: return
M=D      // line 9, instruction: return
@R13     // line 9, instruction: return
D=M      // line 9, instruction: return
@3       // line 9, instruction: return
A=D-A    // line 9, instruction: return
D=M      // line 9, instruction: return
@ARG     // line 9, instruction: return
M=D      // line 9, instruction: return
@R13     // line 9, instruction: return
D=M      // line 9, instruction: return
@4       // line 9, instruction: return
A=D-A    // line 9, instruction: return
D=M      // line 9, instruction: return
@LCL     // line 9, instruction: return
M=D      // line 9, instruction: return
@R14     // line 9, instruction: return
A=M      // line 9, instruction: return
0;JMP    // line 9, instruction: return