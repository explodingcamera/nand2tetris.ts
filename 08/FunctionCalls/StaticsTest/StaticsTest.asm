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
(Class1.set) // line 0, instruction: function Class1.set 0

@ARG     // line 1, instruction: push argument 0
D=M      // line 1, instruction: push argument 0
@0       // line 1, instruction: push argument 0
A=D+A    // line 1, instruction: push argument 0
D=M      // line 1, instruction: push argument 0
@SP      // line 1, instruction: push argument 0
A=M      // line 1, instruction: push argument 0
M=D      // line 1, instruction: push argument 0
@SP      // line 1, instruction: push argument 0
M=M+1    // line 1, instruction: push argument 0

@SP      // line 2, instruction: pop static 0
M=M-1    // line 2, instruction: pop static 0
A=M      // line 2, instruction: pop static 0
D=M      // line 2, instruction: pop static 0
@STATIC$1a14b0a9ed6b70ed629213b0a9987803090028b33c967c97d64977ba2bce0257.0 // line 2, instruction: pop static 0
M=D      // line 2, instruction: pop static 0

@ARG     // line 3, instruction: push argument 1
D=M      // line 3, instruction: push argument 1
@1       // line 3, instruction: push argument 1
A=D+A    // line 3, instruction: push argument 1
D=M      // line 3, instruction: push argument 1
@SP      // line 3, instruction: push argument 1
A=M      // line 3, instruction: push argument 1
M=D      // line 3, instruction: push argument 1
@SP      // line 3, instruction: push argument 1
M=M+1    // line 3, instruction: push argument 1

@SP      // line 4, instruction: pop static 1
M=M-1    // line 4, instruction: pop static 1
A=M      // line 4, instruction: pop static 1
D=M      // line 4, instruction: pop static 1
@STATIC$1a14b0a9ed6b70ed629213b0a9987803090028b33c967c97d64977ba2bce0257.1 // line 4, instruction: pop static 1
M=D      // line 4, instruction: pop static 1

@0       // line 5, instruction: push constant 0
D=A      // line 5, instruction: push constant 0
@SP      // line 5, instruction: push constant 0
A=M      // line 5, instruction: push constant 0
M=D      // line 5, instruction: push constant 0
@SP      // line 5, instruction: push constant 0
M=M+1    // line 5, instruction: push constant 0

@LCL     // line 6, instruction: return
D=M      // line 6, instruction: return
@R13     // line 6, instruction: return
M=D      // line 6, instruction: return
@R13     // line 6, instruction: return
D=M      // line 6, instruction: return
@5       // line 6, instruction: return
A=D-A    // line 6, instruction: return
D=M      // line 6, instruction: return
@R14     // line 6, instruction: return
M=D      // line 6, instruction: return
@SP      // line 6, instruction: return
M=M-1    // line 6, instruction: return
A=M      // line 6, instruction: return
D=M      // line 6, instruction: return
@ARG     // line 6, instruction: return
A=M      // line 6, instruction: return
M=D      // line 6, instruction: return
@ARG     // line 6, instruction: return
D=M+1    // line 6, instruction: return
@SP      // line 6, instruction: return
M=D      // line 6, instruction: return
@R13     // line 6, instruction: return
D=M      // line 6, instruction: return
@1       // line 6, instruction: return
A=D-A    // line 6, instruction: return
D=M      // line 6, instruction: return
@THAT    // line 6, instruction: return
M=D      // line 6, instruction: return
@R13     // line 6, instruction: return
D=M      // line 6, instruction: return
@2       // line 6, instruction: return
A=D-A    // line 6, instruction: return
D=M      // line 6, instruction: return
@THIS    // line 6, instruction: return
M=D      // line 6, instruction: return
@R13     // line 6, instruction: return
D=M      // line 6, instruction: return
@3       // line 6, instruction: return
A=D-A    // line 6, instruction: return
D=M      // line 6, instruction: return
@ARG     // line 6, instruction: return
M=D      // line 6, instruction: return
@R13     // line 6, instruction: return
D=M      // line 6, instruction: return
@4       // line 6, instruction: return
A=D-A    // line 6, instruction: return
D=M      // line 6, instruction: return
@LCL     // line 6, instruction: return
M=D      // line 6, instruction: return
@R14     // line 6, instruction: return
A=M      // line 6, instruction: return
0;JMP    // line 6, instruction: return

(Class1.get) // line 7, instruction: function Class1.get 0

@STATIC$1a14b0a9ed6b70ed629213b0a9987803090028b33c967c97d64977ba2bce0257.0 // line 8, instruction: push static 0
D=M      // line 8, instruction: push static 0
@SP      // line 8, instruction: push static 0
A=M      // line 8, instruction: push static 0
M=D      // line 8, instruction: push static 0
@SP      // line 8, instruction: push static 0
M=M+1    // line 8, instruction: push static 0

@STATIC$1a14b0a9ed6b70ed629213b0a9987803090028b33c967c97d64977ba2bce0257.1 // line 9, instruction: push static 1
D=M      // line 9, instruction: push static 1
@SP      // line 9, instruction: push static 1
A=M      // line 9, instruction: push static 1
M=D      // line 9, instruction: push static 1
@SP      // line 9, instruction: push static 1
M=M+1    // line 9, instruction: push static 1

@SP      // line 10, instruction: sub
M=M-1    // line 10, instruction: sub
A=M      // line 10, instruction: sub
D=M      // line 10, instruction: sub
@SP      // line 10, instruction: sub
M=M-1    // line 10, instruction: sub
A=M      // line 10, instruction: sub
D=M-D    // line 10, instruction: sub
@SP      // line 10, instruction: sub
A=M      // line 10, instruction: sub
M=D      // line 10, instruction: sub
@SP      // line 10, instruction: sub
M=M+1    // line 10, instruction: sub

@LCL     // line 11, instruction: return
D=M      // line 11, instruction: return
@R13     // line 11, instruction: return
M=D      // line 11, instruction: return
@R13     // line 11, instruction: return
D=M      // line 11, instruction: return
@5       // line 11, instruction: return
A=D-A    // line 11, instruction: return
D=M      // line 11, instruction: return
@R14     // line 11, instruction: return
M=D      // line 11, instruction: return
@SP      // line 11, instruction: return
M=M-1    // line 11, instruction: return
A=M      // line 11, instruction: return
D=M      // line 11, instruction: return
@ARG     // line 11, instruction: return
A=M      // line 11, instruction: return
M=D      // line 11, instruction: return
@ARG     // line 11, instruction: return
D=M+1    // line 11, instruction: return
@SP      // line 11, instruction: return
M=D      // line 11, instruction: return
@R13     // line 11, instruction: return
D=M      // line 11, instruction: return
@1       // line 11, instruction: return
A=D-A    // line 11, instruction: return
D=M      // line 11, instruction: return
@THAT    // line 11, instruction: return
M=D      // line 11, instruction: return
@R13     // line 11, instruction: return
D=M      // line 11, instruction: return
@2       // line 11, instruction: return
A=D-A    // line 11, instruction: return
D=M      // line 11, instruction: return
@THIS    // line 11, instruction: return
M=D      // line 11, instruction: return
@R13     // line 11, instruction: return
D=M      // line 11, instruction: return
@3       // line 11, instruction: return
A=D-A    // line 11, instruction: return
D=M      // line 11, instruction: return
@ARG     // line 11, instruction: return
M=D      // line 11, instruction: return
@R13     // line 11, instruction: return
D=M      // line 11, instruction: return
@4       // line 11, instruction: return
A=D-A    // line 11, instruction: return
D=M      // line 11, instruction: return
@LCL     // line 11, instruction: return
M=D      // line 11, instruction: return
@R14     // line 11, instruction: return
A=M      // line 11, instruction: return
0;JMP    // line 11, instruction: return
(Class2.set) // line 0, instruction: function Class2.set 0

@ARG     // line 1, instruction: push argument 0
D=M      // line 1, instruction: push argument 0
@0       // line 1, instruction: push argument 0
A=D+A    // line 1, instruction: push argument 0
D=M      // line 1, instruction: push argument 0
@SP      // line 1, instruction: push argument 0
A=M      // line 1, instruction: push argument 0
M=D      // line 1, instruction: push argument 0
@SP      // line 1, instruction: push argument 0
M=M+1    // line 1, instruction: push argument 0

