@ARG     // line 0, instruction: push argument 1
D=M      // line 0, instruction: push argument 1
@1       // line 0, instruction: push argument 1
A=D+A    // line 0, instruction: push argument 1
D=M      // line 0, instruction: push argument 1
@SP      // line 0, instruction: push argument 1
A=M      // line 0, instruction: push argument 1
M=D      // line 0, instruction: push argument 1
@SP      // line 0, instruction: push argument 1
M=M+1    // line 0, instruction: push argument 1

@SP      // line 1, instruction: pop pointer 1           
M=M-1    // line 1, instruction: pop pointer 1           
A=M      // line 1, instruction: pop pointer 1           
D=M      // line 1, instruction: pop pointer 1           
@THAT    // line 1, instruction: pop pointer 1           
M=D      // line 1, instruction: pop pointer 1           

@0       // line 2, instruction: push constant 0
D=A      // line 2, instruction: push constant 0
@SP      // line 2, instruction: push constant 0
A=M      // line 2, instruction: push constant 0
M=D      // line 2, instruction: push constant 0
@SP      // line 2, instruction: push constant 0
M=M+1    // line 2, instruction: push constant 0

@THAT    // line 3, instruction: pop that 0              
D=M      // line 3, instruction: pop that 0              
@0       // line 3, instruction: pop that 0              
D=D+A    // line 3, instruction: pop that 0              
@R13     // line 3, instruction: pop that 0              
M=D      // line 3, instruction: pop that 0              
@SP      // line 3, instruction: pop that 0              
M=M-1    // line 3, instruction: pop that 0              
A=M      // line 3, instruction: pop that 0              
D=M      // line 3, instruction: pop that 0              
@R13     // line 3, instruction: pop that 0              
A=M      // line 3, instruction: pop that 0              
M=D      // line 3, instruction: pop that 0              

@1       // line 4, instruction: push constant 1
D=A      // line 4, instruction: push constant 1
@SP      // line 4, instruction: push constant 1
A=M      // line 4, instruction: push constant 1
M=D      // line 4, instruction: push constant 1
@SP      // line 4, instruction: push constant 1
M=M+1    // line 4, instruction: push constant 1

@THAT    // line 5, instruction: pop that 1              
D=M      // line 5, instruction: pop that 1              
@1       // line 5, instruction: pop that 1              
D=D+A    // line 5, instruction: pop that 1              
@R13     // line 5, instruction: pop that 1              
M=D      // line 5, instruction: pop that 1              
@SP      // line 5, instruction: pop that 1              
M=M-1    // line 5, instruction: pop that 1              
A=M      // line 5, instruction: pop that 1              
D=M      // line 5, instruction: pop that 1              
@R13     // line 5, instruction: pop that 1              
A=M      // line 5, instruction: pop that 1              
M=D      // line 5, instruction: pop that 1              

@ARG     // line 6, instruction: push argument 0
D=M      // line 6, instruction: push argument 0
@0       // line 6, instruction: push argument 0
A=D+A    // line 6, instruction: push argument 0
D=M      // line 6, instruction: push argument 0
@SP      // line 6, instruction: push argument 0
A=M      // line 6, instruction: push argument 0
M=D      // line 6, instruction: push argument 0
@SP      // line 6, instruction: push argument 0
M=M+1    // line 6, instruction: push argument 0

@2       // line 7, instruction: push constant 2
D=A      // line 7, instruction: push constant 2
@SP      // line 7, instruction: push constant 2
A=M      // line 7, instruction: push constant 2
M=D      // line 7, instruction: push constant 2
@SP      // line 7, instruction: push constant 2
M=M+1    // line 7, instruction: push constant 2

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

@ARG     // line 9, instruction: pop argument 0          
D=M      // line 9, instruction: pop argument 0          
@0       // line 9, instruction: pop argument 0          
D=D+A    // line 9, instruction: pop argument 0          
@R13     // line 9, instruction: pop argument 0          
M=D      // line 9, instruction: pop argument 0          
@SP      // line 9, instruction: pop argument 0          
M=M-1    // line 9, instruction: pop argument 0          
A=M      // line 9, instruction: pop argument 0          
D=M      // line 9, instruction: pop argument 0          
@R13     // line 9, instruction: pop argument 0          
A=M      // line 9, instruction: pop argument 0          
M=D      // line 9, instruction: pop argument 0          

(GLOBAL_LABEL$MAIN_LOOP_START) // line 10, instruction: label MAIN_LOOP_START

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

@SP      // line 12, instruction: if-goto COMPUTE_ELEMENT 
M=M-1    // line 12, instruction: if-goto COMPUTE_ELEMENT 
A=M      // line 12, instruction: if-goto COMPUTE_ELEMENT 
D=M      // line 12, instruction: if-goto COMPUTE_ELEMENT 
@GLOBAL_LABEL$COMPUTE_ELEMENT // line 12, instruction: if-goto COMPUTE_ELEMENT 
D;JNE    // line 12, instruction: if-goto COMPUTE_ELEMENT 

@GLOBAL_LABEL$END_PROGRAM // line 13, instruction: goto END_PROGRAM        
0;JMP    // line 13, instruction: goto END_PROGRAM        

(GLOBAL_LABEL$COMPUTE_ELEMENT) // line 14, instruction: label COMPUTE_ELEMENT

@THAT    // line 15, instruction: push that 0
D=M      // line 15, instruction: push that 0
@0       // line 15, instruction: push that 0
A=D+A    // line 15, instruction: push that 0
D=M      // line 15, instruction: push that 0
@SP      // line 15, instruction: push that 0
A=M      // line 15, instruction: push that 0
M=D      // line 15, instruction: push that 0
@SP      // line 15, instruction: push that 0
M=M+1    // line 15, instruction: push that 0

