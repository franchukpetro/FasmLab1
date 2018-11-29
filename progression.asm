format ELF64

public func as 'progression_sum'

func:
	mov eax, 2
	CVTSI2SS XMM3, eax
	MULSS XMM0, XMM3

	
	MOVSS XMM4, XMM2
	
	mov eax, 1
	CVTSI2SS XMM5, eax
	SUBSS XMM2, XMM5
	MULSS XMM2, XMM1
	
	ADDSS XMM0, XMM2
	
	DIVSS XMM4, XMM3

	MULSS XMM0, XMM4
 	ret

	

