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
(Sys.init) // line 0, instruction: function Sys.init 0

@4000	   // line 1, instruction: push constant 4000	
D=A      // line 1, instruction: push constant 4000	
@SP      // line 1, instruction: push constant 4000	
A=M      // line 1, instruction: push constant 4000	
M=D      // line 1, instruction: push constant 4000	
@SP      // line 1, instruction: push constant 4000	
M=M+1    // line 1, instruction: push constant 4000	

@SP      // line 2, instruction: pop pointer 0
M=M-1    // line 2, instruction: pop pointer 0
A=M      // line 2, instruction: pop pointer 0
D=M      // line 2, instruction: pop pointer 0
@THIS    // line 2, instruction: pop pointer 0
M=D      // line 2, instruction: pop pointer 0

@5000    // line 3, instruction: push constant 5000
D=A      // line 3, instruction: push constant 5000
@SP      // line 3, instruction: push constant 5000
A=M      // line 3, instruction: push constant 5000
M=D      // line 3, instruction: push constant 5000
@SP      // line 3, instruction: push constant 5000
M=M+1    // line 3, instruction: push constant 5000

@SP      // line 4, instruction: pop pointer 1
M=M-1    // line 4, instruction: pop pointer 1
A=M      // line 4, instruction: pop pointer 1
D=M      // line 4, instruction: pop pointer 1
@THAT    // line 4, instruction: pop pointer 1
M=D      // line 4, instruction: pop pointer 1

@Sys.main$RETURN$5 // line 5, instruction: call Sys.main 0
D=A      // line 5, instruction: call Sys.main 0
@SP      // line 5, instruction: call Sys.main 0
A=M      // line 5, instruction: call Sys.main 0
M=D      // line 5, instruction: call Sys.main 0
@SP      // line 5, instruction: call Sys.main 0
M=M+1 // call Sys.main$RETURN$5 // line 5, instruction: call Sys.main 0
@LCL     // line 5, instruction: call Sys.main 0
D=M      // line 5, instruction: call Sys.main 0
@SP      // line 5, instruction: call Sys.main 0
A=M      // line 5, instruction: call Sys.main 0
M=D      // line 5, instruction: call Sys.main 0
@SP      // line 5, instruction: call Sys.main 0
M=M+1    // line 5, instruction: call Sys.main 0
@ARG     // line 5, instruction: call Sys.main 0
D=M      // line 5, instruction: call Sys.main 0
@SP      // line 5, instruction: call Sys.main 0
A=M      // line 5, instruction: call Sys.main 0
M=D      // line 5, instruction: call Sys.main 0
@SP      // line 5, instruction: call Sys.main 0
M=M+1    // line 5, instruction: call Sys.main 0
@THIS    // line 5, instruction: call Sys.main 0
D=M      // line 5, instruction: call Sys.main 0
@SP      // line 5, instruction: call Sys.main 0
A=M      // line 5, instruction: call Sys.main 0
M=D      // line 5, instruction: call Sys.main 0
@SP      // line 5, instruction: call Sys.main 0
M=M+1    // line 5, instruction: call Sys.main 0
@THAT    // line 5, instruction: call Sys.main 0
D=M      // line 5, instruction: call Sys.main 0
@SP      // line 5, instruction: call Sys.main 0
A=M      // line 5, instruction: call Sys.main 0
M=D      // line 5, instruction: call Sys.main 0
@SP      // line 5, instruction: call Sys.main 0
M=M+1    // line 5, instruction: call Sys.main 0
@5       // line 5, instruction: call Sys.main 0
D=A      // line 5, instruction: call Sys.main 0
@SP      // line 5, instruction: call Sys.main 0
D=M-D    // line 5, instruction: call Sys.main 0
@ARG     // line 5, instruction: call Sys.main 0
M=D      // line 5, instruction: call Sys.main 0
@SP      // line 5, instruction: call Sys.main 0
D=M      // line 5, instruction: call Sys.main 0
@LCL     // line 5, instruction: call Sys.main 0
M=D      // line 5, instruction: call Sys.main 0
@Sys.main // line 5, instruction: call Sys.main 0
0;JMP    // line 5, instruction: call Sys.main 0
(Sys.main$RETURN$5) // line 5, instruction: call Sys.main 0

