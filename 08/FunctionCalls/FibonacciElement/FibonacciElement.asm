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
(Main.fibonacci) // line 0, instruction: function Main.fibonacci 0

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

@2       // line 2, instruction: push constant 2
D=A      // line 2, instruction: push constant 2
@SP      // line 2, instruction: push constant 2
A=M      // line 2, instruction: push constant 2
M=D      // line 2, instruction: push constant 2
@SP      // line 2, instruction: push constant 2
M=M+1    // line 2, instruction: push constant 2

@SP      // line 3, instruction: lt                     
M=M-1    // line 3, instruction: lt                     
A=M      // line 3, instruction: lt                     
D=M      // line 3, instruction: lt                     
@SP      // line 3, instruction: lt                     
M=M-1    // line 3, instruction: lt                     
A=M      // line 3, instruction: lt                     
D=M-D    // line 3, instruction: lt                     
@JMP$50839f04879f97213fca4710d1b3aa8b4df06de7cb21976051ffd5758edc5f21$3$TRUE // line 3, instruction: lt                     
D;JLT    // line 3, instruction: lt                     
D=0      // line 3, instruction: lt                     
@JMP$50839f04879f97213fca4710d1b3aa8b4df06de7cb21976051ffd5758edc5f21$3$THEN // line 3, instruction: lt                     
0;JMP    // line 3, instruction: lt                     
(JMP$50839f04879f97213fca4710d1b3aa8b4df06de7cb21976051ffd5758edc5f21$3$TRUE) // line 3, instruction: lt                     
D=-1     // line 3, instruction: lt                     
(JMP$50839f04879f97213fca4710d1b3aa8b4df06de7cb21976051ffd5758edc5f21$3$THEN) // line 3, instruction: lt                     
@SP      // line 3, instruction: lt                     
A=M      // line 3, instruction: lt                     
M=D      // line 3, instruction: lt                     
@SP      // line 3, instruction: lt                     
M=M+1    // line 3, instruction: lt                     

@SP      // line 4, instruction: if-goto IF_TRUE
M=M-1    // line 4, instruction: if-goto IF_TRUE
A=M      // line 4, instruction: if-goto IF_TRUE
D=M      // line 4, instruction: if-goto IF_TRUE
@Main.fibonacci$IF_TRUE // line 4, instruction: if-goto IF_TRUE
0;JNE    // line 4, instruction: if-goto IF_TRUE

@Main.fibonacci$IF_FALSE // line 5, instruction: goto IF_FALSE
0;JMP    // line 5, instruction: goto IF_FALSE

(Main.fibonacci$IF_TRUE) // line 6, instruction: label IF_TRUE          

@ARG     // line 7, instruction: push argument 0        
D=M      // line 7, instruction: push argument 0        
@0       // line 7, instruction: push argument 0        
A=D+A    // line 7, instruction: push argument 0        
D=M      // line 7, instruction: push argument 0        
@SP      // line 7, instruction: push argument 0        
A=M      // line 7, instruction: push argument 0        
M=D      // line 7, instruction: push argument 0        
@SP      // line 7, instruction: push argument 0        
M=M+1    // line 7, instruction: push argument 0        

@LCL     // line 8, instruction: return
D=M      // line 8, instruction: return
@R13     // line 8, instruction: return
M=D      // line 8, instruction: return
@R13     // line 8, instruction: return
D=M      // line 8, instruction: return
@R14     // line 8, instruction: return
A=D-A    // line 8, instruction: return
D=M      // line 8, instruction: return
@5       // line 8, instruction: return
M=D      // line 8, instruction: return
@SP      // line 8, instruction: return
M=M-1    // line 8, instruction: return
A=M      // line 8, instruction: return
D=M      // line 8, instruction: return
@ARG     // line 8, instruction: return
A=M      // line 8, instruction: return
M=D      // line 8, instruction: return
@ARG     // line 8, instruction: return
D=M+1    // line 8, instruction: return
@SP      // line 8, instruction: return
M=D      // line 8, instruction: return
@R13     // line 8, instruction: return
D=M      // line 8, instruction: return
@LCL     // line 8, instruction: return
A=D-A    // line 8, instruction: return
D=M      // line 8, instruction: return
@1       // line 8, instruction: return
M=D      // line 8, instruction: return
@R13     // line 8, instruction: return
D=M      // line 8, instruction: return
@THIS    // line 8, instruction: return
A=D-A    // line 8, instruction: return
D=M      // line 8, instruction: return
@2       // line 8, instruction: return
M=D      // line 8, instruction: return
@R13     // line 8, instruction: return
D=M      // line 8, instruction: return
@THAT    // line 8, instruction: return
A=D-A    // line 8, instruction: return
D=M      // line 8, instruction: return
@3       // line 8, instruction: return
M=D      // line 8, instruction: return
@R13     // line 8, instruction: return
D=M      // line 8, instruction: return
@ARG     // line 8, instruction: return
A=D-A    // line 8, instruction: return
D=M      // line 8, instruction: return
@4       // line 8, instruction: return
M=D      // line 8, instruction: return
@R14     // line 8, instruction: return
A=M      // line 8, instruction: return
0;JMP    // line 8, instruction: return

