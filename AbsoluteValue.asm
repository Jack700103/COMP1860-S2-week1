// AbsoluteValue.asm
@R0
D=M       
@x
M=D       

@R3
M=0       

@x
D=M       
@32768
D=D-A     
@MIN_VALUE
D;JEQ     

@x
D=M       
@0
D=D-M     
@NEGATIVE
D;JLT     

@x
D=M       
@R1
M=D       
@R2
M=0       
@END
0;JMP     

(NEGATIVE)
@x
D=M       
@NOT_x
M=!D      
@NOT_x
D=M+1     
@R1
M=D       
@R2
M=1       
@END
0;JMP     

(MIN_VALUE)
@R3
M=1       
@x
D=M       
@R1
M=D       

(END)
@END
0;JMP     


@x
0;JMP
x
@NOT_x
0;JMP
NOT_x