@5       // line 6, instruction: pop temp 1
D=A      // line 6, instruction: pop temp 1
@1       // line 6, instruction: pop temp 1
D=D+A    // line 6, instruction: pop temp 1
@R13     // line 6, instruction: pop temp 1
M=D      // line 6, instruction: pop temp 1
@SP      // line 6, instruction: pop temp 1
M=M-1    // line 6, instruction: pop temp 1
A=M      // line 6, instruction: pop temp 1
D=M      // line 6, instruction: pop temp 1
@R13     // line 6, instruction: pop temp 1
A=M      // line 6, instruction: pop temp 1
M=D      // line 6, instruction: pop temp 1

(Sys.init$LOOP) // line 7, instruction: label LOOP

@Sys.init$LOOP // line 8, instruction: goto LOOP
0;JMP    // line 8, instruction: goto LOOP

(Sys.main) // line 9, instruction: function Sys.main 5
@0       // line 9, instruction: function Sys.main 5
D=A      // line 9, instruction: function Sys.main 5
@SP      // line 9, instruction: function Sys.main 5
A=M      // line 9, instruction: function Sys.main 5
M=D      // line 9, instruction: function Sys.main 5
@SP      // line 9, instruction: function Sys.main 5
M=M+1    // line 9, instruction: function Sys.main 5
@0       // line 9, instruction: function Sys.main 5
D=A      // line 9, instruction: function Sys.main 5
@SP      // line 9, instruction: function Sys.main 5
A=M      // line 9, instruction: function Sys.main 5
M=D      // line 9, instruction: function Sys.main 5
@SP      // line 9, instruction: function Sys.main 5
M=M+1    // line 9, instruction: function Sys.main 5
@0       // line 9, instruction: function Sys.main 5
D=A      // line 9, instruction: function Sys.main 5
@SP      // line 9, instruction: function Sys.main 5
A=M      // line 9, instruction: function Sys.main 5
M=D      // line 9, instruction: function Sys.main 5
@SP      // line 9, instruction: function Sys.main 5
M=M+1    // line 9, instruction: function Sys.main 5
@0       // line 9, instruction: function Sys.main 5
D=A      // line 9, instruction: function Sys.main 5
@SP      // line 9, instruction: function Sys.main 5
A=M      // line 9, instruction: function Sys.main 5
M=D      // line 9, instruction: function Sys.main 5
@SP      // line 9, instruction: function Sys.main 5
M=M+1    // line 9, instruction: function Sys.main 5
@0       // line 9, instruction: function Sys.main 5
D=A      // line 9, instruction: function Sys.main 5
@SP      // line 9, instruction: function Sys.main 5
A=M      // line 9, instruction: function Sys.main 5
M=D      // line 9, instruction: function Sys.main 5
@SP      // line 9, instruction: function Sys.main 5
M=M+1    // line 9, instruction: function Sys.main 5

@4001    // line 10, instruction: push constant 4001
D=A      // line 10, instruction: push constant 4001
@SP      // line 10, instruction: push constant 4001
A=M      // line 10, instruction: push constant 4001
M=D      // line 10, instruction: push constant 4001
@SP      // line 10, instruction: push constant 4001
M=M+1    // line 10, instruction: push constant 4001

@SP      // line 11, instruction: pop pointer 0
M=M-1    // line 11, instruction: pop pointer 0
A=M      // line 11, instruction: pop pointer 0
D=M      // line 11, instruction: pop pointer 0
@THIS    // line 11, instruction: pop pointer 0
M=D      // line 11, instruction: pop pointer 0

@5001    // line 12, instruction: push constant 5001
D=A      // line 12, instruction: push constant 5001
@SP      // line 12, instruction: push constant 5001
A=M      // line 12, instruction: push constant 5001
M=D      // line 12, instruction: push constant 5001
@SP      // line 12, instruction: push constant 5001
M=M+1    // line 12, instruction: push constant 5001

@SP      // line 13, instruction: pop pointer 1
M=M-1    // line 13, instruction: pop pointer 1
A=M      // line 13, instruction: pop pointer 1
D=M      // line 13, instruction: pop pointer 1
@THAT    // line 13, instruction: pop pointer 1
M=D      // line 13, instruction: pop pointer 1

@200     // line 14, instruction: push constant 200
D=A      // line 14, instruction: push constant 200
@SP      // line 14, instruction: push constant 200
A=M      // line 14, instruction: push constant 200
M=D      // line 14, instruction: push constant 200
@SP      // line 14, instruction: push constant 200
M=M+1    // line 14, instruction: push constant 200