(Main.fibonacci$IF_FALSE) // line 9, instruction: label IF_FALSE         

@ARG     // line 10, instruction: push argument 0
D=M      // line 10, instruction: push argument 0
@0       // line 10, instruction: push argument 0
A=D+A    // line 10, instruction: push argument 0
D=M      // line 10, instruction: push argument 0
@SP      // line 10, instruction: push argument 0
A=M      // line 10, instruction: push argument 0
M=D      // line 10, instruction: push argument 0
@SP      // line 10, instruction: push argument 0
M=M+1    // line 10, instruction: push argument 0

@2       // line 11, instruction: push constant 2
D=A      // line 11, instruction: push constant 2
@SP      // line 11, instruction: push constant 2
A=M      // line 11, instruction: push constant 2
M=D      // line 11, instruction: push constant 2
@SP      // line 11, instruction: push constant 2
M=M+1    // line 11, instruction: push constant 2

@SP      // line 12, instruction: sub
M=M-1    // line 12, instruction: sub
A=M      // line 12, instruction: sub
D=M      // line 12, instruction: sub
@SP      // line 12, instruction: sub
M=M-1    // line 12, instruction: sub
A=M      // line 12, instruction: sub
D=M-D    // line 12, instruction: sub
@SP      // line 12, instruction: sub
A=M      // line 12, instruction: sub
M=D      // line 12, instruction: sub
@SP      // line 12, instruction: sub
M=M+1    // line 12, instruction: sub

@Main.fibonacci$RETURN$13 // line 13, instruction: call Main.fibonacci 1  
D=A      // line 13, instruction: call Main.fibonacci 1  
@SP      // line 13, instruction: call Main.fibonacci 1  
A=M      // line 13, instruction: call Main.fibonacci 1  
M=D      // line 13, instruction: call Main.fibonacci 1  
@SP      // line 13, instruction: call Main.fibonacci 1  
M=M+1 // call Main.fibonacci$RETURN$13 // line 13, instruction: call Main.fibonacci 1  
@LCL     // line 13, instruction: call Main.fibonacci 1  
D=M      // line 13, instruction: call Main.fibonacci 1  
@SP      // line 13, instruction: call Main.fibonacci 1  
A=M      // line 13, instruction: call Main.fibonacci 1  
M=D      // line 13, instruction: call Main.fibonacci 1  
@SP      // line 13, instruction: call Main.fibonacci 1  
M=M+1    // line 13, instruction: call Main.fibonacci 1  
@ARG     // line 13, instruction: call Main.fibonacci 1  
D=M      // line 13, instruction: call Main.fibonacci 1  
@SP      // line 13, instruction: call Main.fibonacci 1  
A=M      // line 13, instruction: call Main.fibonacci 1  
M=D      // line 13, instruction: call Main.fibonacci 1  
@SP      // line 13, instruction: call Main.fibonacci 1  
M=M+1    // line 13, instruction: call Main.fibonacci 1  
@THIS    // line 13, instruction: call Main.fibonacci 1  
D=M      // line 13, instruction: call Main.fibonacci 1  
@SP      // line 13, instruction: call Main.fibonacci 1  
A=M      // line 13, instruction: call Main.fibonacci 1  
M=D      // line 13, instruction: call Main.fibonacci 1  
@SP      // line 13, instruction: call Main.fibonacci 1  
M=M+1    // line 13, instruction: call Main.fibonacci 1  
@THAT    // line 13, instruction: call Main.fibonacci 1  
D=M      // line 13, instruction: call Main.fibonacci 1  
@SP      // line 13, instruction: call Main.fibonacci 1  
A=M      // line 13, instruction: call Main.fibonacci 1  
M=D      // line 13, instruction: call Main.fibonacci 1  
@SP      // line 13, instruction: call Main.fibonacci 1  
M=M+1    // line 13, instruction: call Main.fibonacci 1  
@6       // line 13, instruction: call Main.fibonacci 1  
D=A      // line 13, instruction: call Main.fibonacci 1  
@SP      // line 13, instruction: call Main.fibonacci 1  
D=M-D    // line 13, instruction: call Main.fibonacci 1  
@ARG     // line 13, instruction: call Main.fibonacci 1  
M=D      // line 13, instruction: call Main.fibonacci 1  
@SP      // line 13, instruction: call Main.fibonacci 1  
D=M      // line 13, instruction: call Main.fibonacci 1  
@LCL     // line 13, instruction: call Main.fibonacci 1  
M=D      // line 13, instruction: call Main.fibonacci 1  
@Main.fibonacci // line 13, instruction: call Main.fibonacci 1  
0;JMP    // line 13, instruction: call Main.fibonacci 1  
(Main.fibonacci$RETURN$13) // line 13, instruction: call Main.fibonacci 1  

@ARG     // line 14, instruction: push argument 0
D=M      // line 14, instruction: push argument 0
@0       // line 14, instruction: push argument 0
A=D+A    // line 14, instruction: push argument 0
D=M      // line 14, instruction: push argument 0
@SP      // line 14, instruction: push argument 0
A=M      // line 14, instruction: push argument 0
M=D      // line 14, instruction: push argument 0
@SP      // line 14, instruction: push argument 0
M=M+1    // line 14, instruction: push argument 0

@1       // line 15, instruction: push constant 1
D=A      // line 15, instruction: push constant 1
@SP      // line 15, instruction: push constant 1
A=M      // line 15, instruction: push constant 1
M=D      // line 15, instruction: push constant 1
@SP      // line 15, instruction: push constant 1
M=M+1    // line 15, instruction: push constant 1

@SP      // line 16, instruction: sub
M=M-1    // line 16, instruction: sub
A=M      // line 16, instruction: sub
D=M      // line 16, instruction: sub
@SP      // line 16, instruction: sub
M=M-1    // line 16, instruction: sub
A=M      // line 16, instruction: sub
D=M-D    // line 16, instruction: sub
@SP      // line 16, instruction: sub
A=M      // line 16, instruction: sub
M=D      // line 16, instruction: sub
@SP      // line 16, instruction: sub
M=M+1    // line 16, instruction: sub