@SP      // line 2, instruction: pop static 0
M=M-1    // line 2, instruction: pop static 0
A=M      // line 2, instruction: pop static 0
D=M      // line 2, instruction: pop static 0
@STATIC$e9692c838bd5f59b2059506d7b45ed04d2cbe0e85761fb9d46243e775c4428e1.0 // line 2, instruction: pop static 0
M=D      // line 2, instruction: pop static 0

@ARG     // line 3, instruction: push argument 1
D=M      // line 3, instruction: push argument 1
@1       // line 3, instruction: push argument 1
A=D+A    // line 3, instruction: push argument 1
D=M      // line 3, instruction: push argument 1
@SP      // line 3, instruction: push argument 1
A=M      // line 3, instruction: push argument 1
M=D      // line 3, instruction: push argument 1
@SP      // line 3, instruction: push argument 1
M=M+1    // line 3, instruction: push argument 1

@SP      // line 4, instruction: pop static 1
M=M-1    // line 4, instruction: pop static 1
A=M      // line 4, instruction: pop static 1
D=M      // line 4, instruction: pop static 1
@STATIC$e9692c838bd5f59b2059506d7b45ed04d2cbe0e85761fb9d46243e775c4428e1.1 // line 4, instruction: pop static 1
M=D      // line 4, instruction: pop static 1

@0       // line 5, instruction: push constant 0
D=A      // line 5, instruction: push constant 0
@SP      // line 5, instruction: push constant 0
A=M      // line 5, instruction: push constant 0
M=D      // line 5, instruction: push constant 0
@SP      // line 5, instruction: push constant 0
M=M+1    // line 5, instruction: push constant 0

@LCL     // line 6, instruction: return
D=M      // line 6, instruction: return
@R13     // line 6, instruction: return
M=D      // line 6, instruction: return
@R13     // line 6, instruction: return
D=M      // line 6, instruction: return
@5       // line 6, instruction: return
A=D-A    // line 6, instruction: return
D=M      // line 6, instruction: return
@R14     // line 6, instruction: return
M=D      // line 6, instruction: return
@SP      // line 6, instruction: return
M=M-1    // line 6, instruction: return
A=M      // line 6, instruction: return
D=M      // line 6, instruction: return
@ARG     // line 6, instruction: return
A=M      // line 6, instruction: return
M=D      // line 6, instruction: return
@ARG     // line 6, instruction: return
D=M+1    // line 6, instruction: return
@SP      // line 6, instruction: return
M=D      // line 6, instruction: return
@R13     // line 6, instruction: return
D=M      // line 6, instruction: return
@1       // line 6, instruction: return
A=D-A    // line 6, instruction: return
D=M      // line 6, instruction: return
@THAT    // line 6, instruction: return
M=D      // line 6, instruction: return
@R13     // line 6, instruction: return
D=M      // line 6, instruction: return
@2       // line 6, instruction: return
A=D-A    // line 6, instruction: return
D=M      // line 6, instruction: return
@THIS    // line 6, instruction: return
M=D      // line 6, instruction: return
@R13     // line 6, instruction: return
D=M      // line 6, instruction: return
@3       // line 6, instruction: return
A=D-A    // line 6, instruction: return
D=M      // line 6, instruction: return
@ARG     // line 6, instruction: return
M=D      // line 6, instruction: return
@R13     // line 6, instruction: return
D=M      // line 6, instruction: return
@4       // line 6, instruction: return
A=D-A    // line 6, instruction: return
D=M      // line 6, instruction: return
@LCL     // line 6, instruction: return
M=D      // line 6, instruction: return
@R14     // line 6, instruction: return
A=M      // line 6, instruction: return
0;JMP    // line 6, instruction: return

(Class2.get) // line 7, instruction: function Class2.get 0

@STATIC$e9692c838bd5f59b2059506d7b45ed04d2cbe0e85761fb9d46243e775c4428e1.0 // line 8, instruction: push static 0
D=M      // line 8, instruction: push static 0
@SP      // line 8, instruction: push static 0
A=M      // line 8, instruction: push static 0
M=D      // line 8, instruction: push static 0
@SP      // line 8, instruction: push static 0
M=M+1    // line 8, instruction: push static 0