@LCL     // line 15, instruction: pop local 1
D=M      // line 15, instruction: pop local 1
@1       // line 15, instruction: pop local 1
D=D+A    // line 15, instruction: pop local 1
@R13     // line 15, instruction: pop local 1
M=D      // line 15, instruction: pop local 1
@SP      // line 15, instruction: pop local 1
M=M-1    // line 15, instruction: pop local 1
A=M      // line 15, instruction: pop local 1
D=M      // line 15, instruction: pop local 1
@R13     // line 15, instruction: pop local 1
A=M      // line 15, instruction: pop local 1
M=D      // line 15, instruction: pop local 1

@40      // line 16, instruction: push constant 40
D=A      // line 16, instruction: push constant 40
@SP      // line 16, instruction: push constant 40
A=M      // line 16, instruction: push constant 40
M=D      // line 16, instruction: push constant 40
@SP      // line 16, instruction: push constant 40
M=M+1    // line 16, instruction: push constant 40

@LCL     // line 17, instruction: pop local 2
D=M      // line 17, instruction: pop local 2
@2       // line 17, instruction: pop local 2
D=D+A    // line 17, instruction: pop local 2
@R13     // line 17, instruction: pop local 2
M=D      // line 17, instruction: pop local 2
@SP      // line 17, instruction: pop local 2
M=M-1    // line 17, instruction: pop local 2
A=M      // line 17, instruction: pop local 2
D=M      // line 17, instruction: pop local 2
@R13     // line 17, instruction: pop local 2
A=M      // line 17, instruction: pop local 2
M=D      // line 17, instruction: pop local 2

@6       // line 18, instruction: push constant 6
D=A      // line 18, instruction: push constant 6
@SP      // line 18, instruction: push constant 6
A=M      // line 18, instruction: push constant 6
M=D      // line 18, instruction: push constant 6
@SP      // line 18, instruction: push constant 6
M=M+1    // line 18, instruction: push constant 6

@LCL     // line 19, instruction: pop local 3
D=M      // line 19, instruction: pop local 3
@3       // line 19, instruction: pop local 3
D=D+A    // line 19, instruction: pop local 3
@R13     // line 19, instruction: pop local 3
M=D      // line 19, instruction: pop local 3
@SP      // line 19, instruction: pop local 3
M=M-1    // line 19, instruction: pop local 3
A=M      // line 19, instruction: pop local 3
D=M      // line 19, instruction: pop local 3
@R13     // line 19, instruction: pop local 3
A=M      // line 19, instruction: pop local 3
M=D      // line 19, instruction: pop local 3

@123     // line 20, instruction: push constant 123
D=A      // line 20, instruction: push constant 123
@SP      // line 20, instruction: push constant 123
A=M      // line 20, instruction: push constant 123
M=D      // line 20, instruction: push constant 123
@SP      // line 20, instruction: push constant 123
M=M+1    // line 20, instruction: push constant 123

@Sys.add12$RETURN$21 // line 21, instruction: call Sys.add12 1
D=A      // line 21, instruction: call Sys.add12 1
@SP      // line 21, instruction: call Sys.add12 1
A=M      // line 21, instruction: call Sys.add12 1
M=D      // line 21, instruction: call Sys.add12 1
@SP      // line 21, instruction: call Sys.add12 1
M=M+1 // call Sys.add12$RETURN$21 // line 21, instruction: call Sys.add12 1
@LCL     // line 21, instruction: call Sys.add12 1
D=M      // line 21, instruction: call Sys.add12 1
@SP      // line 21, instruction: call Sys.add12 1
A=M      // line 21, instruction: call Sys.add12 1
M=D      // line 21, instruction: call Sys.add12 1
@SP      // line 21, instruction: call Sys.add12 1
M=M+1    // line 21, instruction: call Sys.add12 1
@ARG     // line 21, instruction: call Sys.add12 1
D=M      // line 21, instruction: call Sys.add12 1
@SP      // line 21, instruction: call Sys.add12 1
A=M      // line 21, instruction: call Sys.add12 1
M=D      // line 21, instruction: call Sys.add12 1
@SP      // line 21, instruction: call Sys.add12 1
M=M+1    // line 21, instruction: call Sys.add12 1
@THIS    // line 21, instruction: call Sys.add12 1
D=M      // line 21, instruction: call Sys.add12 1
@SP      // line 21, instruction: call Sys.add12 1
A=M      // line 21, instruction: call Sys.add12 1
M=D      // line 21, instruction: call Sys.add12 1
@SP      // line 21, instruction: call Sys.add12 1
M=M+1    // line 21, instruction: call Sys.add12 1
@THAT    // line 21, instruction: call Sys.add12 1
D=M      // line 21, instruction: call Sys.add12 1
@SP      // line 21, instruction: call Sys.add12 1
A=M      // line 21, instruction: call Sys.add12 1
M=D      // line 21, instruction: call Sys.add12 1
@SP      // line 21, instruction: call Sys.add12 1
M=M+1    // line 21, instruction: call Sys.add12 1
@6       // line 21, instruction: call Sys.add12 1
D=A      // line 21, instruction: call Sys.add12 1
@SP      // line 21, instruction: call Sys.add12 1
D=M-D    // line 21, instruction: call Sys.add12 1
@ARG     // line 21, instruction: call Sys.add12 1
M=D      // line 21, instruction: call Sys.add12 1
@SP      // line 21, instruction: call Sys.add12 1
D=M      // line 21, instruction: call Sys.add12 1
@LCL     // line 21, instruction: call Sys.add12 1
M=D      // line 21, instruction: call Sys.add12 1
@Sys.add12 // line 21, instruction: call Sys.add12 1
0;JMP    // line 21, instruction: call Sys.add12 1
(Sys.add12$RETURN$21) // line 21, instruction: call Sys.add12 1

