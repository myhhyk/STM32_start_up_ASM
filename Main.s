 include Procedures.s
;==========================
		AREA	|.text|, CODE, READONLY
Main
		EXPORT	Main
			
		ldr		r0,	=0x40021000	;RCC_CR
		mov		r1,	#1
		str		r1,	[r0]
		
		ldr		r0,	=0x40021004	;RCC_CFGR
		ldr		r1,	=0x5000000	
		str		r1, [r0]
		
		ldr		r0,	=0x40021018	;RCC_APB2ENR
		mov		r1,	#0x10	
		str		r1, [r0]	

		ldr		r0,	=0x40011004	;GPIOC_CRH
		ldr		r1,	=0x200000	;PORTC13 - output
		str		r1, [r0]
		
		
		ldr		r0,	=0x4001100C	;GPIOC_BSRR
		ldr		r1,	=0x2000	;PORTC13 - output
		mov		r2,	#0
Loop

		str		r1, [r0]
		str		r2, [r0]		
		
		b		Loop
		ALIGN
		END
			
;0x5000000