@STATIC$e9692c838bd5f59b2059506d7b45ed04d2cbe0e85761fb9d46243e775c4428e1.1 // line 9, instruction: push static 1
D=M      // line 9, instruction: push static 1
@SP      // line 9, instruction: push static 1
A=M      // line 9, instruction: push static 1
M=D      // line 9, instruction: push static 1
@SP      // line 9, instruction: push static 1
M=M+1    // line 9, instruction: push static 1

@SP      // line 10, instruction: sub
M=M-1    // line 10, instruction: sub
A=M      // line 10, instruction: sub
D=M      // line 10, instruction: sub
@SP      // line 10, instruction: sub
M=M-1    // line 10, instruction: sub
A=M      // line 10, instruction: sub
D=M-D    // line 10, instruction: sub
@SP      // line 10, instruction: sub
A=M      // line 10, instruction: sub
M=D      // line 10, instruction: sub
@SP      // line 10, instruction: sub
M=M+1    // line 10, instruction: sub

@LCL     // line 11, instruction: return
D=M      // line 11, instruction: return
@R13     // line 11, instruction: return
M=D      // line 11, instruction: return
@R13     // line 11, instruction: return
D=M      // line 11, instruction: return
@5       // line 11, instruction: return
A=D-A    // line 11, instruction: return
D=M      // line 11, instruction: return
@R14     // line 11, instruction: return
M=D      // line 11, instruction: return
@SP      // line 11, instruction: return
M=M-1    // line 11, instruction: return
A=M      // line 11, instruction: return
D=M      // line 11, instruction: return
@ARG     // line 11, instruction: return
A=M      // line 11, instruction: return
M=D      // line 11, instruction: return
@ARG     // line 11, instruction: return
D=M+1    // line 11, instruction: return
@SP      // line 11, instruction: return
M=D      // line 11, instruction: return
@R13     // line 11, instruction: return
D=M      // line 11, instruction: return
@1       // line 11, instruction: return
A=D-A    // line 11, instruction: return
D=M      // line 11, instruction: return
@THAT    // line 11, instruction: return
M=D      // line 11, instruction: return
@R13     // line 11, instruction: return
D=M      // line 11, instruction: return
@2       // line 11, instruction: return
A=D-A    // line 11, instruction: return
D=M      // line 11, instruction: return
@THIS    // line 11, instruction: return
M=D      // line 11, instruction: return
@R13     // line 11, instruction: return
D=M      // line 11, instruction: return
@3       // line 11, instruction: return
A=D-A    // line 11, instruction: return
D=M      // line 11, instruction: return
@ARG     // line 11, instruction: return
M=D      // line 11, instruction: return
@R13     // line 11, instruction: return
D=M      // line 11, instruction: return
@4       // line 11, instruction: return
A=D-A    // line 11, instruction: return
D=M      // line 11, instruction: return
@LCL     // line 11, instruction: return
M=D      // line 11, instruction: return
@R14     // line 11, instruction: return
A=M      // line 11, instruction: return
0;JMP    // line 11, instruction: return
(Sys.init) // line 0, instruction: function Sys.init 0

@6       // line 1, instruction: push constant 6
D=A      // line 1, instruction: push constant 6
@SP      // line 1, instruction: push constant 6
A=M      // line 1, instruction: push constant 6
M=D      // line 1, instruction: push constant 6
@SP      // line 1, instruction: push constant 6
M=M+1    // line 1, instruction: push constant 6

@8       // line 2, instruction: push constant 8
D=A      // line 2, instruction: push constant 8
@SP      // line 2, instruction: push constant 8
A=M      // line 2, instruction: push constant 8
M=D      // line 2, instruction: push constant 8
@SP      // line 2, instruction: push constant 8
M=M+1    // line 2, instruction: push constant 8

@Class1.set$RETURN$3 // line 3, instruction: call Class1.set 2
D=A      // line 3, instruction: call Class1.set 2
@SP      // line 3, instruction: call Class1.set 2
A=M      // line 3, instruction: call Class1.set 2
M=D      // line 3, instruction: call Class1.set 2
@SP      // line 3, instruction: call Class1.set 2
M=M+1 // call Class1.set$RETURN$3 // line 3, instruction: call Class1.set 2
@LCL     // line 3, instruction: call Class1.set 2
D=M      // line 3, instruction: call Class1.set 2
@SP      // line 3, instruction: call Class1.set 2
A=M      // line 3, instruction: call Class1.set 2
M=D      // line 3, instruction: call Class1.set 2
@SP      // line 3, instruction: call Class1.set 2
M=M+1    // line 3, instruction: call Class1.set 2
@ARG     // line 3, instruction: call Class1.set 2
D=M      // line 3, instruction: call Class1.set 2
@SP      // line 3, instruction: call Class1.set 2
A=M      // line 3, instruction: call Class1.set 2
M=D      // line 3, instruction: call Class1.set 2
@SP      // line 3, instruction: call Class1.set 2
M=M+1    // line 3, instruction: call Class1.set 2
@THIS    // line 3, instruction: call Class1.set 2
D=M      // line 3, instruction: call Class1.set 2
@SP      // line 3, instruction: call Class1.set 2
A=M      // line 3, instruction: call Class1.set 2
M=D      // line 3, instruction: call Class1.set 2
@SP      // line 3, instruction: call Class1.set 2
M=M+1    // line 3, instruction: call Class1.set 2
@THAT    // line 3, instruction: call Class1.set 2
D=M      // line 3, instruction: call Class1.set 2
@SP      // line 3, instruction: call Class1.set 2
A=M      // line 3, instruction: call Class1.set 2
M=D      // line 3, instruction: call Class1.set 2
@SP      // line 3, instruction: call Class1.set 2
M=M+1    // line 3, instruction: call Class1.set 2
@7       // line 3, instruction: call Class1.set 2
D=A      // line 3, instruction: call Class1.set 2
@SP      // line 3, instruction: call Class1.set 2
D=M-D    // line 3, instruction: call Class1.set 2
@ARG     // line 3, instruction: call Class1.set 2
M=D      // line 3, instruction: call Class1.set 2
@SP      // line 3, instruction: call Class1.set 2
D=M      // line 3, instruction: call Class1.set 2
@LCL     // line 3, instruction: call Class1.set 2
M=D      // line 3, instruction: call Class1.set 2
@Class1.set // line 3, instruction: call Class1.set 2
0;JMP    // line 3, instruction: call Class1.set 2
(Class1.set$RETURN$3) // line 3, instruction: call Class1.set 2

@5       // line 4, instruction: pop temp 0 
D=A      // line 4, instruction: pop temp 0 
@0       // line 4, instruction: pop temp 0 
D=D+A    // line 4, instruction: pop temp 0 
@R13     // line 4, instruction: pop temp 0 
M=D      // line 4, instruction: pop temp 0 
@SP      // line 4, instruction: pop temp 0 
M=M-1    // line 4, instruction: pop temp 0 
A=M      // line 4, instruction: pop temp 0 
D=M      // line 4, instruction: pop temp 0 
@R13     // line 4, instruction: pop temp 0 
A=M      // line 4, instruction: pop temp 0 
M=D      // line 4, instruction: pop temp 0 

@23      // line 5, instruction: push constant 23
D=A      // line 5, instruction: push constant 23
@SP      // line 5, instruction: push constant 23
A=M      // line 5, instruction: push constant 23
M=D      // line 5, instruction: push constant 23
@SP      // line 5, instruction: push constant 23
M=M+1    // line 5, instruction: push constant 23

@15      // line 6, instruction: push constant 15
D=A      // line 6, instruction: push constant 15
@SP      // line 6, instruction: push constant 15
A=M      // line 6, instruction: push constant 15
M=D      // line 6, instruction: push constant 15
@SP      // line 6, instruction: push constant 15
M=M+1    // line 6, instruction: push constant 15