@THAT    // line 16, instruction: push that 1
D=M      // line 16, instruction: push that 1
@1       // line 16, instruction: push that 1
A=D+A    // line 16, instruction: push that 1
D=M      // line 16, instruction: push that 1
@SP      // line 16, instruction: push that 1
A=M      // line 16, instruction: push that 1
M=D      // line 16, instruction: push that 1
@SP      // line 16, instruction: push that 1
M=M+1    // line 16, instruction: push that 1

@SP      // line 17, instruction: add
M=M-1    // line 17, instruction: add
A=M      // line 17, instruction: add
D=M      // line 17, instruction: add
@SP      // line 17, instruction: add
M=M-1    // line 17, instruction: add
A=M      // line 17, instruction: add
D=D+M    // line 17, instruction: add
@SP      // line 17, instruction: add
A=M      // line 17, instruction: add
M=D      // line 17, instruction: add
@SP      // line 17, instruction: add
M=M+1    // line 17, instruction: add

@THAT    // line 18, instruction: pop that 2              
D=M      // line 18, instruction: pop that 2              
@2       // line 18, instruction: pop that 2              
D=D+A    // line 18, instruction: pop that 2              
@R13     // line 18, instruction: pop that 2              
M=D      // line 18, instruction: pop that 2              
@SP      // line 18, instruction: pop that 2              
M=M-1    // line 18, instruction: pop that 2              
A=M      // line 18, instruction: pop that 2              
D=M      // line 18, instruction: pop that 2              
@R13     // line 18, instruction: pop that 2              
A=M      // line 18, instruction: pop that 2              
M=D      // line 18, instruction: pop that 2              

@THAT    // line 19, instruction: push pointer 1
D=M      // line 19, instruction: push pointer 1
@SP      // line 19, instruction: push pointer 1
A=M      // line 19, instruction: push pointer 1
M=D      // line 19, instruction: push pointer 1
@SP      // line 19, instruction: push pointer 1
M=M+1    // line 19, instruction: push pointer 1

@1       // line 20, instruction: push constant 1
D=A      // line 20, instruction: push constant 1
@SP      // line 20, instruction: push constant 1
A=M      // line 20, instruction: push constant 1
M=D      // line 20, instruction: push constant 1
@SP      // line 20, instruction: push constant 1
M=M+1    // line 20, instruction: push constant 1

@SP      // line 21, instruction: add
M=M-1    // line 21, instruction: add
A=M      // line 21, instruction: add
D=M      // line 21, instruction: add
@SP      // line 21, instruction: add
M=M-1    // line 21, instruction: add
A=M      // line 21, instruction: add
D=D+M    // line 21, instruction: add
@SP      // line 21, instruction: add
A=M      // line 21, instruction: add
M=D      // line 21, instruction: add
@SP      // line 21, instruction: add
M=M+1    // line 21, instruction: add

@SP      // line 22, instruction: pop pointer 1           
M=M-1    // line 22, instruction: pop pointer 1           
A=M      // line 22, instruction: pop pointer 1           
D=M      // line 22, instruction: pop pointer 1           
@THAT    // line 22, instruction: pop pointer 1           
M=D      // line 22, instruction: pop pointer 1           

@ARG     // line 23, instruction: push argument 0
D=M      // line 23, instruction: push argument 0
@0       // line 23, instruction: push argument 0
A=D+A    // line 23, instruction: push argument 0
D=M      // line 23, instruction: push argument 0
@SP      // line 23, instruction: push argument 0
A=M      // line 23, instruction: push argument 0
M=D      // line 23, instruction: push argument 0
@SP      // line 23, instruction: push argument 0
M=M+1    // line 23, instruction: push argument 0

@1       // line 24, instruction: push constant 1
D=A      // line 24, instruction: push constant 1
@SP      // line 24, instruction: push constant 1
A=M      // line 24, instruction: push constant 1
M=D      // line 24, instruction: push constant 1
@SP      // line 24, instruction: push constant 1
M=M+1    // line 24, instruction: push constant 1

@SP      // line 25, instruction: sub
M=M-1    // line 25, instruction: sub
A=M      // line 25, instruction: sub
D=M      // line 25, instruction: sub
@SP      // line 25, instruction: sub
M=M-1    // line 25, instruction: sub
A=M      // line 25, instruction: sub
D=M-D    // line 25, instruction: sub
@SP      // line 25, instruction: sub
A=M      // line 25, instruction: sub
M=D      // line 25, instruction: sub
@SP      // line 25, instruction: sub
M=M+1    // line 25, instruction: sub

@ARG     // line 26, instruction: pop argument 0          
D=M      // line 26, instruction: pop argument 0          
@0       // line 26, instruction: pop argument 0          
D=D+A    // line 26, instruction: pop argument 0          
@R13     // line 26, instruction: pop argument 0          
M=D      // line 26, instruction: pop argument 0          
@SP      // line 26, instruction: pop argument 0          
M=M-1    // line 26, instruction: pop argument 0          
A=M      // line 26, instruction: pop argument 0          
D=M      // line 26, instruction: pop argument 0          
@R13     // line 26, instruction: pop argument 0          
A=M      // line 26, instruction: pop argument 0          
M=D      // line 26, instruction: pop argument 0          

@GLOBAL_LABEL$MAIN_LOOP_START // line 27, instruction: goto MAIN_LOOP_START
0;JMP    // line 27, instruction: goto MAIN_LOOP_START

(GLOBAL_LABEL$END_PROGRAM) // line 28, instruction: label END_PROGRAM