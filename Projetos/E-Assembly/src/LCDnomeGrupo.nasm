; Arquivo: LCDnomeGrupo.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Escreva no LCD o nome do grupo


=================== LETRA G ===================
;Linha de cima primeira letra

leaw $65535, %A
movw %A, %D
leaw $16405, %A,
movw %D, (%A)

leaw $65535, %A
movw %A, %D
leaw $16425, %A,
movw %D, (%A)



leaw $49152, %A
movw %A, %D
leaw $16445, %A,
movw %D, (%A)

leaw $49152, %A
movw %A, %D
leaw $16465, %A,
movw %D, (%A)

leaw $49152, %A
movw %A, %D
leaw $16485, %A,
movw %D, (%A)

leaw $49152, %A
movw %A, %D
leaw $16505, %A,
movw %D, (%A)

leaw $49152, %A
movw %A, %D
leaw $16525, %A,
movw %D, (%A)

leaw $49152, %A
movw %A, %D
leaw $16545, %A,
movw %D, (%A)

leaw $49152, %A
movw %A, %D
leaw $16565, %A,
movw %D, (%A)




leaw $49215, %A
movw %A, %D
leaw $16585, %A,
movw %D, (%A)

leaw $49215, %A
movw %A, %D
leaw $16605, %A,
movw %D, (%A)



leaw $49155, %A
movw %A, %D
leaw $16625, %A,
movw %D, (%A)

leaw $49155, %A
movw %A, %D
leaw $16645, %A,
movw %D, (%A)

leaw $49155, %A
movw %A, %D
leaw $16665, %A,
movw %D, (%A)

leaw $49155, %A
movw %A, %D
leaw $16685, %A,
movw %D, (%A)

leaw $49155, %A
movw %A, %D
leaw $16705, %A,
movw %D, (%A)

leaw $49155, %A
movw %A, %D
leaw $16725, %A,
movw %D, (%A)

leaw $49155, %A
movw %A, %D
leaw $16745, %A,
movw %D, (%A)



;Linha debaixo primeira letra

leaw $65535, %A
movw %A, %D
leaw $16765, %A,
movw %D, (%A)

leaw $65535, %A
movw %A, %D
leaw $16785, %A,
movw %D, (%A)

=================== LETRA E ===================
;Linha de cima primeira letra

leaw $65535, %A
movw %A, %D
leaw $16407, %A,
movw %D, (%A)

leaw $65535, %A
movw %A, %D
leaw $16427, %A,
movw %D, (%A)



leaw $49152, %A
movw %A, %D
leaw $16447, %A,
movw %D, (%A)

leaw $49152, %A
movw %A, %D
leaw $16467, %A,
movw %D, (%A)

leaw $49152, %A
movw %A, %D
leaw $16487, %A,
movw %D, (%A)

leaw $49152, %A
movw %A, %D
leaw $16507, %A,
movw %D, (%A)

leaw $49152, %A
movw %A, %D
leaw $16527, %A,
movw %D, (%A)

leaw $49152, %A
movw %A, %D
leaw $16547, %A,
movw %D, (%A)

leaw $49152, %A
movw %A, %D
leaw $16567, %A,
movw %D, (%A)




leaw $65472, %A
movw %A, %D
leaw $16587, %A,
movw %D, (%A)

leaw $65472, %A
movw %A, %D
leaw $16607, %A,
movw %D, (%A)





leaw $49152, %A
movw %A, %D
leaw $16627, %A,
movw %D, (%A)

leaw $49152, %A
movw %A, %D
leaw $16647, %A,
movw %D, (%A)

leaw $49152, %A
movw %A, %D
leaw $16667, %A,
movw %D, (%A)

leaw $49152, %A
movw %A, %D
leaw $16687, %A,
movw %D, (%A)

leaw $49152, %A
movw %A, %D
leaw $16707, %A,
movw %D, (%A)

leaw $49152, %A
movw %A, %D
leaw $16727, %A,
movw %D, (%A)

leaw $49152, %A
movw %A, %D
leaw $16747, %A,
movw %D, (%A)





;Linha debaixo primeira letra

leaw $65535, %A
movw %A, %D
leaw $16767, %A,
movw %D, (%A)

leaw $65535, %A
movw %A, %D
leaw $16787, %A,
movw %D, (%A)

=================== LETRA N ===================

leaw $61443, %A
movw %A, %D
leaw $16409, %A,
movw %D, (%A)

leaw $61443, %A
movw %A, %D
leaw $16429, %A,
movw %D, (%A)

leaw $55299, %A
movw %A, %D
leaw $16449, %A,
movw %D, (%A)

leaw $55299, %A
movw %A, %D
leaw $16469, %A,
movw %D, (%A)