@Class2.set$RETURN$7 // line 7, instruction: call Class2.set 2
D=A      // line 7, instruction: call Class2.set 2
@SP      // line 7, instruction: call Class2.set 2
A=M      // line 7, instruction: call Class2.set 2
M=D      // line 7, instruction: call Class2.set 2
@SP      // line 7, instruction: call Class2.set 2
M=M+1 // call Class2.set$RETURN$7 // line 7, instruction: call Class2.set 2
@LCL     // line 7, instruction: call Class2.set 2
D=M      // line 7, instruction: call Class2.set 2
@SP      // line 7, instruction: call Class2.set 2
A=M      // line 7, instruction: call Class2.set 2
M=D      // line 7, instruction: call Class2.set 2
@SP      // line 7, instruction: call Class2.set 2
M=M+1    // line 7, instruction: call Class2.set 2
@ARG     // line 7, instruction: call Class2.set 2
D=M      // line 7, instruction: call Class2.set 2
@SP      // line 7, instruction: call Class2.set 2
A=M      // line 7, instruction: call Class2.set 2
M=D      // line 7, instruction: call Class2.set 2
@SP      // line 7, instruction: call Class2.set 2
M=M+1    // line 7, instruction: call Class2.set 2
@THIS    // line 7, instruction: call Class2.set 2
D=M      // line 7, instruction: call Class2.set 2
@SP      // line 7, instruction: call Class2.set 2
A=M      // line 7, instruction: call Class2.set 2
M=D      // line 7, instruction: call Class2.set 2
@SP      // line 7, instruction: call Class2.set 2
M=M+1    // line 7, instruction: call Class2.set 2
@THAT    // line 7, instruction: call Class2.set 2
D=M      // line 7, instruction: call Class2.set 2
@SP      // line 7, instruction: call Class2.set 2
A=M      // line 7, instruction: call Class2.set 2
M=D      // line 7, instruction: call Class2.set 2
@SP      // line 7, instruction: call Class2.set 2
M=M+1    // line 7, instruction: call Class2.set 2
@7       // line 7, instruction: call Class2.set 2
D=A      // line 7, instruction: call Class2.set 2
@SP      // line 7, instruction: call Class2.set 2
D=M-D    // line 7, instruction: call Class2.set 2
@ARG     // line 7, instruction: call Class2.set 2
M=D      // line 7, instruction: call Class2.set 2
@SP      // line 7, instruction: call Class2.set 2
D=M      // line 7, instruction: call Class2.set 2
@LCL     // line 7, instruction: call Class2.set 2
M=D      // line 7, instruction: call Class2.set 2
@Class2.set // line 7, instruction: call Class2.set 2
0;JMP    // line 7, instruction: call Class2.set 2
(Class2.set$RETURN$7) // line 7, instruction: call Class2.set 2

@5       // line 8, instruction: pop temp 0 
D=A      // line 8, instruction: pop temp 0 
@0       // line 8, instruction: pop temp 0 
D=D+A    // line 8, instruction: pop temp 0 
@R13     // line 8, instruction: pop temp 0 
M=D      // line 8, instruction: pop temp 0 
@SP      // line 8, instruction: pop temp 0 
M=M-1    // line 8, instruction: pop temp 0 
A=M      // line 8, instruction: pop temp 0 
D=M      // line 8, instruction: pop temp 0 
@R13     // line 8, instruction: pop temp 0 
A=M      // line 8, instruction: pop temp 0 
M=D      // line 8, instruction: pop temp 0 

@Class1.get$RETURN$9 // line 9, instruction: call Class1.get 0
D=A      // line 9, instruction: call Class1.get 0
@SP      // line 9, instruction: call Class1.get 0
A=M      // line 9, instruction: call Class1.get 0
M=D      // line 9, instruction: call Class1.get 0
@SP      // line 9, instruction: call Class1.get 0
M=M+1 // call Class1.get$RETURN$9 // line 9, instruction: call Class1.get 0
@LCL     // line 9, instruction: call Class1.get 0
D=M      // line 9, instruction: call Class1.get 0
@SP      // line 9, instruction: call Class1.get 0
A=M      // line 9, instruction: call Class1.get 0
M=D      // line 9, instruction: call Class1.get 0
@SP      // line 9, instruction: call Class1.get 0
M=M+1    // line 9, instruction: call Class1.get 0
@ARG     // line 9, instruction: call Class1.get 0
D=M      // line 9, instruction: call Class1.get 0
@SP      // line 9, instruction: call Class1.get 0
A=M      // line 9, instruction: call Class1.get 0
M=D      // line 9, instruction: call Class1.get 0
@SP      // line 9, instruction: call Class1.get 0
M=M+1    // line 9, instruction: call Class1.get 0
@THIS    // line 9, instruction: call Class1.get 0
D=M      // line 9, instruction: call Class1.get 0
@SP      // line 9, instruction: call Class1.get 0
A=M      // line 9, instruction: call Class1.get 0
M=D      // line 9, instruction: call Class1.get 0
@SP      // line 9, instruction: call Class1.get 0
M=M+1    // line 9, instruction: call Class1.get 0
@THAT    // line 9, instruction: call Class1.get 0
D=M      // line 9, instruction: call Class1.get 0
@SP      // line 9, instruction: call Class1.get 0
A=M      // line 9, instruction: call Class1.get 0
M=D      // line 9, instruction: call Class1.get 0
@SP      // line 9, instruction: call Class1.get 0
M=M+1    // line 9, instruction: call Class1.get 0
@5       // line 9, instruction: call Class1.get 0
D=A      // line 9, instruction: call Class1.get 0
@SP      // line 9, instruction: call Class1.get 0
D=M-D    // line 9, instruction: call Class1.get 0
@ARG     // line 9, instruction: call Class1.get 0
M=D      // line 9, instruction: call Class1.get 0
@SP      // line 9, instruction: call Class1.get 0
D=M      // line 9, instruction: call Class1.get 0
@LCL     // line 9, instruction: call Class1.get 0
M=D      // line 9, instruction: call Class1.get 0
@Class1.get // line 9, instruction: call Class1.get 0
0;JMP    // line 9, instruction: call Class1.get 0
(Class1.get$RETURN$9) // line 9, instruction: call Class1.get 0

