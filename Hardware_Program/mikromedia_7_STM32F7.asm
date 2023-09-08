mikromedia_7_STM32F7__getAN_1:
;__mm_7_stm32f7_gpio.c,31 :: 		static uint8_t _getAN_1  ()                         { return GPIOA_IDR.B3 ;  }
MOVW	R0, #lo_addr(GPIOA_IDR+0)
MOVT	R0, #hi_addr(GPIOA_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #3, #1
L_end__getAN_1:
BX	LR
; end of mikromedia_7_STM32F7__getAN_1
mikromedia_7_STM32F7__getRST_1:
;__mm_7_stm32f7_gpio.c,32 :: 		static uint8_t _getRST_1 ()                         { return GPIOE_IDR.B11 ;  }
MOVW	R0, #lo_addr(GPIOE_IDR+0)
MOVT	R0, #hi_addr(GPIOE_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #11, #1
L_end__getRST_1:
BX	LR
; end of mikromedia_7_STM32F7__getRST_1
mikromedia_7_STM32F7__getCS_1:
;__mm_7_stm32f7_gpio.c,33 :: 		static uint8_t _getCS_1  ()                         { return GPIOA_IDR.B4;  }
MOVW	R0, #lo_addr(GPIOA_IDR+0)
MOVT	R0, #hi_addr(GPIOA_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #4, #1
L_end__getCS_1:
BX	LR
; end of mikromedia_7_STM32F7__getCS_1
mikromedia_7_STM32F7__getSCK_1:
;__mm_7_stm32f7_gpio.c,34 :: 		static uint8_t _getSCK_1 ()                         { return GPIOA_IDR.B5 ;  }
MOVW	R0, #lo_addr(GPIOA_IDR+0)
MOVT	R0, #hi_addr(GPIOA_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #5, #1
L_end__getSCK_1:
BX	LR
; end of mikromedia_7_STM32F7__getSCK_1
mikromedia_7_STM32F7__getMISO_1:
;__mm_7_stm32f7_gpio.c,35 :: 		static uint8_t _getMISO_1()                         { return GPIOA_IDR.B6 ;  }
MOVW	R0, #lo_addr(GPIOA_IDR+0)
MOVT	R0, #hi_addr(GPIOA_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #6, #1
L_end__getMISO_1:
BX	LR
; end of mikromedia_7_STM32F7__getMISO_1
mikromedia_7_STM32F7__getMOSI_1:
;__mm_7_stm32f7_gpio.c,36 :: 		static uint8_t _getMOSI_1()                         { return GPIOB_IDR.B5 ;  }
MOVW	R0, #lo_addr(GPIOB_IDR+0)
MOVT	R0, #hi_addr(GPIOB_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #5, #1
L_end__getMOSI_1:
BX	LR
; end of mikromedia_7_STM32F7__getMOSI_1
mikromedia_7_STM32F7__getPWM_1:
;__mm_7_stm32f7_gpio.c,37 :: 		static uint8_t _getPWM_1 ()                         { return GPIOD_IDR.B12;  }
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #12, #1
L_end__getPWM_1:
BX	LR
; end of mikromedia_7_STM32F7__getPWM_1
mikromedia_7_STM32F7__getINT_1:
;__mm_7_stm32f7_gpio.c,38 :: 		static uint8_t _getINT_1 ()                         { return GPIOD_IDR.B3 ;  }
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #3, #1
L_end__getINT_1:
BX	LR
; end of mikromedia_7_STM32F7__getINT_1
mikromedia_7_STM32F7__getRX_1:
;__mm_7_stm32f7_gpio.c,39 :: 		static uint8_t _getRX_1  ()                         { return GPIOB_IDR.B7 ;  }
MOVW	R0, #lo_addr(GPIOB_IDR+0)
MOVT	R0, #hi_addr(GPIOB_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #7, #1
L_end__getRX_1:
BX	LR
; end of mikromedia_7_STM32F7__getRX_1
mikromedia_7_STM32F7__getTX_1:
;__mm_7_stm32f7_gpio.c,40 :: 		static uint8_t _getTX_1  ()                         { return GPIOB_IDR.B6 ;  }
MOVW	R0, #lo_addr(GPIOB_IDR+0)
MOVT	R0, #hi_addr(GPIOB_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #6, #1
L_end__getTX_1:
BX	LR
; end of mikromedia_7_STM32F7__getTX_1
mikromedia_7_STM32F7__getSCL_1:
;__mm_7_stm32f7_gpio.c,41 :: 		static uint8_t _getSCL_1 ()                         { return GPIOB_IDR.B8 ;  }
MOVW	R0, #lo_addr(GPIOB_IDR+0)
MOVT	R0, #hi_addr(GPIOB_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #8, #1
L_end__getSCL_1:
BX	LR
; end of mikromedia_7_STM32F7__getSCL_1
mikromedia_7_STM32F7__getSDA_1:
;__mm_7_stm32f7_gpio.c,42 :: 		static uint8_t _getSDA_1 ()                         { return GPIOB_IDR.B9 ;  }
MOVW	R0, #lo_addr(GPIOB_IDR+0)
MOVT	R0, #hi_addr(GPIOB_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #9, #1
L_end__getSDA_1:
BX	LR
; end of mikromedia_7_STM32F7__getSDA_1
mikromedia_7_STM32F7__setAN_1:
;__mm_7_stm32f7_gpio.c,43 :: 		static void _setAN_1  (uint8_t value)         { GPIOA_ODR.B3  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOA_ODR+0)
MOVT	R2, #hi_addr(GPIOA_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #3, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setAN_1:
BX	LR
; end of mikromedia_7_STM32F7__setAN_1
mikromedia_7_STM32F7__setRST_1:
;__mm_7_stm32f7_gpio.c,44 :: 		static void _setRST_1 (uint8_t value)         { GPIOE_ODR.B11  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOE_ODR+0)
MOVT	R2, #hi_addr(GPIOE_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #11, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setRST_1:
BX	LR
; end of mikromedia_7_STM32F7__setRST_1
mikromedia_7_STM32F7__setCS_1:
;__mm_7_stm32f7_gpio.c,45 :: 		static void _setCS_1  (uint8_t value)         { GPIOA_ODR.B4 = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOA_ODR+0)
MOVT	R2, #hi_addr(GPIOA_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #4, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setCS_1:
BX	LR
; end of mikromedia_7_STM32F7__setCS_1
mikromedia_7_STM32F7__setSCK_1:
;__mm_7_stm32f7_gpio.c,46 :: 		static void _setSCK_1 (uint8_t value)         { GPIOA_ODR.B5  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOA_ODR+0)
MOVT	R2, #hi_addr(GPIOA_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #5, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setSCK_1:
BX	LR
; end of mikromedia_7_STM32F7__setSCK_1
mikromedia_7_STM32F7__setMISO_1:
;__mm_7_stm32f7_gpio.c,47 :: 		static void _setMISO_1(uint8_t value)         { GPIOA_ODR.B6  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOA_ODR+0)
MOVT	R2, #hi_addr(GPIOA_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #6, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setMISO_1:
BX	LR
; end of mikromedia_7_STM32F7__setMISO_1
mikromedia_7_STM32F7__setMOSI_1:
;__mm_7_stm32f7_gpio.c,48 :: 		static void _setMOSI_1(uint8_t value)         { GPIOB_ODR.B5  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOB_ODR+0)
MOVT	R2, #hi_addr(GPIOB_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #5, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setMOSI_1:
BX	LR
; end of mikromedia_7_STM32F7__setMOSI_1
mikromedia_7_STM32F7__setPWM_1:
;__mm_7_stm32f7_gpio.c,49 :: 		static void _setPWM_1 (uint8_t value)         { GPIOD_ODR.B12 = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOD_ODR+0)
MOVT	R2, #hi_addr(GPIOD_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #12, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setPWM_1:
BX	LR
; end of mikromedia_7_STM32F7__setPWM_1
mikromedia_7_STM32F7__setINT_1:
;__mm_7_stm32f7_gpio.c,50 :: 		static void _setINT_1 (uint8_t value)         { GPIOD_ODR.B3  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOD_ODR+0)
MOVT	R2, #hi_addr(GPIOD_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #3, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setINT_1:
BX	LR
; end of mikromedia_7_STM32F7__setINT_1
mikromedia_7_STM32F7__setRX_1:
;__mm_7_stm32f7_gpio.c,51 :: 		static void _setRX_1  (uint8_t value)         { GPIOB_ODR.B7  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOB_ODR+0)
MOVT	R2, #hi_addr(GPIOB_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #7, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setRX_1:
BX	LR
; end of mikromedia_7_STM32F7__setRX_1
mikromedia_7_STM32F7__setTX_1:
;__mm_7_stm32f7_gpio.c,52 :: 		static void _setTX_1  (uint8_t value)         { GPIOB_ODR.B6  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOB_ODR+0)
MOVT	R2, #hi_addr(GPIOB_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #6, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setTX_1:
BX	LR
; end of mikromedia_7_STM32F7__setTX_1
mikromedia_7_STM32F7__setSCL_1:
;__mm_7_stm32f7_gpio.c,53 :: 		static void _setSCL_1 (uint8_t value)         { GPIOB_ODR.B8  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOB_ODR+0)
MOVT	R2, #hi_addr(GPIOB_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #8, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setSCL_1:
BX	LR
; end of mikromedia_7_STM32F7__setSCL_1
mikromedia_7_STM32F7__setSDA_1:
;__mm_7_stm32f7_gpio.c,54 :: 		static void _setSDA_1 (uint8_t value)         { GPIOB_ODR.B9  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOB_ODR+0)
MOVT	R2, #hi_addr(GPIOB_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #9, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setSDA_1:
BX	LR
; end of mikromedia_7_STM32F7__setSDA_1
mikromedia_7_STM32F7__getAN_2:
;__mm_7_stm32f7_gpio.c,56 :: 		static uint8_t _getAN_2  ()                         { return GPIOC_IDR.B0;  }
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #0, #1
L_end__getAN_2:
BX	LR
; end of mikromedia_7_STM32F7__getAN_2
mikromedia_7_STM32F7__getRST_2:
;__mm_7_stm32f7_gpio.c,57 :: 		static uint8_t _getRST_2 ()                         { return GPIOE_IDR.B12;  }
MOVW	R0, #lo_addr(GPIOE_IDR+0)
MOVT	R0, #hi_addr(GPIOE_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #12, #1
L_end__getRST_2:
BX	LR
; end of mikromedia_7_STM32F7__getRST_2
mikromedia_7_STM32F7__getCS_2:
;__mm_7_stm32f7_gpio.c,58 :: 		static uint8_t _getCS_2  ()                         { return GPIOB_IDR.B2; }
MOVW	R0, #lo_addr(GPIOB_IDR+0)
MOVT	R0, #hi_addr(GPIOB_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #2, #1
L_end__getCS_2:
BX	LR
; end of mikromedia_7_STM32F7__getCS_2
mikromedia_7_STM32F7__getSCK_2:
;__mm_7_stm32f7_gpio.c,59 :: 		static uint8_t _getSCK_2 ()                         { return GPIOA_IDR.B5;  }
MOVW	R0, #lo_addr(GPIOA_IDR+0)
MOVT	R0, #hi_addr(GPIOA_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #5, #1
L_end__getSCK_2:
BX	LR
; end of mikromedia_7_STM32F7__getSCK_2
mikromedia_7_STM32F7__getMISO_2:
;__mm_7_stm32f7_gpio.c,60 :: 		static uint8_t _getMISO_2()                         { return GPIOA_IDR.B6;  }
MOVW	R0, #lo_addr(GPIOA_IDR+0)
MOVT	R0, #hi_addr(GPIOA_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #6, #1
L_end__getMISO_2:
BX	LR
; end of mikromedia_7_STM32F7__getMISO_2
mikromedia_7_STM32F7__getMOSI_2:
;__mm_7_stm32f7_gpio.c,61 :: 		static uint8_t _getMOSI_2()                         { return GPIOB_IDR.B5;  }
MOVW	R0, #lo_addr(GPIOB_IDR+0)
MOVT	R0, #hi_addr(GPIOB_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #5, #1
L_end__getMOSI_2:
BX	LR
; end of mikromedia_7_STM32F7__getMOSI_2
mikromedia_7_STM32F7__getPWM_2:
;__mm_7_stm32f7_gpio.c,62 :: 		static uint8_t _getPWM_2 ()                         { return GPIOD_IDR.B13; }
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #13, #1
L_end__getPWM_2:
BX	LR
; end of mikromedia_7_STM32F7__getPWM_2
mikromedia_7_STM32F7__getINT_2:
;__mm_7_stm32f7_gpio.c,63 :: 		static uint8_t _getINT_2 ()                         { return GPIOD_IDR.B4;  }
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #4, #1
L_end__getINT_2:
BX	LR
; end of mikromedia_7_STM32F7__getINT_2
mikromedia_7_STM32F7__getRX_2:
;__mm_7_stm32f7_gpio.c,64 :: 		static uint8_t _getRX_2  ()                         { return GPIOD_IDR.B6;  }
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #6, #1
L_end__getRX_2:
BX	LR
; end of mikromedia_7_STM32F7__getRX_2
mikromedia_7_STM32F7__getTX_2:
;__mm_7_stm32f7_gpio.c,65 :: 		static uint8_t _getTX_2  ()                         { return GPIOD_IDR.B5;  }
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #5, #1
L_end__getTX_2:
BX	LR
; end of mikromedia_7_STM32F7__getTX_2
mikromedia_7_STM32F7__getSCL_2:
;__mm_7_stm32f7_gpio.c,66 :: 		static uint8_t _getSCL_2 ()                         { return GPIOB_IDR.B8;  }
MOVW	R0, #lo_addr(GPIOB_IDR+0)
MOVT	R0, #hi_addr(GPIOB_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #8, #1
L_end__getSCL_2:
BX	LR
; end of mikromedia_7_STM32F7__getSCL_2
mikromedia_7_STM32F7__getSDA_2:
;__mm_7_stm32f7_gpio.c,67 :: 		static uint8_t _getSDA_2 ()                         { return GPIOB_IDR.B9;  }
MOVW	R0, #lo_addr(GPIOB_IDR+0)
MOVT	R0, #hi_addr(GPIOB_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #9, #1
L_end__getSDA_2:
BX	LR
; end of mikromedia_7_STM32F7__getSDA_2
mikromedia_7_STM32F7__setAN_2:
;__mm_7_stm32f7_gpio.c,68 :: 		static void _setAN_2  (uint8_t value)         { GPIOC_ODR.B0  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOC_ODR+0)
MOVT	R2, #hi_addr(GPIOC_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #0, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setAN_2:
BX	LR
; end of mikromedia_7_STM32F7__setAN_2
mikromedia_7_STM32F7__setRST_2:
;__mm_7_stm32f7_gpio.c,69 :: 		static void _setRST_2 (uint8_t value)         { GPIOE_ODR.B12  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOE_ODR+0)
MOVT	R2, #hi_addr(GPIOE_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #12, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setRST_2:
BX	LR
; end of mikromedia_7_STM32F7__setRST_2
mikromedia_7_STM32F7__setCS_2:
;__mm_7_stm32f7_gpio.c,70 :: 		static void _setCS_2  (uint8_t value)         { GPIOB_ODR.B2 = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOB_ODR+0)
MOVT	R2, #hi_addr(GPIOB_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #2, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setCS_2:
BX	LR
; end of mikromedia_7_STM32F7__setCS_2
mikromedia_7_STM32F7__setSCK_2:
;__mm_7_stm32f7_gpio.c,71 :: 		static void _setSCK_2 (uint8_t value)         { GPIOA_ODR.B5  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOA_ODR+0)
MOVT	R2, #hi_addr(GPIOA_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #5, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setSCK_2:
BX	LR
; end of mikromedia_7_STM32F7__setSCK_2
mikromedia_7_STM32F7__setMISO_2:
;__mm_7_stm32f7_gpio.c,72 :: 		static void _setMISO_2(uint8_t value)         { GPIOA_ODR.B6  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOA_ODR+0)
MOVT	R2, #hi_addr(GPIOA_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #6, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setMISO_2:
BX	LR
; end of mikromedia_7_STM32F7__setMISO_2
mikromedia_7_STM32F7__setMOSI_2:
;__mm_7_stm32f7_gpio.c,73 :: 		static void _setMOSI_2(uint8_t value)         { GPIOB_ODR.B5  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOB_ODR+0)
MOVT	R2, #hi_addr(GPIOB_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #5, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setMOSI_2:
BX	LR
; end of mikromedia_7_STM32F7__setMOSI_2
mikromedia_7_STM32F7__setPWM_2:
;__mm_7_stm32f7_gpio.c,74 :: 		static void _setPWM_2 (uint8_t value)         { GPIOD_ODR.B13 = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOD_ODR+0)
MOVT	R2, #hi_addr(GPIOD_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #13, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setPWM_2:
BX	LR
; end of mikromedia_7_STM32F7__setPWM_2
mikromedia_7_STM32F7__setINT_2:
;__mm_7_stm32f7_gpio.c,75 :: 		static void _setINT_2 (uint8_t value)         { GPIOD_ODR.B4  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOD_ODR+0)
MOVT	R2, #hi_addr(GPIOD_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #4, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setINT_2:
BX	LR
; end of mikromedia_7_STM32F7__setINT_2
mikromedia_7_STM32F7__setRX_2:
;__mm_7_stm32f7_gpio.c,76 :: 		static void _setRX_2  (uint8_t value)         { GPIOD_ODR.B6  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOD_ODR+0)
MOVT	R2, #hi_addr(GPIOD_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #6, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setRX_2:
BX	LR
; end of mikromedia_7_STM32F7__setRX_2
mikromedia_7_STM32F7__setTX_2:
;__mm_7_stm32f7_gpio.c,77 :: 		static void _setTX_2  (uint8_t value)         { GPIOD_ODR.B5  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOD_ODR+0)
MOVT	R2, #hi_addr(GPIOD_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #5, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setTX_2:
BX	LR
; end of mikromedia_7_STM32F7__setTX_2
mikromedia_7_STM32F7__setSCL_2:
;__mm_7_stm32f7_gpio.c,78 :: 		static void _setSCL_2 (uint8_t value)         { GPIOB_ODR.B8  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOB_ODR+0)
MOVT	R2, #hi_addr(GPIOB_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #8, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setSCL_2:
BX	LR
; end of mikromedia_7_STM32F7__setSCL_2
mikromedia_7_STM32F7__setSDA_2:
;__mm_7_stm32f7_gpio.c,79 :: 		static void _setSDA_2 (uint8_t value)         { GPIOB_ODR.B9  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOB_ODR+0)
MOVT	R2, #hi_addr(GPIOB_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #9, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setSDA_2:
BX	LR
; end of mikromedia_7_STM32F7__setSDA_2
mikromedia_7_STM32F7__getAN_3:
;__mm_7_stm32f7_gpio.c,81 :: 		static uint8_t _getAN_3  ()                         { return GPIOC_IDR.B2 ;   }
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #2, #1
L_end__getAN_3:
BX	LR
; end of mikromedia_7_STM32F7__getAN_3
mikromedia_7_STM32F7__getRST_3:
;__mm_7_stm32f7_gpio.c,82 :: 		static uint8_t _getRST_3 ()                         { return GPIOE_IDR.B13;   }
MOVW	R0, #lo_addr(GPIOE_IDR+0)
MOVT	R0, #hi_addr(GPIOE_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #13, #1
L_end__getRST_3:
BX	LR
; end of mikromedia_7_STM32F7__getRST_3
mikromedia_7_STM32F7__getCS_3:
;__mm_7_stm32f7_gpio.c,83 :: 		static uint8_t _getCS_3  ()                         { return GPIOB_IDR.B4;   }
MOVW	R0, #lo_addr(GPIOB_IDR+0)
MOVT	R0, #hi_addr(GPIOB_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #4, #1
L_end__getCS_3:
BX	LR
; end of mikromedia_7_STM32F7__getCS_3
mikromedia_7_STM32F7__getSCK_3:
;__mm_7_stm32f7_gpio.c,84 :: 		static uint8_t _getSCK_3 ()                         { return GPIOA_IDR.B5 ;   }
MOVW	R0, #lo_addr(GPIOA_IDR+0)
MOVT	R0, #hi_addr(GPIOA_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #5, #1
L_end__getSCK_3:
BX	LR
; end of mikromedia_7_STM32F7__getSCK_3
mikromedia_7_STM32F7__getMISO_3:
;__mm_7_stm32f7_gpio.c,85 :: 		static uint8_t _getMISO_3()                         { return GPIOA_IDR.B6 ;   }
MOVW	R0, #lo_addr(GPIOA_IDR+0)
MOVT	R0, #hi_addr(GPIOA_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #6, #1
L_end__getMISO_3:
BX	LR
; end of mikromedia_7_STM32F7__getMISO_3
mikromedia_7_STM32F7__getMOSI_3:
;__mm_7_stm32f7_gpio.c,86 :: 		static uint8_t _getMOSI_3()                         { return GPIOB_IDR.B5 ;   }
MOVW	R0, #lo_addr(GPIOB_IDR+0)
MOVT	R0, #hi_addr(GPIOB_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #5, #1
L_end__getMOSI_3:
BX	LR
; end of mikromedia_7_STM32F7__getMOSI_3
mikromedia_7_STM32F7__getPWM_3:
;__mm_7_stm32f7_gpio.c,87 :: 		static uint8_t _getPWM_3 ()                         { return GPIOD_IDR.B14;   }
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #14, #1
L_end__getPWM_3:
BX	LR
; end of mikromedia_7_STM32F7__getPWM_3
mikromedia_7_STM32F7__getINT_3:
;__mm_7_stm32f7_gpio.c,88 :: 		static uint8_t _getINT_3 ()                         { return GPIOD_IDR.B2 ;   }
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #2, #1
L_end__getINT_3:
BX	LR
; end of mikromedia_7_STM32F7__getINT_3
mikromedia_7_STM32F7__getRX_3:
;__mm_7_stm32f7_gpio.c,89 :: 		static uint8_t _getRX_3  ()                         { return GPIOD_IDR.B9 ;   }
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #9, #1
L_end__getRX_3:
BX	LR
; end of mikromedia_7_STM32F7__getRX_3
mikromedia_7_STM32F7__getTX_3:
;__mm_7_stm32f7_gpio.c,90 :: 		static uint8_t _getTX_3  ()                         { return GPIOD_IDR.B8 ;   }
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #8, #1
L_end__getTX_3:
BX	LR
; end of mikromedia_7_STM32F7__getTX_3
mikromedia_7_STM32F7__getSCL_3:
;__mm_7_stm32f7_gpio.c,91 :: 		static uint8_t _getSCL_3 ()                         { return GPIOB_IDR.B8 ;   }
MOVW	R0, #lo_addr(GPIOB_IDR+0)
MOVT	R0, #hi_addr(GPIOB_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #8, #1
L_end__getSCL_3:
BX	LR
; end of mikromedia_7_STM32F7__getSCL_3
mikromedia_7_STM32F7__getSDA_3:
;__mm_7_stm32f7_gpio.c,92 :: 		static uint8_t _getSDA_3 ()                         { return GPIOB_IDR.B9 ;   }
MOVW	R0, #lo_addr(GPIOB_IDR+0)
MOVT	R0, #hi_addr(GPIOB_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #9, #1
L_end__getSDA_3:
BX	LR
; end of mikromedia_7_STM32F7__getSDA_3
mikromedia_7_STM32F7__setAN_3:
;__mm_7_stm32f7_gpio.c,93 :: 		static void _setAN_3  (uint8_t value)         { GPIOC_ODR.B2 = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOC_ODR+0)
MOVT	R2, #hi_addr(GPIOC_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #2, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setAN_3:
BX	LR
; end of mikromedia_7_STM32F7__setAN_3
mikromedia_7_STM32F7__setRST_3:
;__mm_7_stm32f7_gpio.c,94 :: 		static void _setRST_3 (uint8_t value)         { GPIOE_ODR.B13= value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOE_ODR+0)
MOVT	R2, #hi_addr(GPIOE_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #13, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setRST_3:
BX	LR
; end of mikromedia_7_STM32F7__setRST_3
mikromedia_7_STM32F7__setCS_3:
;__mm_7_stm32f7_gpio.c,95 :: 		static void _setCS_3  (uint8_t value)         { GPIOB_ODR.B4= value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOB_ODR+0)
MOVT	R2, #hi_addr(GPIOB_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #4, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setCS_3:
BX	LR
; end of mikromedia_7_STM32F7__setCS_3
mikromedia_7_STM32F7__setSCK_3:
;__mm_7_stm32f7_gpio.c,96 :: 		static void _setSCK_3 (uint8_t value)         { GPIOA_ODR.B5 = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOA_ODR+0)
MOVT	R2, #hi_addr(GPIOA_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #5, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setSCK_3:
BX	LR
; end of mikromedia_7_STM32F7__setSCK_3
mikromedia_7_STM32F7__setMISO_3:
;__mm_7_stm32f7_gpio.c,97 :: 		static void _setMISO_3(uint8_t value)         { GPIOA_ODR.B6 = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOA_ODR+0)
MOVT	R2, #hi_addr(GPIOA_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #6, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setMISO_3:
BX	LR
; end of mikromedia_7_STM32F7__setMISO_3
mikromedia_7_STM32F7__setMOSI_3:
;__mm_7_stm32f7_gpio.c,98 :: 		static void _setMOSI_3(uint8_t value)         { GPIOB_ODR.B5 = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOB_ODR+0)
MOVT	R2, #hi_addr(GPIOB_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #5, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setMOSI_3:
BX	LR
; end of mikromedia_7_STM32F7__setMOSI_3
mikromedia_7_STM32F7__setPWM_3:
;__mm_7_stm32f7_gpio.c,99 :: 		static void _setPWM_3 (uint8_t value)         { GPIOD_ODR.B14= value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOD_ODR+0)
MOVT	R2, #hi_addr(GPIOD_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #14, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setPWM_3:
BX	LR
; end of mikromedia_7_STM32F7__setPWM_3
mikromedia_7_STM32F7__setINT_3:
;__mm_7_stm32f7_gpio.c,100 :: 		static void _setINT_3 (uint8_t value)         { GPIOD_ODR.B2 = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOD_ODR+0)
MOVT	R2, #hi_addr(GPIOD_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #2, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setINT_3:
BX	LR
; end of mikromedia_7_STM32F7__setINT_3
mikromedia_7_STM32F7__setRX_3:
;__mm_7_stm32f7_gpio.c,101 :: 		static void _setRX_3  (uint8_t value)         { GPIOD_ODR.B9 = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOD_ODR+0)
MOVT	R2, #hi_addr(GPIOD_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #9, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setRX_3:
BX	LR
; end of mikromedia_7_STM32F7__setRX_3
mikromedia_7_STM32F7__setTX_3:
;__mm_7_stm32f7_gpio.c,102 :: 		static void _setTX_3  (uint8_t value)         { GPIOD_ODR.B8 = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOD_ODR+0)
MOVT	R2, #hi_addr(GPIOD_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #8, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setTX_3:
BX	LR
; end of mikromedia_7_STM32F7__setTX_3
mikromedia_7_STM32F7__setSCL_3:
;__mm_7_stm32f7_gpio.c,103 :: 		static void _setSCL_3 (uint8_t value)         { GPIOB_ODR.B8 = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOB_ODR+0)
MOVT	R2, #hi_addr(GPIOB_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #8, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setSCL_3:
BX	LR
; end of mikromedia_7_STM32F7__setSCL_3
mikromedia_7_STM32F7__setSDA_3:
;__mm_7_stm32f7_gpio.c,104 :: 		static void _setSDA_3 (uint8_t value)         { GPIOB_ODR.B9 = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOB_ODR+0)
MOVT	R2, #hi_addr(GPIOB_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #9, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setSDA_3:
BX	LR
; end of mikromedia_7_STM32F7__setSDA_3
mikromedia_7_STM32F7__getAN_4:
;__mm_7_stm32f7_gpio.c,106 :: 		static uint8_t _getAN_4  ()                         { return GPIOC_IDR.B3 ;  }
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #3, #1
L_end__getAN_4:
BX	LR
; end of mikromedia_7_STM32F7__getAN_4
mikromedia_7_STM32F7__getRST_4:
;__mm_7_stm32f7_gpio.c,107 :: 		static uint8_t _getRST_4 ()                         { return GPIOE_IDR.B14 ;  }
MOVW	R0, #lo_addr(GPIOE_IDR+0)
MOVT	R0, #hi_addr(GPIOE_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #14, #1
L_end__getRST_4:
BX	LR
; end of mikromedia_7_STM32F7__getRST_4
mikromedia_7_STM32F7__getCS_4:
;__mm_7_stm32f7_gpio.c,108 :: 		static uint8_t _getCS_4  ()                         { return GPIOC_IDR.B13;  }
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #13, #1
L_end__getCS_4:
BX	LR
; end of mikromedia_7_STM32F7__getCS_4
mikromedia_7_STM32F7__getSCK_4:
;__mm_7_stm32f7_gpio.c,109 :: 		static uint8_t _getSCK_4 ()                         { return GPIOC_IDR.B10 ;  }
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #10, #1
L_end__getSCK_4:
BX	LR
; end of mikromedia_7_STM32F7__getSCK_4
mikromedia_7_STM32F7__getMISO_4:
;__mm_7_stm32f7_gpio.c,110 :: 		static uint8_t _getMISO_4()                         { return GPIOC_IDR.B11 ;  }
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #11, #1
L_end__getMISO_4:
BX	LR
; end of mikromedia_7_STM32F7__getMISO_4
mikromedia_7_STM32F7__getMOSI_4:
;__mm_7_stm32f7_gpio.c,111 :: 		static uint8_t _getMOSI_4()                         { return GPIOC_IDR.B12 ;  }
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #12, #1
L_end__getMOSI_4:
BX	LR
; end of mikromedia_7_STM32F7__getMOSI_4
mikromedia_7_STM32F7__getPWM_4:
;__mm_7_stm32f7_gpio.c,112 :: 		static uint8_t _getPWM_4 ()                         { return GPIOD_IDR.B15;  }
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #15, #1
L_end__getPWM_4:
BX	LR
; end of mikromedia_7_STM32F7__getPWM_4
mikromedia_7_STM32F7__getINT_4:
;__mm_7_stm32f7_gpio.c,113 :: 		static uint8_t _getINT_4 ()                         { return GPIOF_IDR.B3 ;  }
MOVW	R0, #lo_addr(GPIOF_IDR+0)
MOVT	R0, #hi_addr(GPIOF_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #3, #1
L_end__getINT_4:
BX	LR
; end of mikromedia_7_STM32F7__getINT_4
mikromedia_7_STM32F7__getRX_4:
;__mm_7_stm32f7_gpio.c,114 :: 		static uint8_t _getRX_4  ()                         { return GPIOC_IDR.B7 ;  }
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #7, #1
L_end__getRX_4:
BX	LR
; end of mikromedia_7_STM32F7__getRX_4
mikromedia_7_STM32F7__getTX_4:
;__mm_7_stm32f7_gpio.c,115 :: 		static uint8_t _getTX_4  ()                         { return GPIOC_IDR.B6 ;  }
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #6, #1
L_end__getTX_4:
BX	LR
; end of mikromedia_7_STM32F7__getTX_4
mikromedia_7_STM32F7__getSCL_4:
;__mm_7_stm32f7_gpio.c,116 :: 		static uint8_t _getSCL_4 ()                         { return GPIOF_IDR.B1 ;  }
MOVW	R0, #lo_addr(GPIOF_IDR+0)
MOVT	R0, #hi_addr(GPIOF_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #1, #1
L_end__getSCL_4:
BX	LR
; end of mikromedia_7_STM32F7__getSCL_4
mikromedia_7_STM32F7__getSDA_4:
;__mm_7_stm32f7_gpio.c,117 :: 		static uint8_t _getSDA_4 ()                         { return GPIOF_IDR.B0 ;  }
MOVW	R0, #lo_addr(GPIOF_IDR+0)
MOVT	R0, #hi_addr(GPIOF_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #0, #1
L_end__getSDA_4:
BX	LR
; end of mikromedia_7_STM32F7__getSDA_4
mikromedia_7_STM32F7__setAN_4:
;__mm_7_stm32f7_gpio.c,118 :: 		static void _setAN_4  (uint8_t value)         { GPIOC_ODR.B3   = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOC_ODR+0)
MOVT	R2, #hi_addr(GPIOC_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #3, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setAN_4:
BX	LR
; end of mikromedia_7_STM32F7__setAN_4
mikromedia_7_STM32F7__setRST_4:
;__mm_7_stm32f7_gpio.c,119 :: 		static void _setRST_4 (uint8_t value)         { GPIOE_ODR.B14   = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOE_ODR+0)
MOVT	R2, #hi_addr(GPIOE_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #14, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setRST_4:
BX	LR
; end of mikromedia_7_STM32F7__setRST_4
mikromedia_7_STM32F7__setCS_4:
;__mm_7_stm32f7_gpio.c,120 :: 		static void _setCS_4  (uint8_t value)         { GPIOC_ODR.B13  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOC_ODR+0)
MOVT	R2, #hi_addr(GPIOC_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #13, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setCS_4:
BX	LR
; end of mikromedia_7_STM32F7__setCS_4
mikromedia_7_STM32F7__setSCK_4:
;__mm_7_stm32f7_gpio.c,121 :: 		static void _setSCK_4 (uint8_t value)         { GPIOC_ODR.B10   = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOC_ODR+0)
MOVT	R2, #hi_addr(GPIOC_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #10, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setSCK_4:
BX	LR
; end of mikromedia_7_STM32F7__setSCK_4
mikromedia_7_STM32F7__setMISO_4:
;__mm_7_stm32f7_gpio.c,122 :: 		static void _setMISO_4(uint8_t value)         { GPIOC_ODR.B11   = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOC_ODR+0)
MOVT	R2, #hi_addr(GPIOC_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #11, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setMISO_4:
BX	LR
; end of mikromedia_7_STM32F7__setMISO_4
mikromedia_7_STM32F7__setMOSI_4:
;__mm_7_stm32f7_gpio.c,123 :: 		static void _setMOSI_4(uint8_t value)         { GPIOC_ODR.B12   = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOC_ODR+0)
MOVT	R2, #hi_addr(GPIOC_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #12, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setMOSI_4:
BX	LR
; end of mikromedia_7_STM32F7__setMOSI_4
mikromedia_7_STM32F7__setPWM_4:
;__mm_7_stm32f7_gpio.c,124 :: 		static void _setPWM_4 (uint8_t value)         { GPIOD_ODR.B15  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOD_ODR+0)
MOVT	R2, #hi_addr(GPIOD_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #15, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setPWM_4:
BX	LR
; end of mikromedia_7_STM32F7__setPWM_4
mikromedia_7_STM32F7__setINT_4:
;__mm_7_stm32f7_gpio.c,125 :: 		static void _setINT_4 (uint8_t value)         { GPIOF_ODR.B3   = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOF_ODR+0)
MOVT	R2, #hi_addr(GPIOF_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #3, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setINT_4:
BX	LR
; end of mikromedia_7_STM32F7__setINT_4
mikromedia_7_STM32F7__setRX_4:
;__mm_7_stm32f7_gpio.c,126 :: 		static void _setRX_4  (uint8_t value)         { GPIOC_ODR.B7   = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOC_ODR+0)
MOVT	R2, #hi_addr(GPIOC_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #7, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setRX_4:
BX	LR
; end of mikromedia_7_STM32F7__setRX_4
mikromedia_7_STM32F7__setTX_4:
;__mm_7_stm32f7_gpio.c,127 :: 		static void _setTX_4  (uint8_t value)         { GPIOC_ODR.B6   = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOC_ODR+0)
MOVT	R2, #hi_addr(GPIOC_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #6, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setTX_4:
BX	LR
; end of mikromedia_7_STM32F7__setTX_4
mikromedia_7_STM32F7__setSCL_4:
;__mm_7_stm32f7_gpio.c,128 :: 		static void _setSCL_4 (uint8_t value)         { GPIOF_ODR.B1   = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOF_ODR+0)
MOVT	R2, #hi_addr(GPIOF_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #1, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setSCL_4:
BX	LR
; end of mikromedia_7_STM32F7__setSCL_4
mikromedia_7_STM32F7__setSDA_4:
;__mm_7_stm32f7_gpio.c,129 :: 		static void _setSDA_4 (uint8_t value)         { GPIOF_ODR.B0   = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOF_ODR+0)
MOVT	R2, #hi_addr(GPIOF_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #0, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setSDA_4:
BX	LR
; end of mikromedia_7_STM32F7__setSDA_4
mikromedia_7_STM32F7__getAN_5:
;__mm_7_stm32f7_gpio.c,131 :: 		static uint8_t _getAN_5  ()                         { return GPIOB_IDR.B1 ;  }
MOVW	R0, #lo_addr(GPIOB_IDR+0)
MOVT	R0, #hi_addr(GPIOB_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #1, #1
L_end__getAN_5:
BX	LR
; end of mikromedia_7_STM32F7__getAN_5
mikromedia_7_STM32F7__getRST_5:
;__mm_7_stm32f7_gpio.c,132 :: 		static uint8_t _getRST_5 ()                         { return GPIOE_IDR.B15 ;  }
MOVW	R0, #lo_addr(GPIOE_IDR+0)
MOVT	R0, #hi_addr(GPIOE_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #15, #1
L_end__getRST_5:
BX	LR
; end of mikromedia_7_STM32F7__getRST_5
mikromedia_7_STM32F7__getCS_5:
;__mm_7_stm32f7_gpio.c,133 :: 		static uint8_t _getCS_5  ()                         { return GPIOD_IDR.B7;  }
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #7, #1
L_end__getCS_5:
BX	LR
; end of mikromedia_7_STM32F7__getCS_5
mikromedia_7_STM32F7__getSCK_5:
;__mm_7_stm32f7_gpio.c,134 :: 		static uint8_t _getSCK_5 ()                         { return GPIOC_IDR.B10 ;  }
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #10, #1
L_end__getSCK_5:
BX	LR
; end of mikromedia_7_STM32F7__getSCK_5
mikromedia_7_STM32F7__getMISO_5:
;__mm_7_stm32f7_gpio.c,135 :: 		static uint8_t _getMISO_5()                         { return GPIOC_IDR.B11 ;  }
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #11, #1
L_end__getMISO_5:
BX	LR
; end of mikromedia_7_STM32F7__getMISO_5
mikromedia_7_STM32F7__getMOSI_5:
;__mm_7_stm32f7_gpio.c,136 :: 		static uint8_t _getMOSI_5()                         { return GPIOC_IDR.B12 ;  }
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #12, #1
L_end__getMOSI_5:
BX	LR
; end of mikromedia_7_STM32F7__getMOSI_5
mikromedia_7_STM32F7__getPWM_5:
;__mm_7_stm32f7_gpio.c,137 :: 		static uint8_t _getPWM_5 ()                         { return GPIOB_IDR.B0 ;  }
MOVW	R0, #lo_addr(GPIOB_IDR+0)
MOVT	R0, #hi_addr(GPIOB_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #0, #1
L_end__getPWM_5:
BX	LR
; end of mikromedia_7_STM32F7__getPWM_5
mikromedia_7_STM32F7__getINT_5:
;__mm_7_stm32f7_gpio.c,138 :: 		static uint8_t _getINT_5 ()                         { return GPIOE_IDR.B10 ;  }
MOVW	R0, #lo_addr(GPIOE_IDR+0)
MOVT	R0, #hi_addr(GPIOE_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #10, #1
L_end__getINT_5:
BX	LR
; end of mikromedia_7_STM32F7__getINT_5
mikromedia_7_STM32F7__getRX_5:
;__mm_7_stm32f7_gpio.c,139 :: 		static uint8_t _getRX_5  ()                         { return GPIOC_IDR.B7 ;  }
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #7, #1
L_end__getRX_5:
BX	LR
; end of mikromedia_7_STM32F7__getRX_5
mikromedia_7_STM32F7__getTX_5:
;__mm_7_stm32f7_gpio.c,140 :: 		static uint8_t _getTX_5  ()                         { return GPIOC_IDR.B6 ;  }
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #6, #1
L_end__getTX_5:
BX	LR
; end of mikromedia_7_STM32F7__getTX_5
mikromedia_7_STM32F7__getSCL_5:
;__mm_7_stm32f7_gpio.c,141 :: 		static uint8_t _getSCL_5 ()                         { return GPIOF_IDR.B1 ;  }
MOVW	R0, #lo_addr(GPIOF_IDR+0)
MOVT	R0, #hi_addr(GPIOF_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #1, #1
L_end__getSCL_5:
BX	LR
; end of mikromedia_7_STM32F7__getSCL_5
mikromedia_7_STM32F7__getSDA_5:
;__mm_7_stm32f7_gpio.c,142 :: 		static uint8_t _getSDA_5 ()                         { return GPIOF_IDR.B0 ;  }
MOVW	R0, #lo_addr(GPIOF_IDR+0)
MOVT	R0, #hi_addr(GPIOF_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #0, #1
L_end__getSDA_5:
BX	LR
; end of mikromedia_7_STM32F7__getSDA_5
mikromedia_7_STM32F7__setAN_5:
;__mm_7_stm32f7_gpio.c,143 :: 		static void _setAN_5  (uint8_t value)         { GPIOB_ODR.B1   = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOB_ODR+0)
MOVT	R2, #hi_addr(GPIOB_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #1, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setAN_5:
BX	LR
; end of mikromedia_7_STM32F7__setAN_5
mikromedia_7_STM32F7__setRST_5:
;__mm_7_stm32f7_gpio.c,144 :: 		static void _setRST_5 (uint8_t value)         { GPIOE_ODR.B15   = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOE_ODR+0)
MOVT	R2, #hi_addr(GPIOE_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #15, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setRST_5:
BX	LR
; end of mikromedia_7_STM32F7__setRST_5
mikromedia_7_STM32F7__setCS_5:
;__mm_7_stm32f7_gpio.c,145 :: 		static void _setCS_5  (uint8_t value)         { GPIOD_ODR.B7  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOD_ODR+0)
MOVT	R2, #hi_addr(GPIOD_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #7, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setCS_5:
BX	LR
; end of mikromedia_7_STM32F7__setCS_5
mikromedia_7_STM32F7__setSCK_5:
;__mm_7_stm32f7_gpio.c,146 :: 		static void _setSCK_5 (uint8_t value)         { GPIOC_ODR.B10   = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOC_ODR+0)
MOVT	R2, #hi_addr(GPIOC_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #10, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setSCK_5:
BX	LR
; end of mikromedia_7_STM32F7__setSCK_5
mikromedia_7_STM32F7__setMISO_5:
;__mm_7_stm32f7_gpio.c,147 :: 		static void _setMISO_5(uint8_t value)         { GPIOC_ODR.B11   = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOC_ODR+0)
MOVT	R2, #hi_addr(GPIOC_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #11, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setMISO_5:
BX	LR
; end of mikromedia_7_STM32F7__setMISO_5
mikromedia_7_STM32F7__setMOSI_5:
;__mm_7_stm32f7_gpio.c,148 :: 		static void _setMOSI_5(uint8_t value)         { GPIOC_ODR.B12   = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOC_ODR+0)
MOVT	R2, #hi_addr(GPIOC_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #12, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setMOSI_5:
BX	LR
; end of mikromedia_7_STM32F7__setMOSI_5
mikromedia_7_STM32F7__setPWM_5:
;__mm_7_stm32f7_gpio.c,149 :: 		static void _setPWM_5 (uint8_t value)         { GPIOB_ODR.B0   = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOB_ODR+0)
MOVT	R2, #hi_addr(GPIOB_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #0, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setPWM_5:
BX	LR
; end of mikromedia_7_STM32F7__setPWM_5
mikromedia_7_STM32F7__setINT_5:
;__mm_7_stm32f7_gpio.c,150 :: 		static void _setINT_5 (uint8_t value)         { GPIOE_ODR.B10   = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOE_ODR+0)
MOVT	R2, #hi_addr(GPIOE_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #10, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setINT_5:
BX	LR
; end of mikromedia_7_STM32F7__setINT_5
mikromedia_7_STM32F7__setRX_5:
;__mm_7_stm32f7_gpio.c,151 :: 		static void _setRX_5  (uint8_t value)         { GPIOC_ODR.B7   = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOC_ODR+0)
MOVT	R2, #hi_addr(GPIOC_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #7, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setRX_5:
BX	LR
; end of mikromedia_7_STM32F7__setRX_5
mikromedia_7_STM32F7__setTX_5:
;__mm_7_stm32f7_gpio.c,152 :: 		static void _setTX_5  (uint8_t value)         { GPIOC_ODR.B6   = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOC_ODR+0)
MOVT	R2, #hi_addr(GPIOC_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #6, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setTX_5:
BX	LR
; end of mikromedia_7_STM32F7__setTX_5
mikromedia_7_STM32F7__setSCL_5:
;__mm_7_stm32f7_gpio.c,153 :: 		static void _setSCL_5 (uint8_t value)         { GPIOF_ODR.B1   = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOF_ODR+0)
MOVT	R2, #hi_addr(GPIOF_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #1, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setSCL_5:
BX	LR
; end of mikromedia_7_STM32F7__setSCL_5
mikromedia_7_STM32F7__setSDA_5:
;__mm_7_stm32f7_gpio.c,154 :: 		static void _setSDA_5 (uint8_t value)         { GPIOF_ODR.B0   = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R2, #lo_addr(GPIOF_ODR+0)
MOVT	R2, #hi_addr(GPIOF_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R0, #0, #1
; value end address is: 0 (R0)
STR	R1, [R2, #0]
L_end__setSDA_5:
BX	LR
; end of mikromedia_7_STM32F7__setSDA_5
mikromedia_7_STM32F7__gpioInit_1:
;__mm_7_stm32f7_gpio.c,158 :: 		static T_mikrobus_ret _gpioInit_1(T_mikrobus_pin pin, T_gpio_dir dir)
; dir start address is: 4 (R1)
; pin start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; dir end address is: 4 (R1)
; pin end address is: 0 (R0)
; pin start address is: 0 (R0)
; dir start address is: 4 (R1)
;__mm_7_stm32f7_gpio.c,160 :: 		switch( pin )
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_10
; pin end address is: 0 (R0)
;__mm_7_stm32f7_gpio.c,162 :: 		case _MIKROBUS_AN_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_3 ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_3 ); break;
L_mikromedia_7_STM32F7__gpioInit_12:
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_13
; dir end address is: 4 (R1)
MOVW	R1, #8
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_14
L_mikromedia_7_STM32F7__gpioInit_13:
MOVW	R1, #8
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_14:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_11
;__mm_7_stm32f7_gpio.c,163 :: 		case _MIKROBUS_RST_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_11 ); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_11 ); break;
L_mikromedia_7_STM32F7__gpioInit_15:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_16
; dir end address is: 4 (R1)
MOVW	R1, #2048
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_17
L_mikromedia_7_STM32F7__gpioInit_16:
MOVW	R1, #2048
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_17:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_11
;__mm_7_stm32f7_gpio.c,164 :: 		case _MIKROBUS_CS_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_4); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_4); break;
L_mikromedia_7_STM32F7__gpioInit_18:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_19
; dir end address is: 4 (R1)
MOVW	R1, #16
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_110
L_mikromedia_7_STM32F7__gpioInit_19:
MOVW	R1, #16
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_110:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_11
;__mm_7_stm32f7_gpio.c,165 :: 		case _MIKROBUS_SCK_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_5 ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_5 ); break;
L_mikromedia_7_STM32F7__gpioInit_111:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_112
; dir end address is: 4 (R1)
MOVW	R1, #32
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_113
L_mikromedia_7_STM32F7__gpioInit_112:
MOVW	R1, #32
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_113:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_11
;__mm_7_stm32f7_gpio.c,166 :: 		case _MIKROBUS_MISO_PIN  : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_6 ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_6 ); break;
L_mikromedia_7_STM32F7__gpioInit_114:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_115
; dir end address is: 4 (R1)
MOVW	R1, #64
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_116
L_mikromedia_7_STM32F7__gpioInit_115:
MOVW	R1, #64
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_116:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_11
;__mm_7_stm32f7_gpio.c,167 :: 		case _MIKROBUS_MOSI_PIN  : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_5 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_5 ); break;
L_mikromedia_7_STM32F7__gpioInit_117:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_118
; dir end address is: 4 (R1)
MOVW	R1, #32
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_119
L_mikromedia_7_STM32F7__gpioInit_118:
MOVW	R1, #32
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_119:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_11
;__mm_7_stm32f7_gpio.c,168 :: 		case _MIKROBUS_PWM_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_12); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_12); break;
L_mikromedia_7_STM32F7__gpioInit_120:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_121
; dir end address is: 4 (R1)
MOVW	R1, #4096
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_122
L_mikromedia_7_STM32F7__gpioInit_121:
MOVW	R1, #4096
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_122:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_11
;__mm_7_stm32f7_gpio.c,169 :: 		case _MIKROBUS_INT_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOE_BASE, _GPIO_PINMASK_3 ); else GPIO_Digital_Output(&GPIOE_BASE, _GPIO_PINMASK_3 ); break;
L_mikromedia_7_STM32F7__gpioInit_123:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_124
; dir end address is: 4 (R1)
MOVW	R1, #8
MOVW	R0, #lo_addr(GPIOE_BASE+0)
MOVT	R0, #hi_addr(GPIOE_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_125
L_mikromedia_7_STM32F7__gpioInit_124:
MOVW	R1, #8
MOVW	R0, #lo_addr(GPIOE_BASE+0)
MOVT	R0, #hi_addr(GPIOE_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_125:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_11
;__mm_7_stm32f7_gpio.c,170 :: 		case _MIKROBUS_RX_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_7 ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_7 ); break;
L_mikromedia_7_STM32F7__gpioInit_126:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_127
; dir end address is: 4 (R1)
MOVW	R1, #128
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_128
L_mikromedia_7_STM32F7__gpioInit_127:
MOVW	R1, #128
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_128:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_11
;__mm_7_stm32f7_gpio.c,171 :: 		case _MIKROBUS_TX_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_6 ); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_6 ); break;
L_mikromedia_7_STM32F7__gpioInit_129:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_130
; dir end address is: 4 (R1)
MOVW	R1, #64
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_131
L_mikromedia_7_STM32F7__gpioInit_130:
MOVW	R1, #64
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_131:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_11
;__mm_7_stm32f7_gpio.c,172 :: 		case _MIKROBUS_SCL_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_8 ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_8 ); break;
L_mikromedia_7_STM32F7__gpioInit_132:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_133
; dir end address is: 4 (R1)
MOVW	R1, #256
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_134
L_mikromedia_7_STM32F7__gpioInit_133:
MOVW	R1, #256
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_134:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_11
;__mm_7_stm32f7_gpio.c,173 :: 		case _MIKROBUS_SDA_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_9 ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_9 ); break;
L_mikromedia_7_STM32F7__gpioInit_135:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_136
; dir end address is: 4 (R1)
MOVW	R1, #512
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_137
L_mikromedia_7_STM32F7__gpioInit_136:
MOVW	R1, #512
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_137:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_11
;__mm_7_stm32f7_gpio.c,174 :: 		default                  : return _MIKROBUS_ERR_PIN;
L_mikromedia_7_STM32F7__gpioInit_138:
MOVS	R0, #1
IT	AL
BAL	L_end__gpioInit_1
;__mm_7_stm32f7_gpio.c,175 :: 		}
L_mikromedia_7_STM32F7__gpioInit_10:
; dir start address is: 4 (R1)
; pin start address is: 0 (R0)
CMP	R0, #0
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_12
CMP	R0, #1
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_15
CMP	R0, #2
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_18
CMP	R0, #3
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_111
CMP	R0, #4
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_114
CMP	R0, #5
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_117
CMP	R0, #6
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_120
CMP	R0, #7
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_123
CMP	R0, #8
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_126
CMP	R0, #9
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_129
CMP	R0, #10
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_132
CMP	R0, #11
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_135
; pin end address is: 0 (R0)
; dir end address is: 4 (R1)
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_138
L_mikromedia_7_STM32F7__gpioInit_11:
;__mm_7_stm32f7_gpio.c,176 :: 		return _MIKROBUS_OK;
MOVS	R0, __MIKROBUS_OK
;__mm_7_stm32f7_gpio.c,177 :: 		}
L_end__gpioInit_1:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of mikromedia_7_STM32F7__gpioInit_1
mikromedia_7_STM32F7__gpioInit_2:
;__mm_7_stm32f7_gpio.c,179 :: 		static T_mikrobus_ret _gpioInit_2(T_mikrobus_pin pin, T_gpio_dir dir)
; dir start address is: 4 (R1)
; pin start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; dir end address is: 4 (R1)
; pin end address is: 0 (R0)
; pin start address is: 0 (R0)
; dir start address is: 4 (R1)
;__mm_7_stm32f7_gpio.c,181 :: 		switch( pin )
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_239
; pin end address is: 0 (R0)
;__mm_7_stm32f7_gpio.c,183 :: 		case _MIKROBUS_AN_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_0 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_0 ) ; break;
L_mikromedia_7_STM32F7__gpioInit_241:
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_242
; dir end address is: 4 (R1)
MOVW	R1, #1
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_243
L_mikromedia_7_STM32F7__gpioInit_242:
MOVW	R1, #1
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_243:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_240
;__mm_7_stm32f7_gpio.c,184 :: 		case _MIKROBUS_RST_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOE_BASE, _GPIO_PINMASK_12 ); else GPIO_Digital_Output(&GPIOE_BASE, _GPIO_PINMASK_12 ) ; break;
L_mikromedia_7_STM32F7__gpioInit_244:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_245
; dir end address is: 4 (R1)
MOVW	R1, #4096
MOVW	R0, #lo_addr(GPIOE_BASE+0)
MOVT	R0, #hi_addr(GPIOE_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_246
L_mikromedia_7_STM32F7__gpioInit_245:
MOVW	R1, #4096
MOVW	R0, #lo_addr(GPIOE_BASE+0)
MOVT	R0, #hi_addr(GPIOE_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_246:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_240
;__mm_7_stm32f7_gpio.c,185 :: 		case _MIKROBUS_CS_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_2 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_2 ); break;
L_mikromedia_7_STM32F7__gpioInit_247:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_248
; dir end address is: 4 (R1)
MOVW	R1, #4
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_249
L_mikromedia_7_STM32F7__gpioInit_248:
MOVW	R1, #4
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_249:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_240
;__mm_7_stm32f7_gpio.c,186 :: 		case _MIKROBUS_SCK_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_5 ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_5 ); break;
L_mikromedia_7_STM32F7__gpioInit_250:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_251
; dir end address is: 4 (R1)
MOVW	R1, #32
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_252
L_mikromedia_7_STM32F7__gpioInit_251:
MOVW	R1, #32
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_252:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_240
;__mm_7_stm32f7_gpio.c,187 :: 		case _MIKROBUS_MISO_PIN  : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_6 ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_6 ); break;
L_mikromedia_7_STM32F7__gpioInit_253:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_254
; dir end address is: 4 (R1)
MOVW	R1, #64
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_255
L_mikromedia_7_STM32F7__gpioInit_254:
MOVW	R1, #64
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_255:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_240
;__mm_7_stm32f7_gpio.c,188 :: 		case _MIKROBUS_MOSI_PIN  : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_5 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_5 ); break;
L_mikromedia_7_STM32F7__gpioInit_256:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_257
; dir end address is: 4 (R1)
MOVW	R1, #32
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_258
L_mikromedia_7_STM32F7__gpioInit_257:
MOVW	R1, #32
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_258:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_240
;__mm_7_stm32f7_gpio.c,189 :: 		case _MIKROBUS_PWM_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_13); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_13) ; break;
L_mikromedia_7_STM32F7__gpioInit_259:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_260
; dir end address is: 4 (R1)
MOVW	R1, #8192
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_261
L_mikromedia_7_STM32F7__gpioInit_260:
MOVW	R1, #8192
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_261:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_240
;__mm_7_stm32f7_gpio.c,190 :: 		case _MIKROBUS_INT_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOE_BASE, _GPIO_PINMASK_4 ); else GPIO_Digital_Output(&GPIOE_BASE, _GPIO_PINMASK_4 ) ; break;
L_mikromedia_7_STM32F7__gpioInit_262:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_263
; dir end address is: 4 (R1)
MOVW	R1, #16
MOVW	R0, #lo_addr(GPIOE_BASE+0)
MOVT	R0, #hi_addr(GPIOE_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_264
L_mikromedia_7_STM32F7__gpioInit_263:
MOVW	R1, #16
MOVW	R0, #lo_addr(GPIOE_BASE+0)
MOVT	R0, #hi_addr(GPIOE_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_264:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_240
;__mm_7_stm32f7_gpio.c,191 :: 		case _MIKROBUS_RX_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_6 ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_6 ); break;
L_mikromedia_7_STM32F7__gpioInit_265:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_266
; dir end address is: 4 (R1)
MOVW	R1, #64
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_267
L_mikromedia_7_STM32F7__gpioInit_266:
MOVW	R1, #64
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_267:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_240
;__mm_7_stm32f7_gpio.c,192 :: 		case _MIKROBUS_TX_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_5 ); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_5 ); break;
L_mikromedia_7_STM32F7__gpioInit_268:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_269
; dir end address is: 4 (R1)
MOVW	R1, #32
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_270
L_mikromedia_7_STM32F7__gpioInit_269:
MOVW	R1, #32
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_270:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_240
;__mm_7_stm32f7_gpio.c,193 :: 		case _MIKROBUS_SCL_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_8 ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_8 ); break;
L_mikromedia_7_STM32F7__gpioInit_271:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_272
; dir end address is: 4 (R1)
MOVW	R1, #256
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_273
L_mikromedia_7_STM32F7__gpioInit_272:
MOVW	R1, #256
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_273:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_240
;__mm_7_stm32f7_gpio.c,194 :: 		case _MIKROBUS_SDA_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_9 ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_9 ); break;
L_mikromedia_7_STM32F7__gpioInit_274:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_275
; dir end address is: 4 (R1)
MOVW	R1, #512
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_276
L_mikromedia_7_STM32F7__gpioInit_275:
MOVW	R1, #512
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_276:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_240
;__mm_7_stm32f7_gpio.c,195 :: 		default                  : return _MIKROBUS_ERR_PIN;
L_mikromedia_7_STM32F7__gpioInit_277:
MOVS	R0, #1
IT	AL
BAL	L_end__gpioInit_2
;__mm_7_stm32f7_gpio.c,196 :: 		}
L_mikromedia_7_STM32F7__gpioInit_239:
; dir start address is: 4 (R1)
; pin start address is: 0 (R0)
CMP	R0, #0
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_241
CMP	R0, #1
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_244
CMP	R0, #2
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_247
CMP	R0, #3
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_250
CMP	R0, #4
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_253
CMP	R0, #5
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_256
CMP	R0, #6
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_259
CMP	R0, #7
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_262
CMP	R0, #8
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_265
CMP	R0, #9
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_268
CMP	R0, #10
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_271
CMP	R0, #11
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_274
; pin end address is: 0 (R0)
; dir end address is: 4 (R1)
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_277
L_mikromedia_7_STM32F7__gpioInit_240:
;__mm_7_stm32f7_gpio.c,197 :: 		return _MIKROBUS_OK;
MOVS	R0, __MIKROBUS_OK
;__mm_7_stm32f7_gpio.c,198 :: 		}
L_end__gpioInit_2:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of mikromedia_7_STM32F7__gpioInit_2
mikromedia_7_STM32F7__gpioInit_3:
;__mm_7_stm32f7_gpio.c,200 :: 		static T_mikrobus_ret _gpioInit_3(T_mikrobus_pin pin, T_gpio_dir dir)
; dir start address is: 4 (R1)
; pin start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; dir end address is: 4 (R1)
; pin end address is: 0 (R0)
; pin start address is: 0 (R0)
; dir start address is: 4 (R1)
;__mm_7_stm32f7_gpio.c,202 :: 		switch( pin )
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_378
; pin end address is: 0 (R0)
;__mm_7_stm32f7_gpio.c,204 :: 		case _MIKROBUS_AN_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_2  ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_2 ) ; break;
L_mikromedia_7_STM32F7__gpioInit_380:
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_381
; dir end address is: 4 (R1)
MOVW	R1, #4
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_382
L_mikromedia_7_STM32F7__gpioInit_381:
MOVW	R1, #4
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_382:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_379
;__mm_7_stm32f7_gpio.c,205 :: 		case _MIKROBUS_RST_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_13 ); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_13) ; break;
L_mikromedia_7_STM32F7__gpioInit_383:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_384
; dir end address is: 4 (R1)
MOVW	R1, #8192
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_385
L_mikromedia_7_STM32F7__gpioInit_384:
MOVW	R1, #8192
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_385:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_379
;__mm_7_stm32f7_gpio.c,206 :: 		case _MIKROBUS_CS_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_4  ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_4 ); break;
L_mikromedia_7_STM32F7__gpioInit_386:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_387
; dir end address is: 4 (R1)
MOVW	R1, #16
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_388
L_mikromedia_7_STM32F7__gpioInit_387:
MOVW	R1, #16
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_388:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_379
;__mm_7_stm32f7_gpio.c,207 :: 		case _MIKROBUS_SCK_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_5  ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_5 ); break;
L_mikromedia_7_STM32F7__gpioInit_389:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_390
; dir end address is: 4 (R1)
MOVW	R1, #32
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_391
L_mikromedia_7_STM32F7__gpioInit_390:
MOVW	R1, #32
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_391:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_379
;__mm_7_stm32f7_gpio.c,208 :: 		case _MIKROBUS_MISO_PIN  : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_6  ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_6 ); break;
L_mikromedia_7_STM32F7__gpioInit_392:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_393
; dir end address is: 4 (R1)
MOVW	R1, #64
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_394
L_mikromedia_7_STM32F7__gpioInit_393:
MOVW	R1, #64
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_394:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_379
;__mm_7_stm32f7_gpio.c,209 :: 		case _MIKROBUS_MOSI_PIN  : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_5  ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_5 ); break;
L_mikromedia_7_STM32F7__gpioInit_395:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_396
; dir end address is: 4 (R1)
MOVW	R1, #32
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_397
L_mikromedia_7_STM32F7__gpioInit_396:
MOVW	R1, #32
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_397:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_379
;__mm_7_stm32f7_gpio.c,210 :: 		case _MIKROBUS_PWM_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_14 ); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_14) ; break;
L_mikromedia_7_STM32F7__gpioInit_398:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_399
; dir end address is: 4 (R1)
MOVW	R1, #16384
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_3100
L_mikromedia_7_STM32F7__gpioInit_399:
MOVW	R1, #16384
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_3100:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_379
;__mm_7_stm32f7_gpio.c,211 :: 		case _MIKROBUS_INT_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOE_BASE, _GPIO_PINMASK_2  ); else GPIO_Digital_Output(&GPIOE_BASE, _GPIO_PINMASK_2 ) ; break;
L_mikromedia_7_STM32F7__gpioInit_3101:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_3102
; dir end address is: 4 (R1)
MOVW	R1, #4
MOVW	R0, #lo_addr(GPIOE_BASE+0)
MOVT	R0, #hi_addr(GPIOE_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_3103
L_mikromedia_7_STM32F7__gpioInit_3102:
MOVW	R1, #4
MOVW	R0, #lo_addr(GPIOE_BASE+0)
MOVT	R0, #hi_addr(GPIOE_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_3103:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_379
;__mm_7_stm32f7_gpio.c,212 :: 		case _MIKROBUS_RX_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_9  ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_9 ); break;
L_mikromedia_7_STM32F7__gpioInit_3104:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_3105
; dir end address is: 4 (R1)
MOVW	R1, #512
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_3106
L_mikromedia_7_STM32F7__gpioInit_3105:
MOVW	R1, #512
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_3106:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_379
;__mm_7_stm32f7_gpio.c,213 :: 		case _MIKROBUS_TX_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_8  ); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_8 ); break;
L_mikromedia_7_STM32F7__gpioInit_3107:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_3108
; dir end address is: 4 (R1)
MOVW	R1, #256
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_3109
L_mikromedia_7_STM32F7__gpioInit_3108:
MOVW	R1, #256
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_3109:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_379
;__mm_7_stm32f7_gpio.c,214 :: 		case _MIKROBUS_SCL_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_8  ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_8 ); break;
L_mikromedia_7_STM32F7__gpioInit_3110:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_3111
; dir end address is: 4 (R1)
MOVW	R1, #256
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_3112
L_mikromedia_7_STM32F7__gpioInit_3111:
MOVW	R1, #256
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_3112:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_379
;__mm_7_stm32f7_gpio.c,215 :: 		case _MIKROBUS_SDA_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_9  ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_9 ); break;
L_mikromedia_7_STM32F7__gpioInit_3113:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_3114
; dir end address is: 4 (R1)
MOVW	R1, #512
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_3115
L_mikromedia_7_STM32F7__gpioInit_3114:
MOVW	R1, #512
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_3115:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_379
;__mm_7_stm32f7_gpio.c,216 :: 		default                  : return _MIKROBUS_ERR_PIN;
L_mikromedia_7_STM32F7__gpioInit_3116:
MOVS	R0, #1
IT	AL
BAL	L_end__gpioInit_3
;__mm_7_stm32f7_gpio.c,217 :: 		}
L_mikromedia_7_STM32F7__gpioInit_378:
; dir start address is: 4 (R1)
; pin start address is: 0 (R0)
CMP	R0, #0
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_380
CMP	R0, #1
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_383
CMP	R0, #2
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_386
CMP	R0, #3
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_389
CMP	R0, #4
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_392
CMP	R0, #5
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_395
CMP	R0, #6
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_398
CMP	R0, #7
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_3101
CMP	R0, #8
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_3104
CMP	R0, #9
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_3107
CMP	R0, #10
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_3110
CMP	R0, #11
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_3113
; pin end address is: 0 (R0)
; dir end address is: 4 (R1)
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_3116
L_mikromedia_7_STM32F7__gpioInit_379:
;__mm_7_stm32f7_gpio.c,218 :: 		return _MIKROBUS_OK;
MOVS	R0, __MIKROBUS_OK
;__mm_7_stm32f7_gpio.c,219 :: 		}
L_end__gpioInit_3:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of mikromedia_7_STM32F7__gpioInit_3
mikromedia_7_STM32F7__gpioInit_4:
;__mm_7_stm32f7_gpio.c,221 :: 		static T_mikrobus_ret _gpioInit_4(T_mikrobus_pin pin, T_gpio_dir dir)
; dir start address is: 4 (R1)
; pin start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; dir end address is: 4 (R1)
; pin end address is: 0 (R0)
; pin start address is: 0 (R0)
; dir start address is: 4 (R1)
;__mm_7_stm32f7_gpio.c,223 :: 		switch( pin )
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_4117
; pin end address is: 0 (R0)
;__mm_7_stm32f7_gpio.c,225 :: 		case _MIKROBUS_AN_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_3  ); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_3 ) ; break;
L_mikromedia_7_STM32F7__gpioInit_4119:
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_4120
; dir end address is: 4 (R1)
MOVW	R1, #8
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_4121
L_mikromedia_7_STM32F7__gpioInit_4120:
MOVW	R1, #8
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_4121:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_4118
;__mm_7_stm32f7_gpio.c,226 :: 		case _MIKROBUS_RST_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_14  ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_14 ) ; break;
L_mikromedia_7_STM32F7__gpioInit_4122:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_4123
; dir end address is: 4 (R1)
MOVW	R1, #16384
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_4124
L_mikromedia_7_STM32F7__gpioInit_4123:
MOVW	R1, #16384
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_4124:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_4118
;__mm_7_stm32f7_gpio.c,227 :: 		case _MIKROBUS_CS_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_13 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_13); break;
L_mikromedia_7_STM32F7__gpioInit_4125:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_4126
; dir end address is: 4 (R1)
MOVW	R1, #8192
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_4127
L_mikromedia_7_STM32F7__gpioInit_4126:
MOVW	R1, #8192
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_4127:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_4118
;__mm_7_stm32f7_gpio.c,228 :: 		case _MIKROBUS_SCK_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_10  ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_10 ); break;
L_mikromedia_7_STM32F7__gpioInit_4128:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_4129
; dir end address is: 4 (R1)
MOVW	R1, #1024
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_4130
L_mikromedia_7_STM32F7__gpioInit_4129:
MOVW	R1, #1024
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_4130:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_4118
;__mm_7_stm32f7_gpio.c,229 :: 		case _MIKROBUS_MISO_PIN  : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_11  ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_11 ); break;
L_mikromedia_7_STM32F7__gpioInit_4131:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_4132
; dir end address is: 4 (R1)
MOVW	R1, #2048
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_4133
L_mikromedia_7_STM32F7__gpioInit_4132:
MOVW	R1, #2048
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_4133:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_4118
;__mm_7_stm32f7_gpio.c,230 :: 		case _MIKROBUS_MOSI_PIN  : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_12  ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_12 ); break;
L_mikromedia_7_STM32F7__gpioInit_4134:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_4135
; dir end address is: 4 (R1)
MOVW	R1, #4096
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_4136
L_mikromedia_7_STM32F7__gpioInit_4135:
MOVW	R1, #4096
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_4136:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_4118
;__mm_7_stm32f7_gpio.c,231 :: 		case _MIKROBUS_PWM_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_15 ); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_15) ; break;
L_mikromedia_7_STM32F7__gpioInit_4137:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_4138
; dir end address is: 4 (R1)
MOVW	R1, #32768
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_4139
L_mikromedia_7_STM32F7__gpioInit_4138:
MOVW	R1, #32768
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_4139:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_4118
;__mm_7_stm32f7_gpio.c,232 :: 		case _MIKROBUS_INT_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOE_BASE, _GPIO_PINMASK_3  ); else GPIO_Digital_Output(&GPIOE_BASE, _GPIO_PINMASK_3 ) ; break;
L_mikromedia_7_STM32F7__gpioInit_4140:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_4141
; dir end address is: 4 (R1)
MOVW	R1, #8
MOVW	R0, #lo_addr(GPIOE_BASE+0)
MOVT	R0, #hi_addr(GPIOE_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_4142
L_mikromedia_7_STM32F7__gpioInit_4141:
MOVW	R1, #8
MOVW	R0, #lo_addr(GPIOE_BASE+0)
MOVT	R0, #hi_addr(GPIOE_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_4142:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_4118
;__mm_7_stm32f7_gpio.c,233 :: 		case _MIKROBUS_RX_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_7  ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_7 ); break;
L_mikromedia_7_STM32F7__gpioInit_4143:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_4144
; dir end address is: 4 (R1)
MOVW	R1, #128
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_4145
L_mikromedia_7_STM32F7__gpioInit_4144:
MOVW	R1, #128
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_4145:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_4118
;__mm_7_stm32f7_gpio.c,234 :: 		case _MIKROBUS_TX_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_6  ); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_6 ); break;
L_mikromedia_7_STM32F7__gpioInit_4146:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_4147
; dir end address is: 4 (R1)
MOVW	R1, #64
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_4148
L_mikromedia_7_STM32F7__gpioInit_4147:
MOVW	R1, #64
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_4148:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_4118
;__mm_7_stm32f7_gpio.c,235 :: 		case _MIKROBUS_SCL_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_1  ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_1 ); break;
L_mikromedia_7_STM32F7__gpioInit_4149:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_4150
; dir end address is: 4 (R1)
MOVW	R1, #2
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_4151
L_mikromedia_7_STM32F7__gpioInit_4150:
MOVW	R1, #2
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_4151:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_4118
;__mm_7_stm32f7_gpio.c,236 :: 		case _MIKROBUS_SDA_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_0  ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_0 ); break;
L_mikromedia_7_STM32F7__gpioInit_4152:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_4153
; dir end address is: 4 (R1)
MOVW	R1, #1
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_4154
L_mikromedia_7_STM32F7__gpioInit_4153:
MOVW	R1, #1
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_4154:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_4118
;__mm_7_stm32f7_gpio.c,237 :: 		default                  : return _MIKROBUS_ERR_PIN;
L_mikromedia_7_STM32F7__gpioInit_4155:
MOVS	R0, #1
IT	AL
BAL	L_end__gpioInit_4
;__mm_7_stm32f7_gpio.c,238 :: 		}
L_mikromedia_7_STM32F7__gpioInit_4117:
; dir start address is: 4 (R1)
; pin start address is: 0 (R0)
CMP	R0, #0
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_4119
CMP	R0, #1
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_4122
CMP	R0, #2
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_4125
CMP	R0, #3
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_4128
CMP	R0, #4
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_4131
CMP	R0, #5
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_4134
CMP	R0, #6
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_4137
CMP	R0, #7
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_4140
CMP	R0, #8
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_4143
CMP	R0, #9
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_4146
CMP	R0, #10
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_4149
CMP	R0, #11
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_4152
; pin end address is: 0 (R0)
; dir end address is: 4 (R1)
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_4155
L_mikromedia_7_STM32F7__gpioInit_4118:
;__mm_7_stm32f7_gpio.c,239 :: 		return _MIKROBUS_OK;
MOVS	R0, __MIKROBUS_OK
;__mm_7_stm32f7_gpio.c,240 :: 		}
L_end__gpioInit_4:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of mikromedia_7_STM32F7__gpioInit_4
mikromedia_7_STM32F7__gpioInit_5:
;__mm_7_stm32f7_gpio.c,242 :: 		static T_mikrobus_ret _gpioInit_5(T_mikrobus_pin pin, T_gpio_dir dir)
; dir start address is: 4 (R1)
; pin start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; dir end address is: 4 (R1)
; pin end address is: 0 (R0)
; pin start address is: 0 (R0)
; dir start address is: 4 (R1)
;__mm_7_stm32f7_gpio.c,244 :: 		switch( pin )
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_5156
; pin end address is: 0 (R0)
;__mm_7_stm32f7_gpio.c,246 :: 		case _MIKROBUS_AN_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_1  ); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_1 ) ; break;
L_mikromedia_7_STM32F7__gpioInit_5158:
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_5159
; dir end address is: 4 (R1)
MOVW	R1, #2
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_5160
L_mikromedia_7_STM32F7__gpioInit_5159:
MOVW	R1, #2
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_5160:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_5157
;__mm_7_stm32f7_gpio.c,247 :: 		case _MIKROBUS_RST_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_15  ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_15 ) ; break;
L_mikromedia_7_STM32F7__gpioInit_5161:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_5162
; dir end address is: 4 (R1)
MOVW	R1, #32768
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_5163
L_mikromedia_7_STM32F7__gpioInit_5162:
MOVW	R1, #32768
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_5163:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_5157
;__mm_7_stm32f7_gpio.c,248 :: 		case _MIKROBUS_CS_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_7 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_7); break;
L_mikromedia_7_STM32F7__gpioInit_5164:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_5165
; dir end address is: 4 (R1)
MOVW	R1, #128
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_5166
L_mikromedia_7_STM32F7__gpioInit_5165:
MOVW	R1, #128
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_5166:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_5157
;__mm_7_stm32f7_gpio.c,249 :: 		case _MIKROBUS_SCK_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_10  ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_10 ); break;
L_mikromedia_7_STM32F7__gpioInit_5167:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_5168
; dir end address is: 4 (R1)
MOVW	R1, #1024
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_5169
L_mikromedia_7_STM32F7__gpioInit_5168:
MOVW	R1, #1024
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_5169:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_5157
;__mm_7_stm32f7_gpio.c,250 :: 		case _MIKROBUS_MISO_PIN  : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_11  ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_11 ); break;
L_mikromedia_7_STM32F7__gpioInit_5170:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_5171
; dir end address is: 4 (R1)
MOVW	R1, #2048
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_5172
L_mikromedia_7_STM32F7__gpioInit_5171:
MOVW	R1, #2048
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_5172:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_5157
;__mm_7_stm32f7_gpio.c,251 :: 		case _MIKROBUS_MOSI_PIN  : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_12  ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_12 ); break;
L_mikromedia_7_STM32F7__gpioInit_5173:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_5174
; dir end address is: 4 (R1)
MOVW	R1, #4096
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_5175
L_mikromedia_7_STM32F7__gpioInit_5174:
MOVW	R1, #4096
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_5175:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_5157
;__mm_7_stm32f7_gpio.c,252 :: 		case _MIKROBUS_PWM_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOE_BASE, _GPIO_PINMASK_0  ); else GPIO_Digital_Output(&GPIOE_BASE, _GPIO_PINMASK_0 ) ; break;
L_mikromedia_7_STM32F7__gpioInit_5176:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_5177
; dir end address is: 4 (R1)
MOVW	R1, #1
MOVW	R0, #lo_addr(GPIOE_BASE+0)
MOVT	R0, #hi_addr(GPIOE_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_5178
L_mikromedia_7_STM32F7__gpioInit_5177:
MOVW	R1, #1
MOVW	R0, #lo_addr(GPIOE_BASE+0)
MOVT	R0, #hi_addr(GPIOE_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_5178:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_5157
;__mm_7_stm32f7_gpio.c,253 :: 		case _MIKROBUS_INT_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOE_BASE, _GPIO_PINMASK_10  ); else GPIO_Digital_Output(&GPIOE_BASE, _GPIO_PINMASK_10 ) ; break;
L_mikromedia_7_STM32F7__gpioInit_5179:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_5180
; dir end address is: 4 (R1)
MOVW	R1, #1024
MOVW	R0, #lo_addr(GPIOE_BASE+0)
MOVT	R0, #hi_addr(GPIOE_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_5181
L_mikromedia_7_STM32F7__gpioInit_5180:
MOVW	R1, #1024
MOVW	R0, #lo_addr(GPIOE_BASE+0)
MOVT	R0, #hi_addr(GPIOE_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_5181:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_5157
;__mm_7_stm32f7_gpio.c,254 :: 		case _MIKROBUS_RX_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_7  ); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_7 ); break;
L_mikromedia_7_STM32F7__gpioInit_5182:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_5183
; dir end address is: 4 (R1)
MOVW	R1, #128
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_5184
L_mikromedia_7_STM32F7__gpioInit_5183:
MOVW	R1, #128
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_5184:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_5157
;__mm_7_stm32f7_gpio.c,255 :: 		case _MIKROBUS_TX_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_6  ); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_6 ); break;
L_mikromedia_7_STM32F7__gpioInit_5185:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_5186
; dir end address is: 4 (R1)
MOVW	R1, #64
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_5187
L_mikromedia_7_STM32F7__gpioInit_5186:
MOVW	R1, #64
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_5187:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_5157
;__mm_7_stm32f7_gpio.c,256 :: 		case _MIKROBUS_SCL_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_1  ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_1 ); break;
L_mikromedia_7_STM32F7__gpioInit_5188:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_5189
; dir end address is: 4 (R1)
MOVW	R1, #2
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_5190
L_mikromedia_7_STM32F7__gpioInit_5189:
MOVW	R1, #2
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_5190:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_5157
;__mm_7_stm32f7_gpio.c,257 :: 		case _MIKROBUS_SDA_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_0  ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_0 ); break;
L_mikromedia_7_STM32F7__gpioInit_5191:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_mikromedia_7_STM32F7__gpioInit_5192
; dir end address is: 4 (R1)
MOVW	R1, #1
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_5193
L_mikromedia_7_STM32F7__gpioInit_5192:
MOVW	R1, #1
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Output+0
L_mikromedia_7_STM32F7__gpioInit_5193:
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_5157
;__mm_7_stm32f7_gpio.c,258 :: 		default                  : return _MIKROBUS_ERR_PIN;
L_mikromedia_7_STM32F7__gpioInit_5194:
MOVS	R0, #1
IT	AL
BAL	L_end__gpioInit_5
;__mm_7_stm32f7_gpio.c,259 :: 		}
L_mikromedia_7_STM32F7__gpioInit_5156:
; dir start address is: 4 (R1)
; pin start address is: 0 (R0)
CMP	R0, #0
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_5158
CMP	R0, #1
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_5161
CMP	R0, #2
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_5164
CMP	R0, #3
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_5167
CMP	R0, #4
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_5170
CMP	R0, #5
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_5173
CMP	R0, #6
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_5176
CMP	R0, #7
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_5179
CMP	R0, #8
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_5182
CMP	R0, #9
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_5185
CMP	R0, #10
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_5188
CMP	R0, #11
IT	EQ
BEQ	L_mikromedia_7_STM32F7__gpioInit_5191
; pin end address is: 0 (R0)
; dir end address is: 4 (R1)
IT	AL
BAL	L_mikromedia_7_STM32F7__gpioInit_5194
L_mikromedia_7_STM32F7__gpioInit_5157:
;__mm_7_stm32f7_gpio.c,260 :: 		return _MIKROBUS_OK;
MOVS	R0, __MIKROBUS_OK
;__mm_7_stm32f7_gpio.c,261 :: 		}
L_end__gpioInit_5:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of mikromedia_7_STM32F7__gpioInit_5
mikromedia_7_STM32F7__uartInit_1:
;__mm_7_stm32f7_uart.c,50 :: 		static T_mikrobus_ret _uartInit_1(const uint32_t* cfg)
; cfg start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; cfg end address is: 0 (R0)
; cfg start address is: 0 (R0)
;__mm_7_stm32f7_uart.c,52 :: 		UART1_Init_Advanced( (unsigned long) cfg[0], (unsigned int) cfg[1], (unsigned int) cfg[2], (unsigned int)cfg[3], &_GPIO_MODULE_UART1_PB67);
MOVW	R5, #lo_addr(__GPIO_MODULE_UART1_PB67+0)
MOVT	R5, #hi_addr(__GPIO_MODULE_UART1_PB67+0)
ADDW	R1, R0, #12
LDR	R4, [R1, #0]
ADDW	R1, R0, #8
LDR	R3, [R1, #0]
ADDS	R1, R0, #4
LDR	R2, [R1, #0]
LDR	R1, [R0, #0]
; cfg end address is: 0 (R0)
MOV	R0, R1
UXTH	R1, R2
UXTH	R2, R3
UXTH	R3, R4
PUSH	(R5)
BL	_UART1_Init_Advanced+0
ADD	SP, SP, #4
;__mm_7_stm32f7_uart.c,53 :: 		return _MIKROBUS_OK;
MOVS	R0, __MIKROBUS_OK
;__mm_7_stm32f7_uart.c,54 :: 		}
L_end__uartInit_1:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of mikromedia_7_STM32F7__uartInit_1
mikromedia_7_STM32F7__uartInit_2:
;__mm_7_stm32f7_uart.c,56 :: 		static T_mikrobus_ret _uartInit_2(const uint32_t* cfg)
; cfg start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; cfg end address is: 0 (R0)
; cfg start address is: 0 (R0)
;__mm_7_stm32f7_uart.c,58 :: 		UART2_Init_Advanced( (unsigned long) cfg[0], (unsigned int) cfg[1], (unsigned int) cfg[2], (unsigned int)cfg[3], &_GPIO_MODULE_UART2_PD56);
MOVW	R5, #lo_addr(__GPIO_MODULE_UART2_PD56+0)
MOVT	R5, #hi_addr(__GPIO_MODULE_UART2_PD56+0)
ADDW	R1, R0, #12
LDR	R4, [R1, #0]
ADDW	R1, R0, #8
LDR	R3, [R1, #0]
ADDS	R1, R0, #4
LDR	R2, [R1, #0]
LDR	R1, [R0, #0]
; cfg end address is: 0 (R0)
MOV	R0, R1
UXTH	R1, R2
UXTH	R2, R3
UXTH	R3, R4
PUSH	(R5)
BL	_UART2_Init_Advanced+0
ADD	SP, SP, #4
;__mm_7_stm32f7_uart.c,59 :: 		return _MIKROBUS_OK;
MOVS	R0, __MIKROBUS_OK
;__mm_7_stm32f7_uart.c,60 :: 		}
L_end__uartInit_2:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of mikromedia_7_STM32F7__uartInit_2
mikromedia_7_STM32F7__uartInit_3:
;__mm_7_stm32f7_uart.c,62 :: 		static T_mikrobus_ret _uartInit_3(const uint32_t* cfg)
; cfg start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; cfg end address is: 0 (R0)
; cfg start address is: 0 (R0)
;__mm_7_stm32f7_uart.c,64 :: 		UART3_Init_Advanced( (unsigned long) cfg[0], (unsigned int) cfg[1], (unsigned int) cfg[2], (unsigned int)cfg[3], &_GPIO_MODULE_UART3_PD89);
MOVW	R5, #lo_addr(__GPIO_MODULE_UART3_PD89+0)
MOVT	R5, #hi_addr(__GPIO_MODULE_UART3_PD89+0)
ADDW	R1, R0, #12
LDR	R4, [R1, #0]
ADDW	R1, R0, #8
LDR	R3, [R1, #0]
ADDS	R1, R0, #4
LDR	R2, [R1, #0]
LDR	R1, [R0, #0]
; cfg end address is: 0 (R0)
MOV	R0, R1
UXTH	R1, R2
UXTH	R2, R3
UXTH	R3, R4
PUSH	(R5)
BL	_UART3_Init_Advanced+0
ADD	SP, SP, #4
;__mm_7_stm32f7_uart.c,65 :: 		return _MIKROBUS_OK;
MOVS	R0, __MIKROBUS_OK
;__mm_7_stm32f7_uart.c,66 :: 		}
L_end__uartInit_3:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of mikromedia_7_STM32F7__uartInit_3
mikromedia_7_STM32F7__uartInit_4:
;__mm_7_stm32f7_uart.c,68 :: 		static T_mikrobus_ret _uartInit_4(const uint32_t* cfg)
; cfg start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; cfg end address is: 0 (R0)
; cfg start address is: 0 (R0)
;__mm_7_stm32f7_uart.c,70 :: 		UART6_Init_Advanced( (unsigned long) cfg[0], (unsigned int) cfg[1], (unsigned int) cfg[2], (unsigned int)cfg[3], &_GPIO_MODULE_UART6_PC67);
MOVW	R5, #lo_addr(__GPIO_MODULE_UART6_PC67+0)
MOVT	R5, #hi_addr(__GPIO_MODULE_UART6_PC67+0)
ADDW	R1, R0, #12
LDR	R4, [R1, #0]
ADDW	R1, R0, #8
LDR	R3, [R1, #0]
ADDS	R1, R0, #4
LDR	R2, [R1, #0]
LDR	R1, [R0, #0]
; cfg end address is: 0 (R0)
MOV	R0, R1
UXTH	R1, R2
UXTH	R2, R3
UXTH	R3, R4
PUSH	(R5)
BL	_UART6_Init_Advanced+0
ADD	SP, SP, #4
;__mm_7_stm32f7_uart.c,71 :: 		return _MIKROBUS_OK;
MOVS	R0, __MIKROBUS_OK
;__mm_7_stm32f7_uart.c,72 :: 		}
L_end__uartInit_4:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of mikromedia_7_STM32F7__uartInit_4
mikromedia_7_STM32F7__uartInit_5:
;__mm_7_stm32f7_uart.c,74 :: 		static T_mikrobus_ret _uartInit_5(const uint32_t* cfg)
; cfg start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; cfg end address is: 0 (R0)
; cfg start address is: 0 (R0)
;__mm_7_stm32f7_uart.c,76 :: 		UART6_Init_Advanced( (unsigned long) cfg[0], (unsigned int) cfg[1], (unsigned int) cfg[2], (unsigned int)cfg[3], &_GPIO_MODULE_UART6_PC67);
MOVW	R5, #lo_addr(__GPIO_MODULE_UART6_PC67+0)
MOVT	R5, #hi_addr(__GPIO_MODULE_UART6_PC67+0)
ADDW	R1, R0, #12
LDR	R4, [R1, #0]
ADDW	R1, R0, #8
LDR	R3, [R1, #0]
ADDS	R1, R0, #4
LDR	R2, [R1, #0]
LDR	R1, [R0, #0]
; cfg end address is: 0 (R0)
MOV	R0, R1
UXTH	R1, R2
UXTH	R2, R3
UXTH	R3, R4
PUSH	(R5)
BL	_UART6_Init_Advanced+0
ADD	SP, SP, #4
;__mm_7_stm32f7_uart.c,77 :: 		return _MIKROBUS_OK;
MOVS	R0, __MIKROBUS_OK
;__mm_7_stm32f7_uart.c,78 :: 		}
L_end__uartInit_5:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of mikromedia_7_STM32F7__uartInit_5
mikromedia_7_STM32F7__log_write:
;__mm_7_stm32f7_log.c,17 :: 		static T_mikrobus_ret _log_write(uint8_t *data_)
; data_ start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; data_ end address is: 0 (R0)
; data_ start address is: 0 (R0)
;__mm_7_stm32f7_log.c,19 :: 		logger( *data_ );
LDRB	R1, [R0, #0]
; data_ end address is: 0 (R0)
UXTB	R4, R1
UXTH	R0, R4
MOVW	R4, #lo_addr(_logger+0)
MOVT	R4, #hi_addr(_logger+0)
LDR	R4, [R4, #0]
BLX	R4
;__mm_7_stm32f7_log.c,20 :: 		return 0;
MOVS	R0, #0
;__mm_7_stm32f7_log.c,21 :: 		}
L_end__log_write:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of mikromedia_7_STM32F7__log_write
mikromedia_7_STM32F7__log_init1:
;__mm_7_stm32f7_log.c,23 :: 		static T_mikrobus_ret _log_init1(uint32_t baud)
; baud start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; baud end address is: 0 (R0)
; baud start address is: 0 (R0)
;__mm_7_stm32f7_log.c,25 :: 		UART1_Init_Advanced(baud, _UART_8_BIT_DATA, _UART_NOPARITY, _UART_ONE_STOPBIT, &_GPIO_MODULE_UART1_PB67);
MOVW	R1, #lo_addr(__GPIO_MODULE_UART1_PB67+0)
MOVT	R1, #hi_addr(__GPIO_MODULE_UART1_PB67+0)
PUSH	(R1)
MOVW	R3, #0
MOVW	R2, #0
MOVW	R1, #0
; baud end address is: 0 (R0)
BL	_UART1_Init_Advanced+0
ADD	SP, SP, #4
;__mm_7_stm32f7_log.c,26 :: 		logger = UART1_Write;
MOVW	R2, #lo_addr(_UART1_Write+0)
MOVT	R2, #hi_addr(_UART1_Write+0)
MOVW	R1, #lo_addr(_logger+0)
MOVT	R1, #hi_addr(_logger+0)
STR	R2, [R1, #0]
;__mm_7_stm32f7_log.c,27 :: 		return 0;
MOVS	R0, #0
;__mm_7_stm32f7_log.c,28 :: 		}
L_end__log_init1:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of mikromedia_7_STM32F7__log_init1
mikromedia_7_STM32F7__log_init2:
;__mm_7_stm32f7_log.c,29 :: 		static T_mikrobus_ret _log_init2(uint32_t baud)
; baud start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; baud end address is: 0 (R0)
; baud start address is: 0 (R0)
;__mm_7_stm32f7_log.c,31 :: 		UART2_Init_Advanced(baud, _UART_8_BIT_DATA, _UART_NOPARITY, _UART_ONE_STOPBIT, &_GPIO_MODULE_UART2_PD56);
MOVW	R1, #lo_addr(__GPIO_MODULE_UART2_PD56+0)
MOVT	R1, #hi_addr(__GPIO_MODULE_UART2_PD56+0)
PUSH	(R1)
MOVW	R3, #0
MOVW	R2, #0
MOVW	R1, #0
; baud end address is: 0 (R0)
BL	_UART2_Init_Advanced+0
ADD	SP, SP, #4
;__mm_7_stm32f7_log.c,32 :: 		logger = UART2_Write;
MOVW	R2, #lo_addr(_UART2_Write+0)
MOVT	R2, #hi_addr(_UART2_Write+0)
MOVW	R1, #lo_addr(_logger+0)
MOVT	R1, #hi_addr(_logger+0)
STR	R2, [R1, #0]
;__mm_7_stm32f7_log.c,33 :: 		return 0;
MOVS	R0, #0
;__mm_7_stm32f7_log.c,34 :: 		}
L_end__log_init2:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of mikromedia_7_STM32F7__log_init2
mikromedia_7_STM32F7__log_init3:
;__mm_7_stm32f7_log.c,35 :: 		static T_mikrobus_ret _log_init3(uint32_t baud)
; baud start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; baud end address is: 0 (R0)
; baud start address is: 0 (R0)
;__mm_7_stm32f7_log.c,37 :: 		UART3_Init_Advanced(baud, _UART_8_BIT_DATA, _UART_NOPARITY, _UART_ONE_STOPBIT, &_GPIO_MODULE_UART3_PD89);
MOVW	R1, #lo_addr(__GPIO_MODULE_UART3_PD89+0)
MOVT	R1, #hi_addr(__GPIO_MODULE_UART3_PD89+0)
PUSH	(R1)
MOVW	R3, #0
MOVW	R2, #0
MOVW	R1, #0
; baud end address is: 0 (R0)
BL	_UART3_Init_Advanced+0
ADD	SP, SP, #4
;__mm_7_stm32f7_log.c,38 :: 		logger = UART3_Write;
MOVW	R2, #lo_addr(_UART3_Write+0)
MOVT	R2, #hi_addr(_UART3_Write+0)
MOVW	R1, #lo_addr(_logger+0)
MOVT	R1, #hi_addr(_logger+0)
STR	R2, [R1, #0]
;__mm_7_stm32f7_log.c,39 :: 		return 0;
MOVS	R0, #0
;__mm_7_stm32f7_log.c,40 :: 		}
L_end__log_init3:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of mikromedia_7_STM32F7__log_init3
mikromedia_7_STM32F7__log_init4:
;__mm_7_stm32f7_log.c,41 :: 		static T_mikrobus_ret _log_init4(uint32_t baud)
; baud start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; baud end address is: 0 (R0)
; baud start address is: 0 (R0)
;__mm_7_stm32f7_log.c,43 :: 		UART6_Init_Advanced(baud, _UART_8_BIT_DATA, _UART_NOPARITY, _UART_ONE_STOPBIT, &_GPIO_MODULE_UART6_PC67);
MOVW	R1, #lo_addr(__GPIO_MODULE_UART6_PC67+0)
MOVT	R1, #hi_addr(__GPIO_MODULE_UART6_PC67+0)
PUSH	(R1)
MOVW	R3, #0
MOVW	R2, #0
MOVW	R1, #0
; baud end address is: 0 (R0)
BL	_UART6_Init_Advanced+0
ADD	SP, SP, #4
;__mm_7_stm32f7_log.c,44 :: 		logger = UART6_Write;
MOVW	R2, #lo_addr(_UART6_Write+0)
MOVT	R2, #hi_addr(_UART6_Write+0)
MOVW	R1, #lo_addr(_logger+0)
MOVT	R1, #hi_addr(_logger+0)
STR	R2, [R1, #0]
;__mm_7_stm32f7_log.c,45 :: 		return 0;
MOVS	R0, #0
;__mm_7_stm32f7_log.c,46 :: 		}
L_end__log_init4:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of mikromedia_7_STM32F7__log_init4
mikromedia_7_STM32F7__log_init5:
;__mm_7_stm32f7_log.c,48 :: 		static T_mikrobus_ret _log_init5(uint32_t baud)
; baud start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; baud end address is: 0 (R0)
; baud start address is: 0 (R0)
;__mm_7_stm32f7_log.c,50 :: 		UART6_Init_Advanced(baud, _UART_8_BIT_DATA, _UART_NOPARITY, _UART_ONE_STOPBIT, &_GPIO_MODULE_UART6_PC67);
MOVW	R1, #lo_addr(__GPIO_MODULE_UART6_PC67+0)
MOVT	R1, #hi_addr(__GPIO_MODULE_UART6_PC67+0)
PUSH	(R1)
MOVW	R3, #0
MOVW	R2, #0
MOVW	R1, #0
; baud end address is: 0 (R0)
BL	_UART6_Init_Advanced+0
ADD	SP, SP, #4
;__mm_7_stm32f7_log.c,51 :: 		logger = UART6_Write;
MOVW	R2, #lo_addr(_UART6_Write+0)
MOVT	R2, #hi_addr(_UART6_Write+0)
MOVW	R1, #lo_addr(_logger+0)
MOVT	R1, #hi_addr(_logger+0)
STR	R2, [R1, #0]
;__mm_7_stm32f7_log.c,52 :: 		return 0;
MOVS	R0, #0
;__mm_7_stm32f7_log.c,53 :: 		}
L_end__log_init5:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of mikromedia_7_STM32F7__log_init5
mikromedia_7_STM32F7__log_initUart:
;__mm_7_stm32f7_log.c,55 :: 		static T_mikrobus_ret _log_initUart(uint32_t baud)
; baud start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; baud end address is: 0 (R0)
; baud start address is: 0 (R0)
;__mm_7_stm32f7_log.c,57 :: 		UART6_Init_Advanced(baud, _UART_8_BIT_DATA, _UART_NOPARITY, _UART_ONE_STOPBIT, &_GPIO_MODULE_UART6_PC67);
MOVW	R1, #lo_addr(__GPIO_MODULE_UART6_PC67+0)
MOVT	R1, #hi_addr(__GPIO_MODULE_UART6_PC67+0)
PUSH	(R1)
MOVW	R3, #0
MOVW	R2, #0
MOVW	R1, #0
; baud end address is: 0 (R0)
BL	_UART6_Init_Advanced+0
ADD	SP, SP, #4
;__mm_7_stm32f7_log.c,58 :: 		logger = UART6_Write;
MOVW	R2, #lo_addr(_UART6_Write+0)
MOVT	R2, #hi_addr(_UART6_Write+0)
MOVW	R1, #lo_addr(_logger+0)
MOVT	R1, #hi_addr(_logger+0)
STR	R2, [R1, #0]
;__mm_7_stm32f7_log.c,59 :: 		return 0;
MOVS	R0, #0
;__mm_7_stm32f7_log.c,60 :: 		}
L_end__log_initUart:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of mikromedia_7_STM32F7__log_initUart
_mikrobus_gpioInit:
;mikromedia_7_STM32F7.c,162 :: 		T_mikrobus_ret mikrobus_gpioInit(T_mikrobus_soc bus, T_mikrobus_pin pin, T_gpio_dir direction)
; direction start address is: 8 (R2)
; pin start address is: 4 (R1)
; bus start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
UXTB	R11, R1
UXTB	R12, R2
; direction end address is: 8 (R2)
; pin end address is: 4 (R1)
; bus end address is: 0 (R0)
; bus start address is: 0 (R0)
; pin start address is: 44 (R11)
; direction start address is: 48 (R12)
;mikromedia_7_STM32F7.c,164 :: 		switch( bus )
IT	AL
BAL	L_mikrobus_gpioInit195
; bus end address is: 0 (R0)
;mikromedia_7_STM32F7.c,167 :: 		case _MIKROBUS1 : return _gpioInit_1(pin, direction);
L_mikrobus_gpioInit197:
UXTB	R1, R12
; direction end address is: 48 (R12)
UXTB	R0, R11
; pin end address is: 44 (R11)
BL	mikromedia_7_STM32F7__gpioInit_1+0
IT	AL
BAL	L_end_mikrobus_gpioInit
;mikromedia_7_STM32F7.c,170 :: 		case _MIKROBUS2 : return _gpioInit_2(pin, direction);
L_mikrobus_gpioInit198:
; direction start address is: 48 (R12)
; pin start address is: 44 (R11)
UXTB	R1, R12
; direction end address is: 48 (R12)
UXTB	R0, R11
; pin end address is: 44 (R11)
BL	mikromedia_7_STM32F7__gpioInit_2+0
IT	AL
BAL	L_end_mikrobus_gpioInit
;mikromedia_7_STM32F7.c,173 :: 		case _MIKROBUS3 : return _gpioInit_3(pin, direction);
L_mikrobus_gpioInit199:
; direction start address is: 48 (R12)
; pin start address is: 44 (R11)
UXTB	R1, R12
; direction end address is: 48 (R12)
UXTB	R0, R11
; pin end address is: 44 (R11)
BL	mikromedia_7_STM32F7__gpioInit_3+0
IT	AL
BAL	L_end_mikrobus_gpioInit
;mikromedia_7_STM32F7.c,176 :: 		case _MIKROBUS4 : return _gpioInit_4(pin, direction);
L_mikrobus_gpioInit200:
; direction start address is: 48 (R12)
; pin start address is: 44 (R11)
UXTB	R1, R12
; direction end address is: 48 (R12)
UXTB	R0, R11
; pin end address is: 44 (R11)
BL	mikromedia_7_STM32F7__gpioInit_4+0
IT	AL
BAL	L_end_mikrobus_gpioInit
;mikromedia_7_STM32F7.c,179 :: 		case _MIKROBUS5 : return _gpioInit_5(pin, direction);
L_mikrobus_gpioInit201:
; direction start address is: 48 (R12)
; pin start address is: 44 (R11)
UXTB	R1, R12
; direction end address is: 48 (R12)
UXTB	R0, R11
; pin end address is: 44 (R11)
BL	mikromedia_7_STM32F7__gpioInit_5+0
IT	AL
BAL	L_end_mikrobus_gpioInit
;mikromedia_7_STM32F7.c,184 :: 		default : return _MIKROBUS_ERR_BUS;
L_mikrobus_gpioInit202:
MOVS	R0, #1
IT	AL
BAL	L_end_mikrobus_gpioInit
;mikromedia_7_STM32F7.c,185 :: 		}
L_mikrobus_gpioInit195:
; direction start address is: 48 (R12)
; pin start address is: 44 (R11)
; bus start address is: 0 (R0)
CMP	R0, #0
IT	EQ
BEQ	L_mikrobus_gpioInit197
CMP	R0, #1
IT	EQ
BEQ	L_mikrobus_gpioInit198
CMP	R0, #2
IT	EQ
BEQ	L_mikrobus_gpioInit199
CMP	R0, #3
IT	EQ
BEQ	L_mikrobus_gpioInit200
CMP	R0, #4
IT	EQ
BEQ	L_mikrobus_gpioInit201
; bus end address is: 0 (R0)
; pin end address is: 44 (R11)
; direction end address is: 48 (R12)
IT	AL
BAL	L_mikrobus_gpioInit202
;mikromedia_7_STM32F7.c,187 :: 		}
L_end_mikrobus_gpioInit:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _mikrobus_gpioInit
_mikrobus_uartInit:
;mikromedia_7_STM32F7.c,253 :: 		T_mikrobus_ret mikrobus_uartInit(T_mikrobus_soc bus, const uint32_t *cfg)
; cfg start address is: 4 (R1)
; bus start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; cfg end address is: 4 (R1)
; bus end address is: 0 (R0)
; bus start address is: 0 (R0)
; cfg start address is: 4 (R1)
;mikromedia_7_STM32F7.c,255 :: 		switch( bus )
IT	AL
BAL	L_mikrobus_uartInit203
; bus end address is: 0 (R0)
;mikromedia_7_STM32F7.c,258 :: 		case _MIKROBUS1 : return _uartInit_1( cfg );
L_mikrobus_uartInit205:
MOV	R0, R1
; cfg end address is: 4 (R1)
BL	mikromedia_7_STM32F7__uartInit_1+0
IT	AL
BAL	L_end_mikrobus_uartInit
;mikromedia_7_STM32F7.c,261 :: 		case _MIKROBUS2 : return _uartInit_2( cfg );
L_mikrobus_uartInit206:
; cfg start address is: 4 (R1)
MOV	R0, R1
; cfg end address is: 4 (R1)
BL	mikromedia_7_STM32F7__uartInit_2+0
IT	AL
BAL	L_end_mikrobus_uartInit
;mikromedia_7_STM32F7.c,264 :: 		case _MIKROBUS3 : return _uartInit_3( cfg );
L_mikrobus_uartInit207:
; cfg start address is: 4 (R1)
MOV	R0, R1
; cfg end address is: 4 (R1)
BL	mikromedia_7_STM32F7__uartInit_3+0
IT	AL
BAL	L_end_mikrobus_uartInit
;mikromedia_7_STM32F7.c,267 :: 		case _MIKROBUS4 : return _uartInit_4( cfg );
L_mikrobus_uartInit208:
; cfg start address is: 4 (R1)
MOV	R0, R1
; cfg end address is: 4 (R1)
BL	mikromedia_7_STM32F7__uartInit_4+0
IT	AL
BAL	L_end_mikrobus_uartInit
;mikromedia_7_STM32F7.c,270 :: 		case _MIKROBUS5 : return _uartInit_5( cfg );
L_mikrobus_uartInit209:
; cfg start address is: 4 (R1)
MOV	R0, R1
; cfg end address is: 4 (R1)
BL	mikromedia_7_STM32F7__uartInit_5+0
IT	AL
BAL	L_end_mikrobus_uartInit
;mikromedia_7_STM32F7.c,275 :: 		default : return _MIKROBUS_ERR_BUS;
L_mikrobus_uartInit210:
MOVS	R0, #1
IT	AL
BAL	L_end_mikrobus_uartInit
;mikromedia_7_STM32F7.c,276 :: 		}
L_mikrobus_uartInit203:
; cfg start address is: 4 (R1)
; bus start address is: 0 (R0)
CMP	R0, #0
IT	EQ
BEQ	L_mikrobus_uartInit205
CMP	R0, #1
IT	EQ
BEQ	L_mikrobus_uartInit206
CMP	R0, #2
IT	EQ
BEQ	L_mikrobus_uartInit207
CMP	R0, #3
IT	EQ
BEQ	L_mikrobus_uartInit208
CMP	R0, #4
IT	EQ
BEQ	L_mikrobus_uartInit209
; bus end address is: 0 (R0)
; cfg end address is: 4 (R1)
IT	AL
BAL	L_mikrobus_uartInit210
;mikromedia_7_STM32F7.c,278 :: 		}
L_end_mikrobus_uartInit:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _mikrobus_uartInit
_mikrobus_logInit:
;mikromedia_7_STM32F7.c,283 :: 		T_mikrobus_ret mikrobus_logInit(T_log_bus port, const uint32_t baud)
; baud start address is: 4 (R1)
; port start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; baud end address is: 4 (R1)
; port end address is: 0 (R0)
; port start address is: 0 (R0)
; baud start address is: 4 (R1)
;mikromedia_7_STM32F7.c,285 :: 		switch( port )
IT	AL
BAL	L_mikrobus_logInit211
; port end address is: 0 (R0)
;mikromedia_7_STM32F7.c,288 :: 		case _MIKROBUS1 : return _log_init1( baud );
L_mikrobus_logInit213:
MOV	R0, R1
; baud end address is: 4 (R1)
BL	mikromedia_7_STM32F7__log_init1+0
IT	AL
BAL	L_end_mikrobus_logInit
;mikromedia_7_STM32F7.c,291 :: 		case _MIKROBUS2: return _log_init2( baud );
L_mikrobus_logInit214:
; baud start address is: 4 (R1)
MOV	R0, R1
; baud end address is: 4 (R1)
BL	mikromedia_7_STM32F7__log_init2+0
IT	AL
BAL	L_end_mikrobus_logInit
;mikromedia_7_STM32F7.c,294 :: 		case _MIKROBUS3: return _log_init3( baud );
L_mikrobus_logInit215:
; baud start address is: 4 (R1)
MOV	R0, R1
; baud end address is: 4 (R1)
BL	mikromedia_7_STM32F7__log_init3+0
IT	AL
BAL	L_end_mikrobus_logInit
;mikromedia_7_STM32F7.c,297 :: 		case _MIKROBUS4: return _log_init4( baud );
L_mikrobus_logInit216:
; baud start address is: 4 (R1)
MOV	R0, R1
; baud end address is: 4 (R1)
BL	mikromedia_7_STM32F7__log_init4+0
IT	AL
BAL	L_end_mikrobus_logInit
;mikromedia_7_STM32F7.c,300 :: 		case _MIKROBUS5: return _log_init5( baud );
L_mikrobus_logInit217:
; baud start address is: 4 (R1)
MOV	R0, R1
; baud end address is: 4 (R1)
BL	mikromedia_7_STM32F7__log_init5+0
IT	AL
BAL	L_end_mikrobus_logInit
;mikromedia_7_STM32F7.c,306 :: 		case _LOG_USBUART : return _log_initUart( baud );
L_mikrobus_logInit218:
; baud start address is: 4 (R1)
MOV	R0, R1
; baud end address is: 4 (R1)
BL	mikromedia_7_STM32F7__log_initUart+0
IT	AL
BAL	L_end_mikrobus_logInit
;mikromedia_7_STM32F7.c,314 :: 		default : return _MIKROBUS_ERR_BUS;
L_mikrobus_logInit219:
MOVS	R0, #1
IT	AL
BAL	L_end_mikrobus_logInit
;mikromedia_7_STM32F7.c,315 :: 		}
L_mikrobus_logInit211:
; baud start address is: 4 (R1)
; port start address is: 0 (R0)
CMP	R0, #0
IT	EQ
BEQ	L_mikrobus_logInit213
CMP	R0, #1
IT	EQ
BEQ	L_mikrobus_logInit214
CMP	R0, #2
IT	EQ
BEQ	L_mikrobus_logInit215
CMP	R0, #3
IT	EQ
BEQ	L_mikrobus_logInit216
CMP	R0, #4
IT	EQ
BEQ	L_mikrobus_logInit217
CMP	R0, #16
IT	EQ
BEQ	L_mikrobus_logInit218
; port end address is: 0 (R0)
; baud end address is: 4 (R1)
IT	AL
BAL	L_mikrobus_logInit219
;mikromedia_7_STM32F7.c,317 :: 		}
L_end_mikrobus_logInit:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _mikrobus_logInit
_mikrobus_logWrite:
;mikromedia_7_STM32F7.c,319 :: 		T_mikrobus_ret mikrobus_logWrite(uint8_t* data_, T_log_format format)
; format start address is: 4 (R1)
; data_ start address is: 0 (R0)
SUB	SP, SP, #12
STR	LR, [SP, #0]
MOV	R2, R0
; format end address is: 4 (R1)
; data_ end address is: 0 (R0)
; data_ start address is: 8 (R2)
; format start address is: 4 (R1)
;mikromedia_7_STM32F7.c,321 :: 		uint8_t *ptr = data_;
; ptr start address is: 0 (R0)
MOV	R0, R2
; data_ end address is: 8 (R2)
;mikromedia_7_STM32F7.c,322 :: 		uint8_t row = 13;
MOVS	R2, #13
STRB	R2, [SP, #8]
MOVS	R2, #10
STRB	R2, [SP, #9]
;mikromedia_7_STM32F7.c,323 :: 		uint8_t line = 10;
;mikromedia_7_STM32F7.c,324 :: 		switch( format )
IT	AL
BAL	L_mikrobus_logWrite220
; format end address is: 4 (R1)
;mikromedia_7_STM32F7.c,326 :: 		case _LOG_BYTE :
L_mikrobus_logWrite222:
;mikromedia_7_STM32F7.c,327 :: 		_log_write( ptr );
; ptr end address is: 0 (R0)
BL	mikromedia_7_STM32F7__log_write+0
;mikromedia_7_STM32F7.c,328 :: 		break;
IT	AL
BAL	L_mikrobus_logWrite221
;mikromedia_7_STM32F7.c,329 :: 		case _LOG_TEXT :
L_mikrobus_logWrite223:
;mikromedia_7_STM32F7.c,330 :: 		while( *ptr )
; ptr start address is: 0 (R0)
L_mikrobus_logWrite224:
; ptr end address is: 0 (R0)
; ptr start address is: 0 (R0)
LDRB	R2, [R0, #0]
CMP	R2, #0
IT	EQ
BEQ	L_mikrobus_logWrite225
;mikromedia_7_STM32F7.c,332 :: 		_log_write( ptr );
STR	R0, [SP, #4]
BL	mikromedia_7_STM32F7__log_write+0
LDR	R0, [SP, #4]
;mikromedia_7_STM32F7.c,333 :: 		ptr++;
ADDS	R0, R0, #1
;mikromedia_7_STM32F7.c,334 :: 		}
; ptr end address is: 0 (R0)
IT	AL
BAL	L_mikrobus_logWrite224
L_mikrobus_logWrite225:
;mikromedia_7_STM32F7.c,335 :: 		break;
IT	AL
BAL	L_mikrobus_logWrite221
;mikromedia_7_STM32F7.c,336 :: 		case _LOG_LINE :
L_mikrobus_logWrite226:
;mikromedia_7_STM32F7.c,337 :: 		while( *ptr )
; ptr start address is: 0 (R0)
L_mikrobus_logWrite227:
; ptr end address is: 0 (R0)
; ptr start address is: 0 (R0)
LDRB	R2, [R0, #0]
CMP	R2, #0
IT	EQ
BEQ	L_mikrobus_logWrite228
;mikromedia_7_STM32F7.c,339 :: 		_log_write( ptr );
STR	R0, [SP, #4]
BL	mikromedia_7_STM32F7__log_write+0
LDR	R0, [SP, #4]
;mikromedia_7_STM32F7.c,340 :: 		ptr++;
ADDS	R0, R0, #1
;mikromedia_7_STM32F7.c,341 :: 		}
; ptr end address is: 0 (R0)
IT	AL
BAL	L_mikrobus_logWrite227
L_mikrobus_logWrite228:
;mikromedia_7_STM32F7.c,342 :: 		_log_write( &row );
ADD	R2, SP, #8
MOV	R0, R2
BL	mikromedia_7_STM32F7__log_write+0
;mikromedia_7_STM32F7.c,343 :: 		_log_write( &line );
ADD	R2, SP, #9
MOV	R0, R2
BL	mikromedia_7_STM32F7__log_write+0
;mikromedia_7_STM32F7.c,344 :: 		break;
IT	AL
BAL	L_mikrobus_logWrite221
;mikromedia_7_STM32F7.c,345 :: 		default :
L_mikrobus_logWrite229:
;mikromedia_7_STM32F7.c,346 :: 		return _MIKROBUS_ERR_LOG;
MOVS	R0, #6
IT	AL
BAL	L_end_mikrobus_logWrite
;mikromedia_7_STM32F7.c,347 :: 		}
L_mikrobus_logWrite220:
; ptr start address is: 0 (R0)
; format start address is: 4 (R1)
CMP	R1, #0
IT	EQ
BEQ	L_mikrobus_logWrite222
CMP	R1, #1
IT	EQ
BEQ	L_mikrobus_logWrite223
CMP	R1, #2
IT	EQ
BEQ	L_mikrobus_logWrite226
; format end address is: 4 (R1)
; ptr end address is: 0 (R0)
IT	AL
BAL	L_mikrobus_logWrite229
L_mikrobus_logWrite221:
;mikromedia_7_STM32F7.c,348 :: 		return 0;
MOVS	R0, #0
;mikromedia_7_STM32F7.c,349 :: 		}
L_end_mikrobus_logWrite:
LDR	LR, [SP, #0]
ADD	SP, SP, #12
BX	LR
; end of _mikrobus_logWrite