leaw $52227, %A
movw %A, %D
leaw $16489, %A,
movw %D, (%A)

leaw $52227, %A
movw %A, %D
leaw $16509, %A,
movw %D, (%A)

leaw $50691, %A
movw %A, %D
leaw $16529, %A,
movw %D, (%A)

leaw $50691, %A
movw %A, %D
leaw $16549, %A,
movw %D, (%A)

leaw $49923, %A
movw %A, %D
leaw $16569, %A,
movw %D, (%A)

leaw $49923, %A
movw %A, %D
leaw $16589, %A,
movw %D, (%A)

leaw $49539, %A
movw %A, %D
leaw $16609, %A,
movw %D, (%A)

leaw $49539, %A
movw %A, %D
leaw $16629, %A,
movw %D, (%A)

leaw $49347, %A
movw %A, %D
leaw $16649, %A,
movw %D, (%A)

leaw $49347, %A
movw %A, %D
leaw $16669, %A,
movw %D, (%A)

leaw $49251, %A
movw %A, %D
leaw $16689, %A,
movw %D, (%A)

leaw $49251, %A
movw %A, %D
leaw $16709, %A,
movw %D, (%A)

leaw $49179, %A
movw %A, %D
leaw $16729, %A,
movw %D, (%A)

leaw $49179, %A
movw %A, %D
leaw $16749, %A,
movw %D, (%A)

leaw $49167, %A
movw %A, %D
leaw $16769, %A,
movw %D, (%A)

leaw $49167, %A
movw %A, %D
leaw $16789, %A,
movw %D, (%A)

=================== LETRA E ===================
;Linha de cima primeira letra

leaw $65535, %A
movw %A, %D
leaw $16411, %A,
movw %D, (%A)

leaw $65535, %A
movw %A, %D
leaw $16431, %A,
movw %D, (%A)



leaw $49152, %A
movw %A, %D
leaw $16451, %A,
movw %D, (%A)

leaw $49152, %A
movw %A, %D
leaw $16471, %A,
movw %D, (%A)

leaw $49152, %A
movw %A, %D
leaw $16491, %A,
movw %D, (%A)

leaw $49152, %A
movw %A, %D
leaw $16511, %A,
movw %D, (%A)

leaw $49152, %A
movw %A, %D
leaw $16531, %A,
movw %D, (%A)

leaw $49152, %A
movw %A, %D
leaw $16551, %A,
movw %D, (%A)

leaw $49152, %A
movw %A, %D
leaw $16571, %A,
movw %D, (%A)




leaw $65472, %A
movw %A, %D
leaw $16591, %A,
movw %D, (%A)

leaw $65472, %A
movw %A, %D
leaw $16611, %A,
movw %D, (%A)





leaw $49152, %A
movw %A, %D
leaw $16631, %A,
movw %D, (%A)

leaw $49152, %A
movw %A, %D
leaw $16651, %A,
movw %D, (%A)

leaw $49152, %A
movw %A, %D
leaw $16671, %A,
movw %D, (%A)

leaw $49152, %A
movw %A, %D
leaw $16691, %A,
movw %D, (%A)

leaw $49152, %A
movw %A, %D
leaw $16711, %A,
movw %D, (%A)

leaw $49152, %A
movw %A, %D
leaw $16731, %A,
movw %D, (%A)

leaw $49152, %A
movw %A, %D
leaw $16751, %A,
movw %D, (%A)



;Linha debaixo primeira letra

leaw $65535, %A
movw %A, %D
leaw $16771, %A,
movw %D, (%A)

leaw $65535, %A
movw %A, %D
leaw $16791, %A,
movw %D, (%A)

=================== LETRA S ===================

leaw $16380, %A
movw %A, %D
leaw $16413, %A,
movw %D, (%A)

leaw $16380, %A
movw %A, %D
leaw $16433, %A,
movw %D, (%A)

leaw $49155, %A
movw %A, %D
leaw $16453, %A,
movw %D, (%A)

leaw $49155, %A
movw %A, %D
leaw $16473, %A,
movw %D, (%A)

leaw $24579, %A
movw %A, %D
leaw $16493, %A,
movw %D, (%A)

leaw $24579, %A
movw %A, %D
leaw $16513, %A,
movw %D, (%A)

leaw $12288, %A
movw %A, %D
leaw $16533, %A,
movw %D, (%A)

leaw $12288, %A
movw %A, %D
leaw $16553, %A,
movw %D, (%A)

leaw $3840, %A
movw %A, %D
leaw $16573, %A,
movw %D, (%A)

leaw $3840, %A
movw %A, %D
leaw $16593, %A,
movw %D, (%A)

leaw $240, %A
movw %A, %D
leaw $16613, %A,
movw %D, (%A)

leaw $240, %A
movw %A, %D
leaw $16633, %A,
movw %D, (%A)

