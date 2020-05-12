LOOP:
leaw $0, %A
movw (%A), %D
leaw $1, %A
subw %D, (%A), %D
leaw $0, %A
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
leaw $1, %A
addw %D, (%A), %D
leaw $2, %A
movw %D, (%A)
leaw $END, %A
jmp
nop
ELSE2:
leaw $0, %A
movw %A, %D
leaw $0, %A
movw %D, (%A)
leaw $END, %A
jmp
nop
END:
