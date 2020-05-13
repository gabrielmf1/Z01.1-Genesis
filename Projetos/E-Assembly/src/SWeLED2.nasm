leaw $21185, %A
movw (%A), %D
leaw $256, %A
andw %D, %A, %D
leaw $21184, %A
movw %D, (%A)
leaw $21185, %A
movw (%A), %D
notw %D
leaw $128, %A
andw %A, %D, %D
leaw $21184, %A
addw %D, (%A), %D
movw %D, (%A)
leaw $52, %A
movw %A, %D
leaw $21184, %A
addw (%A), %D, %D
movw %D, (%A)
leaw $5, %A
movw (%A), %D
leaw $8, %A
andw %D, %A, %D
leaw $21184, %A
addw %D, (%A), %D
movw %D, (%A)
leaw $21185, %A
movw (%A), %D
leaw $1, %A
andw %A, %D, %D
incw %D
leaw $2, %A
andw %A, %D, %D
leaw $21184, %A
addw %D, (%A), %D
movw %D, (%A)