leaw $12, %A
movw %A, %D
leaw $16653, %A,
movw %D, (%A)

leaw $12, %A
movw %A, %D
leaw $16673, %A,
movw %D, (%A)

leaw $49158, %A
movw %A, %D
leaw $16693, %A,
movw %D, (%A)

leaw $49158, %A
movw %A, %D
leaw $16713, %A,
movw %D, (%A)

leaw $49155, %A
movw %A, %D
leaw $16733, %A,
movw %D, (%A)

leaw $49155, %A
movw %A, %D
leaw $16753, %A,
movw %D, (%A)

leaw $16380, %A
movw %A, %D
leaw $16773, %A,
movw %D, (%A)

leaw $16380, %A
movw %A, %D
leaw $16793, %A,
movw %D, (%A)

=================== LETRA I ===================

leaw $65535, %A
movw %A, %D
leaw $16415, %A,
movw %D, (%A)

leaw $65535, %A
movw %A, %D
leaw $16435, %A,
movw %D, (%A)

leaw $384, %A
movw %A, %D
leaw $16455, %A,
movw %D, (%A)

leaw $384, %A
movw %A, %D
leaw $16475, %A,
movw %D, (%A)

leaw $384, %A
movw %A, %D
leaw $16495, %A,
movw %D, (%A)

leaw $384, %A
movw %A, %D
leaw $16515, %A,
movw %D, (%A)

leaw $384, %A
movw %A, %D
leaw $16535, %A,
movw %D, (%A)

leaw $384, %A
movw %A, %D
leaw $16555, %A,
movw %D, (%A)

leaw $384, %A
movw %A, %D
leaw $16575, %A,
movw %D, (%A)

leaw $384, %A
movw %A, %D
leaw $16595, %A,
movw %D, (%A)

leaw $384, %A
movw %A, %D
leaw $16615, %A,
movw %D, (%A)

leaw $384, %A
movw %A, %D
leaw $16635, %A,
movw %D, (%A)

leaw $384, %A
movw %A, %D
leaw $16655, %A,
movw %D, (%A)

leaw $384, %A
movw %A, %D
leaw $16675, %A,
movw %D, (%A)

leaw $384, %A
movw %A, %D
leaw $16695, %A,
movw %D, (%A)

leaw $384, %A
movw %A, %D
leaw $16715, %A,
movw %D, (%A)

leaw $384, %A
movw %A, %D
leaw $16735, %A,
movw %D, (%A)

leaw $384, %A
movw %A, %D
leaw $16755, %A,
movw %D, (%A)

leaw $65535, %A
movw %A, %D
leaw $16775, %A,
movw %D, (%A)

leaw $65535, %A
movw %A, %D
leaw $16795, %A,
movw %D, (%A)

=================== LETRA S ===================

leaw $16380, %A
movw %A, %D
leaw $16417, %A,
movw %D, (%A)

leaw $16380, %A
movw %A, %D
leaw $16437, %A,
movw %D, (%A)

leaw $49155, %A
movw %A, %D
leaw $16457, %A,
movw %D, (%A)

leaw $49155, %A
movw %A, %D
leaw $16477, %A,
movw %D, (%A)

leaw $24579, %A
movw %A, %D
leaw $16497, %A,
movw %D, (%A)

leaw $24579, %A
movw %A, %D
leaw $16517, %A,
movw %D, (%A)

leaw $12288, %A
movw %A, %D
leaw $16537, %A,
movw %D, (%A)

leaw $12288, %A
movw %A, %D
leaw $16557, %A,
movw %D, (%A)

leaw $3840, %A
movw %A, %D
leaw $16577, %A,
movw %D, (%A)

leaw $3840, %A
movw %A, %D
leaw $16597, %A,
movw %D, (%A)

leaw $240, %A
movw %A, %D
leaw $16617, %A,
movw %D, (%A)

leaw $240, %A
movw %A, %D
leaw $16637, %A,
movw %D, (%A)

leaw $12, %A
movw %A, %D
leaw $16657, %A,
movw %D, (%A)

leaw $12, %A
movw %A, %D
leaw $16677, %A,
movw %D, (%A)

leaw $49158, %A
movw %A, %D
leaw $16697, %A,
movw %D, (%A)

leaw $49158, %A
movw %A, %D
leaw $16717, %A,
movw %D, (%A)

leaw $49155, %A
movw %A, %D
leaw $16737, %A,
movw %D, (%A)

leaw $49155, %A
movw %A, %D
leaw $16757, %A,
movw %D, (%A)

leaw $16380, %A
movw %A, %D
leaw $16777, %A,
movw %D, (%A)

leaw $16380, %A
movw %A, %D
leaw $16797, %A,
movw %D, (%A)