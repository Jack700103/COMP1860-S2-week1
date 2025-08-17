@R0
D=M       
@x
M=D       

@R1
D=M       
@y
M=D       

@x
D=M       
@y
D=D+M     
@R2
M=D      

@x
D=M       
@0
D=D-M     
@x_neg
D;JLT     
@x_pos
0;JMP     

(x_neg)
@y
D=M       
@0
D=D-M     
@y_neg
D;JLT     
@overflow_neg_pos
0;JMP     

(x_pos)
@y
D=M       
@0
D=D-M     
@y_pos
D;JGE     
@overflow_pos_neg
0;JMP     

(y_neg)
@R2
D=M       
@0
D=D-M     
@no_overflow_neg_neg
D;JLT     
@overflow_neg_neg
0;JMP     

(y_pos)
@R2
D=M       
@0
D=D-M     
@no_overflow_pos_pos
D;JGE     
@overflow_pos_pos
0;JMP     

(overflow_neg_pos)
@R2
D=M       
@0
D=D-M     
@no_overflow_neg_pos
D;JLT     
@OVERFLOW
0;JMP     

(overflow_pos_neg)
@R3
M=0       
@END
0;JMP     

(no_overflow_neg_neg)
@R3
M=0       
@END
0;JMP     

(no_overflow_pos_pos)
@R3
M=0       
@END
0;JMP     

(overflow_neg_neg)
@R3
M=1       
@END
0;JMP     

(overflow_pos_pos)
@R3
M=1       
@END
0;JMP     

(OVERFLOW)
@R3
M=1      
@END
0;JMP     

(no_overflow_neg_pos)
@R3
M=0       
@END
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