LOOP:
leaw $5, %A
movw (%A), %D
leaw $NEG, %A
jl %D
nop
leaw $2, %A
subw %D, %A, %D
leaw $5, %A
movw %D, (%A)
leaw $ELSE, %A
jle %D
nop
leaw $LOOP, %A
jmp
nop
ELSE:
leaw $ELSE2, %A
je %D
nop
leaw $0, %A
movw %A, (%A)
leaw $END, %A
jmp
nop
ELSE2:
leaw $1, %A
movw %A, %D
leaw $0, %A
movw %D, (%A)
leaw $END, %A
jmp
nop
NEG:
negw %D
leaw $LOOP2, %A
jmp
nop
LOOP2:
leaw $2, %A
subw %D, %A, %D
leaw $5, %A
movw %D, (%A)
leaw $ELSE3, %A
jle %D
nop
leaw $LOOP2, %A
jmp
nop
ELSE3:
leaw $ELSE4, %A
je %D
nop
leaw $0, %A
movw %A, (%A)
leaw $END, %A
jmp
nop
ELSE4:
leaw $1, %A
movw %A, %D
leaw $0, %A
movw %D, (%A)
leaw $END, %A
jmp
nop
END:

