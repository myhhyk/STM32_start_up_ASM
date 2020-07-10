RCC_CR 			equ RCC + 0x00				; clock control register
RCC_CFGR 		equ RCC + 0x04			; clock configuration register
RCC_CIR 		equ RCC + 0x08			; clock interrupt register
RCC_APB2RSTR 	equ RCC + 0x0C		; APB2 peripherial reset register (APB - advanced peripherial bus)
RCC_APB1RSTR 	equ RCC + 0x10		; APB1 peripherial reset register
RCC_AHBENR 		equ RCC + 0x14			; AHB peripherial clock enable register (AHB - advanced high performance bus)
RCC_APB2ENR 	equ RCC + 0x18		; APB2 peripherial clock enable register
RCC_APB1ENR 	equ RCC + 0x1C		; APB1 peripherial clock enable register
RCC_BDCR  		equ RCC + 0x20			; backup domain control register	
RCC_CSR 		equ RCC + 0x24			; control/status register

GPIOC_CRL 		equ PORT_C				; port C control register low
GPIOC_CRH 		equ PORT_C + 0x04		; port C control register high
GPIOC_IDR 		equ PORT_C + 0x08		; port C input data register
GPIOC_ODR 		equ PORT_C + 0x0C		; port C output data register
GPIOC_BSRR 		equ PORT_C + 0x10		; port C bit set/reset register
GPIOC_BRR 		equ PORT_C + 0x14		; port C bit reset register (16 bit)
GPIOC_LCKR 		equ PORT_C + 0x18		; port C configuration lock register
PORT_C			equ	0x40011000
RCC				equ	0x40021000	
	
 MACRO
 SRAM_VAR 
	MOVW r0,#0x1000
	MOVT r0,#0x2000
 MEND
 
 MACRO
 LDRPER	$adr,$val
	push	{r0,r1,r2}
	ldr 	r0, =$adr;load adr in r0-reg-pointer
	ldr		r2,	[r0];load val on adres in r2
	ldr		r3,	=1<<$val
	orr 	r2, r3
	str		r2,	[r0]
	pop		{r0,r1,r2}
 MEND
 
var1			equ 0x20004000
SRAM_BAND		equ	0x22000000		
	end