@Main.fibonacci$RETURN$17 // line 17, instruction: call Main.fibonacci 1  
D=A      // line 17, instruction: call Main.fibonacci 1  
@SP      // line 17, instruction: call Main.fibonacci 1  
A=M      // line 17, instruction: call Main.fibonacci 1  
M=D      // line 17, instruction: call Main.fibonacci 1  
@SP      // line 17, instruction: call Main.fibonacci 1  
M=M+1 // call Main.fibonacci$RETURN$17 // line 17, instruction: call Main.fibonacci 1  
@LCL     // line 17, instruction: call Main.fibonacci 1  
D=M      // line 17, instruction: call Main.fibonacci 1  
@SP      // line 17, instruction: call Main.fibonacci 1  
A=M      // line 17, instruction: call Main.fibonacci 1  
M=D      // line 17, instruction: call Main.fibonacci 1  
@SP      // line 17, instruction: call Main.fibonacci 1  
M=M+1    // line 17, instruction: call Main.fibonacci 1  
@ARG     // line 17, instruction: call Main.fibonacci 1  
D=M      // line 17, instruction: call Main.fibonacci 1  
@SP      // line 17, instruction: call Main.fibonacci 1  
A=M      // line 17, instruction: call Main.fibonacci 1  
M=D      // line 17, instruction: call Main.fibonacci 1  
@SP      // line 17, instruction: call Main.fibonacci 1  
M=M+1    // line 17, instruction: call Main.fibonacci 1  
@THIS    // line 17, instruction: call Main.fibonacci 1  
D=M      // line 17, instruction: call Main.fibonacci 1  
@SP      // line 17, instruction: call Main.fibonacci 1  
A=M      // line 17, instruction: call Main.fibonacci 1  
M=D      // line 17, instruction: call Main.fibonacci 1  
@SP      // line 17, instruction: call Main.fibonacci 1  
M=M+1    // line 17, instruction: call Main.fibonacci 1  
@THAT    // line 17, instruction: call Main.fibonacci 1  
D=M      // line 17, instruction: call Main.fibonacci 1  
@SP      // line 17, instruction: call Main.fibonacci 1  
A=M      // line 17, instruction: call Main.fibonacci 1  
M=D      // line 17, instruction: call Main.fibonacci 1  
@SP      // line 17, instruction: call Main.fibonacci 1  
M=M+1    // line 17, instruction: call Main.fibonacci 1  
@6       // line 17, instruction: call Main.fibonacci 1  
D=A      // line 17, instruction: call Main.fibonacci 1  
@SP      // line 17, instruction: call Main.fibonacci 1  
D=M-D    // line 17, instruction: call Main.fibonacci 1  
@ARG     // line 17, instruction: call Main.fibonacci 1  
M=D      // line 17, instruction: call Main.fibonacci 1  
@SP      // line 17, instruction: call Main.fibonacci 1  
D=M      // line 17, instruction: call Main.fibonacci 1  
@LCL     // line 17, instruction: call Main.fibonacci 1  
M=D      // line 17, instruction: call Main.fibonacci 1  
@Main.fibonacci // line 17, instruction: call Main.fibonacci 1  
0;JMP    // line 17, instruction: call Main.fibonacci 1  
(Main.fibonacci$RETURN$17) // line 17, instruction: call Main.fibonacci 1  

@SP      // line 18, instruction: add                    
M=M-1    // line 18, instruction: add                    
A=M      // line 18, instruction: add                    
D=M      // line 18, instruction: add                    
@SP      // line 18, instruction: add                    
M=M-1    // line 18, instruction: add                    
A=M      // line 18, instruction: add                    
D=D+M    // line 18, instruction: add                    
@SP      // line 18, instruction: add                    
A=M      // line 18, instruction: add                    
M=D      // line 18, instruction: add                    
@SP      // line 18, instruction: add                    
M=M+1    // line 18, instruction: add                    

@LCL     // line 19, instruction: return
D=M      // line 19, instruction: return
@R13     // line 19, instruction: return
M=D      // line 19, instruction: return
@R13     // line 19, instruction: return
D=M      // line 19, instruction: return
@R14     // line 19, instruction: return
A=D-A    // line 19, instruction: return
D=M      // line 19, instruction: return
@5       // line 19, instruction: return
M=D      // line 19, instruction: return
@SP      // line 19, instruction: return
M=M-1    // line 19, instruction: return
A=M      // line 19, instruction: return
D=M      // line 19, instruction: return
@ARG     // line 19, instruction: return
A=M      // line 19, instruction: return
M=D      // line 19, instruction: return
@ARG     // line 19, instruction: return
D=M+1    // line 19, instruction: return
@SP      // line 19, instruction: return
M=D      // line 19, instruction: return
@R13     // line 19, instruction: return
D=M      // line 19, instruction: return
@LCL     // line 19, instruction: return
A=D-A    // line 19, instruction: return
D=M      // line 19, instruction: return
@1       // line 19, instruction: return
M=D      // line 19, instruction: return
@R13     // line 19, instruction: return
D=M      // line 19, instruction: return
@THIS    // line 19, instruction: return
A=D-A    // line 19, instruction: return
D=M      // line 19, instruction: return
@2       // line 19, instruction: return
M=D      // line 19, instruction: return
@R13     // line 19, instruction: return
D=M      // line 19, instruction: return
@THAT    // line 19, instruction: return
A=D-A    // line 19, instruction: return
D=M      // line 19, instruction: return
@3       // line 19, instruction: return
M=D      // line 19, instruction: return
@R13     // line 19, instruction: return
D=M      // line 19, instruction: return
@ARG     // line 19, instruction: return
A=D-A    // line 19, instruction: return
D=M      // line 19, instruction: return
@4       // line 19, instruction: return
M=D      // line 19, instruction: return
@R14     // line 19, instruction: return
A=M      // line 19, instruction: return
0;JMP    // line 19, instruction: return
(Sys.init) // line 0, instruction: function Sys.init 0

