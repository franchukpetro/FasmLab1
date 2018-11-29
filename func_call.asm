format ELF64

section '.data' writable

	first dd 3.0
	step dd 2.0
	number dd 4.0
	message db "Sum of progression is %f",0xD,0xA,0

section '.text' executable

public main as 'main'
extrn progression_sum
extrn exit
extrn printf

main:
	push rbp
	mov rbp, rsp

	movd XMM0, [first]
	movd XMM1, [step]
	movd XMM2, [number]

	call progression_sum

	CVTSS2SD XMM0, XMM0
	lea rdi, [message]		
	call printf
	
	pop rbp
	ret
	call exit

