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
@0       // line 0, instruction: push constant 0    
D=A      // line 0, instruction: push constant 0    
@SP      // line 0, instruction: push constant 0    
A=M      // line 0, instruction: push constant 0    
M=D      // line 0, instruction: push constant 0    
@SP      // line 0, instruction: push constant 0    
M=M+1    // line 0, instruction: push constant 0    

@LCL     // line 1, instruction: pop local 0         
D=M      // line 1, instruction: pop local 0         
@0       // line 1, instruction: pop local 0         
D=D+A    // line 1, instruction: pop local 0         
@R13     // line 1, instruction: pop local 0         
M=D      // line 1, instruction: pop local 0         
@SP      // line 1, instruction: pop local 0         
M=M-1    // line 1, instruction: pop local 0         
A=M      // line 1, instruction: pop local 0         
D=M      // line 1, instruction: pop local 0         
@R13     // line 1, instruction: pop local 0         
A=M      // line 1, instruction: pop local 0         
M=D      // line 1, instruction: pop local 0         

(GLOBAL_LABEL$LOOP_START) // line 2, instruction: label LOOP_START

@ARG     // line 3, instruction: push argument 0    
D=M      // line 3, instruction: push argument 0    
@0       // line 3, instruction: push argument 0    
A=D+A    // line 3, instruction: push argument 0    
D=M      // line 3, instruction: push argument 0    
@SP      // line 3, instruction: push argument 0    
A=M      // line 3, instruction: push argument 0    
M=D      // line 3, instruction: push argument 0    
@SP      // line 3, instruction: push argument 0    
M=M+1    // line 3, instruction: push argument 0    

@LCL     // line 4, instruction: push local 0
D=M      // line 4, instruction: push local 0
@0       // line 4, instruction: push local 0
A=D+A    // line 4, instruction: push local 0
D=M      // line 4, instruction: push local 0
@SP      // line 4, instruction: push local 0
A=M      // line 4, instruction: push local 0
M=D      // line 4, instruction: push local 0
@SP      // line 4, instruction: push local 0
M=M+1    // line 4, instruction: push local 0

@SP      // line 5, instruction: add
M=M-1    // line 5, instruction: add
A=M      // line 5, instruction: add
D=M      // line 5, instruction: add
@SP      // line 5, instruction: add
M=M-1    // line 5, instruction: add
A=M      // line 5, instruction: add
D=D+M    // line 5, instruction: add
@SP      // line 5, instruction: add
A=M      // line 5, instruction: add
M=D      // line 5, instruction: add
@SP      // line 5, instruction: add
M=M+1    // line 5, instruction: add

@LCL     // line 6, instruction: pop local 0	        
D=M      // line 6, instruction: pop local 0	        
@0	      // line 6, instruction: pop local 0	        
D=D+A    // line 6, instruction: pop local 0	        
@R13     // line 6, instruction: pop local 0	        
M=D      // line 6, instruction: pop local 0	        
@SP      // line 6, instruction: pop local 0	        
M=M-1    // line 6, instruction: pop local 0	        
A=M      // line 6, instruction: pop local 0	        
D=M      // line 6, instruction: pop local 0	        
@R13     // line 6, instruction: pop local 0	        
A=M      // line 6, instruction: pop local 0	        
M=D      // line 6, instruction: pop local 0	        

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

@1       // line 8, instruction: push constant 1
D=A      // line 8, instruction: push constant 1
@SP      // line 8, instruction: push constant 1
A=M      // line 8, instruction: push constant 1
M=D      // line 8, instruction: push constant 1
@SP      // line 8, instruction: push constant 1
M=M+1    // line 8, instruction: push constant 1

@SP      // line 9, instruction: sub
M=M-1    // line 9, instruction: sub
A=M      // line 9, instruction: sub
D=M      // line 9, instruction: sub
@SP      // line 9, instruction: sub
M=M-1    // line 9, instruction: sub
A=M      // line 9, instruction: sub
D=M-D    // line 9, instruction: sub
@SP      // line 9, instruction: sub
A=M      // line 9, instruction: sub
M=D      // line 9, instruction: sub
@SP      // line 9, instruction: sub
M=M+1    // line 9, instruction: sub

@ARG     // line 10, instruction: pop argument 0      
D=M      // line 10, instruction: pop argument 0      
@0       // line 10, instruction: pop argument 0      
D=D+A    // line 10, instruction: pop argument 0      
@R13     // line 10, instruction: pop argument 0      
M=D      // line 10, instruction: pop argument 0      
@SP      // line 10, instruction: pop argument 0      
M=M-1    // line 10, instruction: pop argument 0      
A=M      // line 10, instruction: pop argument 0      
D=M      // line 10, instruction: pop argument 0      
@R13     // line 10, instruction: pop argument 0      
A=M      // line 10, instruction: pop argument 0      
M=D      // line 10, instruction: pop argument 0      

@ARG     // line 11, instruction: push argument 0
D=M      // line 11, instruction: push argument 0
@0       // line 11, instruction: push argument 0
A=D+A    // line 11, instruction: push argument 0
D=M      // line 11, instruction: push argument 0
@SP      // line 11, instruction: push argument 0
A=M      // line 11, instruction: push argument 0
M=D      // line 11, instruction: push argument 0
@SP      // line 11, instruction: push argument 0
M=M+1    // line 11, instruction: push argument 0

@SP      // line 12, instruction: if-goto LOOP_START  
M=M-1    // line 12, instruction: if-goto LOOP_START  
A=M      // line 12, instruction: if-goto LOOP_START  
D=M      // line 12, instruction: if-goto LOOP_START  
@GLOBAL_LABEL$LOOP_START // line 12, instruction: if-goto LOOP_START  
D;JNE    // line 12, instruction: if-goto LOOP_START  

@LCL     // line 13, instruction: push local 0
D=M      // line 13, instruction: push local 0
@0       // line 13, instruction: push local 0
A=D+A    // line 13, instruction: push local 0
D=M      // line 13, instruction: push local 0
@SP      // line 13, instruction: push local 0
A=M      // line 13, instruction: push local 0
M=D      // line 13, instruction: push local 0
@SP      // line 13, instruction: push local 0
M=M+1    // line 13, instruction: push local 0