@5       // line 22, instruction: pop temp 0
D=A      // line 22, instruction: pop temp 0
@0       // line 22, instruction: pop temp 0
D=D+A    // line 22, instruction: pop temp 0
@R13     // line 22, instruction: pop temp 0
M=D      // line 22, instruction: pop temp 0
@SP      // line 22, instruction: pop temp 0
M=M-1    // line 22, instruction: pop temp 0
A=M      // line 22, instruction: pop temp 0
D=M      // line 22, instruction: pop temp 0
@R13     // line 22, instruction: pop temp 0
A=M      // line 22, instruction: pop temp 0
M=D      // line 22, instruction: pop temp 0

@LCL     // line 23, instruction: push local 0
D=M      // line 23, instruction: push local 0
@0       // line 23, instruction: push local 0
A=D+A    // line 23, instruction: push local 0
D=M      // line 23, instruction: push local 0
@SP      // line 23, instruction: push local 0
A=M      // line 23, instruction: push local 0
M=D      // line 23, instruction: push local 0
@SP      // line 23, instruction: push local 0
M=M+1    // line 23, instruction: push local 0

@LCL     // line 24, instruction: push local 1
D=M      // line 24, instruction: push local 1
@1       // line 24, instruction: push local 1
A=D+A    // line 24, instruction: push local 1
D=M      // line 24, instruction: push local 1
@SP      // line 24, instruction: push local 1
A=M      // line 24, instruction: push local 1
M=D      // line 24, instruction: push local 1
@SP      // line 24, instruction: push local 1
M=M+1    // line 24, instruction: push local 1

@LCL     // line 25, instruction: push local 2
D=M      // line 25, instruction: push local 2
@2       // line 25, instruction: push local 2
A=D+A    // line 25, instruction: push local 2
D=M      // line 25, instruction: push local 2
@SP      // line 25, instruction: push local 2
A=M      // line 25, instruction: push local 2
M=D      // line 25, instruction: push local 2
@SP      // line 25, instruction: push local 2
M=M+1    // line 25, instruction: push local 2

@LCL     // line 26, instruction: push local 3
D=M      // line 26, instruction: push local 3
@3       // line 26, instruction: push local 3
A=D+A    // line 26, instruction: push local 3
D=M      // line 26, instruction: push local 3
@SP      // line 26, instruction: push local 3
A=M      // line 26, instruction: push local 3
M=D      // line 26, instruction: push local 3
@SP      // line 26, instruction: push local 3
M=M+1    // line 26, instruction: push local 3

@LCL     // line 27, instruction: push local 4
D=M      // line 27, instruction: push local 4
@4       // line 27, instruction: push local 4
A=D+A    // line 27, instruction: push local 4
D=M      // line 27, instruction: push local 4
@SP      // line 27, instruction: push local 4
A=M      // line 27, instruction: push local 4
M=D      // line 27, instruction: push local 4
@SP      // line 27, instruction: push local 4
M=M+1    // line 27, instruction: push local 4

@SP      // line 28, instruction: add
M=M-1    // line 28, instruction: add
A=M      // line 28, instruction: add
D=M      // line 28, instruction: add
@SP      // line 28, instruction: add
M=M-1    // line 28, instruction: add
A=M      // line 28, instruction: add
D=D+M    // line 28, instruction: add
@SP      // line 28, instruction: add
A=M      // line 28, instruction: add
M=D      // line 28, instruction: add
@SP      // line 28, instruction: add
M=M+1    // line 28, instruction: add

@SP      // line 29, instruction: add
M=M-1    // line 29, instruction: add
A=M      // line 29, instruction: add
D=M      // line 29, instruction: add
@SP      // line 29, instruction: add
M=M-1    // line 29, instruction: add
A=M      // line 29, instruction: add
D=D+M    // line 29, instruction: add
@SP      // line 29, instruction: add
A=M      // line 29, instruction: add
M=D      // line 29, instruction: add
@SP      // line 29, instruction: add
M=M+1    // line 29, instruction: add

@SP      // line 30, instruction: add
M=M-1    // line 30, instruction: add
A=M      // line 30, instruction: add
D=M      // line 30, instruction: add
@SP      // line 30, instruction: add
M=M-1    // line 30, instruction: add
A=M      // line 30, instruction: add
D=D+M    // line 30, instruction: add
@SP      // line 30, instruction: add
A=M      // line 30, instruction: add
M=D      // line 30, instruction: add
@SP      // line 30, instruction: add
M=M+1    // line 30, instruction: add

@SP      // line 31, instruction: add
M=M-1    // line 31, instruction: add
A=M      // line 31, instruction: add
D=M      // line 31, instruction: add
@SP      // line 31, instruction: add
M=M-1    // line 31, instruction: add
A=M      // line 31, instruction: add
D=D+M    // line 31, instruction: add
@SP      // line 31, instruction: add
A=M      // line 31, instruction: add
M=D      // line 31, instruction: add
@SP      // line 31, instruction: add
M=M+1    // line 31, instruction: add

@LCL     // line 32, instruction: return
D=M      // line 32, instruction: return
@R13     // line 32, instruction: return
M=D      // line 32, instruction: return
@R13     // line 32, instruction: return
D=M      // line 32, instruction: return
@5       // line 32, instruction: return
A=D-A    // line 32, instruction: return
D=M      // line 32, instruction: return
@R14     // line 32, instruction: return
M=D      // line 32, instruction: return
@SP      // line 32, instruction: return
M=M-1    // line 32, instruction: return
A=M      // line 32, instruction: return
D=M      // line 32, instruction: return
@ARG     // line 32, instruction: return
A=M      // line 32, instruction: return
M=D      // line 32, instruction: return
@ARG     // line 32, instruction: return
D=M+1    // line 32, instruction: return
@SP      // line 32, instruction: return
M=D      // line 32, instruction: return
@R13     // line 32, instruction: return
D=M      // line 32, instruction: return
@1       // line 32, instruction: return
A=D-A    // line 32, instruction: return
D=M      // line 32, instruction: return
@THAT    // line 32, instruction: return
M=D      // line 32, instruction: return
@R13     // line 32, instruction: return
D=M      // line 32, instruction: return
@2       // line 32, instruction: return
A=D-A    // line 32, instruction: return
D=M      // line 32, instruction: return
@THIS    // line 32, instruction: return
M=D      // line 32, instruction: return
@R13     // line 32, instruction: return
D=M      // line 32, instruction: return
@3       // line 32, instruction: return
A=D-A    // line 32, instruction: return
D=M      // line 32, instruction: return
@ARG     // line 32, instruction: return
M=D      // line 32, instruction: return
@R13     // line 32, instruction: return
D=M      // line 32, instruction: return
@4       // line 32, instruction: return
A=D-A    // line 32, instruction: return
D=M      // line 32, instruction: return
@LCL     // line 32, instruction: return
M=D      // line 32, instruction: return
@R14     // line 32, instruction: return
A=M      // line 32, instruction: return
0;JMP    // line 32, instruction: return

(Sys.add12) // line 33, instruction: function Sys.add12 0

@4002    // line 34, instruction: push constant 4002
D=A      // line 34, instruction: push constant 4002
@SP      // line 34, instruction: push constant 4002
A=M      // line 34, instruction: push constant 4002
M=D      // line 34, instruction: push constant 4002
@SP      // line 34, instruction: push constant 4002
M=M+1    // line 34, instruction: push constant 4002

@SP      // line 35, instruction: pop pointer 0
M=M-1    // line 35, instruction: pop pointer 0
A=M      // line 35, instruction: pop pointer 0
D=M      // line 35, instruction: pop pointer 0
@THIS    // line 35, instruction: pop pointer 0
M=D      // line 35, instruction: pop pointer 0

@5002    // line 36, instruction: push constant 5002
D=A      // line 36, instruction: push constant 5002
@SP      // line 36, instruction: push constant 5002
A=M      // line 36, instruction: push constant 5002
M=D      // line 36, instruction: push constant 5002
@SP      // line 36, instruction: push constant 5002
M=M+1    // line 36, instruction: push constant 5002

@SP      // line 37, instruction: pop pointer 1
M=M-1    // line 37, instruction: pop pointer 1
A=M      // line 37, instruction: pop pointer 1
D=M      // line 37, instruction: pop pointer 1
@THAT    // line 37, instruction: pop pointer 1
M=D      // line 37, instruction: pop pointer 1

@ARG     // line 38, instruction: push argument 0
D=M      // line 38, instruction: push argument 0
@0       // line 38, instruction: push argument 0
A=D+A    // line 38, instruction: push argument 0
D=M      // line 38, instruction: push argument 0
@SP      // line 38, instruction: push argument 0
A=M      // line 38, instruction: push argument 0
M=D      // line 38, instruction: push argument 0
@SP      // line 38, instruction: push argument 0
M=M+1    // line 38, instruction: push argument 0

@12      // line 39, instruction: push constant 12
D=A      // line 39, instruction: push constant 12
@SP      // line 39, instruction: push constant 12
A=M      // line 39, instruction: push constant 12
M=D      // line 39, instruction: push constant 12
@SP      // line 39, instruction: push constant 12
M=M+1    // line 39, instruction: push constant 12

@SP      // line 40, instruction: add
M=M-1    // line 40, instruction: add
A=M      // line 40, instruction: add
D=M      // line 40, instruction: add
@SP      // line 40, instruction: add
M=M-1    // line 40, instruction: add
A=M      // line 40, instruction: add
D=D+M    // line 40, instruction: add
@SP      // line 40, instruction: add
A=M      // line 40, instruction: add
M=D      // line 40, instruction: add
@SP      // line 40, instruction: add
M=M+1    // line 40, instruction: add

@LCL     // line 41, instruction: return
D=M      // line 41, instruction: return
@R13     // line 41, instruction: return
M=D      // line 41, instruction: return
@R13     // line 41, instruction: return
D=M      // line 41, instruction: return
@5       // line 41, instruction: return
A=D-A    // line 41, instruction: return
D=M      // line 41, instruction: return
@R14     // line 41, instruction: return
M=D      // line 41, instruction: return
@SP      // line 41, instruction: return
M=M-1    // line 41, instruction: return
A=M      // line 41, instruction: return
D=M      // line 41, instruction: return
@ARG     // line 41, instruction: return
A=M      // line 41, instruction: return
M=D      // line 41, instruction: return
@ARG     // line 41, instruction: return
D=M+1    // line 41, instruction: return
@SP      // line 41, instruction: return
M=D      // line 41, instruction: return
@R13     // line 41, instruction: return
D=M      // line 41, instruction: return
@1       // line 41, instruction: return
A=D-A    // line 41, instruction: return
D=M      // line 41, instruction: return
@THAT    // line 41, instruction: return
M=D      // line 41, instruction: return
@R13     // line 41, instruction: return
D=M      // line 41, instruction: return
@2       // line 41, instruction: return
A=D-A    // line 41, instruction: return
D=M      // line 41, instruction: return
@THIS    // line 41, instruction: return
M=D      // line 41, instruction: return
@R13     // line 41, instruction: return
D=M      // line 41, instruction: return
@3       // line 41, instruction: return
A=D-A    // line 41, instruction: return
D=M      // line 41, instruction: return
@ARG     // line 41, instruction: return
M=D      // line 41, instruction: return
@R13     // line 41, instruction: return
D=M      // line 41, instruction: return
@4       // line 41, instruction: return
A=D-A    // line 41, instruction: return
D=M      // line 41, instruction: return
@LCL     // line 41, instruction: return
M=D      // line 41, instruction: return
@R14     // line 41, instruction: return
A=M      // line 41, instruction: return
0;JMP    // line 41, instruction: return