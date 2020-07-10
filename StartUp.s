;=======================================
		AREA 	STACK, NOINIT, READWRITE, ALIGN=3 
		SPACE	0x400
__initial_sp
;======================================		
		AREA	RESET, DATA, READONLY
			
		EXPORT	__Vectors
__Vectors
		DCD		__initial_sp
		DCD		Reset_Handler
		DCD		NMI_Handler

;========================================
		AREA 	|.text|,CODE,READONLY
Reset_Handler
		EXPORT	Reset_Handler
		IMPORT 	Main
 		ldr		r0,		=Main
		bx		r0
NMI_Handler	
		EXPORT	NMI_Handler
		b 		.
		ALIGN
		END 
;========================================
