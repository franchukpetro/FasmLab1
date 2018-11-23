format ELF64

public func as 'progression_sum'

func:
	mov eax, 2		;записуємо число 2 в регістр eax
	MOVSS XMM3, eax		;перетворюємо int в double
	MULSS XMM0, XMM3	;множимо перший елемент прогресії на 2

	
	MOVSS XMM4, XMM2	;зберігаємо значення n в іншому регістрі для подальшого використання n
	
	SUBSS XMM2, 1		;це в нас n-1
	MULSS XMM2, XMM1	;множимо n-1 на d
	
	ADDSS XMM0, XMM2	;2*a + (n - 1)*d
	
	DIVSS XMM4, XMM3	;ділим n на 2

	MULSS XMM0, XMM4	;множим суму на n поділене на два
 	ret

	