@Class2.get$RETURN$10 // line 10, instruction: call Class2.get 0
D=A      // line 10, instruction: call Class2.get 0
@SP      // line 10, instruction: call Class2.get 0
A=M      // line 10, instruction: call Class2.get 0
M=D      // line 10, instruction: call Class2.get 0
@SP      // line 10, instruction: call Class2.get 0
M=M+1 // call Class2.get$RETURN$10 // line 10, instruction: call Class2.get 0
@LCL     // line 10, instruction: call Class2.get 0
D=M      // line 10, instruction: call Class2.get 0
@SP      // line 10, instruction: call Class2.get 0
A=M      // line 10, instruction: call Class2.get 0
M=D      // line 10, instruction: call Class2.get 0
@SP      // line 10, instruction: call Class2.get 0
M=M+1    // line 10, instruction: call Class2.get 0
@ARG     // line 10, instruction: call Class2.get 0
D=M      // line 10, instruction: call Class2.get 0
@SP      // line 10, instruction: call Class2.get 0
A=M      // line 10, instruction: call Class2.get 0
M=D      // line 10, instruction: call Class2.get 0
@SP      // line 10, instruction: call Class2.get 0
M=M+1    // line 10, instruction: call Class2.get 0
@THIS    // line 10, instruction: call Class2.get 0
D=M      // line 10, instruction: call Class2.get 0
@SP      // line 10, instruction: call Class2.get 0
A=M      // line 10, instruction: call Class2.get 0
M=D      // line 10, instruction: call Class2.get 0
@SP      // line 10, instruction: call Class2.get 0
M=M+1    // line 10, instruction: call Class2.get 0
@THAT    // line 10, instruction: call Class2.get 0
D=M      // line 10, instruction: call Class2.get 0
@SP      // line 10, instruction: call Class2.get 0
A=M      // line 10, instruction: call Class2.get 0
M=D      // line 10, instruction: call Class2.get 0
@SP      // line 10, instruction: call Class2.get 0
M=M+1    // line 10, instruction: call Class2.get 0
@5       // line 10, instruction: call Class2.get 0
D=A      // line 10, instruction: call Class2.get 0
@SP      // line 10, instruction: call Class2.get 0
D=M-D    // line 10, instruction: call Class2.get 0
@ARG     // line 10, instruction: call Class2.get 0
M=D      // line 10, instruction: call Class2.get 0
@SP      // line 10, instruction: call Class2.get 0
D=M      // line 10, instruction: call Class2.get 0
@LCL     // line 10, instruction: call Class2.get 0
M=D      // line 10, instruction: call Class2.get 0
@Class2.get // line 10, instruction: call Class2.get 0
0;JMP    // line 10, instruction: call Class2.get 0
(Class2.get$RETURN$10) // line 10, instruction: call Class2.get 0

(Sys.init$WHILE) // line 11, instruction: label WHILE

@Sys.init$WHILE // line 12, instruction: goto WHILE
0;JMP    // line 12, instruction: goto WHILE