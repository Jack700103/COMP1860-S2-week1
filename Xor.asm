// Xor.asm
@R0
D=M       
@x
M=D      

@R1
D=M       
@y
M=D       

@R2
M=0       

@i
M=0       

(LOOP)
@i
D=M       
@16
D=D-A     
@END
D;JGE     

@mask
M=1       
@i
D=M      
@shift
M=D       

(SHIFT_MASK)
@shift
D=M       
@0
D=D-A     
@END_SHIFT
D;JLE     
@mask
M=M+M     
@shift
M=M-1     
@SHIFT_MASK
0;JMP     

(END_SHIFT)
@x
D=M       
@mask
D=D&M     
@bit_x
M=D       

@y
D=M       
@mask
D=D&M     
@bit_y
M=D       

@bit_x
D=M       
@bit_y
D=D!M     

@bit_x
D=M
@bit_y
D=D-M     
@SAME
D;JEQ     
@1
D=A       
@result_bit
M=D      
@SET_BIT
0;JMP     

(SAME)
@0
D=A       
@result_bit
M=D      

(SET_BIT)
@result_bit
D=M       
@mask
D=D&M     
@R2
M=D|M     

@i
M=M+1     
@LOOP
0;JMP     

(END)
@END
0;JMP     


@x
0;JMP
x
@y
0;JMP
y
@mask
0;JMP
mask
@bit_x
0;JMP
bit_x
@bit_y
0;JMP
bit_y
@result_bit
0;JMP
result_bit
@shift
0;JMP
shift
@i
0;JMP
i
