leaw $0, %A
movw (%A), %D
leaw $1, %A
subw %D, (%A), %D
leaw $ELSE, %A
jge %D
nop
leaw $1, %A
movw (%A), %D
leaw $2, %A
movw %D, (%A)
leaw $END, %A
jmp
nop
ELSE:
leaw $0, %A
movw (%A), %D
leaw $2, %A
movw %D, (%A)
END:









































































































































































































































































































































































