@4       // line 1, instruction: push constant 4
D=A      // line 1, instruction: push constant 4
@SP      // line 1, instruction: push constant 4
A=M      // line 1, instruction: push constant 4
M=D      // line 1, instruction: push constant 4
@SP      // line 1, instruction: push constant 4
M=M+1    // line 1, instruction: push constant 4

@Main.fibonacci$RETURN$2 // line 2, instruction: call Main.fibonacci 1   
D=A      // line 2, instruction: call Main.fibonacci 1   
@SP      // line 2, instruction: call Main.fibonacci 1   
A=M      // line 2, instruction: call Main.fibonacci 1   
M=D      // line 2, instruction: call Main.fibonacci 1   
@SP      // line 2, instruction: call Main.fibonacci 1   
M=M+1 // call Main.fibonacci$RETURN$2 // line 2, instruction: call Main.fibonacci 1   
@LCL     // line 2, instruction: call Main.fibonacci 1   
D=M      // line 2, instruction: call Main.fibonacci 1   
@SP      // line 2, instruction: call Main.fibonacci 1   
A=M      // line 2, instruction: call Main.fibonacci 1   
M=D      // line 2, instruction: call Main.fibonacci 1   
@SP      // line 2, instruction: call Main.fibonacci 1   
M=M+1    // line 2, instruction: call Main.fibonacci 1   
@ARG     // line 2, instruction: call Main.fibonacci 1   
D=M      // line 2, instruction: call Main.fibonacci 1   
@SP      // line 2, instruction: call Main.fibonacci 1   
A=M      // line 2, instruction: call Main.fibonacci 1   
M=D      // line 2, instruction: call Main.fibonacci 1   
@SP      // line 2, instruction: call Main.fibonacci 1   
M=M+1    // line 2, instruction: call Main.fibonacci 1   
@THIS    // line 2, instruction: call Main.fibonacci 1   
D=M      // line 2, instruction: call Main.fibonacci 1   
@SP      // line 2, instruction: call Main.fibonacci 1   
A=M      // line 2, instruction: call Main.fibonacci 1   
M=D      // line 2, instruction: call Main.fibonacci 1   
@SP      // line 2, instruction: call Main.fibonacci 1   
M=M+1    // line 2, instruction: call Main.fibonacci 1   
@THAT    // line 2, instruction: call Main.fibonacci 1   
D=M      // line 2, instruction: call Main.fibonacci 1   
@SP      // line 2, instruction: call Main.fibonacci 1   
A=M      // line 2, instruction: call Main.fibonacci 1   
M=D      // line 2, instruction: call Main.fibonacci 1   
@SP      // line 2, instruction: call Main.fibonacci 1   
M=M+1    // line 2, instruction: call Main.fibonacci 1   
@6       // line 2, instruction: call Main.fibonacci 1   
D=A      // line 2, instruction: call Main.fibonacci 1   
@SP      // line 2, instruction: call Main.fibonacci 1   
D=M-D    // line 2, instruction: call Main.fibonacci 1   
@ARG     // line 2, instruction: call Main.fibonacci 1   
M=D      // line 2, instruction: call Main.fibonacci 1   
@SP      // line 2, instruction: call Main.fibonacci 1   
D=M      // line 2, instruction: call Main.fibonacci 1   
@LCL     // line 2, instruction: call Main.fibonacci 1   
M=D      // line 2, instruction: call Main.fibonacci 1   
@Main.fibonacci // line 2, instruction: call Main.fibonacci 1   
0;JMP    // line 2, instruction: call Main.fibonacci 1   
(Main.fibonacci$RETURN$2) // line 2, instruction: call Main.fibonacci 1   

(Sys.init$WHILE) // line 3, instruction: label WHILE

@Sys.init$WHILE // line 4, instruction: goto WHILE
0;JMP    // line 4, instruction: goto WHILE