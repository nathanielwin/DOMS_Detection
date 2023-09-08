_Write_to_Data_Lines:
;MyProject_driver.c,46 :: 		void Write_to_Data_Lines(unsigned char _hi, unsigned char _lo) {
; _lo start address is: 4 (R1)
; _hi start address is: 0 (R0)
; _lo end address is: 4 (R1)
; _hi end address is: 0 (R0)
; _hi start address is: 0 (R0)
; _lo start address is: 4 (R1)
;MyProject_driver.c,47 :: 		GPIOG_ODR = (unsigned int) (_lo | (_hi << 8));
LSLS	R2, R0, #8
UXTH	R2, R2
; _hi end address is: 0 (R0)
ORR	R3, R1, R2, LSL #0
UXTH	R3, R3
; _lo end address is: 4 (R1)
MOVW	R2, #lo_addr(GPIOG_ODR+0)
MOVT	R2, #hi_addr(GPIOG_ODR+0)
STR	R3, [R2, #0]
;MyProject_driver.c,48 :: 		}
L_end_Write_to_Data_Lines:
BX	LR
; end of _Write_to_Data_Lines
_Set_Index:
;MyProject_driver.c,50 :: 		void Set_Index(unsigned short index) {
; index start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; index end address is: 0 (R0)
; index start address is: 0 (R0)
;MyProject_driver.c,51 :: 		TFT_RS = 0;
MOVW	R2, #lo_addr(GPIOF_ODR+0)
MOVT	R2, #hi_addr(GPIOF_ODR+0)
LDR	R1, [R2, #0]
BFC	R1, #13, #1
STR	R1, [R2, #0]
;MyProject_driver.c,52 :: 		Write_to_Data_Lines(0, index);
UXTB	R1, R0
; index end address is: 0 (R0)
MOVS	R0, #0
BL	_Write_to_Data_Lines+0
;MyProject_driver.c,53 :: 		TFT_WR = 0;
MOVW	R2, #lo_addr(GPIOF_ODR+0)
MOVT	R2, #hi_addr(GPIOF_ODR+0)
LDR	R1, [R2, #0]
BFC	R1, #15, #1
STR	R1, [R2, #0]
;MyProject_driver.c,54 :: 		asm nop;
NOP
;MyProject_driver.c,55 :: 		TFT_WR = 1;
MOVW	R2, #lo_addr(GPIOF_ODR+0)
MOVT	R2, #hi_addr(GPIOF_ODR+0)
LDR	R1, [R2, #0]
ORR	R1, R1, #32768
STR	R1, [R2, #0]
;MyProject_driver.c,56 :: 		}
L_end_Set_Index:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _Set_Index
_Write_Command:
;MyProject_driver.c,58 :: 		void Write_Command(unsigned short cmd) {
; cmd start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; cmd end address is: 0 (R0)
; cmd start address is: 0 (R0)
;MyProject_driver.c,59 :: 		TFT_RS = 1;
MOVW	R2, #lo_addr(GPIOF_ODR+0)
MOVT	R2, #hi_addr(GPIOF_ODR+0)
LDR	R1, [R2, #0]
ORR	R1, R1, #8192
STR	R1, [R2, #0]
;MyProject_driver.c,60 :: 		Write_to_Data_Lines(0, cmd);
UXTB	R1, R0
; cmd end address is: 0 (R0)
MOVS	R0, #0
BL	_Write_to_Data_Lines+0
;MyProject_driver.c,61 :: 		TFT_WR = 0;
MOVW	R2, #lo_addr(GPIOF_ODR+0)
MOVT	R2, #hi_addr(GPIOF_ODR+0)
LDR	R1, [R2, #0]
BFC	R1, #15, #1
STR	R1, [R2, #0]
;MyProject_driver.c,62 :: 		asm nop;
NOP
;MyProject_driver.c,63 :: 		TFT_WR = 1;
MOVW	R2, #lo_addr(GPIOF_ODR+0)
MOVT	R2, #hi_addr(GPIOF_ODR+0)
LDR	R1, [R2, #0]
ORR	R1, R1, #32768
STR	R1, [R2, #0]
;MyProject_driver.c,64 :: 		}
L_end_Write_Command:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _Write_Command
_Write_Data:
;MyProject_driver.c,66 :: 		void Write_Data(unsigned int _data) {
SUB	SP, SP, #8
STR	LR, [SP, #0]
STRH	R0, [SP, #4]
;MyProject_driver.c,67 :: 		TFT_RS = 1;
MOVW	R2, #lo_addr(GPIOF_ODR+0)
MOVT	R2, #hi_addr(GPIOF_ODR+0)
LDR	R1, [R2, #0]
ORR	R1, R1, #8192
STR	R1, [R2, #0]
;MyProject_driver.c,68 :: 		Write_to_Data_Lines(Hi(_data), Lo(_data));
ADD	R3, SP, #4
LDRB	R1, [R3, #0]
UXTB	R2, R1
ADDS	R1, R3, #1
LDRB	R1, [R1, #0]
UXTB	R0, R1
UXTB	R1, R2
BL	_Write_to_Data_Lines+0
;MyProject_driver.c,69 :: 		TFT_WR = 0;
MOVW	R2, #lo_addr(GPIOF_ODR+0)
MOVT	R2, #hi_addr(GPIOF_ODR+0)
LDR	R1, [R2, #0]
BFC	R1, #15, #1
STR	R1, [R2, #0]
;MyProject_driver.c,70 :: 		asm nop;
NOP
;MyProject_driver.c,71 :: 		TFT_WR = 1;
MOVW	R2, #lo_addr(GPIOF_ODR+0)
MOVT	R2, #hi_addr(GPIOF_ODR+0)
LDR	R1, [R2, #0]
ORR	R1, R1, #32768
STR	R1, [R2, #0]
;MyProject_driver.c,72 :: 		}
L_end_Write_Data:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _Write_Data
MyProject_driver_InitializeTouchPanel:
;MyProject_driver.c,74 :: 		static void InitializeTouchPanel() {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_driver.c,75 :: 		TFT_Set_Active(Set_Index, Write_Command, Write_Data);
MOVW	R2, #lo_addr(_Write_Data+0)
MOVT	R2, #hi_addr(_Write_Data+0)
MOVW	R1, #lo_addr(_Write_Command+0)
MOVT	R1, #hi_addr(_Write_Command+0)
MOVW	R0, #lo_addr(_Set_Index+0)
MOVT	R0, #hi_addr(_Set_Index+0)
BL	_TFT_Set_Active+0
;MyProject_driver.c,76 :: 		TFT_Init_SSD1963_Board_70(800, 480);
MOVW	R1, #480
MOVW	R0, #800
BL	_TFT_Init_SSD1963_Board_70+0
;MyProject_driver.c,78 :: 		TFT_Set_DBC_SSD1963(255);
MOVS	R0, #255
BL	_TFT_Set_DBC_SSD1963+0
;MyProject_driver.c,80 :: 		PenDown = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_PenDown+0)
MOVT	R0, #hi_addr(_PenDown+0)
STRB	R1, [R0, #0]
;MyProject_driver.c,81 :: 		PressedObject = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_PressedObject+0)
MOVT	R0, #hi_addr(_PressedObject+0)
STR	R1, [R0, #0]
;MyProject_driver.c,82 :: 		PressedObjectType = -1;
MOVW	R1, #65535
SXTH	R1, R1
MOVW	R0, #lo_addr(_PressedObjectType+0)
MOVT	R0, #hi_addr(_PressedObjectType+0)
STRH	R1, [R0, #0]
;MyProject_driver.c,83 :: 		}
L_end_InitializeTouchPanel:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of MyProject_driver_InitializeTouchPanel
MyProject_driver_InitializeObjects:
;MyProject_driver.c,341 :: 		static void InitializeObjects() {
;MyProject_driver.c,342 :: 		Screen1.Color                     = 0x001F;
MOVS	R1, #31
MOVW	R0, #lo_addr(_Screen1+0)
MOVT	R0, #hi_addr(_Screen1+0)
STRH	R1, [R0, #0]
;MyProject_driver.c,343 :: 		Screen1.Width                     = 800;
MOVW	R1, #800
MOVW	R0, #lo_addr(_Screen1+2)
MOVT	R0, #hi_addr(_Screen1+2)
STRH	R1, [R0, #0]
;MyProject_driver.c,344 :: 		Screen1.Height                    = 480;
MOVW	R1, #480
MOVW	R0, #lo_addr(_Screen1+4)
MOVT	R0, #hi_addr(_Screen1+4)
STRH	R1, [R0, #0]
;MyProject_driver.c,345 :: 		Screen1.Buttons_RoundCount        = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_Screen1+8)
MOVT	R0, #hi_addr(_Screen1+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,346 :: 		Screen1.Buttons_Round             = Screen1_Buttons_Round;
MOVW	R1, #lo_addr(_Screen1_Buttons_Round+0)
MOVT	R1, #hi_addr(_Screen1_Buttons_Round+0)
MOVW	R0, #lo_addr(_Screen1+12)
MOVT	R0, #hi_addr(_Screen1+12)
STR	R1, [R0, #0]
;MyProject_driver.c,347 :: 		Screen1.LabelsCount               = 15;
MOVS	R1, #15
MOVW	R0, #lo_addr(_Screen1+16)
MOVT	R0, #hi_addr(_Screen1+16)
STRH	R1, [R0, #0]
;MyProject_driver.c,348 :: 		Screen1.Labels                    = Screen1_Labels;
MOVW	R1, #lo_addr(_Screen1_Labels+0)
MOVT	R1, #hi_addr(_Screen1_Labels+0)
MOVW	R0, #lo_addr(_Screen1+20)
MOVT	R0, #hi_addr(_Screen1+20)
STR	R1, [R0, #0]
;MyProject_driver.c,349 :: 		Screen1.ImagesCount               = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_Screen1+24)
MOVT	R0, #hi_addr(_Screen1+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,350 :: 		Screen1.Images                    = Screen1_Images;
MOVW	R1, #lo_addr(_Screen1_Images+0)
MOVT	R1, #hi_addr(_Screen1_Images+0)
MOVW	R0, #lo_addr(_Screen1+28)
MOVT	R0, #hi_addr(_Screen1+28)
STR	R1, [R0, #0]
;MyProject_driver.c,351 :: 		Screen1.BoxesCount                = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Screen1+32)
MOVT	R0, #hi_addr(_Screen1+32)
STRH	R1, [R0, #0]
;MyProject_driver.c,352 :: 		Screen1.Boxes                     = Screen1_Boxes;
MOVW	R1, #lo_addr(_Screen1_Boxes+0)
MOVT	R1, #hi_addr(_Screen1_Boxes+0)
MOVW	R0, #lo_addr(_Screen1+36)
MOVT	R0, #hi_addr(_Screen1+36)
STR	R1, [R0, #0]
;MyProject_driver.c,353 :: 		Screen1.Boxes_RoundCount          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Screen1+40)
MOVT	R0, #hi_addr(_Screen1+40)
STRH	R1, [R0, #0]
;MyProject_driver.c,354 :: 		Screen1.Boxes_Round               = Screen1_Boxes_Round;
MOVW	R1, #lo_addr(_Screen1_Boxes_Round+0)
MOVT	R1, #hi_addr(_Screen1_Boxes_Round+0)
MOVW	R0, #lo_addr(_Screen1+44)
MOVT	R0, #hi_addr(_Screen1+44)
STR	R1, [R0, #0]
;MyProject_driver.c,355 :: 		Screen1.ObjectsCount              = 21;
MOVS	R1, #21
MOVW	R0, #lo_addr(_Screen1+6)
MOVT	R0, #hi_addr(_Screen1+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,356 :: 		Screen1.OnSwipeUpPtr    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen1+56)
MOVT	R0, #hi_addr(_Screen1+56)
STR	R1, [R0, #0]
;MyProject_driver.c,357 :: 		Screen1.OnSwipeDownPtr  = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen1+60)
MOVT	R0, #hi_addr(_Screen1+60)
STR	R1, [R0, #0]
;MyProject_driver.c,358 :: 		Screen1.OnSwipeLeftPtr  = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen1+48)
MOVT	R0, #hi_addr(_Screen1+48)
STR	R1, [R0, #0]
;MyProject_driver.c,359 :: 		Screen1.OnSwipeRightPtr = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen1+52)
MOVT	R0, #hi_addr(_Screen1+52)
STR	R1, [R0, #0]
;MyProject_driver.c,360 :: 		Screen1.OnZoomInPtr     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen1+64)
MOVT	R0, #hi_addr(_Screen1+64)
STR	R1, [R0, #0]
;MyProject_driver.c,361 :: 		Screen1.OnZoomOutPtr    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen1+68)
MOVT	R0, #hi_addr(_Screen1+68)
STR	R1, [R0, #0]
;MyProject_driver.c,363 :: 		Screen2.Color                     = 0x001F;
MOVS	R1, #31
MOVW	R0, #lo_addr(_Screen2+0)
MOVT	R0, #hi_addr(_Screen2+0)
STRH	R1, [R0, #0]
;MyProject_driver.c,364 :: 		Screen2.Width                     = 800;
MOVW	R1, #800
MOVW	R0, #lo_addr(_Screen2+2)
MOVT	R0, #hi_addr(_Screen2+2)
STRH	R1, [R0, #0]
;MyProject_driver.c,365 :: 		Screen2.Height                    = 480;
MOVW	R1, #480
MOVW	R0, #lo_addr(_Screen2+4)
MOVT	R0, #hi_addr(_Screen2+4)
STRH	R1, [R0, #0]
;MyProject_driver.c,366 :: 		Screen2.Buttons_RoundCount        = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_Screen2+8)
MOVT	R0, #hi_addr(_Screen2+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,367 :: 		Screen2.Buttons_Round             = Screen2_Buttons_Round;
MOVW	R1, #lo_addr(_Screen2_Buttons_Round+0)
MOVT	R1, #hi_addr(_Screen2_Buttons_Round+0)
MOVW	R0, #lo_addr(_Screen2+12)
MOVT	R0, #hi_addr(_Screen2+12)
STR	R1, [R0, #0]
;MyProject_driver.c,368 :: 		Screen2.LabelsCount               = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen2+16)
MOVT	R0, #hi_addr(_Screen2+16)
STRH	R1, [R0, #0]
;MyProject_driver.c,369 :: 		Screen2.ImagesCount               = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen2+24)
MOVT	R0, #hi_addr(_Screen2+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,370 :: 		Screen2.BoxesCount                = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Screen2+32)
MOVT	R0, #hi_addr(_Screen2+32)
STRH	R1, [R0, #0]
;MyProject_driver.c,371 :: 		Screen2.Boxes                     = Screen2_Boxes;
MOVW	R1, #lo_addr(_Screen2_Boxes+0)
MOVT	R1, #hi_addr(_Screen2_Boxes+0)
MOVW	R0, #lo_addr(_Screen2+36)
MOVT	R0, #hi_addr(_Screen2+36)
STR	R1, [R0, #0]
;MyProject_driver.c,372 :: 		Screen2.Boxes_RoundCount          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen2+40)
MOVT	R0, #hi_addr(_Screen2+40)
STRH	R1, [R0, #0]
;MyProject_driver.c,373 :: 		Screen2.ObjectsCount              = 4;
MOVS	R1, #4
MOVW	R0, #lo_addr(_Screen2+6)
MOVT	R0, #hi_addr(_Screen2+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,374 :: 		Screen2.OnSwipeUpPtr    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen2+56)
MOVT	R0, #hi_addr(_Screen2+56)
STR	R1, [R0, #0]
;MyProject_driver.c,375 :: 		Screen2.OnSwipeDownPtr  = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen2+60)
MOVT	R0, #hi_addr(_Screen2+60)
STR	R1, [R0, #0]
;MyProject_driver.c,376 :: 		Screen2.OnSwipeLeftPtr  = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen2+48)
MOVT	R0, #hi_addr(_Screen2+48)
STR	R1, [R0, #0]
;MyProject_driver.c,377 :: 		Screen2.OnSwipeRightPtr = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen2+52)
MOVT	R0, #hi_addr(_Screen2+52)
STR	R1, [R0, #0]
;MyProject_driver.c,378 :: 		Screen2.OnZoomInPtr     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen2+64)
MOVT	R0, #hi_addr(_Screen2+64)
STR	R1, [R0, #0]
;MyProject_driver.c,379 :: 		Screen2.OnZoomOutPtr    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen2+68)
MOVT	R0, #hi_addr(_Screen2+68)
STR	R1, [R0, #0]
;MyProject_driver.c,381 :: 		Screen3.Color                     = 0x001F;
MOVS	R1, #31
MOVW	R0, #lo_addr(_Screen3+0)
MOVT	R0, #hi_addr(_Screen3+0)
STRH	R1, [R0, #0]
;MyProject_driver.c,382 :: 		Screen3.Width                     = 800;
MOVW	R1, #800
MOVW	R0, #lo_addr(_Screen3+2)
MOVT	R0, #hi_addr(_Screen3+2)
STRH	R1, [R0, #0]
;MyProject_driver.c,383 :: 		Screen3.Height                    = 480;
MOVW	R1, #480
MOVW	R0, #lo_addr(_Screen3+4)
MOVT	R0, #hi_addr(_Screen3+4)
STRH	R1, [R0, #0]
;MyProject_driver.c,384 :: 		Screen3.Buttons_RoundCount        = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_Screen3+8)
MOVT	R0, #hi_addr(_Screen3+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,385 :: 		Screen3.Buttons_Round             = Screen3_Buttons_Round;
MOVW	R1, #lo_addr(_Screen3_Buttons_Round+0)
MOVT	R1, #hi_addr(_Screen3_Buttons_Round+0)
MOVW	R0, #lo_addr(_Screen3+12)
MOVT	R0, #hi_addr(_Screen3+12)
STR	R1, [R0, #0]
;MyProject_driver.c,386 :: 		Screen3.LabelsCount               = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Screen3+16)
MOVT	R0, #hi_addr(_Screen3+16)
STRH	R1, [R0, #0]
;MyProject_driver.c,387 :: 		Screen3.Labels                    = Screen3_Labels;
MOVW	R1, #lo_addr(_Screen3_Labels+0)
MOVT	R1, #hi_addr(_Screen3_Labels+0)
MOVW	R0, #lo_addr(_Screen3+20)
MOVT	R0, #hi_addr(_Screen3+20)
STR	R1, [R0, #0]
;MyProject_driver.c,388 :: 		Screen3.ImagesCount               = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen3+24)
MOVT	R0, #hi_addr(_Screen3+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,389 :: 		Screen3.BoxesCount                = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Screen3+32)
MOVT	R0, #hi_addr(_Screen3+32)
STRH	R1, [R0, #0]
;MyProject_driver.c,390 :: 		Screen3.Boxes                     = Screen3_Boxes;
MOVW	R1, #lo_addr(_Screen3_Boxes+0)
MOVT	R1, #hi_addr(_Screen3_Boxes+0)
MOVW	R0, #lo_addr(_Screen3+36)
MOVT	R0, #hi_addr(_Screen3+36)
STR	R1, [R0, #0]
;MyProject_driver.c,391 :: 		Screen3.Boxes_RoundCount          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen3+40)
MOVT	R0, #hi_addr(_Screen3+40)
STRH	R1, [R0, #0]
;MyProject_driver.c,392 :: 		Screen3.ObjectsCount              = 4;
MOVS	R1, #4
MOVW	R0, #lo_addr(_Screen3+6)
MOVT	R0, #hi_addr(_Screen3+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,393 :: 		Screen3.OnSwipeUpPtr    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen3+56)
MOVT	R0, #hi_addr(_Screen3+56)
STR	R1, [R0, #0]
;MyProject_driver.c,394 :: 		Screen3.OnSwipeDownPtr  = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen3+60)
MOVT	R0, #hi_addr(_Screen3+60)
STR	R1, [R0, #0]
;MyProject_driver.c,395 :: 		Screen3.OnSwipeLeftPtr  = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen3+48)
MOVT	R0, #hi_addr(_Screen3+48)
STR	R1, [R0, #0]
;MyProject_driver.c,396 :: 		Screen3.OnSwipeRightPtr = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen3+52)
MOVT	R0, #hi_addr(_Screen3+52)
STR	R1, [R0, #0]
;MyProject_driver.c,397 :: 		Screen3.OnZoomInPtr     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen3+64)
MOVT	R0, #hi_addr(_Screen3+64)
STR	R1, [R0, #0]
;MyProject_driver.c,398 :: 		Screen3.OnZoomOutPtr    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen3+68)
MOVT	R0, #hi_addr(_Screen3+68)
STR	R1, [R0, #0]
;MyProject_driver.c,400 :: 		Screen4.Color                     = 0x001F;
MOVS	R1, #31
MOVW	R0, #lo_addr(_Screen4+0)
MOVT	R0, #hi_addr(_Screen4+0)
STRH	R1, [R0, #0]
;MyProject_driver.c,401 :: 		Screen4.Width                     = 800;
MOVW	R1, #800
MOVW	R0, #lo_addr(_Screen4+2)
MOVT	R0, #hi_addr(_Screen4+2)
STRH	R1, [R0, #0]
;MyProject_driver.c,402 :: 		Screen4.Height                    = 480;
MOVW	R1, #480
MOVW	R0, #lo_addr(_Screen4+4)
MOVT	R0, #hi_addr(_Screen4+4)
STRH	R1, [R0, #0]
;MyProject_driver.c,403 :: 		Screen4.Buttons_RoundCount        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Screen4+8)
MOVT	R0, #hi_addr(_Screen4+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,404 :: 		Screen4.Buttons_Round             = Screen4_Buttons_Round;
MOVW	R1, #lo_addr(_Screen4_Buttons_Round+0)
MOVT	R1, #hi_addr(_Screen4_Buttons_Round+0)
MOVW	R0, #lo_addr(_Screen4+12)
MOVT	R0, #hi_addr(_Screen4+12)
STR	R1, [R0, #0]
;MyProject_driver.c,405 :: 		Screen4.LabelsCount               = 22;
MOVS	R1, #22
MOVW	R0, #lo_addr(_Screen4+16)
MOVT	R0, #hi_addr(_Screen4+16)
STRH	R1, [R0, #0]
;MyProject_driver.c,406 :: 		Screen4.Labels                    = Screen4_Labels;
MOVW	R1, #lo_addr(_Screen4_Labels+0)
MOVT	R1, #hi_addr(_Screen4_Labels+0)
MOVW	R0, #lo_addr(_Screen4+20)
MOVT	R0, #hi_addr(_Screen4+20)
STR	R1, [R0, #0]
;MyProject_driver.c,407 :: 		Screen4.ImagesCount               = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen4+24)
MOVT	R0, #hi_addr(_Screen4+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,408 :: 		Screen4.BoxesCount                = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Screen4+32)
MOVT	R0, #hi_addr(_Screen4+32)
STRH	R1, [R0, #0]
;MyProject_driver.c,409 :: 		Screen4.Boxes                     = Screen4_Boxes;
MOVW	R1, #lo_addr(_Screen4_Boxes+0)
MOVT	R1, #hi_addr(_Screen4_Boxes+0)
MOVW	R0, #lo_addr(_Screen4+36)
MOVT	R0, #hi_addr(_Screen4+36)
STR	R1, [R0, #0]
;MyProject_driver.c,410 :: 		Screen4.Boxes_RoundCount          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Screen4+40)
MOVT	R0, #hi_addr(_Screen4+40)
STRH	R1, [R0, #0]
;MyProject_driver.c,411 :: 		Screen4.Boxes_Round               = Screen4_Boxes_Round;
MOVW	R1, #lo_addr(_Screen4_Boxes_Round+0)
MOVT	R1, #hi_addr(_Screen4_Boxes_Round+0)
MOVW	R0, #lo_addr(_Screen4+44)
MOVT	R0, #hi_addr(_Screen4+44)
STR	R1, [R0, #0]
;MyProject_driver.c,412 :: 		Screen4.ObjectsCount              = 25;
MOVS	R1, #25
MOVW	R0, #lo_addr(_Screen4+6)
MOVT	R0, #hi_addr(_Screen4+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,413 :: 		Screen4.OnSwipeUpPtr    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen4+56)
MOVT	R0, #hi_addr(_Screen4+56)
STR	R1, [R0, #0]
;MyProject_driver.c,414 :: 		Screen4.OnSwipeDownPtr  = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen4+60)
MOVT	R0, #hi_addr(_Screen4+60)
STR	R1, [R0, #0]
;MyProject_driver.c,415 :: 		Screen4.OnSwipeLeftPtr  = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen4+48)
MOVT	R0, #hi_addr(_Screen4+48)
STR	R1, [R0, #0]
;MyProject_driver.c,416 :: 		Screen4.OnSwipeRightPtr = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen4+52)
MOVT	R0, #hi_addr(_Screen4+52)
STR	R1, [R0, #0]
;MyProject_driver.c,417 :: 		Screen4.OnZoomInPtr     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen4+64)
MOVT	R0, #hi_addr(_Screen4+64)
STR	R1, [R0, #0]
;MyProject_driver.c,418 :: 		Screen4.OnZoomOutPtr    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen4+68)
MOVT	R0, #hi_addr(_Screen4+68)
STR	R1, [R0, #0]
;MyProject_driver.c,421 :: 		Box1.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Box1+0)
MOVT	R0, #hi_addr(_Box1+0)
STR	R1, [R0, #0]
;MyProject_driver.c,422 :: 		Box1.Order           = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box1+4)
MOVT	R0, #hi_addr(_Box1+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,423 :: 		Box1.Left            = 10;
MOVS	R1, #10
MOVW	R0, #lo_addr(_Box1+6)
MOVT	R0, #hi_addr(_Box1+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,424 :: 		Box1.Top             = 10;
MOVS	R1, #10
MOVW	R0, #lo_addr(_Box1+8)
MOVT	R0, #hi_addr(_Box1+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,425 :: 		Box1.Width           = 780;
MOVW	R1, #780
MOVW	R0, #lo_addr(_Box1+10)
MOVT	R0, #hi_addr(_Box1+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,426 :: 		Box1.Height          = 460;
MOVW	R1, #460
MOVW	R0, #lo_addr(_Box1+12)
MOVT	R0, #hi_addr(_Box1+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,427 :: 		Box1.Pen_Width       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box1+14)
MOVT	R0, #hi_addr(_Box1+14)
STRB	R1, [R0, #0]
;MyProject_driver.c,428 :: 		Box1.Pen_Color       = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Box1+16)
MOVT	R0, #hi_addr(_Box1+16)
STRH	R1, [R0, #0]
;MyProject_driver.c,429 :: 		Box1.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box1+18)
MOVT	R0, #hi_addr(_Box1+18)
STRB	R1, [R0, #0]
;MyProject_driver.c,430 :: 		Box1.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box1+19)
MOVT	R0, #hi_addr(_Box1+19)
STRB	R1, [R0, #0]
;MyProject_driver.c,431 :: 		Box1.Transparent     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box1+20)
MOVT	R0, #hi_addr(_Box1+20)
STRB	R1, [R0, #0]
;MyProject_driver.c,432 :: 		Box1.Gradient        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box1+21)
MOVT	R0, #hi_addr(_Box1+21)
STRB	R1, [R0, #0]
;MyProject_driver.c,433 :: 		Box1.Gradient_Orientation = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box1+22)
MOVT	R0, #hi_addr(_Box1+22)
STRB	R1, [R0, #0]
;MyProject_driver.c,434 :: 		Box1.Gradient_Start_Color = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Box1+24)
MOVT	R0, #hi_addr(_Box1+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,435 :: 		Box1.Gradient_End_Color = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_Box1+26)
MOVT	R0, #hi_addr(_Box1+26)
STRH	R1, [R0, #0]
;MyProject_driver.c,436 :: 		Box1.Color           = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box1+28)
MOVT	R0, #hi_addr(_Box1+28)
STRH	R1, [R0, #0]
;MyProject_driver.c,437 :: 		Box1.PressColEnabled = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box1+30)
MOVT	R0, #hi_addr(_Box1+30)
STRB	R1, [R0, #0]
;MyProject_driver.c,438 :: 		Box1.Press_Color     = 0xE71C;
MOVW	R1, #59164
MOVW	R0, #lo_addr(_Box1+32)
MOVT	R0, #hi_addr(_Box1+32)
STRH	R1, [R0, #0]
;MyProject_driver.c,440 :: 		BoxRound1.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_BoxRound1+0)
MOVT	R0, #hi_addr(_BoxRound1+0)
STR	R1, [R0, #0]
;MyProject_driver.c,441 :: 		BoxRound1.Order           = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BoxRound1+4)
MOVT	R0, #hi_addr(_BoxRound1+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,442 :: 		BoxRound1.Left            = 233;
MOVS	R1, #233
MOVW	R0, #lo_addr(_BoxRound1+6)
MOVT	R0, #hi_addr(_BoxRound1+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,443 :: 		BoxRound1.Top             = 27;
MOVS	R1, #27
MOVW	R0, #lo_addr(_BoxRound1+8)
MOVT	R0, #hi_addr(_BoxRound1+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,444 :: 		BoxRound1.Width           = 549;
MOVW	R1, #549
MOVW	R0, #lo_addr(_BoxRound1+10)
MOVT	R0, #hi_addr(_BoxRound1+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,445 :: 		BoxRound1.Height          = 425;
MOVW	R1, #425
MOVW	R0, #lo_addr(_BoxRound1+12)
MOVT	R0, #hi_addr(_BoxRound1+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,446 :: 		BoxRound1.Pen_Width       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BoxRound1+14)
MOVT	R0, #hi_addr(_BoxRound1+14)
STRB	R1, [R0, #0]
;MyProject_driver.c,447 :: 		BoxRound1.Pen_Color       = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BoxRound1+16)
MOVT	R0, #hi_addr(_BoxRound1+16)
STRH	R1, [R0, #0]
;MyProject_driver.c,448 :: 		BoxRound1.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BoxRound1+18)
MOVT	R0, #hi_addr(_BoxRound1+18)
STRB	R1, [R0, #0]
;MyProject_driver.c,449 :: 		BoxRound1.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BoxRound1+19)
MOVT	R0, #hi_addr(_BoxRound1+19)
STRB	R1, [R0, #0]
;MyProject_driver.c,450 :: 		BoxRound1.Transparent     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BoxRound1+20)
MOVT	R0, #hi_addr(_BoxRound1+20)
STRB	R1, [R0, #0]
;MyProject_driver.c,451 :: 		BoxRound1.Gradient        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BoxRound1+21)
MOVT	R0, #hi_addr(_BoxRound1+21)
STRB	R1, [R0, #0]
;MyProject_driver.c,452 :: 		BoxRound1.Gradient_Orientation = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BoxRound1+22)
MOVT	R0, #hi_addr(_BoxRound1+22)
STRB	R1, [R0, #0]
;MyProject_driver.c,453 :: 		BoxRound1.Gradient_Start_Color = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_BoxRound1+24)
MOVT	R0, #hi_addr(_BoxRound1+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,454 :: 		BoxRound1.Gradient_End_Color = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_BoxRound1+26)
MOVT	R0, #hi_addr(_BoxRound1+26)
STRH	R1, [R0, #0]
;MyProject_driver.c,455 :: 		BoxRound1.Color           = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_BoxRound1+28)
MOVT	R0, #hi_addr(_BoxRound1+28)
STRH	R1, [R0, #0]
;MyProject_driver.c,456 :: 		BoxRound1.PressColEnabled = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BoxRound1+31)
MOVT	R0, #hi_addr(_BoxRound1+31)
STRB	R1, [R0, #0]
;MyProject_driver.c,457 :: 		BoxRound1.Press_Color     = 0xE71C;
MOVW	R1, #59164
MOVW	R0, #lo_addr(_BoxRound1+32)
MOVT	R0, #hi_addr(_BoxRound1+32)
STRH	R1, [R0, #0]
;MyProject_driver.c,458 :: 		BoxRound1.Corner_Radius   = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_BoxRound1+30)
MOVT	R0, #hi_addr(_BoxRound1+30)
STRB	R1, [R0, #0]
;MyProject_driver.c,460 :: 		ButtonRound2.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_ButtonRound2+0)
MOVT	R0, #hi_addr(_ButtonRound2+0)
STR	R1, [R0, #0]
;MyProject_driver.c,461 :: 		ButtonRound2.Order           = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_ButtonRound2+4)
MOVT	R0, #hi_addr(_ButtonRound2+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,462 :: 		ButtonRound2.Left            = 129;
MOVS	R1, #129
MOVW	R0, #lo_addr(_ButtonRound2+6)
MOVT	R0, #hi_addr(_ButtonRound2+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,463 :: 		ButtonRound2.Top             = 330;
MOVW	R1, #330
MOVW	R0, #lo_addr(_ButtonRound2+8)
MOVT	R0, #hi_addr(_ButtonRound2+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,464 :: 		ButtonRound2.Width           = 85;
MOVS	R1, #85
MOVW	R0, #lo_addr(_ButtonRound2+10)
MOVT	R0, #hi_addr(_ButtonRound2+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,465 :: 		ButtonRound2.Height          = 40;
MOVS	R1, #40
MOVW	R0, #lo_addr(_ButtonRound2+12)
MOVT	R0, #hi_addr(_ButtonRound2+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,466 :: 		ButtonRound2.Pen_Width       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound2+14)
MOVT	R0, #hi_addr(_ButtonRound2+14)
STRB	R1, [R0, #0]
;MyProject_driver.c,467 :: 		ButtonRound2.Pen_Color       = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound2+16)
MOVT	R0, #hi_addr(_ButtonRound2+16)
STRH	R1, [R0, #0]
;MyProject_driver.c,468 :: 		ButtonRound2.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound2+18)
MOVT	R0, #hi_addr(_ButtonRound2+18)
STRB	R1, [R0, #0]
;MyProject_driver.c,469 :: 		ButtonRound2.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound2+19)
MOVT	R0, #hi_addr(_ButtonRound2+19)
STRB	R1, [R0, #0]
;MyProject_driver.c,470 :: 		ButtonRound2.Transparent     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound2+20)
MOVT	R0, #hi_addr(_ButtonRound2+20)
STRB	R1, [R0, #0]
;MyProject_driver.c,471 :: 		ButtonRound2.Caption         = ButtonRound2_Caption;
MOVW	R1, #lo_addr(_ButtonRound2_Caption+0)
MOVT	R1, #hi_addr(_ButtonRound2_Caption+0)
MOVW	R0, #lo_addr(_ButtonRound2+24)
MOVT	R0, #hi_addr(_ButtonRound2+24)
STR	R1, [R0, #0]
;MyProject_driver.c,472 :: 		ButtonRound2.TextAlign       = _taCenter;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound2+28)
MOVT	R0, #hi_addr(_ButtonRound2+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,473 :: 		ButtonRound2.TextAlignVertical= _tavMiddle;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound2+29)
MOVT	R0, #hi_addr(_ButtonRound2+29)
STRB	R1, [R0, #0]
;MyProject_driver.c,474 :: 		ButtonRound2.FontName        = Tahoma16x19_Regular;
MOVW	R4, #lo_addr(_Tahoma16x19_Regular+0)
MOVT	R4, #hi_addr(_Tahoma16x19_Regular+0)
MOVW	R0, #lo_addr(_ButtonRound2+32)
MOVT	R0, #hi_addr(_ButtonRound2+32)
STR	R4, [R0, #0]
;MyProject_driver.c,475 :: 		ButtonRound2.PressColEnabled = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound2+49)
MOVT	R0, #hi_addr(_ButtonRound2+49)
STRB	R1, [R0, #0]
;MyProject_driver.c,476 :: 		ButtonRound2.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound2+36)
MOVT	R0, #hi_addr(_ButtonRound2+36)
STRH	R1, [R0, #0]
;MyProject_driver.c,477 :: 		ButtonRound2.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound2+38)
MOVT	R0, #hi_addr(_ButtonRound2+38)
STRB	R1, [R0, #0]
;MyProject_driver.c,478 :: 		ButtonRound2.Gradient        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound2+39)
MOVT	R0, #hi_addr(_ButtonRound2+39)
STRB	R1, [R0, #0]
;MyProject_driver.c,479 :: 		ButtonRound2.Gradient_Orientation = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound2+40)
MOVT	R0, #hi_addr(_ButtonRound2+40)
STRB	R1, [R0, #0]
;MyProject_driver.c,480 :: 		ButtonRound2.Gradient_Start_Color = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_ButtonRound2+42)
MOVT	R0, #hi_addr(_ButtonRound2+42)
STRH	R1, [R0, #0]
;MyProject_driver.c,481 :: 		ButtonRound2.Gradient_End_Color = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_ButtonRound2+44)
MOVT	R0, #hi_addr(_ButtonRound2+44)
STRH	R1, [R0, #0]
;MyProject_driver.c,482 :: 		ButtonRound2.Color           = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_ButtonRound2+46)
MOVT	R0, #hi_addr(_ButtonRound2+46)
STRH	R1, [R0, #0]
;MyProject_driver.c,483 :: 		ButtonRound2.Press_Color     = 0xE71C;
MOVW	R1, #59164
MOVW	R0, #lo_addr(_ButtonRound2+50)
MOVT	R0, #hi_addr(_ButtonRound2+50)
STRH	R1, [R0, #0]
;MyProject_driver.c,484 :: 		ButtonRound2.Corner_Radius   = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_ButtonRound2+48)
MOVT	R0, #hi_addr(_ButtonRound2+48)
STRB	R1, [R0, #0]
;MyProject_driver.c,485 :: 		ButtonRound2.OnClickPtr      = ButtonRound2OnClick;
MOVW	R1, #lo_addr(_ButtonRound2OnClick+0)
MOVT	R1, #hi_addr(_ButtonRound2OnClick+0)
MOVW	R0, #lo_addr(_ButtonRound2+60)
MOVT	R0, #hi_addr(_ButtonRound2+60)
STR	R1, [R0, #0]
;MyProject_driver.c,487 :: 		Image1.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Image1+0)
MOVT	R0, #hi_addr(_Image1+0)
STR	R1, [R0, #0]
;MyProject_driver.c,488 :: 		Image1.Order           = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_Image1+4)
MOVT	R0, #hi_addr(_Image1+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,489 :: 		Image1.Left            = 31;
MOVS	R1, #31
MOVW	R0, #lo_addr(_Image1+6)
MOVT	R0, #hi_addr(_Image1+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,490 :: 		Image1.Top             = 31;
MOVS	R1, #31
MOVW	R0, #lo_addr(_Image1+8)
MOVT	R0, #hi_addr(_Image1+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,491 :: 		Image1.Width           = 78;
MOVS	R1, #78
MOVW	R0, #lo_addr(_Image1+10)
MOVT	R0, #hi_addr(_Image1+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,492 :: 		Image1.Height          = 78;
MOVS	R1, #78
MOVW	R0, #lo_addr(_Image1+12)
MOVT	R0, #hi_addr(_Image1+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,493 :: 		Image1.Picture_Type    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Image1+22)
MOVT	R0, #hi_addr(_Image1+22)
STRB	R1, [R0, #0]
;MyProject_driver.c,494 :: 		Image1.Picture_Ratio   = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Image1+23)
MOVT	R0, #hi_addr(_Image1+23)
STRB	R1, [R0, #0]
;MyProject_driver.c,495 :: 		Image1.Picture_Name    = Badge_ITS2_bmp;
MOVW	R1, #lo_addr(_Badge_ITS2_bmp+0)
MOVT	R1, #hi_addr(_Badge_ITS2_bmp+0)
MOVW	R0, #lo_addr(_Image1+16)
MOVT	R0, #hi_addr(_Image1+16)
STR	R1, [R0, #0]
;MyProject_driver.c,496 :: 		Image1.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Image1+20)
MOVT	R0, #hi_addr(_Image1+20)
STRB	R1, [R0, #0]
;MyProject_driver.c,497 :: 		Image1.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Image1+21)
MOVT	R0, #hi_addr(_Image1+21)
STRB	R1, [R0, #0]
;MyProject_driver.c,499 :: 		Image2.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Image2+0)
MOVT	R0, #hi_addr(_Image2+0)
STR	R1, [R0, #0]
;MyProject_driver.c,500 :: 		Image2.Order           = 4;
MOVS	R1, #4
MOVW	R0, #lo_addr(_Image2+4)
MOVT	R0, #hi_addr(_Image2+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,501 :: 		Image2.Left            = 132;
MOVS	R1, #132
MOVW	R0, #lo_addr(_Image2+6)
MOVT	R0, #hi_addr(_Image2+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,502 :: 		Image2.Top             = 31;
MOVS	R1, #31
MOVW	R0, #lo_addr(_Image2+8)
MOVT	R0, #hi_addr(_Image2+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,503 :: 		Image2.Width           = 74;
MOVS	R1, #74
MOVW	R0, #lo_addr(_Image2+10)
MOVT	R0, #hi_addr(_Image2+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,504 :: 		Image2.Height          = 78;
MOVS	R1, #78
MOVW	R0, #lo_addr(_Image2+12)
MOVT	R0, #hi_addr(_Image2+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,505 :: 		Image2.Picture_Type    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Image2+22)
MOVT	R0, #hi_addr(_Image2+22)
STRB	R1, [R0, #0]
;MyProject_driver.c,506 :: 		Image2.Picture_Ratio   = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Image2+23)
MOVT	R0, #hi_addr(_Image2+23)
STRB	R1, [R0, #0]
;MyProject_driver.c,507 :: 		Image2.Picture_Name    = bme_logo_bmp;
MOVW	R1, #lo_addr(_bme_logo_bmp+0)
MOVT	R1, #hi_addr(_bme_logo_bmp+0)
MOVW	R0, #lo_addr(_Image2+16)
MOVT	R0, #hi_addr(_Image2+16)
STR	R1, [R0, #0]
;MyProject_driver.c,508 :: 		Image2.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Image2+20)
MOVT	R0, #hi_addr(_Image2+20)
STRB	R1, [R0, #0]
;MyProject_driver.c,509 :: 		Image2.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Image2+21)
MOVT	R0, #hi_addr(_Image2+21)
STRB	R1, [R0, #0]
;MyProject_driver.c,511 :: 		ButtonRound1.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_ButtonRound1+0)
MOVT	R0, #hi_addr(_ButtonRound1+0)
STR	R1, [R0, #0]
;MyProject_driver.c,512 :: 		ButtonRound1.Order           = 5;
MOVS	R1, #5
MOVW	R0, #lo_addr(_ButtonRound1+4)
MOVT	R0, #hi_addr(_ButtonRound1+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,513 :: 		ButtonRound1.Left            = 21;
MOVS	R1, #21
MOVW	R0, #lo_addr(_ButtonRound1+6)
MOVT	R0, #hi_addr(_ButtonRound1+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,514 :: 		ButtonRound1.Top             = 331;
MOVW	R1, #331
MOVW	R0, #lo_addr(_ButtonRound1+8)
MOVT	R0, #hi_addr(_ButtonRound1+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,515 :: 		ButtonRound1.Width           = 85;
MOVS	R1, #85
MOVW	R0, #lo_addr(_ButtonRound1+10)
MOVT	R0, #hi_addr(_ButtonRound1+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,516 :: 		ButtonRound1.Height          = 40;
MOVS	R1, #40
MOVW	R0, #lo_addr(_ButtonRound1+12)
MOVT	R0, #hi_addr(_ButtonRound1+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,517 :: 		ButtonRound1.Pen_Width       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound1+14)
MOVT	R0, #hi_addr(_ButtonRound1+14)
STRB	R1, [R0, #0]
;MyProject_driver.c,518 :: 		ButtonRound1.Pen_Color       = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound1+16)
MOVT	R0, #hi_addr(_ButtonRound1+16)
STRH	R1, [R0, #0]
;MyProject_driver.c,519 :: 		ButtonRound1.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound1+18)
MOVT	R0, #hi_addr(_ButtonRound1+18)
STRB	R1, [R0, #0]
;MyProject_driver.c,520 :: 		ButtonRound1.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound1+19)
MOVT	R0, #hi_addr(_ButtonRound1+19)
STRB	R1, [R0, #0]
;MyProject_driver.c,521 :: 		ButtonRound1.Transparent     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound1+20)
MOVT	R0, #hi_addr(_ButtonRound1+20)
STRB	R1, [R0, #0]
;MyProject_driver.c,522 :: 		ButtonRound1.Caption         = ButtonRound1_Caption;
MOVW	R1, #lo_addr(_ButtonRound1_Caption+0)
MOVT	R1, #hi_addr(_ButtonRound1_Caption+0)
MOVW	R0, #lo_addr(_ButtonRound1+24)
MOVT	R0, #hi_addr(_ButtonRound1+24)
STR	R1, [R0, #0]
;MyProject_driver.c,523 :: 		ButtonRound1.TextAlign       = _taCenter;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound1+28)
MOVT	R0, #hi_addr(_ButtonRound1+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,524 :: 		ButtonRound1.TextAlignVertical= _tavMiddle;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound1+29)
MOVT	R0, #hi_addr(_ButtonRound1+29)
STRB	R1, [R0, #0]
;MyProject_driver.c,525 :: 		ButtonRound1.FontName        = Tahoma16x19_Regular;
MOVW	R0, #lo_addr(_ButtonRound1+32)
MOVT	R0, #hi_addr(_ButtonRound1+32)
STR	R4, [R0, #0]
;MyProject_driver.c,526 :: 		ButtonRound1.PressColEnabled = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound1+49)
MOVT	R0, #hi_addr(_ButtonRound1+49)
STRB	R1, [R0, #0]
;MyProject_driver.c,527 :: 		ButtonRound1.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound1+36)
MOVT	R0, #hi_addr(_ButtonRound1+36)
STRH	R1, [R0, #0]
;MyProject_driver.c,528 :: 		ButtonRound1.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound1+38)
MOVT	R0, #hi_addr(_ButtonRound1+38)
STRB	R1, [R0, #0]
;MyProject_driver.c,529 :: 		ButtonRound1.Gradient        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound1+39)
MOVT	R0, #hi_addr(_ButtonRound1+39)
STRB	R1, [R0, #0]
;MyProject_driver.c,530 :: 		ButtonRound1.Gradient_Orientation = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound1+40)
MOVT	R0, #hi_addr(_ButtonRound1+40)
STRB	R1, [R0, #0]
;MyProject_driver.c,531 :: 		ButtonRound1.Gradient_Start_Color = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_ButtonRound1+42)
MOVT	R0, #hi_addr(_ButtonRound1+42)
STRH	R1, [R0, #0]
;MyProject_driver.c,532 :: 		ButtonRound1.Gradient_End_Color = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_ButtonRound1+44)
MOVT	R0, #hi_addr(_ButtonRound1+44)
STRH	R1, [R0, #0]
;MyProject_driver.c,533 :: 		ButtonRound1.Color           = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_ButtonRound1+46)
MOVT	R0, #hi_addr(_ButtonRound1+46)
STRH	R1, [R0, #0]
;MyProject_driver.c,534 :: 		ButtonRound1.Press_Color     = 0xE71C;
MOVW	R1, #59164
MOVW	R0, #lo_addr(_ButtonRound1+50)
MOVT	R0, #hi_addr(_ButtonRound1+50)
STRH	R1, [R0, #0]
;MyProject_driver.c,535 :: 		ButtonRound1.Corner_Radius   = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_ButtonRound1+48)
MOVT	R0, #hi_addr(_ButtonRound1+48)
STRB	R1, [R0, #0]
;MyProject_driver.c,536 :: 		ButtonRound1.OnClickPtr      = ButtonRound1OnClick;
MOVW	R1, #lo_addr(_ButtonRound1OnClick+0)
MOVT	R1, #hi_addr(_ButtonRound1OnClick+0)
MOVW	R0, #lo_addr(_ButtonRound1+60)
MOVT	R0, #hi_addr(_ButtonRound1+60)
STR	R1, [R0, #0]
;MyProject_driver.c,538 :: 		Label1.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Label1+0)
MOVT	R0, #hi_addr(_Label1+0)
STR	R1, [R0, #0]
;MyProject_driver.c,539 :: 		Label1.Order           = 6;
MOVS	R1, #6
MOVW	R0, #lo_addr(_Label1+4)
MOVT	R0, #hi_addr(_Label1+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,540 :: 		Label1.Left            = 238;
MOVS	R1, #238
MOVW	R0, #lo_addr(_Label1+6)
MOVT	R0, #hi_addr(_Label1+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,541 :: 		Label1.Top             = 45;
MOVS	R1, #45
MOVW	R0, #lo_addr(_Label1+8)
MOVT	R0, #hi_addr(_Label1+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,542 :: 		Label1.Width           = 518;
MOVW	R1, #518
MOVW	R0, #lo_addr(_Label1+10)
MOVT	R0, #hi_addr(_Label1+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,543 :: 		Label1.Height          = 22;
MOVS	R1, #22
MOVW	R0, #lo_addr(_Label1+12)
MOVT	R0, #hi_addr(_Label1+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,544 :: 		Label1.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label1+27)
MOVT	R0, #hi_addr(_Label1+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,545 :: 		Label1.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label1+28)
MOVT	R0, #hi_addr(_Label1+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,546 :: 		Label1.Caption         = Label1_Caption;
MOVW	R1, #lo_addr(_Label1_Caption+0)
MOVT	R1, #hi_addr(_Label1_Caption+0)
MOVW	R0, #lo_addr(_Label1+16)
MOVT	R0, #hi_addr(_Label1+16)
STR	R1, [R0, #0]
;MyProject_driver.c,547 :: 		Label1.FontName        = Helvetica17x19_Bold;
MOVW	R2, #lo_addr(_Helvetica17x19_Bold+0)
MOVT	R2, #hi_addr(_Helvetica17x19_Bold+0)
MOVW	R0, #lo_addr(_Label1+20)
MOVT	R0, #hi_addr(_Label1+20)
STR	R2, [R0, #0]
;MyProject_driver.c,548 :: 		Label1.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label1+24)
MOVT	R0, #hi_addr(_Label1+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,549 :: 		Label1.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label1+26)
MOVT	R0, #hi_addr(_Label1+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,551 :: 		Label2.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Label2+0)
MOVT	R0, #hi_addr(_Label2+0)
STR	R1, [R0, #0]
;MyProject_driver.c,552 :: 		Label2.Order           = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_Label2+4)
MOVT	R0, #hi_addr(_Label2+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,553 :: 		Label2.Left            = 238;
MOVS	R1, #238
MOVW	R0, #lo_addr(_Label2+6)
MOVT	R0, #hi_addr(_Label2+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,554 :: 		Label2.Top             = 65;
MOVS	R1, #65
MOVW	R0, #lo_addr(_Label2+8)
MOVT	R0, #hi_addr(_Label2+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,555 :: 		Label2.Width           = 457;
MOVW	R1, #457
MOVW	R0, #lo_addr(_Label2+10)
MOVT	R0, #hi_addr(_Label2+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,556 :: 		Label2.Height          = 22;
MOVS	R1, #22
MOVW	R0, #lo_addr(_Label2+12)
MOVT	R0, #hi_addr(_Label2+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,557 :: 		Label2.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label2+27)
MOVT	R0, #hi_addr(_Label2+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,558 :: 		Label2.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label2+28)
MOVT	R0, #hi_addr(_Label2+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,559 :: 		Label2.Caption         = Label2_Caption;
MOVW	R1, #lo_addr(_Label2_Caption+0)
MOVT	R1, #hi_addr(_Label2_Caption+0)
MOVW	R0, #lo_addr(_Label2+16)
MOVT	R0, #hi_addr(_Label2+16)
STR	R1, [R0, #0]
;MyProject_driver.c,560 :: 		Label2.FontName        = Helvetica17x19_Bold;
MOVW	R0, #lo_addr(_Label2+20)
MOVT	R0, #hi_addr(_Label2+20)
STR	R2, [R0, #0]
;MyProject_driver.c,561 :: 		Label2.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label2+24)
MOVT	R0, #hi_addr(_Label2+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,562 :: 		Label2.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label2+26)
MOVT	R0, #hi_addr(_Label2+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,564 :: 		Label3.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Label3+0)
MOVT	R0, #hi_addr(_Label3+0)
STR	R1, [R0, #0]
;MyProject_driver.c,565 :: 		Label3.Order           = 8;
MOVS	R1, #8
MOVW	R0, #lo_addr(_Label3+4)
MOVT	R0, #hi_addr(_Label3+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,566 :: 		Label3.Left            = 238;
MOVS	R1, #238
MOVW	R0, #lo_addr(_Label3+6)
MOVT	R0, #hi_addr(_Label3+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,567 :: 		Label3.Top             = 85;
MOVS	R1, #85
MOVW	R0, #lo_addr(_Label3+8)
MOVT	R0, #hi_addr(_Label3+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,568 :: 		Label3.Width           = 150;
MOVS	R1, #150
MOVW	R0, #lo_addr(_Label3+10)
MOVT	R0, #hi_addr(_Label3+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,569 :: 		Label3.Height          = 22;
MOVS	R1, #22
MOVW	R0, #lo_addr(_Label3+12)
MOVT	R0, #hi_addr(_Label3+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,570 :: 		Label3.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label3+27)
MOVT	R0, #hi_addr(_Label3+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,571 :: 		Label3.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label3+28)
MOVT	R0, #hi_addr(_Label3+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,572 :: 		Label3.Caption         = Label3_Caption;
MOVW	R1, #lo_addr(_Label3_Caption+0)
MOVT	R1, #hi_addr(_Label3_Caption+0)
MOVW	R0, #lo_addr(_Label3+16)
MOVT	R0, #hi_addr(_Label3+16)
STR	R1, [R0, #0]
;MyProject_driver.c,573 :: 		Label3.FontName        = Helvetica17x19_Bold;
MOVW	R0, #lo_addr(_Label3+20)
MOVT	R0, #hi_addr(_Label3+20)
STR	R2, [R0, #0]
;MyProject_driver.c,574 :: 		Label3.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label3+24)
MOVT	R0, #hi_addr(_Label3+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,575 :: 		Label3.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label3+26)
MOVT	R0, #hi_addr(_Label3+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,577 :: 		Label4.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Label4+0)
MOVT	R0, #hi_addr(_Label4+0)
STR	R1, [R0, #0]
;MyProject_driver.c,578 :: 		Label4.Order           = 9;
MOVS	R1, #9
MOVW	R0, #lo_addr(_Label4+4)
MOVT	R0, #hi_addr(_Label4+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,579 :: 		Label4.Left            = 238;
MOVS	R1, #238
MOVW	R0, #lo_addr(_Label4+6)
MOVT	R0, #hi_addr(_Label4+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,580 :: 		Label4.Top             = 152;
MOVS	R1, #152
MOVW	R0, #lo_addr(_Label4+8)
MOVT	R0, #hi_addr(_Label4+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,581 :: 		Label4.Width           = 327;
MOVW	R1, #327
MOVW	R0, #lo_addr(_Label4+10)
MOVT	R0, #hi_addr(_Label4+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,582 :: 		Label4.Height          = 22;
MOVS	R1, #22
MOVW	R0, #lo_addr(_Label4+12)
MOVT	R0, #hi_addr(_Label4+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,583 :: 		Label4.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label4+27)
MOVT	R0, #hi_addr(_Label4+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,584 :: 		Label4.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label4+28)
MOVT	R0, #hi_addr(_Label4+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,585 :: 		Label4.Caption         = Label4_Caption;
MOVW	R1, #lo_addr(_Label4_Caption+0)
MOVT	R1, #hi_addr(_Label4_Caption+0)
MOVW	R0, #lo_addr(_Label4+16)
MOVT	R0, #hi_addr(_Label4+16)
STR	R1, [R0, #0]
;MyProject_driver.c,586 :: 		Label4.FontName        = Helvetica17x20_Regular;
MOVW	R2, #lo_addr(_Helvetica17x20_Regular+0)
MOVT	R2, #hi_addr(_Helvetica17x20_Regular+0)
MOVW	R0, #lo_addr(_Label4+20)
MOVT	R0, #hi_addr(_Label4+20)
STR	R2, [R0, #0]
;MyProject_driver.c,587 :: 		Label4.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label4+24)
MOVT	R0, #hi_addr(_Label4+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,588 :: 		Label4.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label4+26)
MOVT	R0, #hi_addr(_Label4+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,590 :: 		Label5.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Label5+0)
MOVT	R0, #hi_addr(_Label5+0)
STR	R1, [R0, #0]
;MyProject_driver.c,591 :: 		Label5.Order           = 10;
MOVS	R1, #10
MOVW	R0, #lo_addr(_Label5+4)
MOVT	R0, #hi_addr(_Label5+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,592 :: 		Label5.Left            = 238;
MOVS	R1, #238
MOVW	R0, #lo_addr(_Label5+6)
MOVT	R0, #hi_addr(_Label5+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,593 :: 		Label5.Top             = 205;
MOVS	R1, #205
MOVW	R0, #lo_addr(_Label5+8)
MOVT	R0, #hi_addr(_Label5+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,594 :: 		Label5.Width           = 394;
MOVW	R1, #394
MOVW	R0, #lo_addr(_Label5+10)
MOVT	R0, #hi_addr(_Label5+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,595 :: 		Label5.Height          = 22;
MOVS	R1, #22
MOVW	R0, #lo_addr(_Label5+12)
MOVT	R0, #hi_addr(_Label5+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,596 :: 		Label5.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label5+27)
MOVT	R0, #hi_addr(_Label5+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,597 :: 		Label5.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label5+28)
MOVT	R0, #hi_addr(_Label5+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,598 :: 		Label5.Caption         = Label5_Caption;
MOVW	R1, #lo_addr(_Label5_Caption+0)
MOVT	R1, #hi_addr(_Label5_Caption+0)
MOVW	R0, #lo_addr(_Label5+16)
MOVT	R0, #hi_addr(_Label5+16)
STR	R1, [R0, #0]
;MyProject_driver.c,599 :: 		Label5.FontName        = Helvetica17x20_Regular;
MOVW	R0, #lo_addr(_Label5+20)
MOVT	R0, #hi_addr(_Label5+20)
STR	R2, [R0, #0]
;MyProject_driver.c,600 :: 		Label5.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label5+24)
MOVT	R0, #hi_addr(_Label5+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,601 :: 		Label5.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label5+26)
MOVT	R0, #hi_addr(_Label5+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,603 :: 		Label6.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Label6+0)
MOVT	R0, #hi_addr(_Label6+0)
STR	R1, [R0, #0]
;MyProject_driver.c,604 :: 		Label6.Order           = 11;
MOVS	R1, #11
MOVW	R0, #lo_addr(_Label6+4)
MOVT	R0, #hi_addr(_Label6+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,605 :: 		Label6.Left            = 238;
MOVS	R1, #238
MOVW	R0, #lo_addr(_Label6+6)
MOVT	R0, #hi_addr(_Label6+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,606 :: 		Label6.Top             = 225;
MOVS	R1, #225
MOVW	R0, #lo_addr(_Label6+8)
MOVT	R0, #hi_addr(_Label6+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,607 :: 		Label6.Width           = 401;
MOVW	R1, #401
MOVW	R0, #lo_addr(_Label6+10)
MOVT	R0, #hi_addr(_Label6+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,608 :: 		Label6.Height          = 22;
MOVS	R1, #22
MOVW	R0, #lo_addr(_Label6+12)
MOVT	R0, #hi_addr(_Label6+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,609 :: 		Label6.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label6+27)
MOVT	R0, #hi_addr(_Label6+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,610 :: 		Label6.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label6+28)
MOVT	R0, #hi_addr(_Label6+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,611 :: 		Label6.Caption         = Label6_Caption;
MOVW	R1, #lo_addr(_Label6_Caption+0)
MOVT	R1, #hi_addr(_Label6_Caption+0)
MOVW	R0, #lo_addr(_Label6+16)
MOVT	R0, #hi_addr(_Label6+16)
STR	R1, [R0, #0]
;MyProject_driver.c,612 :: 		Label6.FontName        = Helvetica17x20_Regular;
MOVW	R0, #lo_addr(_Label6+20)
MOVT	R0, #hi_addr(_Label6+20)
STR	R2, [R0, #0]
;MyProject_driver.c,613 :: 		Label6.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label6+24)
MOVT	R0, #hi_addr(_Label6+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,614 :: 		Label6.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label6+26)
MOVT	R0, #hi_addr(_Label6+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,616 :: 		Label7.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Label7+0)
MOVT	R0, #hi_addr(_Label7+0)
STR	R1, [R0, #0]
;MyProject_driver.c,617 :: 		Label7.Order           = 12;
MOVS	R1, #12
MOVW	R0, #lo_addr(_Label7+4)
MOVT	R0, #hi_addr(_Label7+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,618 :: 		Label7.Left            = 238;
MOVS	R1, #238
MOVW	R0, #lo_addr(_Label7+6)
MOVT	R0, #hi_addr(_Label7+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,619 :: 		Label7.Top             = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label7+8)
MOVT	R0, #hi_addr(_Label7+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,620 :: 		Label7.Width           = 368;
MOVW	R1, #368
MOVW	R0, #lo_addr(_Label7+10)
MOVT	R0, #hi_addr(_Label7+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,621 :: 		Label7.Height          = 22;
MOVS	R1, #22
MOVW	R0, #lo_addr(_Label7+12)
MOVT	R0, #hi_addr(_Label7+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,622 :: 		Label7.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label7+27)
MOVT	R0, #hi_addr(_Label7+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,623 :: 		Label7.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label7+28)
MOVT	R0, #hi_addr(_Label7+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,624 :: 		Label7.Caption         = Label7_Caption;
MOVW	R1, #lo_addr(_Label7_Caption+0)
MOVT	R1, #hi_addr(_Label7_Caption+0)
MOVW	R0, #lo_addr(_Label7+16)
MOVT	R0, #hi_addr(_Label7+16)
STR	R1, [R0, #0]
;MyProject_driver.c,625 :: 		Label7.FontName        = Helvetica17x20_Regular;
MOVW	R0, #lo_addr(_Label7+20)
MOVT	R0, #hi_addr(_Label7+20)
STR	R2, [R0, #0]
;MyProject_driver.c,626 :: 		Label7.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label7+24)
MOVT	R0, #hi_addr(_Label7+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,627 :: 		Label7.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label7+26)
MOVT	R0, #hi_addr(_Label7+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,629 :: 		Label8.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Label8+0)
MOVT	R0, #hi_addr(_Label8+0)
STR	R1, [R0, #0]
;MyProject_driver.c,630 :: 		Label8.Order           = 13;
MOVS	R1, #13
MOVW	R0, #lo_addr(_Label8+4)
MOVT	R0, #hi_addr(_Label8+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,631 :: 		Label8.Left            = 238;
MOVS	R1, #238
MOVW	R0, #lo_addr(_Label8+6)
MOVT	R0, #hi_addr(_Label8+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,632 :: 		Label8.Top             = 335;
MOVW	R1, #335
MOVW	R0, #lo_addr(_Label8+8)
MOVT	R0, #hi_addr(_Label8+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,633 :: 		Label8.Width           = 138;
MOVS	R1, #138
MOVW	R0, #lo_addr(_Label8+10)
MOVT	R0, #hi_addr(_Label8+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,634 :: 		Label8.Height          = 22;
MOVS	R1, #22
MOVW	R0, #lo_addr(_Label8+12)
MOVT	R0, #hi_addr(_Label8+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,635 :: 		Label8.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label8+27)
MOVT	R0, #hi_addr(_Label8+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,636 :: 		Label8.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label8+28)
MOVT	R0, #hi_addr(_Label8+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,637 :: 		Label8.Caption         = Label8_Caption;
MOVW	R1, #lo_addr(_Label8_Caption+0)
MOVT	R1, #hi_addr(_Label8_Caption+0)
MOVW	R0, #lo_addr(_Label8+16)
MOVT	R0, #hi_addr(_Label8+16)
STR	R1, [R0, #0]
;MyProject_driver.c,638 :: 		Label8.FontName        = Helvetica17x20_Regular;
MOVW	R0, #lo_addr(_Label8+20)
MOVT	R0, #hi_addr(_Label8+20)
STR	R2, [R0, #0]
;MyProject_driver.c,639 :: 		Label8.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label8+24)
MOVT	R0, #hi_addr(_Label8+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,640 :: 		Label8.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label8+26)
MOVT	R0, #hi_addr(_Label8+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,642 :: 		Label9.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Label9+0)
MOVT	R0, #hi_addr(_Label9+0)
STR	R1, [R0, #0]
;MyProject_driver.c,643 :: 		Label9.Order           = 14;
MOVS	R1, #14
MOVW	R0, #lo_addr(_Label9+4)
MOVT	R0, #hi_addr(_Label9+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,644 :: 		Label9.Left            = 238;
MOVS	R1, #238
MOVW	R0, #lo_addr(_Label9+6)
MOVT	R0, #hi_addr(_Label9+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,645 :: 		Label9.Top             = 355;
MOVW	R1, #355
MOVW	R0, #lo_addr(_Label9+8)
MOVT	R0, #hi_addr(_Label9+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,646 :: 		Label9.Width           = 235;
MOVS	R1, #235
MOVW	R0, #lo_addr(_Label9+10)
MOVT	R0, #hi_addr(_Label9+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,647 :: 		Label9.Height          = 22;
MOVS	R1, #22
MOVW	R0, #lo_addr(_Label9+12)
MOVT	R0, #hi_addr(_Label9+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,648 :: 		Label9.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label9+27)
MOVT	R0, #hi_addr(_Label9+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,649 :: 		Label9.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label9+28)
MOVT	R0, #hi_addr(_Label9+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,650 :: 		Label9.Caption         = Label9_Caption;
MOVW	R1, #lo_addr(_Label9_Caption+0)
MOVT	R1, #hi_addr(_Label9_Caption+0)
MOVW	R0, #lo_addr(_Label9+16)
MOVT	R0, #hi_addr(_Label9+16)
STR	R1, [R0, #0]
;MyProject_driver.c,651 :: 		Label9.FontName        = Helvetica17x20_Regular;
MOVW	R0, #lo_addr(_Label9+20)
MOVT	R0, #hi_addr(_Label9+20)
STR	R2, [R0, #0]
;MyProject_driver.c,652 :: 		Label9.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label9+24)
MOVT	R0, #hi_addr(_Label9+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,653 :: 		Label9.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label9+26)
MOVT	R0, #hi_addr(_Label9+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,655 :: 		Label10.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Label10+0)
MOVT	R0, #hi_addr(_Label10+0)
STR	R1, [R0, #0]
;MyProject_driver.c,656 :: 		Label10.Order           = 15;
MOVS	R1, #15
MOVW	R0, #lo_addr(_Label10+4)
MOVT	R0, #hi_addr(_Label10+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,657 :: 		Label10.Left            = 238;
MOVS	R1, #238
MOVW	R0, #lo_addr(_Label10+6)
MOVT	R0, #hi_addr(_Label10+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,658 :: 		Label10.Top             = 375;
MOVW	R1, #375
MOVW	R0, #lo_addr(_Label10+8)
MOVT	R0, #hi_addr(_Label10+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,659 :: 		Label10.Width           = 399;
MOVW	R1, #399
MOVW	R0, #lo_addr(_Label10+10)
MOVT	R0, #hi_addr(_Label10+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,660 :: 		Label10.Height          = 22;
MOVS	R1, #22
MOVW	R0, #lo_addr(_Label10+12)
MOVT	R0, #hi_addr(_Label10+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,661 :: 		Label10.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label10+27)
MOVT	R0, #hi_addr(_Label10+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,662 :: 		Label10.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label10+28)
MOVT	R0, #hi_addr(_Label10+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,663 :: 		Label10.Caption         = Label10_Caption;
MOVW	R1, #lo_addr(_Label10_Caption+0)
MOVT	R1, #hi_addr(_Label10_Caption+0)
MOVW	R0, #lo_addr(_Label10+16)
MOVT	R0, #hi_addr(_Label10+16)
STR	R1, [R0, #0]
;MyProject_driver.c,664 :: 		Label10.FontName        = Helvetica17x20_Regular;
MOVW	R0, #lo_addr(_Label10+20)
MOVT	R0, #hi_addr(_Label10+20)
STR	R2, [R0, #0]
;MyProject_driver.c,665 :: 		Label10.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label10+24)
MOVT	R0, #hi_addr(_Label10+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,666 :: 		Label10.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label10+26)
MOVT	R0, #hi_addr(_Label10+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,668 :: 		Label11.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Label11+0)
MOVT	R0, #hi_addr(_Label11+0)
STR	R1, [R0, #0]
;MyProject_driver.c,669 :: 		Label11.Order           = 16;
MOVS	R1, #16
MOVW	R0, #lo_addr(_Label11+4)
MOVT	R0, #hi_addr(_Label11+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,670 :: 		Label11.Left            = 238;
MOVS	R1, #238
MOVW	R0, #lo_addr(_Label11+6)
MOVT	R0, #hi_addr(_Label11+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,671 :: 		Label11.Top             = 395;
MOVW	R1, #395
MOVW	R0, #lo_addr(_Label11+8)
MOVT	R0, #hi_addr(_Label11+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,672 :: 		Label11.Width           = 294;
MOVW	R1, #294
MOVW	R0, #lo_addr(_Label11+10)
MOVT	R0, #hi_addr(_Label11+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,673 :: 		Label11.Height          = 22;
MOVS	R1, #22
MOVW	R0, #lo_addr(_Label11+12)
MOVT	R0, #hi_addr(_Label11+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,674 :: 		Label11.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label11+27)
MOVT	R0, #hi_addr(_Label11+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,675 :: 		Label11.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label11+28)
MOVT	R0, #hi_addr(_Label11+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,676 :: 		Label11.Caption         = Label11_Caption;
MOVW	R1, #lo_addr(_Label11_Caption+0)
MOVT	R1, #hi_addr(_Label11_Caption+0)
MOVW	R0, #lo_addr(_Label11+16)
MOVT	R0, #hi_addr(_Label11+16)
STR	R1, [R0, #0]
;MyProject_driver.c,677 :: 		Label11.FontName        = Helvetica17x20_Regular;
MOVW	R0, #lo_addr(_Label11+20)
MOVT	R0, #hi_addr(_Label11+20)
STR	R2, [R0, #0]
;MyProject_driver.c,678 :: 		Label11.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label11+24)
MOVT	R0, #hi_addr(_Label11+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,679 :: 		Label11.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label11+26)
MOVT	R0, #hi_addr(_Label11+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,681 :: 		Label12.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Label12+0)
MOVT	R0, #hi_addr(_Label12+0)
STR	R1, [R0, #0]
;MyProject_driver.c,682 :: 		Label12.Order           = 17;
MOVS	R1, #17
MOVW	R0, #lo_addr(_Label12+4)
MOVT	R0, #hi_addr(_Label12+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,683 :: 		Label12.Left            = 238;
MOVS	R1, #238
MOVW	R0, #lo_addr(_Label12+6)
MOVT	R0, #hi_addr(_Label12+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,684 :: 		Label12.Top             = 415;
MOVW	R1, #415
MOVW	R0, #lo_addr(_Label12+8)
MOVT	R0, #hi_addr(_Label12+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,685 :: 		Label12.Width           = 45;
MOVS	R1, #45
MOVW	R0, #lo_addr(_Label12+10)
MOVT	R0, #hi_addr(_Label12+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,686 :: 		Label12.Height          = 22;
MOVS	R1, #22
MOVW	R0, #lo_addr(_Label12+12)
MOVT	R0, #hi_addr(_Label12+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,687 :: 		Label12.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label12+27)
MOVT	R0, #hi_addr(_Label12+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,688 :: 		Label12.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label12+28)
MOVT	R0, #hi_addr(_Label12+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,689 :: 		Label12.Caption         = Label12_Caption;
MOVW	R1, #lo_addr(_Label12_Caption+0)
MOVT	R1, #hi_addr(_Label12_Caption+0)
MOVW	R0, #lo_addr(_Label12+16)
MOVT	R0, #hi_addr(_Label12+16)
STR	R1, [R0, #0]
;MyProject_driver.c,690 :: 		Label12.FontName        = Helvetica17x20_Regular;
MOVW	R0, #lo_addr(_Label12+20)
MOVT	R0, #hi_addr(_Label12+20)
STR	R2, [R0, #0]
;MyProject_driver.c,691 :: 		Label12.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label12+24)
MOVT	R0, #hi_addr(_Label12+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,692 :: 		Label12.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label12+26)
MOVT	R0, #hi_addr(_Label12+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,694 :: 		Label14.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Label14+0)
MOVT	R0, #hi_addr(_Label14+0)
STR	R1, [R0, #0]
;MyProject_driver.c,695 :: 		Label14.Order           = 18;
MOVS	R1, #18
MOVW	R0, #lo_addr(_Label14+4)
MOVT	R0, #hi_addr(_Label14+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,696 :: 		Label14.Left            = 18;
MOVS	R1, #18
MOVW	R0, #lo_addr(_Label14+6)
MOVT	R0, #hi_addr(_Label14+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,697 :: 		Label14.Top             = 308;
MOVW	R1, #308
MOVW	R0, #lo_addr(_Label14+8)
MOVT	R0, #hi_addr(_Label14+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,698 :: 		Label14.Width           = 205;
MOVS	R1, #205
MOVW	R0, #lo_addr(_Label14+10)
MOVT	R0, #hi_addr(_Label14+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,699 :: 		Label14.Height          = 17;
MOVS	R1, #17
MOVW	R0, #lo_addr(_Label14+12)
MOVT	R0, #hi_addr(_Label14+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,700 :: 		Label14.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label14+27)
MOVT	R0, #hi_addr(_Label14+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,701 :: 		Label14.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label14+28)
MOVT	R0, #hi_addr(_Label14+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,702 :: 		Label14.Caption         = Label14_Caption;
MOVW	R1, #lo_addr(_Label14_Caption+0)
MOVT	R1, #hi_addr(_Label14_Caption+0)
MOVW	R0, #lo_addr(_Label14+16)
MOVT	R0, #hi_addr(_Label14+16)
STR	R1, [R0, #0]
;MyProject_driver.c,703 :: 		Label14.FontName        = Tahoma12x16_Regular;
MOVW	R3, #lo_addr(_Tahoma12x16_Regular+0)
MOVT	R3, #hi_addr(_Tahoma12x16_Regular+0)
MOVW	R0, #lo_addr(_Label14+20)
MOVT	R0, #hi_addr(_Label14+20)
STR	R3, [R0, #0]
;MyProject_driver.c,704 :: 		Label14.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label14+24)
MOVT	R0, #hi_addr(_Label14+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,705 :: 		Label14.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label14+26)
MOVT	R0, #hi_addr(_Label14+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,707 :: 		Label15.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Label15+0)
MOVT	R0, #hi_addr(_Label15+0)
STR	R1, [R0, #0]
;MyProject_driver.c,708 :: 		Label15.Order           = 19;
MOVS	R1, #19
MOVW	R0, #lo_addr(_Label15+4)
MOVT	R0, #hi_addr(_Label15+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,709 :: 		Label15.Left            = 35;
MOVS	R1, #35
MOVW	R0, #lo_addr(_Label15+6)
MOVT	R0, #hi_addr(_Label15+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,710 :: 		Label15.Top             = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label15+8)
MOVT	R0, #hi_addr(_Label15+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,711 :: 		Label15.Width           = 166;
MOVS	R1, #166
MOVW	R0, #lo_addr(_Label15+10)
MOVT	R0, #hi_addr(_Label15+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,712 :: 		Label15.Height          = 21;
MOVS	R1, #21
MOVW	R0, #lo_addr(_Label15+12)
MOVT	R0, #hi_addr(_Label15+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,713 :: 		Label15.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label15+27)
MOVT	R0, #hi_addr(_Label15+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,714 :: 		Label15.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label15+28)
MOVT	R0, #hi_addr(_Label15+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,715 :: 		Label15.Caption         = Label15_Caption;
MOVW	R1, #lo_addr(_Label15_Caption+0)
MOVT	R1, #hi_addr(_Label15_Caption+0)
MOVW	R0, #lo_addr(_Label15+16)
MOVT	R0, #hi_addr(_Label15+16)
STR	R1, [R0, #0]
;MyProject_driver.c,716 :: 		Label15.FontName        = Tahoma16x19_Regular;
MOVW	R0, #lo_addr(_Label15+20)
MOVT	R0, #hi_addr(_Label15+20)
STR	R4, [R0, #0]
;MyProject_driver.c,717 :: 		Label15.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label15+24)
MOVT	R0, #hi_addr(_Label15+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,718 :: 		Label15.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label15+26)
MOVT	R0, #hi_addr(_Label15+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,720 :: 		Label18.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Label18+0)
MOVT	R0, #hi_addr(_Label18+0)
STR	R1, [R0, #0]
;MyProject_driver.c,721 :: 		Label18.Order           = 20;
MOVS	R1, #20
MOVW	R0, #lo_addr(_Label18+4)
MOVT	R0, #hi_addr(_Label18+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,722 :: 		Label18.Left            = 23;
MOVS	R1, #23
MOVW	R0, #lo_addr(_Label18+6)
MOVT	R0, #hi_addr(_Label18+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,723 :: 		Label18.Top             = 273;
MOVW	R1, #273
MOVW	R0, #lo_addr(_Label18+8)
MOVT	R0, #hi_addr(_Label18+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,724 :: 		Label18.Width           = 199;
MOVS	R1, #199
MOVW	R0, #lo_addr(_Label18+10)
MOVT	R0, #hi_addr(_Label18+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,725 :: 		Label18.Height          = 21;
MOVS	R1, #21
MOVW	R0, #lo_addr(_Label18+12)
MOVT	R0, #hi_addr(_Label18+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,726 :: 		Label18.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label18+27)
MOVT	R0, #hi_addr(_Label18+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,727 :: 		Label18.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label18+28)
MOVT	R0, #hi_addr(_Label18+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,728 :: 		Label18.Caption         = Label18_Caption;
MOVW	R1, #lo_addr(_Label18_Caption+0)
MOVT	R1, #hi_addr(_Label18_Caption+0)
MOVW	R0, #lo_addr(_Label18+16)
MOVT	R0, #hi_addr(_Label18+16)
STR	R1, [R0, #0]
;MyProject_driver.c,729 :: 		Label18.FontName        = Tahoma16x19_Regular;
MOVW	R0, #lo_addr(_Label18+20)
MOVT	R0, #hi_addr(_Label18+20)
STR	R4, [R0, #0]
;MyProject_driver.c,730 :: 		Label18.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label18+24)
MOVT	R0, #hi_addr(_Label18+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,731 :: 		Label18.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label18+26)
MOVT	R0, #hi_addr(_Label18+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,733 :: 		ButtonRound3.OwnerScreen     = &Screen2;
MOVW	R1, #lo_addr(_Screen2+0)
MOVT	R1, #hi_addr(_Screen2+0)
MOVW	R0, #lo_addr(_ButtonRound3+0)
MOVT	R0, #hi_addr(_ButtonRound3+0)
STR	R1, [R0, #0]
;MyProject_driver.c,734 :: 		ButtonRound3.Order           = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound3+4)
MOVT	R0, #hi_addr(_ButtonRound3+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,735 :: 		ButtonRound3.Left            = 235;
MOVS	R1, #235
MOVW	R0, #lo_addr(_ButtonRound3+6)
MOVT	R0, #hi_addr(_ButtonRound3+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,736 :: 		ButtonRound3.Top             = 433;
MOVW	R1, #433
MOVW	R0, #lo_addr(_ButtonRound3+8)
MOVT	R0, #hi_addr(_ButtonRound3+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,737 :: 		ButtonRound3.Width           = 100;
MOVS	R1, #100
MOVW	R0, #lo_addr(_ButtonRound3+10)
MOVT	R0, #hi_addr(_ButtonRound3+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,738 :: 		ButtonRound3.Height          = 35;
MOVS	R1, #35
MOVW	R0, #lo_addr(_ButtonRound3+12)
MOVT	R0, #hi_addr(_ButtonRound3+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,739 :: 		ButtonRound3.Pen_Width       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound3+14)
MOVT	R0, #hi_addr(_ButtonRound3+14)
STRB	R1, [R0, #0]
;MyProject_driver.c,740 :: 		ButtonRound3.Pen_Color       = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound3+16)
MOVT	R0, #hi_addr(_ButtonRound3+16)
STRH	R1, [R0, #0]
;MyProject_driver.c,741 :: 		ButtonRound3.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound3+18)
MOVT	R0, #hi_addr(_ButtonRound3+18)
STRB	R1, [R0, #0]
;MyProject_driver.c,742 :: 		ButtonRound3.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound3+19)
MOVT	R0, #hi_addr(_ButtonRound3+19)
STRB	R1, [R0, #0]
;MyProject_driver.c,743 :: 		ButtonRound3.Transparent     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound3+20)
MOVT	R0, #hi_addr(_ButtonRound3+20)
STRB	R1, [R0, #0]
;MyProject_driver.c,744 :: 		ButtonRound3.Caption         = ButtonRound3_Caption;
MOVW	R1, #lo_addr(_ButtonRound3_Caption+0)
MOVT	R1, #hi_addr(_ButtonRound3_Caption+0)
MOVW	R0, #lo_addr(_ButtonRound3+24)
MOVT	R0, #hi_addr(_ButtonRound3+24)
STR	R1, [R0, #0]
;MyProject_driver.c,745 :: 		ButtonRound3.TextAlign       = _taCenter;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound3+28)
MOVT	R0, #hi_addr(_ButtonRound3+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,746 :: 		ButtonRound3.TextAlignVertical= _tavMiddle;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound3+29)
MOVT	R0, #hi_addr(_ButtonRound3+29)
STRB	R1, [R0, #0]
;MyProject_driver.c,747 :: 		ButtonRound3.FontName        = Tahoma12x16_Regular;
MOVW	R0, #lo_addr(_ButtonRound3+32)
MOVT	R0, #hi_addr(_ButtonRound3+32)
STR	R3, [R0, #0]
;MyProject_driver.c,748 :: 		ButtonRound3.PressColEnabled = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound3+49)
MOVT	R0, #hi_addr(_ButtonRound3+49)
STRB	R1, [R0, #0]
;MyProject_driver.c,749 :: 		ButtonRound3.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound3+36)
MOVT	R0, #hi_addr(_ButtonRound3+36)
STRH	R1, [R0, #0]
;MyProject_driver.c,750 :: 		ButtonRound3.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound3+38)
MOVT	R0, #hi_addr(_ButtonRound3+38)
STRB	R1, [R0, #0]
;MyProject_driver.c,751 :: 		ButtonRound3.Gradient        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound3+39)
MOVT	R0, #hi_addr(_ButtonRound3+39)
STRB	R1, [R0, #0]
;MyProject_driver.c,752 :: 		ButtonRound3.Gradient_Orientation = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound3+40)
MOVT	R0, #hi_addr(_ButtonRound3+40)
STRB	R1, [R0, #0]
;MyProject_driver.c,753 :: 		ButtonRound3.Gradient_Start_Color = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_ButtonRound3+42)
MOVT	R0, #hi_addr(_ButtonRound3+42)
STRH	R1, [R0, #0]
;MyProject_driver.c,754 :: 		ButtonRound3.Gradient_End_Color = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_ButtonRound3+44)
MOVT	R0, #hi_addr(_ButtonRound3+44)
STRH	R1, [R0, #0]
;MyProject_driver.c,755 :: 		ButtonRound3.Color           = 0x07E0;
MOVW	R1, #2016
MOVW	R0, #lo_addr(_ButtonRound3+46)
MOVT	R0, #hi_addr(_ButtonRound3+46)
STRH	R1, [R0, #0]
;MyProject_driver.c,756 :: 		ButtonRound3.Press_Color     = 0xE71C;
MOVW	R1, #59164
MOVW	R0, #lo_addr(_ButtonRound3+50)
MOVT	R0, #hi_addr(_ButtonRound3+50)
STRH	R1, [R0, #0]
;MyProject_driver.c,757 :: 		ButtonRound3.Corner_Radius   = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_ButtonRound3+48)
MOVT	R0, #hi_addr(_ButtonRound3+48)
STRB	R1, [R0, #0]
;MyProject_driver.c,758 :: 		ButtonRound3.OnClickPtr      = ButtonRound3OnClick;
MOVW	R1, #lo_addr(_ButtonRound3OnClick+0)
MOVT	R1, #hi_addr(_ButtonRound3OnClick+0)
MOVW	R0, #lo_addr(_ButtonRound3+60)
MOVT	R0, #hi_addr(_ButtonRound3+60)
STR	R1, [R0, #0]
;MyProject_driver.c,760 :: 		ButtonRound4.OwnerScreen     = &Screen2;
MOVW	R1, #lo_addr(_Screen2+0)
MOVT	R1, #hi_addr(_Screen2+0)
MOVW	R0, #lo_addr(_ButtonRound4+0)
MOVT	R0, #hi_addr(_ButtonRound4+0)
STR	R1, [R0, #0]
;MyProject_driver.c,761 :: 		ButtonRound4.Order           = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound4+4)
MOVT	R0, #hi_addr(_ButtonRound4+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,762 :: 		ButtonRound4.Left            = 350;
MOVW	R1, #350
MOVW	R0, #lo_addr(_ButtonRound4+6)
MOVT	R0, #hi_addr(_ButtonRound4+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,763 :: 		ButtonRound4.Top             = 434;
MOVW	R1, #434
MOVW	R0, #lo_addr(_ButtonRound4+8)
MOVT	R0, #hi_addr(_ButtonRound4+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,764 :: 		ButtonRound4.Width           = 100;
MOVS	R1, #100
MOVW	R0, #lo_addr(_ButtonRound4+10)
MOVT	R0, #hi_addr(_ButtonRound4+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,765 :: 		ButtonRound4.Height          = 35;
MOVS	R1, #35
MOVW	R0, #lo_addr(_ButtonRound4+12)
MOVT	R0, #hi_addr(_ButtonRound4+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,766 :: 		ButtonRound4.Pen_Width       = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_ButtonRound4+14)
MOVT	R0, #hi_addr(_ButtonRound4+14)
STRB	R1, [R0, #0]
;MyProject_driver.c,767 :: 		ButtonRound4.Pen_Color       = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_ButtonRound4+16)
MOVT	R0, #hi_addr(_ButtonRound4+16)
STRH	R1, [R0, #0]
;MyProject_driver.c,768 :: 		ButtonRound4.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound4+18)
MOVT	R0, #hi_addr(_ButtonRound4+18)
STRB	R1, [R0, #0]
;MyProject_driver.c,769 :: 		ButtonRound4.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound4+19)
MOVT	R0, #hi_addr(_ButtonRound4+19)
STRB	R1, [R0, #0]
;MyProject_driver.c,770 :: 		ButtonRound4.Transparent     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound4+20)
MOVT	R0, #hi_addr(_ButtonRound4+20)
STRB	R1, [R0, #0]
;MyProject_driver.c,771 :: 		ButtonRound4.Caption         = ButtonRound4_Caption;
MOVW	R1, #lo_addr(_ButtonRound4_Caption+0)
MOVT	R1, #hi_addr(_ButtonRound4_Caption+0)
MOVW	R0, #lo_addr(_ButtonRound4+24)
MOVT	R0, #hi_addr(_ButtonRound4+24)
STR	R1, [R0, #0]
;MyProject_driver.c,772 :: 		ButtonRound4.TextAlign       = _taCenter;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound4+28)
MOVT	R0, #hi_addr(_ButtonRound4+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,773 :: 		ButtonRound4.TextAlignVertical= _tavMiddle;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound4+29)
MOVT	R0, #hi_addr(_ButtonRound4+29)
STRB	R1, [R0, #0]
;MyProject_driver.c,774 :: 		ButtonRound4.FontName        = Tahoma12x16_Regular;
MOVW	R0, #lo_addr(_ButtonRound4+32)
MOVT	R0, #hi_addr(_ButtonRound4+32)
STR	R3, [R0, #0]
;MyProject_driver.c,775 :: 		ButtonRound4.PressColEnabled = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound4+49)
MOVT	R0, #hi_addr(_ButtonRound4+49)
STRB	R1, [R0, #0]
;MyProject_driver.c,776 :: 		ButtonRound4.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound4+36)
MOVT	R0, #hi_addr(_ButtonRound4+36)
STRH	R1, [R0, #0]
;MyProject_driver.c,777 :: 		ButtonRound4.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound4+38)
MOVT	R0, #hi_addr(_ButtonRound4+38)
STRB	R1, [R0, #0]
;MyProject_driver.c,778 :: 		ButtonRound4.Gradient        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound4+39)
MOVT	R0, #hi_addr(_ButtonRound4+39)
STRB	R1, [R0, #0]
;MyProject_driver.c,779 :: 		ButtonRound4.Gradient_Orientation = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound4+40)
MOVT	R0, #hi_addr(_ButtonRound4+40)
STRB	R1, [R0, #0]
;MyProject_driver.c,780 :: 		ButtonRound4.Gradient_Start_Color = 0x632C;
MOVW	R1, #25388
MOVW	R0, #lo_addr(_ButtonRound4+42)
MOVT	R0, #hi_addr(_ButtonRound4+42)
STRH	R1, [R0, #0]
;MyProject_driver.c,781 :: 		ButtonRound4.Gradient_End_Color = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound4+44)
MOVT	R0, #hi_addr(_ButtonRound4+44)
STRH	R1, [R0, #0]
;MyProject_driver.c,782 :: 		ButtonRound4.Color           = 0xFFE0;
MOVW	R1, #65504
MOVW	R0, #lo_addr(_ButtonRound4+46)
MOVT	R0, #hi_addr(_ButtonRound4+46)
STRH	R1, [R0, #0]
;MyProject_driver.c,783 :: 		ButtonRound4.Press_Color     = 0xE71C;
MOVW	R1, #59164
MOVW	R0, #lo_addr(_ButtonRound4+50)
MOVT	R0, #hi_addr(_ButtonRound4+50)
STRH	R1, [R0, #0]
;MyProject_driver.c,784 :: 		ButtonRound4.Corner_Radius   = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_ButtonRound4+48)
MOVT	R0, #hi_addr(_ButtonRound4+48)
STRB	R1, [R0, #0]
;MyProject_driver.c,785 :: 		ButtonRound4.OnClickPtr      = ButtonRound4OnClick;
MOVW	R1, #lo_addr(_ButtonRound4OnClick+0)
MOVT	R1, #hi_addr(_ButtonRound4OnClick+0)
MOVW	R0, #lo_addr(_ButtonRound4+60)
MOVT	R0, #hi_addr(_ButtonRound4+60)
STR	R1, [R0, #0]
;MyProject_driver.c,787 :: 		ButtonRound5.OwnerScreen     = &Screen2;
MOVW	R1, #lo_addr(_Screen2+0)
MOVT	R1, #hi_addr(_Screen2+0)
MOVW	R0, #lo_addr(_ButtonRound5+0)
MOVT	R0, #hi_addr(_ButtonRound5+0)
STR	R1, [R0, #0]
;MyProject_driver.c,788 :: 		ButtonRound5.Order           = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_ButtonRound5+4)
MOVT	R0, #hi_addr(_ButtonRound5+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,789 :: 		ButtonRound5.Left            = 465;
MOVW	R1, #465
MOVW	R0, #lo_addr(_ButtonRound5+6)
MOVT	R0, #hi_addr(_ButtonRound5+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,790 :: 		ButtonRound5.Top             = 433;
MOVW	R1, #433
MOVW	R0, #lo_addr(_ButtonRound5+8)
MOVT	R0, #hi_addr(_ButtonRound5+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,791 :: 		ButtonRound5.Width           = 100;
MOVS	R1, #100
MOVW	R0, #lo_addr(_ButtonRound5+10)
MOVT	R0, #hi_addr(_ButtonRound5+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,792 :: 		ButtonRound5.Height          = 35;
MOVS	R1, #35
MOVW	R0, #lo_addr(_ButtonRound5+12)
MOVT	R0, #hi_addr(_ButtonRound5+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,793 :: 		ButtonRound5.Pen_Width       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound5+14)
MOVT	R0, #hi_addr(_ButtonRound5+14)
STRB	R1, [R0, #0]
;MyProject_driver.c,794 :: 		ButtonRound5.Pen_Color       = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound5+16)
MOVT	R0, #hi_addr(_ButtonRound5+16)
STRH	R1, [R0, #0]
;MyProject_driver.c,795 :: 		ButtonRound5.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound5+18)
MOVT	R0, #hi_addr(_ButtonRound5+18)
STRB	R1, [R0, #0]
;MyProject_driver.c,796 :: 		ButtonRound5.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound5+19)
MOVT	R0, #hi_addr(_ButtonRound5+19)
STRB	R1, [R0, #0]
;MyProject_driver.c,797 :: 		ButtonRound5.Transparent     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound5+20)
MOVT	R0, #hi_addr(_ButtonRound5+20)
STRB	R1, [R0, #0]
;MyProject_driver.c,798 :: 		ButtonRound5.Caption         = ButtonRound5_Caption;
MOVW	R1, #lo_addr(_ButtonRound5_Caption+0)
MOVT	R1, #hi_addr(_ButtonRound5_Caption+0)
MOVW	R0, #lo_addr(_ButtonRound5+24)
MOVT	R0, #hi_addr(_ButtonRound5+24)
STR	R1, [R0, #0]
;MyProject_driver.c,799 :: 		ButtonRound5.TextAlign       = _taCenter;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound5+28)
MOVT	R0, #hi_addr(_ButtonRound5+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,800 :: 		ButtonRound5.TextAlignVertical= _tavMiddle;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound5+29)
MOVT	R0, #hi_addr(_ButtonRound5+29)
STRB	R1, [R0, #0]
;MyProject_driver.c,801 :: 		ButtonRound5.FontName        = Tahoma12x16_Regular;
MOVW	R0, #lo_addr(_ButtonRound5+32)
MOVT	R0, #hi_addr(_ButtonRound5+32)
STR	R3, [R0, #0]
;MyProject_driver.c,802 :: 		ButtonRound5.PressColEnabled = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound5+49)
MOVT	R0, #hi_addr(_ButtonRound5+49)
STRB	R1, [R0, #0]
;MyProject_driver.c,803 :: 		ButtonRound5.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound5+36)
MOVT	R0, #hi_addr(_ButtonRound5+36)
STRH	R1, [R0, #0]
;MyProject_driver.c,804 :: 		ButtonRound5.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound5+38)
MOVT	R0, #hi_addr(_ButtonRound5+38)
STRB	R1, [R0, #0]
;MyProject_driver.c,805 :: 		ButtonRound5.Gradient        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound5+39)
MOVT	R0, #hi_addr(_ButtonRound5+39)
STRB	R1, [R0, #0]
;MyProject_driver.c,806 :: 		ButtonRound5.Gradient_Orientation = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound5+40)
MOVT	R0, #hi_addr(_ButtonRound5+40)
STRB	R1, [R0, #0]
;MyProject_driver.c,807 :: 		ButtonRound5.Gradient_Start_Color = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_ButtonRound5+42)
MOVT	R0, #hi_addr(_ButtonRound5+42)
STRH	R1, [R0, #0]
;MyProject_driver.c,808 :: 		ButtonRound5.Gradient_End_Color = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_ButtonRound5+44)
MOVT	R0, #hi_addr(_ButtonRound5+44)
STRH	R1, [R0, #0]
;MyProject_driver.c,809 :: 		ButtonRound5.Color           = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_ButtonRound5+46)
MOVT	R0, #hi_addr(_ButtonRound5+46)
STRH	R1, [R0, #0]
;MyProject_driver.c,810 :: 		ButtonRound5.Press_Color     = 0xE71C;
MOVW	R1, #59164
MOVW	R0, #lo_addr(_ButtonRound5+50)
MOVT	R0, #hi_addr(_ButtonRound5+50)
STRH	R1, [R0, #0]
;MyProject_driver.c,811 :: 		ButtonRound5.Corner_Radius   = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_ButtonRound5+48)
MOVT	R0, #hi_addr(_ButtonRound5+48)
STRB	R1, [R0, #0]
;MyProject_driver.c,812 :: 		ButtonRound5.OnClickPtr      = ButtonRound5OnClick;
MOVW	R1, #lo_addr(_ButtonRound5OnClick+0)
MOVT	R1, #hi_addr(_ButtonRound5OnClick+0)
MOVW	R0, #lo_addr(_ButtonRound5+60)
MOVT	R0, #hi_addr(_ButtonRound5+60)
STR	R1, [R0, #0]
;MyProject_driver.c,814 :: 		Box2.OwnerScreen     = &Screen2;
MOVW	R1, #lo_addr(_Screen2+0)
MOVT	R1, #hi_addr(_Screen2+0)
MOVW	R0, #lo_addr(_Box2+0)
MOVT	R0, #hi_addr(_Box2+0)
STR	R1, [R0, #0]
;MyProject_driver.c,815 :: 		Box2.Order           = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_Box2+4)
MOVT	R0, #hi_addr(_Box2+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,816 :: 		Box2.Left            = 10;
MOVS	R1, #10
MOVW	R0, #lo_addr(_Box2+6)
MOVT	R0, #hi_addr(_Box2+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,817 :: 		Box2.Top             = 10;
MOVS	R1, #10
MOVW	R0, #lo_addr(_Box2+8)
MOVT	R0, #hi_addr(_Box2+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,818 :: 		Box2.Width           = 780;
MOVW	R1, #780
MOVW	R0, #lo_addr(_Box2+10)
MOVT	R0, #hi_addr(_Box2+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,819 :: 		Box2.Height          = 415;
MOVW	R1, #415
MOVW	R0, #lo_addr(_Box2+12)
MOVT	R0, #hi_addr(_Box2+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,820 :: 		Box2.Pen_Width       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box2+14)
MOVT	R0, #hi_addr(_Box2+14)
STRB	R1, [R0, #0]
;MyProject_driver.c,821 :: 		Box2.Pen_Color       = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Box2+16)
MOVT	R0, #hi_addr(_Box2+16)
STRH	R1, [R0, #0]
;MyProject_driver.c,822 :: 		Box2.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box2+18)
MOVT	R0, #hi_addr(_Box2+18)
STRB	R1, [R0, #0]
;MyProject_driver.c,823 :: 		Box2.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box2+19)
MOVT	R0, #hi_addr(_Box2+19)
STRB	R1, [R0, #0]
;MyProject_driver.c,824 :: 		Box2.Transparent     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box2+20)
MOVT	R0, #hi_addr(_Box2+20)
STRB	R1, [R0, #0]
;MyProject_driver.c,825 :: 		Box2.Gradient        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box2+21)
MOVT	R0, #hi_addr(_Box2+21)
STRB	R1, [R0, #0]
;MyProject_driver.c,826 :: 		Box2.Gradient_Orientation = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box2+22)
MOVT	R0, #hi_addr(_Box2+22)
STRB	R1, [R0, #0]
;MyProject_driver.c,827 :: 		Box2.Gradient_Start_Color = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Box2+24)
MOVT	R0, #hi_addr(_Box2+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,828 :: 		Box2.Gradient_End_Color = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_Box2+26)
MOVT	R0, #hi_addr(_Box2+26)
STRH	R1, [R0, #0]
;MyProject_driver.c,829 :: 		Box2.Color           = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box2+28)
MOVT	R0, #hi_addr(_Box2+28)
STRH	R1, [R0, #0]
;MyProject_driver.c,830 :: 		Box2.PressColEnabled = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box2+30)
MOVT	R0, #hi_addr(_Box2+30)
STRB	R1, [R0, #0]
;MyProject_driver.c,831 :: 		Box2.Press_Color     = 0xE71C;
MOVW	R1, #59164
MOVW	R0, #lo_addr(_Box2+32)
MOVT	R0, #hi_addr(_Box2+32)
STRH	R1, [R0, #0]
;MyProject_driver.c,833 :: 		ButtonRound6.OwnerScreen     = &Screen3;
MOVW	R1, #lo_addr(_Screen3+0)
MOVT	R1, #hi_addr(_Screen3+0)
MOVW	R0, #lo_addr(_ButtonRound6+0)
MOVT	R0, #hi_addr(_ButtonRound6+0)
STR	R1, [R0, #0]
;MyProject_driver.c,834 :: 		ButtonRound6.Order           = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound6+4)
MOVT	R0, #hi_addr(_ButtonRound6+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,835 :: 		ButtonRound6.Left            = 290;
MOVW	R1, #290
MOVW	R0, #lo_addr(_ButtonRound6+6)
MOVT	R0, #hi_addr(_ButtonRound6+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,836 :: 		ButtonRound6.Top             = 433;
MOVW	R1, #433
MOVW	R0, #lo_addr(_ButtonRound6+8)
MOVT	R0, #hi_addr(_ButtonRound6+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,837 :: 		ButtonRound6.Width           = 100;
MOVS	R1, #100
MOVW	R0, #lo_addr(_ButtonRound6+10)
MOVT	R0, #hi_addr(_ButtonRound6+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,838 :: 		ButtonRound6.Height          = 35;
MOVS	R1, #35
MOVW	R0, #lo_addr(_ButtonRound6+12)
MOVT	R0, #hi_addr(_ButtonRound6+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,839 :: 		ButtonRound6.Pen_Width       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound6+14)
MOVT	R0, #hi_addr(_ButtonRound6+14)
STRB	R1, [R0, #0]
;MyProject_driver.c,840 :: 		ButtonRound6.Pen_Color       = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound6+16)
MOVT	R0, #hi_addr(_ButtonRound6+16)
STRH	R1, [R0, #0]
;MyProject_driver.c,841 :: 		ButtonRound6.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound6+18)
MOVT	R0, #hi_addr(_ButtonRound6+18)
STRB	R1, [R0, #0]
;MyProject_driver.c,842 :: 		ButtonRound6.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound6+19)
MOVT	R0, #hi_addr(_ButtonRound6+19)
STRB	R1, [R0, #0]
;MyProject_driver.c,843 :: 		ButtonRound6.Transparent     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound6+20)
MOVT	R0, #hi_addr(_ButtonRound6+20)
STRB	R1, [R0, #0]
;MyProject_driver.c,844 :: 		ButtonRound6.Caption         = ButtonRound6_Caption;
MOVW	R1, #lo_addr(_ButtonRound6_Caption+0)
MOVT	R1, #hi_addr(_ButtonRound6_Caption+0)
MOVW	R0, #lo_addr(_ButtonRound6+24)
MOVT	R0, #hi_addr(_ButtonRound6+24)
STR	R1, [R0, #0]
;MyProject_driver.c,845 :: 		ButtonRound6.TextAlign       = _taCenter;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound6+28)
MOVT	R0, #hi_addr(_ButtonRound6+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,846 :: 		ButtonRound6.TextAlignVertical= _tavMiddle;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound6+29)
MOVT	R0, #hi_addr(_ButtonRound6+29)
STRB	R1, [R0, #0]
;MyProject_driver.c,847 :: 		ButtonRound6.FontName        = Tahoma12x16_Regular;
MOVW	R0, #lo_addr(_ButtonRound6+32)
MOVT	R0, #hi_addr(_ButtonRound6+32)
STR	R3, [R0, #0]
;MyProject_driver.c,848 :: 		ButtonRound6.PressColEnabled = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound6+49)
MOVT	R0, #hi_addr(_ButtonRound6+49)
STRB	R1, [R0, #0]
;MyProject_driver.c,849 :: 		ButtonRound6.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound6+36)
MOVT	R0, #hi_addr(_ButtonRound6+36)
STRH	R1, [R0, #0]
;MyProject_driver.c,850 :: 		ButtonRound6.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound6+38)
MOVT	R0, #hi_addr(_ButtonRound6+38)
STRB	R1, [R0, #0]
;MyProject_driver.c,851 :: 		ButtonRound6.Gradient        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound6+39)
MOVT	R0, #hi_addr(_ButtonRound6+39)
STRB	R1, [R0, #0]
;MyProject_driver.c,852 :: 		ButtonRound6.Gradient_Orientation = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound6+40)
MOVT	R0, #hi_addr(_ButtonRound6+40)
STRB	R1, [R0, #0]
;MyProject_driver.c,853 :: 		ButtonRound6.Gradient_Start_Color = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_ButtonRound6+42)
MOVT	R0, #hi_addr(_ButtonRound6+42)
STRH	R1, [R0, #0]
;MyProject_driver.c,854 :: 		ButtonRound6.Gradient_End_Color = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_ButtonRound6+44)
MOVT	R0, #hi_addr(_ButtonRound6+44)
STRH	R1, [R0, #0]
;MyProject_driver.c,855 :: 		ButtonRound6.Color           = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_ButtonRound6+46)
MOVT	R0, #hi_addr(_ButtonRound6+46)
STRH	R1, [R0, #0]
;MyProject_driver.c,856 :: 		ButtonRound6.Press_Color     = 0xE71C;
MOVW	R1, #59164
MOVW	R0, #lo_addr(_ButtonRound6+50)
MOVT	R0, #hi_addr(_ButtonRound6+50)
STRH	R1, [R0, #0]
;MyProject_driver.c,857 :: 		ButtonRound6.Corner_Radius   = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_ButtonRound6+48)
MOVT	R0, #hi_addr(_ButtonRound6+48)
STRB	R1, [R0, #0]
;MyProject_driver.c,858 :: 		ButtonRound6.OnClickPtr      = ButtonRound6OnClick;
MOVW	R1, #lo_addr(_ButtonRound6OnClick+0)
MOVT	R1, #hi_addr(_ButtonRound6OnClick+0)
MOVW	R0, #lo_addr(_ButtonRound6+60)
MOVT	R0, #hi_addr(_ButtonRound6+60)
STR	R1, [R0, #0]
;MyProject_driver.c,860 :: 		ButtonRound7.OwnerScreen     = &Screen3;
MOVW	R1, #lo_addr(_Screen3+0)
MOVT	R1, #hi_addr(_Screen3+0)
MOVW	R0, #lo_addr(_ButtonRound7+0)
MOVT	R0, #hi_addr(_ButtonRound7+0)
STR	R1, [R0, #0]
;MyProject_driver.c,861 :: 		ButtonRound7.Order           = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound7+4)
MOVT	R0, #hi_addr(_ButtonRound7+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,862 :: 		ButtonRound7.Left            = 410;
MOVW	R1, #410
MOVW	R0, #lo_addr(_ButtonRound7+6)
MOVT	R0, #hi_addr(_ButtonRound7+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,863 :: 		ButtonRound7.Top             = 432;
MOVW	R1, #432
MOVW	R0, #lo_addr(_ButtonRound7+8)
MOVT	R0, #hi_addr(_ButtonRound7+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,864 :: 		ButtonRound7.Width           = 100;
MOVS	R1, #100
MOVW	R0, #lo_addr(_ButtonRound7+10)
MOVT	R0, #hi_addr(_ButtonRound7+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,865 :: 		ButtonRound7.Height          = 35;
MOVS	R1, #35
MOVW	R0, #lo_addr(_ButtonRound7+12)
MOVT	R0, #hi_addr(_ButtonRound7+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,866 :: 		ButtonRound7.Pen_Width       = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_ButtonRound7+14)
MOVT	R0, #hi_addr(_ButtonRound7+14)
STRB	R1, [R0, #0]
;MyProject_driver.c,867 :: 		ButtonRound7.Pen_Color       = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_ButtonRound7+16)
MOVT	R0, #hi_addr(_ButtonRound7+16)
STRH	R1, [R0, #0]
;MyProject_driver.c,868 :: 		ButtonRound7.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound7+18)
MOVT	R0, #hi_addr(_ButtonRound7+18)
STRB	R1, [R0, #0]
;MyProject_driver.c,869 :: 		ButtonRound7.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound7+19)
MOVT	R0, #hi_addr(_ButtonRound7+19)
STRB	R1, [R0, #0]
;MyProject_driver.c,870 :: 		ButtonRound7.Transparent     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound7+20)
MOVT	R0, #hi_addr(_ButtonRound7+20)
STRB	R1, [R0, #0]
;MyProject_driver.c,871 :: 		ButtonRound7.Caption         = ButtonRound7_Caption;
MOVW	R1, #lo_addr(_ButtonRound7_Caption+0)
MOVT	R1, #hi_addr(_ButtonRound7_Caption+0)
MOVW	R0, #lo_addr(_ButtonRound7+24)
MOVT	R0, #hi_addr(_ButtonRound7+24)
STR	R1, [R0, #0]
;MyProject_driver.c,872 :: 		ButtonRound7.TextAlign       = _taCenter;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound7+28)
MOVT	R0, #hi_addr(_ButtonRound7+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,873 :: 		ButtonRound7.TextAlignVertical= _tavMiddle;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound7+29)
MOVT	R0, #hi_addr(_ButtonRound7+29)
STRB	R1, [R0, #0]
;MyProject_driver.c,874 :: 		ButtonRound7.FontName        = Tahoma12x16_Regular;
MOVW	R0, #lo_addr(_ButtonRound7+32)
MOVT	R0, #hi_addr(_ButtonRound7+32)
STR	R3, [R0, #0]
;MyProject_driver.c,875 :: 		ButtonRound7.PressColEnabled = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound7+49)
MOVT	R0, #hi_addr(_ButtonRound7+49)
STRB	R1, [R0, #0]
;MyProject_driver.c,876 :: 		ButtonRound7.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound7+36)
MOVT	R0, #hi_addr(_ButtonRound7+36)
STRH	R1, [R0, #0]
;MyProject_driver.c,877 :: 		ButtonRound7.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound7+38)
MOVT	R0, #hi_addr(_ButtonRound7+38)
STRB	R1, [R0, #0]
;MyProject_driver.c,878 :: 		ButtonRound7.Gradient        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound7+39)
MOVT	R0, #hi_addr(_ButtonRound7+39)
STRB	R1, [R0, #0]
;MyProject_driver.c,879 :: 		ButtonRound7.Gradient_Orientation = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound7+40)
MOVT	R0, #hi_addr(_ButtonRound7+40)
STRB	R1, [R0, #0]
;MyProject_driver.c,880 :: 		ButtonRound7.Gradient_Start_Color = 0x632C;
MOVW	R1, #25388
MOVW	R0, #lo_addr(_ButtonRound7+42)
MOVT	R0, #hi_addr(_ButtonRound7+42)
STRH	R1, [R0, #0]
;MyProject_driver.c,881 :: 		ButtonRound7.Gradient_End_Color = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound7+44)
MOVT	R0, #hi_addr(_ButtonRound7+44)
STRH	R1, [R0, #0]
;MyProject_driver.c,882 :: 		ButtonRound7.Color           = 0xFFE0;
MOVW	R1, #65504
MOVW	R0, #lo_addr(_ButtonRound7+46)
MOVT	R0, #hi_addr(_ButtonRound7+46)
STRH	R1, [R0, #0]
;MyProject_driver.c,883 :: 		ButtonRound7.Press_Color     = 0xE71C;
MOVW	R1, #59164
MOVW	R0, #lo_addr(_ButtonRound7+50)
MOVT	R0, #hi_addr(_ButtonRound7+50)
STRH	R1, [R0, #0]
;MyProject_driver.c,884 :: 		ButtonRound7.Corner_Radius   = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_ButtonRound7+48)
MOVT	R0, #hi_addr(_ButtonRound7+48)
STRB	R1, [R0, #0]
;MyProject_driver.c,885 :: 		ButtonRound7.OnClickPtr      = ButtonRound7OnClick;
MOVW	R1, #lo_addr(_ButtonRound7OnClick+0)
MOVT	R1, #hi_addr(_ButtonRound7OnClick+0)
MOVW	R0, #lo_addr(_ButtonRound7+60)
MOVT	R0, #hi_addr(_ButtonRound7+60)
STR	R1, [R0, #0]
;MyProject_driver.c,887 :: 		Box3.OwnerScreen     = &Screen3;
MOVW	R1, #lo_addr(_Screen3+0)
MOVT	R1, #hi_addr(_Screen3+0)
MOVW	R0, #lo_addr(_Box3+0)
MOVT	R0, #hi_addr(_Box3+0)
STR	R1, [R0, #0]
;MyProject_driver.c,888 :: 		Box3.Order           = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_Box3+4)
MOVT	R0, #hi_addr(_Box3+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,889 :: 		Box3.Left            = 10;
MOVS	R1, #10
MOVW	R0, #lo_addr(_Box3+6)
MOVT	R0, #hi_addr(_Box3+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,890 :: 		Box3.Top             = 10;
MOVS	R1, #10
MOVW	R0, #lo_addr(_Box3+8)
MOVT	R0, #hi_addr(_Box3+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,891 :: 		Box3.Width           = 780;
MOVW	R1, #780
MOVW	R0, #lo_addr(_Box3+10)
MOVT	R0, #hi_addr(_Box3+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,892 :: 		Box3.Height          = 414;
MOVW	R1, #414
MOVW	R0, #lo_addr(_Box3+12)
MOVT	R0, #hi_addr(_Box3+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,893 :: 		Box3.Pen_Width       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box3+14)
MOVT	R0, #hi_addr(_Box3+14)
STRB	R1, [R0, #0]
;MyProject_driver.c,894 :: 		Box3.Pen_Color       = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Box3+16)
MOVT	R0, #hi_addr(_Box3+16)
STRH	R1, [R0, #0]
;MyProject_driver.c,895 :: 		Box3.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box3+18)
MOVT	R0, #hi_addr(_Box3+18)
STRB	R1, [R0, #0]
;MyProject_driver.c,896 :: 		Box3.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box3+19)
MOVT	R0, #hi_addr(_Box3+19)
STRB	R1, [R0, #0]
;MyProject_driver.c,897 :: 		Box3.Transparent     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box3+20)
MOVT	R0, #hi_addr(_Box3+20)
STRB	R1, [R0, #0]
;MyProject_driver.c,898 :: 		Box3.Gradient        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box3+21)
MOVT	R0, #hi_addr(_Box3+21)
STRB	R1, [R0, #0]
;MyProject_driver.c,899 :: 		Box3.Gradient_Orientation = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box3+22)
MOVT	R0, #hi_addr(_Box3+22)
STRB	R1, [R0, #0]
;MyProject_driver.c,900 :: 		Box3.Gradient_Start_Color = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Box3+24)
MOVT	R0, #hi_addr(_Box3+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,901 :: 		Box3.Gradient_End_Color = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_Box3+26)
MOVT	R0, #hi_addr(_Box3+26)
STRH	R1, [R0, #0]
;MyProject_driver.c,902 :: 		Box3.Color           = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box3+28)
MOVT	R0, #hi_addr(_Box3+28)
STRH	R1, [R0, #0]
;MyProject_driver.c,903 :: 		Box3.PressColEnabled = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box3+30)
MOVT	R0, #hi_addr(_Box3+30)
STRB	R1, [R0, #0]
;MyProject_driver.c,904 :: 		Box3.Press_Color     = 0xE71C;
MOVW	R1, #59164
MOVW	R0, #lo_addr(_Box3+32)
MOVT	R0, #hi_addr(_Box3+32)
STRH	R1, [R0, #0]
;MyProject_driver.c,906 :: 		Label13.OwnerScreen     = &Screen3;
MOVW	R1, #lo_addr(_Screen3+0)
MOVT	R1, #hi_addr(_Screen3+0)
MOVW	R0, #lo_addr(_Label13+0)
MOVT	R0, #hi_addr(_Label13+0)
STR	R1, [R0, #0]
;MyProject_driver.c,907 :: 		Label13.Order           = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_Label13+4)
MOVT	R0, #hi_addr(_Label13+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,908 :: 		Label13.Left            = 345;
MOVW	R1, #345
MOVW	R0, #lo_addr(_Label13+6)
MOVT	R0, #hi_addr(_Label13+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,909 :: 		Label13.Top             = 20;
MOVS	R1, #20
MOVW	R0, #lo_addr(_Label13+8)
MOVT	R0, #hi_addr(_Label13+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,910 :: 		Label13.Width           = 111;
MOVS	R1, #111
MOVW	R0, #lo_addr(_Label13+10)
MOVT	R0, #hi_addr(_Label13+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,911 :: 		Label13.Height          = 21;
MOVS	R1, #21
MOVW	R0, #lo_addr(_Label13+12)
MOVT	R0, #hi_addr(_Label13+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,912 :: 		Label13.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label13+27)
MOVT	R0, #hi_addr(_Label13+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,913 :: 		Label13.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label13+28)
MOVT	R0, #hi_addr(_Label13+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,914 :: 		Label13.Caption         = Label13_Caption;
MOVW	R1, #lo_addr(_Label13_Caption+0)
MOVT	R1, #hi_addr(_Label13_Caption+0)
MOVW	R0, #lo_addr(_Label13+16)
MOVT	R0, #hi_addr(_Label13+16)
STR	R1, [R0, #0]
;MyProject_driver.c,915 :: 		Label13.FontName        = Tahoma19x19_Bold;
MOVW	R2, #lo_addr(_Tahoma19x19_Bold+0)
MOVT	R2, #hi_addr(_Tahoma19x19_Bold+0)
MOVW	R0, #lo_addr(_Label13+20)
MOVT	R0, #hi_addr(_Label13+20)
STR	R2, [R0, #0]
;MyProject_driver.c,916 :: 		Label13.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label13+24)
MOVT	R0, #hi_addr(_Label13+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,917 :: 		Label13.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label13+26)
MOVT	R0, #hi_addr(_Label13+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,919 :: 		BoxRound3.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_BoxRound3+0)
MOVT	R0, #hi_addr(_BoxRound3+0)
STR	R1, [R0, #0]
;MyProject_driver.c,920 :: 		BoxRound3.Order           = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BoxRound3+4)
MOVT	R0, #hi_addr(_BoxRound3+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,921 :: 		BoxRound3.Left            = 288;
MOVW	R1, #288
MOVW	R0, #lo_addr(_BoxRound3+6)
MOVT	R0, #hi_addr(_BoxRound3+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,922 :: 		BoxRound3.Top             = 368;
MOVW	R1, #368
MOVW	R0, #lo_addr(_BoxRound3+8)
MOVT	R0, #hi_addr(_BoxRound3+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,923 :: 		BoxRound3.Width           = 225;
MOVS	R1, #225
MOVW	R0, #lo_addr(_BoxRound3+10)
MOVT	R0, #hi_addr(_BoxRound3+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,924 :: 		BoxRound3.Height          = 50;
MOVS	R1, #50
MOVW	R0, #lo_addr(_BoxRound3+12)
MOVT	R0, #hi_addr(_BoxRound3+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,925 :: 		BoxRound3.Pen_Width       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BoxRound3+14)
MOVT	R0, #hi_addr(_BoxRound3+14)
STRB	R1, [R0, #0]
;MyProject_driver.c,926 :: 		BoxRound3.Pen_Color       = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_BoxRound3+16)
MOVT	R0, #hi_addr(_BoxRound3+16)
STRH	R1, [R0, #0]
;MyProject_driver.c,927 :: 		BoxRound3.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BoxRound3+18)
MOVT	R0, #hi_addr(_BoxRound3+18)
STRB	R1, [R0, #0]
;MyProject_driver.c,928 :: 		BoxRound3.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BoxRound3+19)
MOVT	R0, #hi_addr(_BoxRound3+19)
STRB	R1, [R0, #0]
;MyProject_driver.c,929 :: 		BoxRound3.Transparent     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BoxRound3+20)
MOVT	R0, #hi_addr(_BoxRound3+20)
STRB	R1, [R0, #0]
;MyProject_driver.c,930 :: 		BoxRound3.Gradient        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BoxRound3+21)
MOVT	R0, #hi_addr(_BoxRound3+21)
STRB	R1, [R0, #0]
;MyProject_driver.c,931 :: 		BoxRound3.Gradient_Orientation = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BoxRound3+22)
MOVT	R0, #hi_addr(_BoxRound3+22)
STRB	R1, [R0, #0]
;MyProject_driver.c,932 :: 		BoxRound3.Gradient_Start_Color = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_BoxRound3+24)
MOVT	R0, #hi_addr(_BoxRound3+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,933 :: 		BoxRound3.Gradient_End_Color = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_BoxRound3+26)
MOVT	R0, #hi_addr(_BoxRound3+26)
STRH	R1, [R0, #0]
;MyProject_driver.c,934 :: 		BoxRound3.Color           = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BoxRound3+28)
MOVT	R0, #hi_addr(_BoxRound3+28)
STRH	R1, [R0, #0]
;MyProject_driver.c,935 :: 		BoxRound3.PressColEnabled = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BoxRound3+31)
MOVT	R0, #hi_addr(_BoxRound3+31)
STRB	R1, [R0, #0]
;MyProject_driver.c,936 :: 		BoxRound3.Press_Color     = 0xE71C;
MOVW	R1, #59164
MOVW	R0, #lo_addr(_BoxRound3+32)
MOVT	R0, #hi_addr(_BoxRound3+32)
STRH	R1, [R0, #0]
;MyProject_driver.c,937 :: 		BoxRound3.Corner_Radius   = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_BoxRound3+30)
MOVT	R0, #hi_addr(_BoxRound3+30)
STRB	R1, [R0, #0]
;MyProject_driver.c,939 :: 		ButtonRound9.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_ButtonRound9+0)
MOVT	R0, #hi_addr(_ButtonRound9+0)
STR	R1, [R0, #0]
;MyProject_driver.c,940 :: 		ButtonRound9.Order           = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound9+4)
MOVT	R0, #hi_addr(_ButtonRound9+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,941 :: 		ButtonRound9.Left            = 344;
MOVW	R1, #344
MOVW	R0, #lo_addr(_ButtonRound9+6)
MOVT	R0, #hi_addr(_ButtonRound9+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,942 :: 		ButtonRound9.Top             = 433;
MOVW	R1, #433
MOVW	R0, #lo_addr(_ButtonRound9+8)
MOVT	R0, #hi_addr(_ButtonRound9+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,943 :: 		ButtonRound9.Width           = 100;
MOVS	R1, #100
MOVW	R0, #lo_addr(_ButtonRound9+10)
MOVT	R0, #hi_addr(_ButtonRound9+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,944 :: 		ButtonRound9.Height          = 35;
MOVS	R1, #35
MOVW	R0, #lo_addr(_ButtonRound9+12)
MOVT	R0, #hi_addr(_ButtonRound9+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,945 :: 		ButtonRound9.Pen_Width       = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_ButtonRound9+14)
MOVT	R0, #hi_addr(_ButtonRound9+14)
STRB	R1, [R0, #0]
;MyProject_driver.c,946 :: 		ButtonRound9.Pen_Color       = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_ButtonRound9+16)
MOVT	R0, #hi_addr(_ButtonRound9+16)
STRH	R1, [R0, #0]
;MyProject_driver.c,947 :: 		ButtonRound9.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound9+18)
MOVT	R0, #hi_addr(_ButtonRound9+18)
STRB	R1, [R0, #0]
;MyProject_driver.c,948 :: 		ButtonRound9.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound9+19)
MOVT	R0, #hi_addr(_ButtonRound9+19)
STRB	R1, [R0, #0]
;MyProject_driver.c,949 :: 		ButtonRound9.Transparent     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound9+20)
MOVT	R0, #hi_addr(_ButtonRound9+20)
STRB	R1, [R0, #0]
;MyProject_driver.c,950 :: 		ButtonRound9.Caption         = ButtonRound9_Caption;
MOVW	R1, #lo_addr(_ButtonRound9_Caption+0)
MOVT	R1, #hi_addr(_ButtonRound9_Caption+0)
MOVW	R0, #lo_addr(_ButtonRound9+24)
MOVT	R0, #hi_addr(_ButtonRound9+24)
STR	R1, [R0, #0]
;MyProject_driver.c,951 :: 		ButtonRound9.TextAlign       = _taCenter;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound9+28)
MOVT	R0, #hi_addr(_ButtonRound9+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,952 :: 		ButtonRound9.TextAlignVertical= _tavMiddle;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound9+29)
MOVT	R0, #hi_addr(_ButtonRound9+29)
STRB	R1, [R0, #0]
;MyProject_driver.c,953 :: 		ButtonRound9.FontName        = Tahoma12x16_Regular;
MOVW	R0, #lo_addr(_ButtonRound9+32)
MOVT	R0, #hi_addr(_ButtonRound9+32)
STR	R3, [R0, #0]
;MyProject_driver.c,954 :: 		ButtonRound9.PressColEnabled = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound9+49)
MOVT	R0, #hi_addr(_ButtonRound9+49)
STRB	R1, [R0, #0]
;MyProject_driver.c,955 :: 		ButtonRound9.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound9+36)
MOVT	R0, #hi_addr(_ButtonRound9+36)
STRH	R1, [R0, #0]
;MyProject_driver.c,956 :: 		ButtonRound9.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound9+38)
MOVT	R0, #hi_addr(_ButtonRound9+38)
STRB	R1, [R0, #0]
;MyProject_driver.c,957 :: 		ButtonRound9.Gradient        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound9+39)
MOVT	R0, #hi_addr(_ButtonRound9+39)
STRB	R1, [R0, #0]
;MyProject_driver.c,958 :: 		ButtonRound9.Gradient_Orientation = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound9+40)
MOVT	R0, #hi_addr(_ButtonRound9+40)
STRB	R1, [R0, #0]
;MyProject_driver.c,959 :: 		ButtonRound9.Gradient_Start_Color = 0x632C;
MOVW	R1, #25388
MOVW	R0, #lo_addr(_ButtonRound9+42)
MOVT	R0, #hi_addr(_ButtonRound9+42)
STRH	R1, [R0, #0]
;MyProject_driver.c,960 :: 		ButtonRound9.Gradient_End_Color = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound9+44)
MOVT	R0, #hi_addr(_ButtonRound9+44)
STRH	R1, [R0, #0]
;MyProject_driver.c,961 :: 		ButtonRound9.Color           = 0xFFE0;
MOVW	R1, #65504
MOVW	R0, #lo_addr(_ButtonRound9+46)
MOVT	R0, #hi_addr(_ButtonRound9+46)
STRH	R1, [R0, #0]
;MyProject_driver.c,962 :: 		ButtonRound9.Press_Color     = 0xE71C;
MOVW	R1, #59164
MOVW	R0, #lo_addr(_ButtonRound9+50)
MOVT	R0, #hi_addr(_ButtonRound9+50)
STRH	R1, [R0, #0]
;MyProject_driver.c,963 :: 		ButtonRound9.Corner_Radius   = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_ButtonRound9+48)
MOVT	R0, #hi_addr(_ButtonRound9+48)
STRB	R1, [R0, #0]
;MyProject_driver.c,964 :: 		ButtonRound9.OnClickPtr      = ButtonRound7OnClick;
MOVW	R1, #lo_addr(_ButtonRound7OnClick+0)
MOVT	R1, #hi_addr(_ButtonRound7OnClick+0)
MOVW	R0, #lo_addr(_ButtonRound9+60)
MOVT	R0, #hi_addr(_ButtonRound9+60)
STR	R1, [R0, #0]
;MyProject_driver.c,966 :: 		Box4.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_Box4+0)
MOVT	R0, #hi_addr(_Box4+0)
STR	R1, [R0, #0]
;MyProject_driver.c,967 :: 		Box4.Order           = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_Box4+4)
MOVT	R0, #hi_addr(_Box4+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,968 :: 		Box4.Left            = 10;
MOVS	R1, #10
MOVW	R0, #lo_addr(_Box4+6)
MOVT	R0, #hi_addr(_Box4+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,969 :: 		Box4.Top             = 10;
MOVS	R1, #10
MOVW	R0, #lo_addr(_Box4+8)
MOVT	R0, #hi_addr(_Box4+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,970 :: 		Box4.Width           = 780;
MOVW	R1, #780
MOVW	R0, #lo_addr(_Box4+10)
MOVT	R0, #hi_addr(_Box4+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,971 :: 		Box4.Height          = 347;
MOVW	R1, #347
MOVW	R0, #lo_addr(_Box4+12)
MOVT	R0, #hi_addr(_Box4+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,972 :: 		Box4.Pen_Width       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box4+14)
MOVT	R0, #hi_addr(_Box4+14)
STRB	R1, [R0, #0]
;MyProject_driver.c,973 :: 		Box4.Pen_Color       = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Box4+16)
MOVT	R0, #hi_addr(_Box4+16)
STRH	R1, [R0, #0]
;MyProject_driver.c,974 :: 		Box4.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box4+18)
MOVT	R0, #hi_addr(_Box4+18)
STRB	R1, [R0, #0]
;MyProject_driver.c,975 :: 		Box4.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box4+19)
MOVT	R0, #hi_addr(_Box4+19)
STRB	R1, [R0, #0]
;MyProject_driver.c,976 :: 		Box4.Transparent     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box4+20)
MOVT	R0, #hi_addr(_Box4+20)
STRB	R1, [R0, #0]
;MyProject_driver.c,977 :: 		Box4.Gradient        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box4+21)
MOVT	R0, #hi_addr(_Box4+21)
STRB	R1, [R0, #0]
;MyProject_driver.c,978 :: 		Box4.Gradient_Orientation = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box4+22)
MOVT	R0, #hi_addr(_Box4+22)
STRB	R1, [R0, #0]
;MyProject_driver.c,979 :: 		Box4.Gradient_Start_Color = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Box4+24)
MOVT	R0, #hi_addr(_Box4+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,980 :: 		Box4.Gradient_End_Color = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_Box4+26)
MOVT	R0, #hi_addr(_Box4+26)
STRH	R1, [R0, #0]
;MyProject_driver.c,981 :: 		Box4.Color           = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box4+28)
MOVT	R0, #hi_addr(_Box4+28)
STRH	R1, [R0, #0]
;MyProject_driver.c,982 :: 		Box4.PressColEnabled = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box4+30)
MOVT	R0, #hi_addr(_Box4+30)
STRB	R1, [R0, #0]
;MyProject_driver.c,983 :: 		Box4.Press_Color     = 0xE71C;
MOVW	R1, #59164
MOVW	R0, #lo_addr(_Box4+32)
MOVT	R0, #hi_addr(_Box4+32)
STRH	R1, [R0, #0]
;MyProject_driver.c,985 :: 		Label16.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_Label16+0)
MOVT	R0, #hi_addr(_Label16+0)
STR	R1, [R0, #0]
;MyProject_driver.c,986 :: 		Label16.Order           = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_Label16+4)
MOVT	R0, #hi_addr(_Label16+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,987 :: 		Label16.Left            = 345;
MOVW	R1, #345
MOVW	R0, #lo_addr(_Label16+6)
MOVT	R0, #hi_addr(_Label16+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,988 :: 		Label16.Top             = 19;
MOVS	R1, #19
MOVW	R0, #lo_addr(_Label16+8)
MOVT	R0, #hi_addr(_Label16+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,989 :: 		Label16.Width           = 111;
MOVS	R1, #111
MOVW	R0, #lo_addr(_Label16+10)
MOVT	R0, #hi_addr(_Label16+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,990 :: 		Label16.Height          = 21;
MOVS	R1, #21
MOVW	R0, #lo_addr(_Label16+12)
MOVT	R0, #hi_addr(_Label16+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,991 :: 		Label16.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label16+27)
MOVT	R0, #hi_addr(_Label16+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,992 :: 		Label16.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label16+28)
MOVT	R0, #hi_addr(_Label16+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,993 :: 		Label16.Caption         = Label16_Caption;
MOVW	R1, #lo_addr(_Label16_Caption+0)
MOVT	R1, #hi_addr(_Label16_Caption+0)
MOVW	R0, #lo_addr(_Label16+16)
MOVT	R0, #hi_addr(_Label16+16)
STR	R1, [R0, #0]
;MyProject_driver.c,994 :: 		Label16.FontName        = Tahoma19x19_Bold;
MOVW	R0, #lo_addr(_Label16+20)
MOVT	R0, #hi_addr(_Label16+20)
STR	R2, [R0, #0]
;MyProject_driver.c,995 :: 		Label16.Font_Color      = 0xF800;
MOVW	R1, #63488
MOVW	R0, #lo_addr(_Label16+24)
MOVT	R0, #hi_addr(_Label16+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,996 :: 		Label16.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label16+26)
MOVT	R0, #hi_addr(_Label16+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,998 :: 		Label17.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_Label17+0)
MOVT	R0, #hi_addr(_Label17+0)
STR	R1, [R0, #0]
;MyProject_driver.c,999 :: 		Label17.Order           = 4;
MOVS	R1, #4
MOVW	R0, #lo_addr(_Label17+4)
MOVT	R0, #hi_addr(_Label17+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,1000 :: 		Label17.Left            = 293;
MOVW	R1, #293
MOVW	R0, #lo_addr(_Label17+6)
MOVT	R0, #hi_addr(_Label17+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,1001 :: 		Label17.Top             = 375;
MOVW	R1, #375
MOVW	R0, #lo_addr(_Label17+8)
MOVT	R0, #hi_addr(_Label17+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,1002 :: 		Label17.Width           = 112;
MOVS	R1, #112
MOVW	R0, #lo_addr(_Label17+10)
MOVT	R0, #hi_addr(_Label17+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,1003 :: 		Label17.Height          = 35;
MOVS	R1, #35
MOVW	R0, #lo_addr(_Label17+12)
MOVT	R0, #hi_addr(_Label17+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,1004 :: 		Label17.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label17+27)
MOVT	R0, #hi_addr(_Label17+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,1005 :: 		Label17.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label17+28)
MOVT	R0, #hi_addr(_Label17+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,1006 :: 		Label17.Caption         = Label17_Caption;
MOVW	R1, #lo_addr(_Label17_Caption+0)
MOVT	R1, #hi_addr(_Label17_Caption+0)
MOVW	R0, #lo_addr(_Label17+16)
MOVT	R0, #hi_addr(_Label17+16)
STR	R1, [R0, #0]
;MyProject_driver.c,1007 :: 		Label17.FontName        = Helvetica27x31_Regular;
MOVW	R1, #lo_addr(_Helvetica27x31_Regular+0)
MOVT	R1, #hi_addr(_Helvetica27x31_Regular+0)
MOVW	R0, #lo_addr(_Label17+20)
MOVT	R0, #hi_addr(_Label17+20)
STR	R1, [R0, #0]
;MyProject_driver.c,1008 :: 		Label17.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label17+24)
MOVT	R0, #hi_addr(_Label17+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,1009 :: 		Label17.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label17+26)
MOVT	R0, #hi_addr(_Label17+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,1011 :: 		Label19.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_Label19+0)
MOVT	R0, #hi_addr(_Label19+0)
STR	R1, [R0, #0]
;MyProject_driver.c,1012 :: 		Label19.Order           = 5;
MOVS	R1, #5
MOVW	R0, #lo_addr(_Label19+4)
MOVT	R0, #hi_addr(_Label19+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,1013 :: 		Label19.Left            = 35;
MOVS	R1, #35
MOVW	R0, #lo_addr(_Label19+6)
MOVT	R0, #hi_addr(_Label19+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,1014 :: 		Label19.Top             = 60;
MOVS	R1, #60
MOVW	R0, #lo_addr(_Label19+8)
MOVT	R0, #hi_addr(_Label19+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,1015 :: 		Label19.Width           = 70;
MOVS	R1, #70
MOVW	R0, #lo_addr(_Label19+10)
MOVT	R0, #hi_addr(_Label19+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,1016 :: 		Label19.Height          = 32;
MOVS	R1, #32
MOVW	R0, #lo_addr(_Label19+12)
MOVT	R0, #hi_addr(_Label19+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,1017 :: 		Label19.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label19+27)
MOVT	R0, #hi_addr(_Label19+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,1018 :: 		Label19.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label19+28)
MOVT	R0, #hi_addr(_Label19+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,1019 :: 		Label19.Caption         = Label19_Caption;
MOVW	R1, #lo_addr(_Label19_Caption+0)
MOVT	R1, #hi_addr(_Label19_Caption+0)
MOVW	R0, #lo_addr(_Label19+16)
MOVT	R0, #hi_addr(_Label19+16)
STR	R1, [R0, #0]
;MyProject_driver.c,1020 :: 		Label19.FontName        = Tahoma23x29_Regular;
MOVW	R2, #lo_addr(_Tahoma23x29_Regular+0)
MOVT	R2, #hi_addr(_Tahoma23x29_Regular+0)
MOVW	R0, #lo_addr(_Label19+20)
MOVT	R0, #hi_addr(_Label19+20)
STR	R2, [R0, #0]
;MyProject_driver.c,1021 :: 		Label19.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label19+24)
MOVT	R0, #hi_addr(_Label19+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,1022 :: 		Label19.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label19+26)
MOVT	R0, #hi_addr(_Label19+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,1024 :: 		Label20.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_Label20+0)
MOVT	R0, #hi_addr(_Label20+0)
STR	R1, [R0, #0]
;MyProject_driver.c,1025 :: 		Label20.Order           = 6;
MOVS	R1, #6
MOVW	R0, #lo_addr(_Label20+4)
MOVT	R0, #hi_addr(_Label20+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,1026 :: 		Label20.Left            = 35;
MOVS	R1, #35
MOVW	R0, #lo_addr(_Label20+6)
MOVT	R0, #hi_addr(_Label20+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,1027 :: 		Label20.Top             = 120;
MOVS	R1, #120
MOVW	R0, #lo_addr(_Label20+8)
MOVT	R0, #hi_addr(_Label20+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,1028 :: 		Label20.Width           = 58;
MOVS	R1, #58
MOVW	R0, #lo_addr(_Label20+10)
MOVT	R0, #hi_addr(_Label20+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,1029 :: 		Label20.Height          = 32;
MOVS	R1, #32
MOVW	R0, #lo_addr(_Label20+12)
MOVT	R0, #hi_addr(_Label20+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,1030 :: 		Label20.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label20+27)
MOVT	R0, #hi_addr(_Label20+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,1031 :: 		Label20.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label20+28)
MOVT	R0, #hi_addr(_Label20+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,1032 :: 		Label20.Caption         = Label20_Caption;
MOVW	R1, #lo_addr(_Label20_Caption+0)
MOVT	R1, #hi_addr(_Label20_Caption+0)
MOVW	R0, #lo_addr(_Label20+16)
MOVT	R0, #hi_addr(_Label20+16)
STR	R1, [R0, #0]
;MyProject_driver.c,1033 :: 		Label20.FontName        = Tahoma23x29_Regular;
MOVW	R0, #lo_addr(_Label20+20)
MOVT	R0, #hi_addr(_Label20+20)
STR	R2, [R0, #0]
;MyProject_driver.c,1034 :: 		Label20.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label20+24)
MOVT	R0, #hi_addr(_Label20+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,1035 :: 		Label20.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label20+26)
MOVT	R0, #hi_addr(_Label20+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,1037 :: 		Label21.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_Label21+0)
MOVT	R0, #hi_addr(_Label21+0)
STR	R1, [R0, #0]
;MyProject_driver.c,1038 :: 		Label21.Order           = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_Label21+4)
MOVT	R0, #hi_addr(_Label21+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,1039 :: 		Label21.Left            = 35;
MOVS	R1, #35
MOVW	R0, #lo_addr(_Label21+6)
MOVT	R0, #hi_addr(_Label21+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,1040 :: 		Label21.Top             = 180;
MOVS	R1, #180
MOVW	R0, #lo_addr(_Label21+8)
MOVT	R0, #hi_addr(_Label21+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,1041 :: 		Label21.Width           = 70;
MOVS	R1, #70
MOVW	R0, #lo_addr(_Label21+10)
MOVT	R0, #hi_addr(_Label21+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,1042 :: 		Label21.Height          = 32;
MOVS	R1, #32
MOVW	R0, #lo_addr(_Label21+12)
MOVT	R0, #hi_addr(_Label21+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,1043 :: 		Label21.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label21+27)
MOVT	R0, #hi_addr(_Label21+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,1044 :: 		Label21.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label21+28)
MOVT	R0, #hi_addr(_Label21+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,1045 :: 		Label21.Caption         = Label21_Caption;
MOVW	R1, #lo_addr(_Label21_Caption+0)
MOVT	R1, #hi_addr(_Label21_Caption+0)
MOVW	R0, #lo_addr(_Label21+16)
MOVT	R0, #hi_addr(_Label21+16)
STR	R1, [R0, #0]
;MyProject_driver.c,1046 :: 		Label21.FontName        = Tahoma23x29_Regular;
MOVW	R0, #lo_addr(_Label21+20)
MOVT	R0, #hi_addr(_Label21+20)
STR	R2, [R0, #0]
;MyProject_driver.c,1047 :: 		Label21.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label21+24)
MOVT	R0, #hi_addr(_Label21+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,1048 :: 		Label21.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label21+26)
MOVT	R0, #hi_addr(_Label21+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,1050 :: 		Label22.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_Label22+0)
MOVT	R0, #hi_addr(_Label22+0)
STR	R1, [R0, #0]
;MyProject_driver.c,1051 :: 		Label22.Order           = 8;
MOVS	R1, #8
MOVW	R0, #lo_addr(_Label22+4)
MOVT	R0, #hi_addr(_Label22+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,1052 :: 		Label22.Left            = 35;
MOVS	R1, #35
MOVW	R0, #lo_addr(_Label22+6)
MOVT	R0, #hi_addr(_Label22+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,1053 :: 		Label22.Top             = 240;
MOVS	R1, #240
MOVW	R0, #lo_addr(_Label22+8)
MOVT	R0, #hi_addr(_Label22+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,1054 :: 		Label22.Width           = 80;
MOVS	R1, #80
MOVW	R0, #lo_addr(_Label22+10)
MOVT	R0, #hi_addr(_Label22+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,1055 :: 		Label22.Height          = 32;
MOVS	R1, #32
MOVW	R0, #lo_addr(_Label22+12)
MOVT	R0, #hi_addr(_Label22+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,1056 :: 		Label22.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label22+27)
MOVT	R0, #hi_addr(_Label22+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,1057 :: 		Label22.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label22+28)
MOVT	R0, #hi_addr(_Label22+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,1058 :: 		Label22.Caption         = Label22_Caption;
MOVW	R1, #lo_addr(_Label22_Caption+0)
MOVT	R1, #hi_addr(_Label22_Caption+0)
MOVW	R0, #lo_addr(_Label22+16)
MOVT	R0, #hi_addr(_Label22+16)
STR	R1, [R0, #0]
;MyProject_driver.c,1059 :: 		Label22.FontName        = Tahoma23x29_Regular;
MOVW	R0, #lo_addr(_Label22+20)
MOVT	R0, #hi_addr(_Label22+20)
STR	R2, [R0, #0]
;MyProject_driver.c,1060 :: 		Label22.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label22+24)
MOVT	R0, #hi_addr(_Label22+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,1061 :: 		Label22.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label22+26)
MOVT	R0, #hi_addr(_Label22+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,1063 :: 		Label23.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_Label23+0)
MOVT	R0, #hi_addr(_Label23+0)
STR	R1, [R0, #0]
;MyProject_driver.c,1064 :: 		Label23.Order           = 9;
MOVS	R1, #9
MOVW	R0, #lo_addr(_Label23+4)
MOVT	R0, #hi_addr(_Label23+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,1065 :: 		Label23.Left            = 35;
MOVS	R1, #35
MOVW	R0, #lo_addr(_Label23+6)
MOVT	R0, #hi_addr(_Label23+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,1066 :: 		Label23.Top             = 300;
MOVW	R1, #300
MOVW	R0, #lo_addr(_Label23+8)
MOVT	R0, #hi_addr(_Label23+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,1067 :: 		Label23.Width           = 41;
MOVS	R1, #41
MOVW	R0, #lo_addr(_Label23+10)
MOVT	R0, #hi_addr(_Label23+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,1068 :: 		Label23.Height          = 32;
MOVS	R1, #32
MOVW	R0, #lo_addr(_Label23+12)
MOVT	R0, #hi_addr(_Label23+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,1069 :: 		Label23.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label23+27)
MOVT	R0, #hi_addr(_Label23+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,1070 :: 		Label23.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label23+28)
MOVT	R0, #hi_addr(_Label23+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,1071 :: 		Label23.Caption         = Label23_Caption;
MOVW	R1, #lo_addr(_Label23_Caption+0)
MOVT	R1, #hi_addr(_Label23_Caption+0)
MOVW	R0, #lo_addr(_Label23+16)
MOVT	R0, #hi_addr(_Label23+16)
STR	R1, [R0, #0]
;MyProject_driver.c,1072 :: 		Label23.FontName        = Tahoma23x29_Regular;
MOVW	R0, #lo_addr(_Label23+20)
MOVT	R0, #hi_addr(_Label23+20)
STR	R2, [R0, #0]
;MyProject_driver.c,1073 :: 		Label23.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label23+24)
MOVT	R0, #hi_addr(_Label23+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,1074 :: 		Label23.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label23+26)
MOVT	R0, #hi_addr(_Label23+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,1076 :: 		Label24.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_Label24+0)
MOVT	R0, #hi_addr(_Label24+0)
STR	R1, [R0, #0]
;MyProject_driver.c,1077 :: 		Label24.Order           = 10;
MOVS	R1, #10
MOVW	R0, #lo_addr(_Label24+4)
MOVT	R0, #hi_addr(_Label24+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,1078 :: 		Label24.Left            = 500;
MOVW	R1, #500
MOVW	R0, #lo_addr(_Label24+6)
MOVT	R0, #hi_addr(_Label24+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,1079 :: 		Label24.Top             = 60;
MOVS	R1, #60
MOVW	R0, #lo_addr(_Label24+8)
MOVT	R0, #hi_addr(_Label24+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,1080 :: 		Label24.Width           = 70;
MOVS	R1, #70
MOVW	R0, #lo_addr(_Label24+10)
MOVT	R0, #hi_addr(_Label24+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,1081 :: 		Label24.Height          = 32;
MOVS	R1, #32
MOVW	R0, #lo_addr(_Label24+12)
MOVT	R0, #hi_addr(_Label24+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,1082 :: 		Label24.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label24+27)
MOVT	R0, #hi_addr(_Label24+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,1083 :: 		Label24.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label24+28)
MOVT	R0, #hi_addr(_Label24+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,1084 :: 		Label24.Caption         = Label24_Caption;
MOVW	R1, #lo_addr(_Label24_Caption+0)
MOVT	R1, #hi_addr(_Label24_Caption+0)
MOVW	R0, #lo_addr(_Label24+16)
MOVT	R0, #hi_addr(_Label24+16)
STR	R1, [R0, #0]
;MyProject_driver.c,1085 :: 		Label24.FontName        = Tahoma23x29_Regular;
MOVW	R0, #lo_addr(_Label24+20)
MOVT	R0, #hi_addr(_Label24+20)
STR	R2, [R0, #0]
;MyProject_driver.c,1086 :: 		Label24.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label24+24)
MOVT	R0, #hi_addr(_Label24+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,1087 :: 		Label24.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label24+26)
MOVT	R0, #hi_addr(_Label24+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,1089 :: 		Label25.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_Label25+0)
MOVT	R0, #hi_addr(_Label25+0)
STR	R1, [R0, #0]
;MyProject_driver.c,1090 :: 		Label25.Order           = 11;
MOVS	R1, #11
MOVW	R0, #lo_addr(_Label25+4)
MOVT	R0, #hi_addr(_Label25+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,1091 :: 		Label25.Left            = 500;
MOVW	R1, #500
MOVW	R0, #lo_addr(_Label25+6)
MOVT	R0, #hi_addr(_Label25+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,1092 :: 		Label25.Top             = 120;
MOVS	R1, #120
MOVW	R0, #lo_addr(_Label25+8)
MOVT	R0, #hi_addr(_Label25+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,1093 :: 		Label25.Width           = 70;
MOVS	R1, #70
MOVW	R0, #lo_addr(_Label25+10)
MOVT	R0, #hi_addr(_Label25+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,1094 :: 		Label25.Height          = 32;
MOVS	R1, #32
MOVW	R0, #lo_addr(_Label25+12)
MOVT	R0, #hi_addr(_Label25+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,1095 :: 		Label25.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label25+27)
MOVT	R0, #hi_addr(_Label25+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,1096 :: 		Label25.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label25+28)
MOVT	R0, #hi_addr(_Label25+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,1097 :: 		Label25.Caption         = Label25_Caption;
MOVW	R1, #lo_addr(_Label25_Caption+0)
MOVT	R1, #hi_addr(_Label25_Caption+0)
MOVW	R0, #lo_addr(_Label25+16)
MOVT	R0, #hi_addr(_Label25+16)
STR	R1, [R0, #0]
;MyProject_driver.c,1098 :: 		Label25.FontName        = Tahoma23x29_Regular;
MOVW	R0, #lo_addr(_Label25+20)
MOVT	R0, #hi_addr(_Label25+20)
STR	R2, [R0, #0]
;MyProject_driver.c,1099 :: 		Label25.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label25+24)
MOVT	R0, #hi_addr(_Label25+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,1100 :: 		Label25.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label25+26)
MOVT	R0, #hi_addr(_Label25+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,1102 :: 		Label26.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_Label26+0)
MOVT	R0, #hi_addr(_Label26+0)
STR	R1, [R0, #0]
;MyProject_driver.c,1103 :: 		Label26.Order           = 12;
MOVS	R1, #12
MOVW	R0, #lo_addr(_Label26+4)
MOVT	R0, #hi_addr(_Label26+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,1104 :: 		Label26.Left            = 500;
MOVW	R1, #500
MOVW	R0, #lo_addr(_Label26+6)
MOVT	R0, #hi_addr(_Label26+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,1105 :: 		Label26.Top             = 180;
MOVS	R1, #180
MOVW	R0, #lo_addr(_Label26+8)
MOVT	R0, #hi_addr(_Label26+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,1106 :: 		Label26.Width           = 80;
MOVS	R1, #80
MOVW	R0, #lo_addr(_Label26+10)
MOVT	R0, #hi_addr(_Label26+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,1107 :: 		Label26.Height          = 32;
MOVS	R1, #32
MOVW	R0, #lo_addr(_Label26+12)
MOVT	R0, #hi_addr(_Label26+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,1108 :: 		Label26.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label26+27)
MOVT	R0, #hi_addr(_Label26+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,1109 :: 		Label26.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label26+28)
MOVT	R0, #hi_addr(_Label26+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,1110 :: 		Label26.Caption         = Label26_Caption;
MOVW	R1, #lo_addr(_Label26_Caption+0)
MOVT	R1, #hi_addr(_Label26_Caption+0)
MOVW	R0, #lo_addr(_Label26+16)
MOVT	R0, #hi_addr(_Label26+16)
STR	R1, [R0, #0]
;MyProject_driver.c,1111 :: 		Label26.FontName        = Tahoma23x29_Regular;
MOVW	R0, #lo_addr(_Label26+20)
MOVT	R0, #hi_addr(_Label26+20)
STR	R2, [R0, #0]
;MyProject_driver.c,1112 :: 		Label26.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label26+24)
MOVT	R0, #hi_addr(_Label26+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,1113 :: 		Label26.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label26+26)
MOVT	R0, #hi_addr(_Label26+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,1115 :: 		Label27.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_Label27+0)
MOVT	R0, #hi_addr(_Label27+0)
STR	R1, [R0, #0]
;MyProject_driver.c,1116 :: 		Label27.Order           = 13;
MOVS	R1, #13
MOVW	R0, #lo_addr(_Label27+4)
MOVT	R0, #hi_addr(_Label27+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,1117 :: 		Label27.Left            = 500;
MOVW	R1, #500
MOVW	R0, #lo_addr(_Label27+6)
MOVT	R0, #hi_addr(_Label27+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,1118 :: 		Label27.Top             = 240;
MOVS	R1, #240
MOVW	R0, #lo_addr(_Label27+8)
MOVT	R0, #hi_addr(_Label27+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,1119 :: 		Label27.Width           = 63;
MOVS	R1, #63
MOVW	R0, #lo_addr(_Label27+10)
MOVT	R0, #hi_addr(_Label27+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,1120 :: 		Label27.Height          = 32;
MOVS	R1, #32
MOVW	R0, #lo_addr(_Label27+12)
MOVT	R0, #hi_addr(_Label27+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,1121 :: 		Label27.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label27+27)
MOVT	R0, #hi_addr(_Label27+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,1122 :: 		Label27.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label27+28)
MOVT	R0, #hi_addr(_Label27+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,1123 :: 		Label27.Caption         = Label27_Caption;
MOVW	R1, #lo_addr(_Label27_Caption+0)
MOVT	R1, #hi_addr(_Label27_Caption+0)
MOVW	R0, #lo_addr(_Label27+16)
MOVT	R0, #hi_addr(_Label27+16)
STR	R1, [R0, #0]
;MyProject_driver.c,1124 :: 		Label27.FontName        = Tahoma23x29_Regular;
MOVW	R0, #lo_addr(_Label27+20)
MOVT	R0, #hi_addr(_Label27+20)
STR	R2, [R0, #0]
;MyProject_driver.c,1125 :: 		Label27.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label27+24)
MOVT	R0, #hi_addr(_Label27+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,1126 :: 		Label27.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label27+26)
MOVT	R0, #hi_addr(_Label27+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,1128 :: 		Label28.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_Label28+0)
MOVT	R0, #hi_addr(_Label28+0)
STR	R1, [R0, #0]
;MyProject_driver.c,1129 :: 		Label28.Order           = 14;
MOVS	R1, #14
MOVW	R0, #lo_addr(_Label28+4)
MOVT	R0, #hi_addr(_Label28+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,1130 :: 		Label28.Left            = 500;
MOVW	R1, #500
MOVW	R0, #lo_addr(_Label28+6)
MOVT	R0, #hi_addr(_Label28+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,1131 :: 		Label28.Top             = 300;
MOVW	R1, #300
MOVW	R0, #lo_addr(_Label28+8)
MOVT	R0, #hi_addr(_Label28+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,1132 :: 		Label28.Width           = 63;
MOVS	R1, #63
MOVW	R0, #lo_addr(_Label28+10)
MOVT	R0, #hi_addr(_Label28+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,1133 :: 		Label28.Height          = 32;
MOVS	R1, #32
MOVW	R0, #lo_addr(_Label28+12)
MOVT	R0, #hi_addr(_Label28+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,1134 :: 		Label28.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label28+27)
MOVT	R0, #hi_addr(_Label28+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,1135 :: 		Label28.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label28+28)
MOVT	R0, #hi_addr(_Label28+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,1136 :: 		Label28.Caption         = Label28_Caption;
MOVW	R1, #lo_addr(_Label28_Caption+0)
MOVT	R1, #hi_addr(_Label28_Caption+0)
MOVW	R0, #lo_addr(_Label28+16)
MOVT	R0, #hi_addr(_Label28+16)
STR	R1, [R0, #0]
;MyProject_driver.c,1137 :: 		Label28.FontName        = Tahoma23x29_Regular;
MOVW	R0, #lo_addr(_Label28+20)
MOVT	R0, #hi_addr(_Label28+20)
STR	R2, [R0, #0]
;MyProject_driver.c,1138 :: 		Label28.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label28+24)
MOVT	R0, #hi_addr(_Label28+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,1139 :: 		Label28.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label28+26)
MOVT	R0, #hi_addr(_Label28+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,1141 :: 		Label29.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_Label29+0)
MOVT	R0, #hi_addr(_Label29+0)
STR	R1, [R0, #0]
;MyProject_driver.c,1142 :: 		Label29.Order           = 15;
MOVS	R1, #15
MOVW	R0, #lo_addr(_Label29+4)
MOVT	R0, #hi_addr(_Label29+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,1143 :: 		Label29.Left            = 120;
MOVS	R1, #120
MOVW	R0, #lo_addr(_Label29+6)
MOVT	R0, #hi_addr(_Label29+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,1144 :: 		Label29.Top             = 60;
MOVS	R1, #60
MOVW	R0, #lo_addr(_Label29+8)
MOVT	R0, #hi_addr(_Label29+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,1145 :: 		Label29.Width           = 26;
MOVS	R1, #26
MOVW	R0, #lo_addr(_Label29+10)
MOVT	R0, #hi_addr(_Label29+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,1146 :: 		Label29.Height          = 32;
MOVS	R1, #32
MOVW	R0, #lo_addr(_Label29+12)
MOVT	R0, #hi_addr(_Label29+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,1147 :: 		Label29.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label29+27)
MOVT	R0, #hi_addr(_Label29+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,1148 :: 		Label29.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label29+28)
MOVT	R0, #hi_addr(_Label29+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,1149 :: 		Label29.Caption         = Label29_Caption;
MOVW	R1, #lo_addr(_Label29_Caption+0)
MOVT	R1, #hi_addr(_Label29_Caption+0)
MOVW	R0, #lo_addr(_Label29+16)
MOVT	R0, #hi_addr(_Label29+16)
STR	R1, [R0, #0]
;MyProject_driver.c,1150 :: 		Label29.FontName        = Tahoma23x29_Regular;
MOVW	R0, #lo_addr(_Label29+20)
MOVT	R0, #hi_addr(_Label29+20)
STR	R2, [R0, #0]
;MyProject_driver.c,1151 :: 		Label29.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label29+24)
MOVT	R0, #hi_addr(_Label29+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,1152 :: 		Label29.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label29+26)
MOVT	R0, #hi_addr(_Label29+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,1154 :: 		Label30.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_Label30+0)
MOVT	R0, #hi_addr(_Label30+0)
STR	R1, [R0, #0]
;MyProject_driver.c,1155 :: 		Label30.Order           = 16;
MOVS	R1, #16
MOVW	R0, #lo_addr(_Label30+4)
MOVT	R0, #hi_addr(_Label30+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,1156 :: 		Label30.Left            = 120;
MOVS	R1, #120
MOVW	R0, #lo_addr(_Label30+6)
MOVT	R0, #hi_addr(_Label30+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,1157 :: 		Label30.Top             = 120;
MOVS	R1, #120
MOVW	R0, #lo_addr(_Label30+8)
MOVT	R0, #hi_addr(_Label30+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,1158 :: 		Label30.Width           = 26;
MOVS	R1, #26
MOVW	R0, #lo_addr(_Label30+10)
MOVT	R0, #hi_addr(_Label30+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,1159 :: 		Label30.Height          = 32;
MOVS	R1, #32
MOVW	R0, #lo_addr(_Label30+12)
MOVT	R0, #hi_addr(_Label30+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,1160 :: 		Label30.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label30+27)
MOVT	R0, #hi_addr(_Label30+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,1161 :: 		Label30.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label30+28)
MOVT	R0, #hi_addr(_Label30+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,1162 :: 		Label30.Caption         = Label30_Caption;
MOVW	R1, #lo_addr(_Label30_Caption+0)
MOVT	R1, #hi_addr(_Label30_Caption+0)
MOVW	R0, #lo_addr(_Label30+16)
MOVT	R0, #hi_addr(_Label30+16)
STR	R1, [R0, #0]
;MyProject_driver.c,1163 :: 		Label30.FontName        = Tahoma23x29_Regular;
MOVW	R0, #lo_addr(_Label30+20)
MOVT	R0, #hi_addr(_Label30+20)
STR	R2, [R0, #0]
;MyProject_driver.c,1164 :: 		Label30.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label30+24)
MOVT	R0, #hi_addr(_Label30+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,1165 :: 		Label30.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label30+26)
MOVT	R0, #hi_addr(_Label30+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,1167 :: 		Label31.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_Label31+0)
MOVT	R0, #hi_addr(_Label31+0)
STR	R1, [R0, #0]
;MyProject_driver.c,1168 :: 		Label31.Order           = 17;
MOVS	R1, #17
MOVW	R0, #lo_addr(_Label31+4)
MOVT	R0, #hi_addr(_Label31+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,1169 :: 		Label31.Left            = 120;
MOVS	R1, #120
MOVW	R0, #lo_addr(_Label31+6)
MOVT	R0, #hi_addr(_Label31+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,1170 :: 		Label31.Top             = 180;
MOVS	R1, #180
MOVW	R0, #lo_addr(_Label31+8)
MOVT	R0, #hi_addr(_Label31+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,1171 :: 		Label31.Width           = 26;
MOVS	R1, #26
MOVW	R0, #lo_addr(_Label31+10)
MOVT	R0, #hi_addr(_Label31+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,1172 :: 		Label31.Height          = 32;
MOVS	R1, #32
MOVW	R0, #lo_addr(_Label31+12)
MOVT	R0, #hi_addr(_Label31+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,1173 :: 		Label31.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label31+27)
MOVT	R0, #hi_addr(_Label31+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,1174 :: 		Label31.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label31+28)
MOVT	R0, #hi_addr(_Label31+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,1175 :: 		Label31.Caption         = Label31_Caption;
MOVW	R1, #lo_addr(_Label31_Caption+0)
MOVT	R1, #hi_addr(_Label31_Caption+0)
MOVW	R0, #lo_addr(_Label31+16)
MOVT	R0, #hi_addr(_Label31+16)
STR	R1, [R0, #0]
;MyProject_driver.c,1176 :: 		Label31.FontName        = Tahoma23x29_Regular;
MOVW	R0, #lo_addr(_Label31+20)
MOVT	R0, #hi_addr(_Label31+20)
STR	R2, [R0, #0]
;MyProject_driver.c,1177 :: 		Label31.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label31+24)
MOVT	R0, #hi_addr(_Label31+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,1178 :: 		Label31.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label31+26)
MOVT	R0, #hi_addr(_Label31+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,1180 :: 		Label32.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_Label32+0)
MOVT	R0, #hi_addr(_Label32+0)
STR	R1, [R0, #0]
;MyProject_driver.c,1181 :: 		Label32.Order           = 18;
MOVS	R1, #18
MOVW	R0, #lo_addr(_Label32+4)
MOVT	R0, #hi_addr(_Label32+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,1182 :: 		Label32.Left            = 120;
MOVS	R1, #120
MOVW	R0, #lo_addr(_Label32+6)
MOVT	R0, #hi_addr(_Label32+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,1183 :: 		Label32.Top             = 240;
MOVS	R1, #240
MOVW	R0, #lo_addr(_Label32+8)
MOVT	R0, #hi_addr(_Label32+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,1184 :: 		Label32.Width           = 26;
MOVS	R1, #26
MOVW	R0, #lo_addr(_Label32+10)
MOVT	R0, #hi_addr(_Label32+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,1185 :: 		Label32.Height          = 32;
MOVS	R1, #32
MOVW	R0, #lo_addr(_Label32+12)
MOVT	R0, #hi_addr(_Label32+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,1186 :: 		Label32.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label32+27)
MOVT	R0, #hi_addr(_Label32+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,1187 :: 		Label32.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label32+28)
MOVT	R0, #hi_addr(_Label32+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,1188 :: 		Label32.Caption         = Label32_Caption;
MOVW	R1, #lo_addr(_Label32_Caption+0)
MOVT	R1, #hi_addr(_Label32_Caption+0)
MOVW	R0, #lo_addr(_Label32+16)
MOVT	R0, #hi_addr(_Label32+16)
STR	R1, [R0, #0]
;MyProject_driver.c,1189 :: 		Label32.FontName        = Tahoma23x29_Regular;
MOVW	R0, #lo_addr(_Label32+20)
MOVT	R0, #hi_addr(_Label32+20)
STR	R2, [R0, #0]
;MyProject_driver.c,1190 :: 		Label32.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label32+24)
MOVT	R0, #hi_addr(_Label32+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,1191 :: 		Label32.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label32+26)
MOVT	R0, #hi_addr(_Label32+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,1193 :: 		Label33.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_Label33+0)
MOVT	R0, #hi_addr(_Label33+0)
STR	R1, [R0, #0]
;MyProject_driver.c,1194 :: 		Label33.Order           = 19;
MOVS	R1, #19
MOVW	R0, #lo_addr(_Label33+4)
MOVT	R0, #hi_addr(_Label33+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,1195 :: 		Label33.Left            = 120;
MOVS	R1, #120
MOVW	R0, #lo_addr(_Label33+6)
MOVT	R0, #hi_addr(_Label33+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,1196 :: 		Label33.Top             = 300;
MOVW	R1, #300
MOVW	R0, #lo_addr(_Label33+8)
MOVT	R0, #hi_addr(_Label33+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,1197 :: 		Label33.Width           = 26;
MOVS	R1, #26
MOVW	R0, #lo_addr(_Label33+10)
MOVT	R0, #hi_addr(_Label33+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,1198 :: 		Label33.Height          = 32;
MOVS	R1, #32
MOVW	R0, #lo_addr(_Label33+12)
MOVT	R0, #hi_addr(_Label33+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,1199 :: 		Label33.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label33+27)
MOVT	R0, #hi_addr(_Label33+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,1200 :: 		Label33.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label33+28)
MOVT	R0, #hi_addr(_Label33+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,1201 :: 		Label33.Caption         = Label33_Caption;
MOVW	R1, #lo_addr(_Label33_Caption+0)
MOVT	R1, #hi_addr(_Label33_Caption+0)
MOVW	R0, #lo_addr(_Label33+16)
MOVT	R0, #hi_addr(_Label33+16)
STR	R1, [R0, #0]
;MyProject_driver.c,1202 :: 		Label33.FontName        = Tahoma23x29_Regular;
MOVW	R0, #lo_addr(_Label33+20)
MOVT	R0, #hi_addr(_Label33+20)
STR	R2, [R0, #0]
;MyProject_driver.c,1203 :: 		Label33.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label33+24)
MOVT	R0, #hi_addr(_Label33+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,1204 :: 		Label33.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label33+26)
MOVT	R0, #hi_addr(_Label33+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,1206 :: 		Label34.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_Label34+0)
MOVT	R0, #hi_addr(_Label34+0)
STR	R1, [R0, #0]
;MyProject_driver.c,1207 :: 		Label34.Order           = 20;
MOVS	R1, #20
MOVW	R0, #lo_addr(_Label34+4)
MOVT	R0, #hi_addr(_Label34+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,1208 :: 		Label34.Left            = 585;
MOVW	R1, #585
MOVW	R0, #lo_addr(_Label34+6)
MOVT	R0, #hi_addr(_Label34+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,1209 :: 		Label34.Top             = 60;
MOVS	R1, #60
MOVW	R0, #lo_addr(_Label34+8)
MOVT	R0, #hi_addr(_Label34+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,1210 :: 		Label34.Width           = 26;
MOVS	R1, #26
MOVW	R0, #lo_addr(_Label34+10)
MOVT	R0, #hi_addr(_Label34+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,1211 :: 		Label34.Height          = 32;
MOVS	R1, #32
MOVW	R0, #lo_addr(_Label34+12)
MOVT	R0, #hi_addr(_Label34+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,1212 :: 		Label34.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label34+27)
MOVT	R0, #hi_addr(_Label34+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,1213 :: 		Label34.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label34+28)
MOVT	R0, #hi_addr(_Label34+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,1214 :: 		Label34.Caption         = Label34_Caption;
MOVW	R1, #lo_addr(_Label34_Caption+0)
MOVT	R1, #hi_addr(_Label34_Caption+0)
MOVW	R0, #lo_addr(_Label34+16)
MOVT	R0, #hi_addr(_Label34+16)
STR	R1, [R0, #0]
;MyProject_driver.c,1215 :: 		Label34.FontName        = Tahoma23x29_Regular;
MOVW	R0, #lo_addr(_Label34+20)
MOVT	R0, #hi_addr(_Label34+20)
STR	R2, [R0, #0]
;MyProject_driver.c,1216 :: 		Label34.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label34+24)
MOVT	R0, #hi_addr(_Label34+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,1217 :: 		Label34.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label34+26)
MOVT	R0, #hi_addr(_Label34+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,1219 :: 		Label35.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_Label35+0)
MOVT	R0, #hi_addr(_Label35+0)
STR	R1, [R0, #0]
;MyProject_driver.c,1220 :: 		Label35.Order           = 21;
MOVS	R1, #21
MOVW	R0, #lo_addr(_Label35+4)
MOVT	R0, #hi_addr(_Label35+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,1221 :: 		Label35.Left            = 585;
MOVW	R1, #585
MOVW	R0, #lo_addr(_Label35+6)
MOVT	R0, #hi_addr(_Label35+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,1222 :: 		Label35.Top             = 120;
MOVS	R1, #120
MOVW	R0, #lo_addr(_Label35+8)
MOVT	R0, #hi_addr(_Label35+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,1223 :: 		Label35.Width           = 26;
MOVS	R1, #26
MOVW	R0, #lo_addr(_Label35+10)
MOVT	R0, #hi_addr(_Label35+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,1224 :: 		Label35.Height          = 32;
MOVS	R1, #32
MOVW	R0, #lo_addr(_Label35+12)
MOVT	R0, #hi_addr(_Label35+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,1225 :: 		Label35.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label35+27)
MOVT	R0, #hi_addr(_Label35+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,1226 :: 		Label35.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label35+28)
MOVT	R0, #hi_addr(_Label35+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,1227 :: 		Label35.Caption         = Label35_Caption;
MOVW	R1, #lo_addr(_Label35_Caption+0)
MOVT	R1, #hi_addr(_Label35_Caption+0)
MOVW	R0, #lo_addr(_Label35+16)
MOVT	R0, #hi_addr(_Label35+16)
STR	R1, [R0, #0]
;MyProject_driver.c,1228 :: 		Label35.FontName        = Tahoma23x29_Regular;
MOVW	R0, #lo_addr(_Label35+20)
MOVT	R0, #hi_addr(_Label35+20)
STR	R2, [R0, #0]
;MyProject_driver.c,1229 :: 		Label35.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label35+24)
MOVT	R0, #hi_addr(_Label35+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,1230 :: 		Label35.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label35+26)
MOVT	R0, #hi_addr(_Label35+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,1232 :: 		Label36.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_Label36+0)
MOVT	R0, #hi_addr(_Label36+0)
STR	R1, [R0, #0]
;MyProject_driver.c,1233 :: 		Label36.Order           = 22;
MOVS	R1, #22
MOVW	R0, #lo_addr(_Label36+4)
MOVT	R0, #hi_addr(_Label36+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,1234 :: 		Label36.Left            = 585;
MOVW	R1, #585
MOVW	R0, #lo_addr(_Label36+6)
MOVT	R0, #hi_addr(_Label36+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,1235 :: 		Label36.Top             = 180;
MOVS	R1, #180
MOVW	R0, #lo_addr(_Label36+8)
MOVT	R0, #hi_addr(_Label36+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,1236 :: 		Label36.Width           = 26;
MOVS	R1, #26
MOVW	R0, #lo_addr(_Label36+10)
MOVT	R0, #hi_addr(_Label36+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,1237 :: 		Label36.Height          = 32;
MOVS	R1, #32
MOVW	R0, #lo_addr(_Label36+12)
MOVT	R0, #hi_addr(_Label36+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,1238 :: 		Label36.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label36+27)
MOVT	R0, #hi_addr(_Label36+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,1239 :: 		Label36.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label36+28)
MOVT	R0, #hi_addr(_Label36+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,1240 :: 		Label36.Caption         = Label36_Caption;
MOVW	R1, #lo_addr(_Label36_Caption+0)
MOVT	R1, #hi_addr(_Label36_Caption+0)
MOVW	R0, #lo_addr(_Label36+16)
MOVT	R0, #hi_addr(_Label36+16)
STR	R1, [R0, #0]
;MyProject_driver.c,1241 :: 		Label36.FontName        = Tahoma23x29_Regular;
MOVW	R0, #lo_addr(_Label36+20)
MOVT	R0, #hi_addr(_Label36+20)
STR	R2, [R0, #0]
;MyProject_driver.c,1242 :: 		Label36.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label36+24)
MOVT	R0, #hi_addr(_Label36+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,1243 :: 		Label36.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label36+26)
MOVT	R0, #hi_addr(_Label36+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,1245 :: 		Label37.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_Label37+0)
MOVT	R0, #hi_addr(_Label37+0)
STR	R1, [R0, #0]
;MyProject_driver.c,1246 :: 		Label37.Order           = 23;
MOVS	R1, #23
MOVW	R0, #lo_addr(_Label37+4)
MOVT	R0, #hi_addr(_Label37+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,1247 :: 		Label37.Left            = 585;
MOVW	R1, #585
MOVW	R0, #lo_addr(_Label37+6)
MOVT	R0, #hi_addr(_Label37+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,1248 :: 		Label37.Top             = 240;
MOVS	R1, #240
MOVW	R0, #lo_addr(_Label37+8)
MOVT	R0, #hi_addr(_Label37+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,1249 :: 		Label37.Width           = 26;
MOVS	R1, #26
MOVW	R0, #lo_addr(_Label37+10)
MOVT	R0, #hi_addr(_Label37+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,1250 :: 		Label37.Height          = 32;
MOVS	R1, #32
MOVW	R0, #lo_addr(_Label37+12)
MOVT	R0, #hi_addr(_Label37+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,1251 :: 		Label37.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label37+27)
MOVT	R0, #hi_addr(_Label37+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,1252 :: 		Label37.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label37+28)
MOVT	R0, #hi_addr(_Label37+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,1253 :: 		Label37.Caption         = Label37_Caption;
MOVW	R1, #lo_addr(_Label37_Caption+0)
MOVT	R1, #hi_addr(_Label37_Caption+0)
MOVW	R0, #lo_addr(_Label37+16)
MOVT	R0, #hi_addr(_Label37+16)
STR	R1, [R0, #0]
;MyProject_driver.c,1254 :: 		Label37.FontName        = Tahoma23x29_Regular;
MOVW	R0, #lo_addr(_Label37+20)
MOVT	R0, #hi_addr(_Label37+20)
STR	R2, [R0, #0]
;MyProject_driver.c,1255 :: 		Label37.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label37+24)
MOVT	R0, #hi_addr(_Label37+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,1256 :: 		Label37.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label37+26)
MOVT	R0, #hi_addr(_Label37+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,1258 :: 		Label38.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_Label38+0)
MOVT	R0, #hi_addr(_Label38+0)
STR	R1, [R0, #0]
;MyProject_driver.c,1259 :: 		Label38.Order           = 24;
MOVS	R1, #24
MOVW	R0, #lo_addr(_Label38+4)
MOVT	R0, #hi_addr(_Label38+4)
STRB	R1, [R0, #0]
;MyProject_driver.c,1260 :: 		Label38.Left            = 585;
MOVW	R1, #585
MOVW	R0, #lo_addr(_Label38+6)
MOVT	R0, #hi_addr(_Label38+6)
STRH	R1, [R0, #0]
;MyProject_driver.c,1261 :: 		Label38.Top             = 300;
MOVW	R1, #300
MOVW	R0, #lo_addr(_Label38+8)
MOVT	R0, #hi_addr(_Label38+8)
STRH	R1, [R0, #0]
;MyProject_driver.c,1262 :: 		Label38.Width           = 26;
MOVS	R1, #26
MOVW	R0, #lo_addr(_Label38+10)
MOVT	R0, #hi_addr(_Label38+10)
STRH	R1, [R0, #0]
;MyProject_driver.c,1263 :: 		Label38.Height          = 32;
MOVS	R1, #32
MOVW	R0, #lo_addr(_Label38+12)
MOVT	R0, #hi_addr(_Label38+12)
STRH	R1, [R0, #0]
;MyProject_driver.c,1264 :: 		Label38.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label38+27)
MOVT	R0, #hi_addr(_Label38+27)
STRB	R1, [R0, #0]
;MyProject_driver.c,1265 :: 		Label38.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label38+28)
MOVT	R0, #hi_addr(_Label38+28)
STRB	R1, [R0, #0]
;MyProject_driver.c,1266 :: 		Label38.Caption         = Label38_Caption;
MOVW	R1, #lo_addr(_Label38_Caption+0)
MOVT	R1, #hi_addr(_Label38_Caption+0)
MOVW	R0, #lo_addr(_Label38+16)
MOVT	R0, #hi_addr(_Label38+16)
STR	R1, [R0, #0]
;MyProject_driver.c,1267 :: 		Label38.FontName        = Tahoma23x29_Regular;
MOVW	R0, #lo_addr(_Label38+20)
MOVT	R0, #hi_addr(_Label38+20)
STR	R2, [R0, #0]
;MyProject_driver.c,1268 :: 		Label38.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label38+24)
MOVT	R0, #hi_addr(_Label38+24)
STRH	R1, [R0, #0]
;MyProject_driver.c,1269 :: 		Label38.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label38+26)
MOVT	R0, #hi_addr(_Label38+26)
STRB	R1, [R0, #0]
;MyProject_driver.c,1270 :: 		}
L_end_InitializeObjects:
BX	LR
; end of MyProject_driver_InitializeObjects
MyProject_driver_IsInsideObject:
;MyProject_driver.c,1272 :: 		static char IsInsideObject (unsigned int X, unsigned int Y, unsigned int Left, unsigned int Top, unsigned int Width, unsigned int Height) { // static
; Top start address is: 12 (R3)
; Left start address is: 8 (R2)
; Y start address is: 4 (R1)
; X start address is: 0 (R0)
; Top end address is: 12 (R3)
; Left end address is: 8 (R2)
; Y end address is: 4 (R1)
; X end address is: 0 (R0)
; X start address is: 0 (R0)
; Y start address is: 4 (R1)
; Left start address is: 8 (R2)
; Top start address is: 12 (R3)
; Width start address is: 20 (R5)
LDRH	R5, [SP, #0]
; Height start address is: 24 (R6)
LDRH	R6, [SP, #4]
;MyProject_driver.c,1273 :: 		if ( (Left<= X) && (Left+ Width - 1 >= X) &&
CMP	R2, R0
IT	HI
BHI	L_MyProject_driver_IsInsideObject173
ADDS	R4, R2, R5
UXTH	R4, R4
; Left end address is: 8 (R2)
; Width end address is: 20 (R5)
SUBS	R4, R4, #1
UXTH	R4, R4
CMP	R4, R0
IT	CC
BCC	L_MyProject_driver_IsInsideObject172
; X end address is: 0 (R0)
;MyProject_driver.c,1274 :: 		(Top <= Y)  && (Top + Height - 1 >= Y) )
CMP	R3, R1
IT	HI
BHI	L_MyProject_driver_IsInsideObject171
ADDS	R4, R3, R6
UXTH	R4, R4
; Top end address is: 12 (R3)
; Height end address is: 24 (R6)
SUBS	R4, R4, #1
UXTH	R4, R4
CMP	R4, R1
IT	CC
BCC	L_MyProject_driver_IsInsideObject170
; Y end address is: 4 (R1)
L_MyProject_driver_IsInsideObject169:
;MyProject_driver.c,1275 :: 		return 1;
MOVS	R0, #1
IT	AL
BAL	L_end_IsInsideObject
;MyProject_driver.c,1273 :: 		if ( (Left<= X) && (Left+ Width - 1 >= X) &&
L_MyProject_driver_IsInsideObject173:
L_MyProject_driver_IsInsideObject172:
;MyProject_driver.c,1274 :: 		(Top <= Y)  && (Top + Height - 1 >= Y) )
L_MyProject_driver_IsInsideObject171:
L_MyProject_driver_IsInsideObject170:
;MyProject_driver.c,1277 :: 		return 0;
MOVS	R0, #0
;MyProject_driver.c,1278 :: 		}
L_end_IsInsideObject:
BX	LR
; end of MyProject_driver_IsInsideObject
_DrawRoundButton:
;MyProject_driver.c,1288 :: 		void DrawRoundButton(TButton_Round *Around_button) {
; Around_button start address is: 0 (R0)
SUB	SP, SP, #12
STR	LR, [SP, #0]
; Around_button end address is: 0 (R0)
; Around_button start address is: 0 (R0)
;MyProject_driver.c,1290 :: 		if (Around_button->Visible != 0) {
ADDW	R1, R0, #18
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawRoundButton4
;MyProject_driver.c,1291 :: 		if (object_pressed == 1) {
MOVW	R1, #lo_addr(_object_pressed+0)
MOVT	R1, #hi_addr(_object_pressed+0)
LDRB	R1, [R1, #0]
CMP	R1, #1
IT	NE
BNE	L_DrawRoundButton5
;MyProject_driver.c,1292 :: 		object_pressed = 0;
MOVS	R2, #0
MOVW	R1, #lo_addr(_object_pressed+0)
MOVT	R1, #hi_addr(_object_pressed+0)
STRB	R2, [R1, #0]
;MyProject_driver.c,1294 :: 		Around_button->Gradient_End_Color, Around_button->Gradient_Start_Color);
ADDW	R1, R0, #42
LDRH	R1, [R1, #0]
UXTH	R6, R1
ADDW	R1, R0, #44
LDRH	R1, [R1, #0]
UXTH	R5, R1
;MyProject_driver.c,1293 :: 		TFT_Set_Brush(Around_button->Transparent, Around_button->Press_Color, Around_button->Gradient, Around_button->Gradient_Orientation,
ADDW	R1, R0, #40
LDRB	R1, [R1, #0]
UXTB	R4, R1
ADDW	R1, R0, #39
LDRB	R1, [R1, #0]
UXTB	R3, R1
ADDW	R1, R0, #50
LDRH	R1, [R1, #0]
UXTH	R2, R1
ADDW	R1, R0, #20
LDRB	R1, [R1, #0]
STR	R0, [SP, #4]
UXTB	R0, R1
UXTH	R1, R2
UXTB	R2, R3
UXTB	R3, R4
;MyProject_driver.c,1294 :: 		Around_button->Gradient_End_Color, Around_button->Gradient_Start_Color);
PUSH	(R6)
PUSH	(R5)
BL	_TFT_Set_Brush+0
ADD	SP, SP, #8
;MyProject_driver.c,1293 :: 		TFT_Set_Brush(Around_button->Transparent, Around_button->Press_Color, Around_button->Gradient, Around_button->Gradient_Orientation,
LDR	R0, [SP, #4]
;MyProject_driver.c,1295 :: 		}
IT	AL
BAL	L_DrawRoundButton6
L_DrawRoundButton5:
;MyProject_driver.c,1298 :: 		Around_button->Gradient_Start_Color, Around_button->Gradient_End_Color);
ADDW	R1, R0, #44
LDRH	R1, [R1, #0]
UXTH	R6, R1
ADDW	R1, R0, #42
LDRH	R1, [R1, #0]
UXTH	R5, R1
;MyProject_driver.c,1297 :: 		TFT_Set_Brush(Around_button->Transparent, Around_button->Color, Around_button->Gradient, Around_button->Gradient_Orientation,
ADDW	R1, R0, #40
LDRB	R1, [R1, #0]
UXTB	R4, R1
ADDW	R1, R0, #39
LDRB	R1, [R1, #0]
UXTB	R3, R1
ADDW	R1, R0, #46
LDRH	R1, [R1, #0]
UXTH	R2, R1
ADDW	R1, R0, #20
LDRB	R1, [R1, #0]
STR	R0, [SP, #4]
UXTB	R0, R1
UXTH	R1, R2
UXTB	R2, R3
UXTB	R3, R4
;MyProject_driver.c,1298 :: 		Around_button->Gradient_Start_Color, Around_button->Gradient_End_Color);
PUSH	(R6)
PUSH	(R5)
BL	_TFT_Set_Brush+0
ADD	SP, SP, #8
;MyProject_driver.c,1297 :: 		TFT_Set_Brush(Around_button->Transparent, Around_button->Color, Around_button->Gradient, Around_button->Gradient_Orientation,
LDR	R0, [SP, #4]
;MyProject_driver.c,1299 :: 		}
L_DrawRoundButton6:
;MyProject_driver.c,1300 :: 		TFT_Set_Pen(Around_button->Pen_Color, Around_button->Pen_Width);
ADDW	R1, R0, #14
LDRB	R1, [R1, #0]
UXTB	R2, R1
ADDW	R1, R0, #16
LDRH	R1, [R1, #0]
STR	R0, [SP, #4]
UXTH	R0, R1
UXTB	R1, R2
BL	_TFT_Set_Pen+0
LDR	R0, [SP, #4]
;MyProject_driver.c,1303 :: 		Around_button->Top + Around_button->Height - 2, Around_button->Corner_Radius);
ADDW	R1, R0, #48
LDRB	R1, [R1, #0]
UXTB	R6, R1
ADDW	R1, R0, #8
LDRH	R2, [R1, #0]
ADDW	R1, R0, #12
LDRH	R1, [R1, #0]
ADDS	R1, R2, R1
UXTH	R1, R1
SUBS	R5, R1, #2
;MyProject_driver.c,1302 :: 		Around_button->Left + Around_button->Width - 2,
ADDS	R1, R0, #6
LDRH	R4, [R1, #0]
ADDW	R1, R0, #10
LDRH	R1, [R1, #0]
ADDS	R1, R4, R1
UXTH	R1, R1
SUBS	R3, R1, #2
;MyProject_driver.c,1301 :: 		TFT_Rectangle_Round_Edges(Around_button->Left + 1, Around_button->Top + 1,
ADDS	R2, R2, #1
ADDS	R1, R4, #1
;MyProject_driver.c,1303 :: 		Around_button->Top + Around_button->Height - 2, Around_button->Corner_Radius);
STR	R0, [SP, #4]
;MyProject_driver.c,1301 :: 		TFT_Rectangle_Round_Edges(Around_button->Left + 1, Around_button->Top + 1,
UXTH	R0, R1
UXTH	R1, R2
;MyProject_driver.c,1302 :: 		Around_button->Left + Around_button->Width - 2,
UXTH	R2, R3
;MyProject_driver.c,1303 :: 		Around_button->Top + Around_button->Height - 2, Around_button->Corner_Radius);
UXTH	R3, R5
PUSH	(R6)
BL	_TFT_Rectangle_Round_Edges+0
ADD	SP, SP, #4
LDR	R0, [SP, #4]
;MyProject_driver.c,1304 :: 		if (Around_button->VerticalText != 0)
ADDW	R1, R0, #38
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawRoundButton7
;MyProject_driver.c,1305 :: 		TFT_Set_Font(Around_button->FontName, Around_button->Font_Color, FO_VERTICAL_COLUMN);
ADDW	R1, R0, #36
LDRH	R1, [R1, #0]
UXTH	R2, R1
ADDW	R1, R0, #32
LDR	R1, [R1, #0]
STR	R0, [SP, #4]
MOV	R0, R1
UXTH	R1, R2
MOVS	R2, #2
BL	_TFT_Set_Font+0
LDR	R0, [SP, #4]
IT	AL
BAL	L_DrawRoundButton8
L_DrawRoundButton7:
;MyProject_driver.c,1307 :: 		TFT_Set_Font(Around_button->FontName, Around_button->Font_Color, FO_HORIZONTAL);
ADDW	R1, R0, #36
LDRH	R1, [R1, #0]
UXTH	R2, R1
ADDW	R1, R0, #32
LDR	R1, [R1, #0]
STR	R0, [SP, #4]
MOV	R0, R1
UXTH	R1, R2
MOVS	R2, #0
BL	_TFT_Set_Font+0
LDR	R0, [SP, #4]
L_DrawRoundButton8:
;MyProject_driver.c,1308 :: 		TFT_Write_Text_Return_Pos(Around_button->Caption, Around_button->Left, Around_button->Top);
ADDW	R1, R0, #8
LDRH	R1, [R1, #0]
UXTH	R3, R1
ADDS	R1, R0, #6
LDRH	R1, [R1, #0]
UXTH	R2, R1
ADDW	R1, R0, #24
LDR	R1, [R1, #0]
STR	R0, [SP, #4]
MOV	R0, R1
UXTH	R1, R2
UXTH	R2, R3
BL	_TFT_Write_Text_Return_Pos+0
LDR	R0, [SP, #4]
;MyProject_driver.c,1309 :: 		if (Around_button->TextAlign == _taLeft)
ADDW	R1, R0, #28
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	NE
BNE	L_DrawRoundButton9
;MyProject_driver.c,1310 :: 		ALeft = Around_button->Left + 4;
ADDS	R1, R0, #6
LDRH	R1, [R1, #0]
ADDS	R1, R1, #4
STRH	R1, [SP, #8]
IT	AL
BAL	L_DrawRoundButton10
L_DrawRoundButton9:
;MyProject_driver.c,1311 :: 		else if (Around_button->TextAlign == _taCenter)
ADDW	R1, R0, #28
LDRB	R1, [R1, #0]
CMP	R1, #1
IT	NE
BNE	L_DrawRoundButton11
;MyProject_driver.c,1312 :: 		ALeft = Around_button->Left + (Around_button->Width - caption_length) / 2;
ADDS	R1, R0, #6
LDRH	R3, [R1, #0]
ADDW	R1, R0, #10
LDRH	R2, [R1, #0]
MOVW	R1, #lo_addr(_caption_length+0)
MOVT	R1, #hi_addr(_caption_length+0)
LDRH	R1, [R1, #0]
SUB	R1, R2, R1
UXTH	R1, R1
LSRS	R1, R1, #1
UXTH	R1, R1
ADDS	R1, R3, R1
STRH	R1, [SP, #8]
IT	AL
BAL	L_DrawRoundButton12
L_DrawRoundButton11:
;MyProject_driver.c,1313 :: 		else if (Around_button->TextAlign == _taRight)
ADDW	R1, R0, #28
LDRB	R1, [R1, #0]
CMP	R1, #2
IT	NE
BNE	L_DrawRoundButton13
;MyProject_driver.c,1314 :: 		ALeft = Around_button->Left + Around_button->Width - caption_length - 4;
ADDS	R1, R0, #6
LDRH	R2, [R1, #0]
ADDW	R1, R0, #10
LDRH	R1, [R1, #0]
ADDS	R2, R2, R1
UXTH	R2, R2
MOVW	R1, #lo_addr(_caption_length+0)
MOVT	R1, #hi_addr(_caption_length+0)
LDRH	R1, [R1, #0]
SUB	R1, R2, R1
UXTH	R1, R1
SUBS	R1, R1, #4
STRH	R1, [SP, #8]
L_DrawRoundButton13:
L_DrawRoundButton12:
L_DrawRoundButton10:
;MyProject_driver.c,1316 :: 		if (Around_button->TextAlignVertical == _tavTop)
ADDW	R1, R0, #29
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	NE
BNE	L_DrawRoundButton14
;MyProject_driver.c,1317 :: 		ATop = Around_button->Top + 3;
ADDW	R1, R0, #8
LDRH	R1, [R1, #0]
ADDS	R1, R1, #3
STRH	R1, [SP, #10]
IT	AL
BAL	L_DrawRoundButton15
L_DrawRoundButton14:
;MyProject_driver.c,1318 :: 		else if (Around_button->TextAlignVertical == _tavMiddle)
ADDW	R1, R0, #29
LDRB	R1, [R1, #0]
CMP	R1, #1
IT	NE
BNE	L_DrawRoundButton16
;MyProject_driver.c,1319 :: 		ATop = Around_button->Top + (Around_button->Height - caption_height) / 2;
ADDW	R1, R0, #8
LDRH	R3, [R1, #0]
ADDW	R1, R0, #12
LDRH	R2, [R1, #0]
MOVW	R1, #lo_addr(_caption_height+0)
MOVT	R1, #hi_addr(_caption_height+0)
LDRH	R1, [R1, #0]
SUB	R1, R2, R1
UXTH	R1, R1
LSRS	R1, R1, #1
UXTH	R1, R1
ADDS	R1, R3, R1
STRH	R1, [SP, #10]
IT	AL
BAL	L_DrawRoundButton17
L_DrawRoundButton16:
;MyProject_driver.c,1320 :: 		else if (Around_button->TextAlignVertical == _tavBottom)
ADDW	R1, R0, #29
LDRB	R1, [R1, #0]
CMP	R1, #2
IT	NE
BNE	L_DrawRoundButton18
;MyProject_driver.c,1321 :: 		ATop  = Around_button->Top + Around_button->Height - caption_height - 4;
ADDW	R1, R0, #8
LDRH	R2, [R1, #0]
ADDW	R1, R0, #12
LDRH	R1, [R1, #0]
ADDS	R2, R2, R1
UXTH	R2, R2
MOVW	R1, #lo_addr(_caption_height+0)
MOVT	R1, #hi_addr(_caption_height+0)
LDRH	R1, [R1, #0]
SUB	R1, R2, R1
UXTH	R1, R1
SUBS	R1, R1, #4
STRH	R1, [SP, #10]
L_DrawRoundButton18:
L_DrawRoundButton17:
L_DrawRoundButton15:
;MyProject_driver.c,1323 :: 		TFT_Write_Text(Around_button->Caption, ALeft, ATop);
ADDW	R1, R0, #24
; Around_button end address is: 0 (R0)
LDR	R1, [R1, #0]
LDRH	R2, [SP, #10]
MOV	R0, R1
LDRH	R1, [SP, #8]
BL	_TFT_Write_Text+0
;MyProject_driver.c,1324 :: 		}
L_DrawRoundButton4:
;MyProject_driver.c,1325 :: 		}
L_end_DrawRoundButton:
LDR	LR, [SP, #0]
ADD	SP, SP, #12
BX	LR
; end of _DrawRoundButton
_DrawLabel:
;MyProject_driver.c,1327 :: 		void DrawLabel(TLabel *ALabel) {
; ALabel start address is: 0 (R0)
SUB	SP, SP, #8
STR	LR, [SP, #0]
; ALabel end address is: 0 (R0)
; ALabel start address is: 0 (R0)
;MyProject_driver.c,1328 :: 		if (ALabel->Visible != 0) {
ADDW	R1, R0, #27
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawLabel19
;MyProject_driver.c,1329 :: 		if (ALabel->VerticalText != 0)
ADDW	R1, R0, #26
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawLabel20
;MyProject_driver.c,1330 :: 		TFT_Set_Font(ALabel->FontName, ALabel->Font_Color, FO_VERTICAL_COLUMN);
ADDW	R1, R0, #24
LDRH	R1, [R1, #0]
UXTH	R2, R1
ADDW	R1, R0, #20
LDR	R1, [R1, #0]
STR	R0, [SP, #4]
MOV	R0, R1
UXTH	R1, R2
MOVS	R2, #2
BL	_TFT_Set_Font+0
LDR	R0, [SP, #4]
IT	AL
BAL	L_DrawLabel21
L_DrawLabel20:
;MyProject_driver.c,1332 :: 		TFT_Set_Font(ALabel->FontName, ALabel->Font_Color, FO_HORIZONTAL);
ADDW	R1, R0, #24
LDRH	R1, [R1, #0]
UXTH	R2, R1
ADDW	R1, R0, #20
LDR	R1, [R1, #0]
STR	R0, [SP, #4]
MOV	R0, R1
UXTH	R1, R2
MOVS	R2, #0
BL	_TFT_Set_Font+0
LDR	R0, [SP, #4]
L_DrawLabel21:
;MyProject_driver.c,1333 :: 		TFT_Write_Text(ALabel->Caption, ALabel->Left, ALabel->Top);
ADDW	R1, R0, #8
LDRH	R1, [R1, #0]
UXTH	R3, R1
ADDS	R1, R0, #6
LDRH	R1, [R1, #0]
UXTH	R2, R1
ADDW	R1, R0, #16
; ALabel end address is: 0 (R0)
LDR	R1, [R1, #0]
MOV	R0, R1
UXTH	R1, R2
UXTH	R2, R3
BL	_TFT_Write_Text+0
;MyProject_driver.c,1334 :: 		}
L_DrawLabel19:
;MyProject_driver.c,1335 :: 		}
L_end_DrawLabel:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _DrawLabel
_DrawImage:
;MyProject_driver.c,1337 :: 		void DrawImage(TImage *AImage) {
; AImage start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; AImage end address is: 0 (R0)
; AImage start address is: 0 (R0)
;MyProject_driver.c,1338 :: 		if (AImage->Visible != 0) {
ADDW	R1, R0, #20
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawImage22
;MyProject_driver.c,1339 :: 		TFT_Image(AImage->Left, AImage->Top, AImage->Picture_Name, AImage->Picture_Ratio);
ADDW	R1, R0, #23
LDRB	R1, [R1, #0]
UXTB	R4, R1
ADDW	R1, R0, #16
LDR	R1, [R1, #0]
MOV	R3, R1
ADDW	R1, R0, #8
LDRH	R1, [R1, #0]
UXTH	R2, R1
ADDS	R1, R0, #6
; AImage end address is: 0 (R0)
LDRH	R1, [R1, #0]
UXTH	R0, R1
UXTH	R1, R2
MOV	R2, R3
UXTB	R3, R4
BL	_TFT_Image+0
;MyProject_driver.c,1340 :: 		}
L_DrawImage22:
;MyProject_driver.c,1341 :: 		}
L_end_DrawImage:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _DrawImage
_DrawBox:
;MyProject_driver.c,1343 :: 		void DrawBox(TBox *ABox) {
; ABox start address is: 0 (R0)
SUB	SP, SP, #8
STR	LR, [SP, #0]
; ABox end address is: 0 (R0)
; ABox start address is: 0 (R0)
;MyProject_driver.c,1344 :: 		if (ABox->Visible != 0) {
ADDW	R1, R0, #18
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawBox23
;MyProject_driver.c,1345 :: 		if (object_pressed == 1) {
MOVW	R1, #lo_addr(_object_pressed+0)
MOVT	R1, #hi_addr(_object_pressed+0)
LDRB	R1, [R1, #0]
CMP	R1, #1
IT	NE
BNE	L_DrawBox24
;MyProject_driver.c,1346 :: 		object_pressed = 0;
MOVS	R2, #0
MOVW	R1, #lo_addr(_object_pressed+0)
MOVT	R1, #hi_addr(_object_pressed+0)
STRB	R2, [R1, #0]
;MyProject_driver.c,1347 :: 		TFT_Set_Brush(ABox->Transparent, ABox->Press_Color, ABox->Gradient, ABox->Gradient_Orientation, ABox->Gradient_End_Color, ABox->Gradient_Start_Color);
ADDW	R1, R0, #24
LDRH	R1, [R1, #0]
UXTH	R6, R1
ADDW	R1, R0, #26
LDRH	R1, [R1, #0]
UXTH	R5, R1
ADDW	R1, R0, #22
LDRB	R1, [R1, #0]
UXTB	R4, R1
ADDW	R1, R0, #21
LDRB	R1, [R1, #0]
UXTB	R3, R1
ADDW	R1, R0, #32
LDRH	R1, [R1, #0]
UXTH	R2, R1
ADDW	R1, R0, #20
LDRB	R1, [R1, #0]
STR	R0, [SP, #4]
UXTB	R0, R1
UXTH	R1, R2
UXTB	R2, R3
UXTB	R3, R4
PUSH	(R6)
PUSH	(R5)
BL	_TFT_Set_Brush+0
ADD	SP, SP, #8
LDR	R0, [SP, #4]
;MyProject_driver.c,1348 :: 		}
IT	AL
BAL	L_DrawBox25
L_DrawBox24:
;MyProject_driver.c,1350 :: 		TFT_Set_Brush(ABox->Transparent, ABox->Color, ABox->Gradient, ABox->Gradient_Orientation, ABox->Gradient_Start_Color, ABox->Gradient_End_Color);
ADDW	R1, R0, #26
LDRH	R1, [R1, #0]
UXTH	R6, R1
ADDW	R1, R0, #24
LDRH	R1, [R1, #0]
UXTH	R5, R1
ADDW	R1, R0, #22
LDRB	R1, [R1, #0]
UXTB	R4, R1
ADDW	R1, R0, #21
LDRB	R1, [R1, #0]
UXTB	R3, R1
ADDW	R1, R0, #28
LDRH	R1, [R1, #0]
UXTH	R2, R1
ADDW	R1, R0, #20
LDRB	R1, [R1, #0]
STR	R0, [SP, #4]
UXTB	R0, R1
UXTH	R1, R2
UXTB	R2, R3
UXTB	R3, R4
PUSH	(R6)
PUSH	(R5)
BL	_TFT_Set_Brush+0
ADD	SP, SP, #8
LDR	R0, [SP, #4]
;MyProject_driver.c,1351 :: 		}
L_DrawBox25:
;MyProject_driver.c,1352 :: 		TFT_Set_Pen(ABox->Pen_Color, ABox->Pen_Width);
ADDW	R1, R0, #14
LDRB	R1, [R1, #0]
UXTB	R2, R1
ADDW	R1, R0, #16
LDRH	R1, [R1, #0]
STR	R0, [SP, #4]
UXTH	R0, R1
UXTB	R1, R2
BL	_TFT_Set_Pen+0
LDR	R0, [SP, #4]
;MyProject_driver.c,1353 :: 		TFT_Rectangle(ABox->Left, ABox->Top, ABox->Left + ABox->Width - 1, ABox->Top + ABox->Height - 1);
ADDW	R1, R0, #8
LDRH	R2, [R1, #0]
ADDW	R1, R0, #12
LDRH	R1, [R1, #0]
ADDS	R1, R2, R1
UXTH	R1, R1
SUBS	R5, R1, #1
ADDS	R1, R0, #6
LDRH	R4, [R1, #0]
ADDW	R1, R0, #10
; ABox end address is: 0 (R0)
LDRH	R1, [R1, #0]
ADDS	R1, R4, R1
UXTH	R1, R1
SUBS	R3, R1, #1
SXTH	R2, R2
SXTH	R1, R4
SXTH	R0, R1
SXTH	R1, R2
SXTH	R2, R3
SXTH	R3, R5
BL	_TFT_Rectangle+0
;MyProject_driver.c,1354 :: 		}
L_DrawBox23:
;MyProject_driver.c,1355 :: 		}
L_end_DrawBox:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _DrawBox
_DrawRoundBox:
;MyProject_driver.c,1357 :: 		void DrawRoundBox(TBox_Round *Around_box) {
; Around_box start address is: 0 (R0)
SUB	SP, SP, #8
STR	LR, [SP, #0]
; Around_box end address is: 0 (R0)
; Around_box start address is: 0 (R0)
;MyProject_driver.c,1358 :: 		if (Around_box->Visible != 0) {
ADDW	R1, R0, #18
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawRoundBox26
;MyProject_driver.c,1359 :: 		if (object_pressed == 1) {
MOVW	R1, #lo_addr(_object_pressed+0)
MOVT	R1, #hi_addr(_object_pressed+0)
LDRB	R1, [R1, #0]
CMP	R1, #1
IT	NE
BNE	L_DrawRoundBox27
;MyProject_driver.c,1360 :: 		object_pressed = 0;
MOVS	R2, #0
MOVW	R1, #lo_addr(_object_pressed+0)
MOVT	R1, #hi_addr(_object_pressed+0)
STRB	R2, [R1, #0]
;MyProject_driver.c,1362 :: 		Around_box->Gradient_End_Color, Around_box->Gradient_Start_Color);
ADDW	R1, R0, #24
LDRH	R1, [R1, #0]
UXTH	R6, R1
ADDW	R1, R0, #26
LDRH	R1, [R1, #0]
UXTH	R5, R1
;MyProject_driver.c,1361 :: 		TFT_Set_Brush(Around_box->Transparent, Around_box->Press_Color, Around_box->Gradient, Around_box->Gradient_Orientation,
ADDW	R1, R0, #22
LDRB	R1, [R1, #0]
UXTB	R4, R1
ADDW	R1, R0, #21
LDRB	R1, [R1, #0]
UXTB	R3, R1
ADDW	R1, R0, #32
LDRH	R1, [R1, #0]
UXTH	R2, R1
ADDW	R1, R0, #20
LDRB	R1, [R1, #0]
STR	R0, [SP, #4]
UXTB	R0, R1
UXTH	R1, R2
UXTB	R2, R3
UXTB	R3, R4
;MyProject_driver.c,1362 :: 		Around_box->Gradient_End_Color, Around_box->Gradient_Start_Color);
PUSH	(R6)
PUSH	(R5)
BL	_TFT_Set_Brush+0
ADD	SP, SP, #8
;MyProject_driver.c,1361 :: 		TFT_Set_Brush(Around_box->Transparent, Around_box->Press_Color, Around_box->Gradient, Around_box->Gradient_Orientation,
LDR	R0, [SP, #4]
;MyProject_driver.c,1363 :: 		}
IT	AL
BAL	L_DrawRoundBox28
L_DrawRoundBox27:
;MyProject_driver.c,1366 :: 		Around_box->Gradient_Start_Color, Around_box->Gradient_End_Color);
ADDW	R1, R0, #26
LDRH	R1, [R1, #0]
UXTH	R6, R1
ADDW	R1, R0, #24
LDRH	R1, [R1, #0]
UXTH	R5, R1
;MyProject_driver.c,1365 :: 		TFT_Set_Brush(Around_box->Transparent, Around_box->Color, Around_box->Gradient, Around_box->Gradient_Orientation,
ADDW	R1, R0, #22
LDRB	R1, [R1, #0]
UXTB	R4, R1
ADDW	R1, R0, #21
LDRB	R1, [R1, #0]
UXTB	R3, R1
ADDW	R1, R0, #28
LDRH	R1, [R1, #0]
UXTH	R2, R1
ADDW	R1, R0, #20
LDRB	R1, [R1, #0]
STR	R0, [SP, #4]
UXTB	R0, R1
UXTH	R1, R2
UXTB	R2, R3
UXTB	R3, R4
;MyProject_driver.c,1366 :: 		Around_box->Gradient_Start_Color, Around_box->Gradient_End_Color);
PUSH	(R6)
PUSH	(R5)
BL	_TFT_Set_Brush+0
ADD	SP, SP, #8
;MyProject_driver.c,1365 :: 		TFT_Set_Brush(Around_box->Transparent, Around_box->Color, Around_box->Gradient, Around_box->Gradient_Orientation,
LDR	R0, [SP, #4]
;MyProject_driver.c,1367 :: 		}
L_DrawRoundBox28:
;MyProject_driver.c,1368 :: 		TFT_Set_Pen(Around_box->Pen_Color, Around_box->Pen_Width);
ADDW	R1, R0, #14
LDRB	R1, [R1, #0]
UXTB	R2, R1
ADDW	R1, R0, #16
LDRH	R1, [R1, #0]
STR	R0, [SP, #4]
UXTH	R0, R1
UXTB	R1, R2
BL	_TFT_Set_Pen+0
LDR	R0, [SP, #4]
;MyProject_driver.c,1371 :: 		Around_box->Top + Around_box->Height - 2, Around_box->Corner_Radius);
ADDW	R1, R0, #30
LDRB	R1, [R1, #0]
UXTB	R6, R1
ADDW	R1, R0, #8
LDRH	R2, [R1, #0]
ADDW	R1, R0, #12
LDRH	R1, [R1, #0]
ADDS	R1, R2, R1
UXTH	R1, R1
SUBS	R5, R1, #2
;MyProject_driver.c,1370 :: 		Around_box->Left + Around_box->Width - 2,
ADDS	R1, R0, #6
LDRH	R4, [R1, #0]
ADDW	R1, R0, #10
; Around_box end address is: 0 (R0)
LDRH	R1, [R1, #0]
ADDS	R1, R4, R1
UXTH	R1, R1
SUBS	R3, R1, #2
;MyProject_driver.c,1369 :: 		TFT_Rectangle_Round_Edges(Around_box->Left + 1, Around_box->Top + 1,
ADDS	R2, R2, #1
ADDS	R1, R4, #1
UXTH	R0, R1
UXTH	R1, R2
;MyProject_driver.c,1370 :: 		Around_box->Left + Around_box->Width - 2,
UXTH	R2, R3
;MyProject_driver.c,1371 :: 		Around_box->Top + Around_box->Height - 2, Around_box->Corner_Radius);
UXTH	R3, R5
PUSH	(R6)
BL	_TFT_Rectangle_Round_Edges+0
ADD	SP, SP, #4
;MyProject_driver.c,1372 :: 		}
L_DrawRoundBox26:
;MyProject_driver.c,1373 :: 		}
L_end_DrawRoundBox:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _DrawRoundBox
_DrawScreen:
;MyProject_driver.c,1375 :: 		void DrawScreen(TScreen *aScreen) {
; aScreen start address is: 0 (R0)
SUB	SP, SP, #48
STR	LR, [SP, #0]
; aScreen end address is: 0 (R0)
; aScreen start address is: 0 (R0)
;MyProject_driver.c,1389 :: 		object_pressed = 0;
MOVS	R2, #0
MOVW	R1, #lo_addr(_object_pressed+0)
MOVT	R1, #hi_addr(_object_pressed+0)
STRB	R2, [R1, #0]
;MyProject_driver.c,1390 :: 		order = 0;
MOVS	R1, #0
STRH	R1, [SP, #4]
;MyProject_driver.c,1391 :: 		round_button_idx = 0;
MOVS	R1, #0
STRB	R1, [SP, #6]
;MyProject_driver.c,1392 :: 		label_idx = 0;
MOVS	R1, #0
STRB	R1, [SP, #12]
;MyProject_driver.c,1393 :: 		image_idx = 0;
MOVS	R1, #0
STRB	R1, [SP, #20]
;MyProject_driver.c,1394 :: 		box_idx = 0;
MOVS	R1, #0
STRB	R1, [SP, #28]
;MyProject_driver.c,1395 :: 		round_box_idx = 0;
MOVS	R1, #0
STRB	R1, [SP, #36]
;MyProject_driver.c,1396 :: 		CurrentScreen = aScreen;
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
STR	R0, [R1, #0]
;MyProject_driver.c,1398 :: 		if ((display_width != CurrentScreen->Width) || (display_height != CurrentScreen->Height)) {
ADDS	R1, R0, #2
; aScreen end address is: 0 (R0)
LDRH	R2, [R1, #0]
MOVW	R1, #lo_addr(_display_width+0)
MOVT	R1, #hi_addr(_display_width+0)
LDRH	R1, [R1, #0]
CMP	R1, R2
IT	NE
BNE	L__DrawScreen176
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
ADDS	R1, R1, #4
LDRH	R2, [R1, #0]
MOVW	R1, #lo_addr(_display_height+0)
MOVT	R1, #hi_addr(_display_height+0)
LDRH	R1, [R1, #0]
CMP	R1, R2
IT	NE
BNE	L__DrawScreen175
IT	AL
BAL	L_DrawScreen31
L__DrawScreen176:
L__DrawScreen175:
;MyProject_driver.c,1399 :: 		save_bled = TFT_BLED;
MOVW	R3, #lo_addr(GPIOF_ODR+0)
MOVT	R3, #hi_addr(GPIOF_ODR+0)
LDR	R2, [R3, #0]
UBFX	R1, R2, #10, #1
STRB	R1, [SP, #44]
;MyProject_driver.c,1400 :: 		TFT_BLED           = 0;
LDR	R1, [R3, #0]
BFC	R1, #10, #1
STR	R1, [R3, #0]
;MyProject_driver.c,1401 :: 		TFT_Set_Active(Set_Index, Write_Command, Write_Data);
MOVW	R3, #lo_addr(_Write_Data+0)
MOVT	R3, #hi_addr(_Write_Data+0)
MOVW	R2, #lo_addr(_Write_Command+0)
MOVT	R2, #hi_addr(_Write_Command+0)
MOVW	R1, #lo_addr(_Set_Index+0)
MOVT	R1, #hi_addr(_Set_Index+0)
MOV	R0, R1
MOV	R1, R2
MOV	R2, R3
BL	_TFT_Set_Active+0
;MyProject_driver.c,1402 :: 		TFT_Init_SSD1963_Board_70(CurrentScreen->Width, CurrentScreen->Height);
MOVW	R3, #lo_addr(_CurrentScreen+0)
MOVT	R3, #hi_addr(_CurrentScreen+0)
LDR	R1, [R3, #0]
ADDS	R1, R1, #4
LDRH	R1, [R1, #0]
UXTH	R2, R1
MOV	R1, R3
LDR	R1, [R1, #0]
ADDS	R1, R1, #2
LDRH	R1, [R1, #0]
UXTH	R0, R1
UXTH	R1, R2
BL	_TFT_Init_SSD1963_Board_70+0
;MyProject_driver.c,1403 :: 		FT5XX6_SetSize(CurrentScreen->Width, CurrentScreen->Height);
MOVW	R3, #lo_addr(_CurrentScreen+0)
MOVT	R3, #hi_addr(_CurrentScreen+0)
LDR	R1, [R3, #0]
ADDS	R1, R1, #4
LDRH	R1, [R1, #0]
UXTH	R2, R1
MOV	R1, R3
LDR	R1, [R1, #0]
ADDS	R1, R1, #2
LDRH	R1, [R1, #0]
UXTH	R0, R1
UXTH	R1, R2
BL	_FT5XX6_SetSize+0
;MyProject_driver.c,1404 :: 		TFT_Fill_Screen(CurrentScreen->Color);
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
LDRH	R1, [R1, #0]
UXTH	R0, R1
BL	_TFT_Fill_Screen+0
;MyProject_driver.c,1405 :: 		TFT_Set_DBC_SSD1963(255);
MOVS	R0, #255
BL	_TFT_Set_DBC_SSD1963+0
;MyProject_driver.c,1406 :: 		display_width = CurrentScreen->Width;
MOVW	R3, #lo_addr(_CurrentScreen+0)
MOVT	R3, #hi_addr(_CurrentScreen+0)
LDR	R1, [R3, #0]
ADDS	R1, R1, #2
LDRH	R2, [R1, #0]
MOVW	R1, #lo_addr(_display_width+0)
MOVT	R1, #hi_addr(_display_width+0)
STRH	R2, [R1, #0]
;MyProject_driver.c,1407 :: 		display_height = CurrentScreen->Height;
MOV	R1, R3
LDR	R1, [R1, #0]
ADDS	R1, R1, #4
LDRH	R2, [R1, #0]
MOVW	R1, #lo_addr(_display_height+0)
MOVT	R1, #hi_addr(_display_height+0)
STRH	R2, [R1, #0]
;MyProject_driver.c,1408 :: 		TFT_BLED           = save_bled;
LDRB	R3, [SP, #44]
MOVW	R2, #lo_addr(GPIOF_ODR+0)
MOVT	R2, #hi_addr(GPIOF_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R3, #10, #1
STR	R1, [R2, #0]
;MyProject_driver.c,1409 :: 		}
IT	AL
BAL	L_DrawScreen32
L_DrawScreen31:
;MyProject_driver.c,1411 :: 		TFT_Fill_Screen(CurrentScreen->Color);
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
LDRH	R1, [R1, #0]
UXTH	R0, R1
BL	_TFT_Fill_Screen+0
L_DrawScreen32:
;MyProject_driver.c,1414 :: 		while (order < CurrentScreen->ObjectsCount) {
L_DrawScreen33:
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
ADDS	R1, R1, #6
LDRH	R2, [R1, #0]
LDRH	R1, [SP, #4]
CMP	R1, R2
IT	CS
BCS	L_DrawScreen34
;MyProject_driver.c,1415 :: 		if (round_button_idx < CurrentScreen->Buttons_RoundCount) {
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
ADDS	R1, #8
LDRH	R2, [R1, #0]
LDRB	R1, [SP, #6]
CMP	R1, R2
IT	CS
BCS	L_DrawScreen35
;MyProject_driver.c,1416 :: 		local_round_button = GetRoundButton(round_button_idx);
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
ADDS	R1, #12
LDR	R2, [R1, #0]
LDRB	R1, [SP, #6]
LSLS	R1, R1, #2
ADDS	R1, R2, R1
LDR	R1, [R1, #0]
STR	R1, [SP, #8]
;MyProject_driver.c,1417 :: 		if (order == local_round_button->Order) {
ADDS	R1, R1, #4
LDRB	R2, [R1, #0]
LDRH	R1, [SP, #4]
CMP	R1, R2
IT	NE
BNE	L_DrawScreen36
;MyProject_driver.c,1418 :: 		round_button_idx++;
LDRB	R1, [SP, #6]
ADDS	R1, R1, #1
STRB	R1, [SP, #6]
;MyProject_driver.c,1419 :: 		order++;
LDRH	R1, [SP, #4]
ADDS	R1, R1, #1
STRH	R1, [SP, #4]
;MyProject_driver.c,1420 :: 		DrawRoundButton(local_round_button);
LDR	R0, [SP, #8]
BL	_DrawRoundButton+0
;MyProject_driver.c,1421 :: 		}
L_DrawScreen36:
;MyProject_driver.c,1422 :: 		}
L_DrawScreen35:
;MyProject_driver.c,1424 :: 		if (label_idx < CurrentScreen->LabelsCount) {
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
ADDS	R1, #16
LDRH	R2, [R1, #0]
LDRB	R1, [SP, #12]
CMP	R1, R2
IT	CS
BCS	L_DrawScreen37
;MyProject_driver.c,1425 :: 		local_label = GetLabel(label_idx);
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
ADDS	R1, #20
LDR	R2, [R1, #0]
LDRB	R1, [SP, #12]
LSLS	R1, R1, #2
ADDS	R1, R2, R1
LDR	R1, [R1, #0]
STR	R1, [SP, #16]
;MyProject_driver.c,1426 :: 		if (order == local_label->Order) {
ADDS	R1, R1, #4
LDRB	R2, [R1, #0]
LDRH	R1, [SP, #4]
CMP	R1, R2
IT	NE
BNE	L_DrawScreen38
;MyProject_driver.c,1427 :: 		label_idx++;
LDRB	R1, [SP, #12]
ADDS	R1, R1, #1
STRB	R1, [SP, #12]
;MyProject_driver.c,1428 :: 		order++;
LDRH	R1, [SP, #4]
ADDS	R1, R1, #1
STRH	R1, [SP, #4]
;MyProject_driver.c,1429 :: 		DrawLabel(local_label);
LDR	R0, [SP, #16]
BL	_DrawLabel+0
;MyProject_driver.c,1430 :: 		}
L_DrawScreen38:
;MyProject_driver.c,1431 :: 		}
L_DrawScreen37:
;MyProject_driver.c,1433 :: 		if (box_idx < CurrentScreen->BoxesCount) {
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
ADDS	R1, #32
LDRH	R2, [R1, #0]
LDRB	R1, [SP, #28]
CMP	R1, R2
IT	CS
BCS	L_DrawScreen39
;MyProject_driver.c,1434 :: 		local_box = GetBox(box_idx);
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
ADDS	R1, #36
LDR	R2, [R1, #0]
LDRB	R1, [SP, #28]
LSLS	R1, R1, #2
ADDS	R1, R2, R1
LDR	R1, [R1, #0]
STR	R1, [SP, #32]
;MyProject_driver.c,1435 :: 		if (order == local_box->Order) {
ADDS	R1, R1, #4
LDRB	R2, [R1, #0]
LDRH	R1, [SP, #4]
CMP	R1, R2
IT	NE
BNE	L_DrawScreen40
;MyProject_driver.c,1436 :: 		box_idx++;
LDRB	R1, [SP, #28]
ADDS	R1, R1, #1
STRB	R1, [SP, #28]
;MyProject_driver.c,1437 :: 		order++;
LDRH	R1, [SP, #4]
ADDS	R1, R1, #1
STRH	R1, [SP, #4]
;MyProject_driver.c,1438 :: 		DrawBox(local_box);
LDR	R0, [SP, #32]
BL	_DrawBox+0
;MyProject_driver.c,1439 :: 		}
L_DrawScreen40:
;MyProject_driver.c,1440 :: 		}
L_DrawScreen39:
;MyProject_driver.c,1442 :: 		if (round_box_idx < CurrentScreen->Boxes_RoundCount) {
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
ADDS	R1, #40
LDRH	R2, [R1, #0]
LDRB	R1, [SP, #36]
CMP	R1, R2
IT	CS
BCS	L_DrawScreen41
;MyProject_driver.c,1443 :: 		local_round_box = GetBox_Round(round_box_idx);
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
ADDS	R1, #44
LDR	R2, [R1, #0]
LDRB	R1, [SP, #36]
LSLS	R1, R1, #2
ADDS	R1, R2, R1
LDR	R1, [R1, #0]
STR	R1, [SP, #40]
;MyProject_driver.c,1444 :: 		if (order == local_round_box->Order) {
ADDS	R1, R1, #4
LDRB	R2, [R1, #0]
LDRH	R1, [SP, #4]
CMP	R1, R2
IT	NE
BNE	L_DrawScreen42
;MyProject_driver.c,1445 :: 		round_box_idx++;
LDRB	R1, [SP, #36]
ADDS	R1, R1, #1
STRB	R1, [SP, #36]
;MyProject_driver.c,1446 :: 		order++;
LDRH	R1, [SP, #4]
ADDS	R1, R1, #1
STRH	R1, [SP, #4]
;MyProject_driver.c,1447 :: 		DrawRoundBox(local_round_box);
LDR	R0, [SP, #40]
BL	_DrawRoundBox+0
;MyProject_driver.c,1448 :: 		}
L_DrawScreen42:
;MyProject_driver.c,1449 :: 		}
L_DrawScreen41:
;MyProject_driver.c,1451 :: 		if (image_idx < CurrentScreen->ImagesCount) {
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
ADDS	R1, #24
LDRH	R2, [R1, #0]
LDRB	R1, [SP, #20]
CMP	R1, R2
IT	CS
BCS	L_DrawScreen43
;MyProject_driver.c,1452 :: 		local_image = GetImage(image_idx);
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
ADDS	R1, #28
LDR	R2, [R1, #0]
LDRB	R1, [SP, #20]
LSLS	R1, R1, #2
ADDS	R1, R2, R1
LDR	R1, [R1, #0]
STR	R1, [SP, #24]
;MyProject_driver.c,1453 :: 		if (order == local_image->Order) {
ADDS	R1, R1, #4
LDRB	R2, [R1, #0]
LDRH	R1, [SP, #4]
CMP	R1, R2
IT	NE
BNE	L_DrawScreen44
;MyProject_driver.c,1454 :: 		image_idx++;
LDRB	R1, [SP, #20]
ADDS	R1, R1, #1
STRB	R1, [SP, #20]
;MyProject_driver.c,1455 :: 		order++;
LDRH	R1, [SP, #4]
ADDS	R1, R1, #1
STRH	R1, [SP, #4]
;MyProject_driver.c,1456 :: 		DrawImage(local_image);
LDR	R0, [SP, #24]
BL	_DrawImage+0
;MyProject_driver.c,1457 :: 		}
L_DrawScreen44:
;MyProject_driver.c,1458 :: 		}
L_DrawScreen43:
;MyProject_driver.c,1460 :: 		}
IT	AL
BAL	L_DrawScreen33
L_DrawScreen34:
;MyProject_driver.c,1461 :: 		}
L_end_DrawScreen:
LDR	LR, [SP, #0]
ADD	SP, SP, #48
BX	LR
; end of _DrawScreen
_Get_Object:
;MyProject_driver.c,1463 :: 		void Get_Object(unsigned int X, unsigned int Y) {
; Y start address is: 4 (R1)
; X start address is: 0 (R0)
SUB	SP, SP, #8
STR	LR, [SP, #0]
; Y end address is: 4 (R1)
; X end address is: 0 (R0)
; X start address is: 0 (R0)
; Y start address is: 4 (R1)
;MyProject_driver.c,1464 :: 		round_button_order  = -1;
MOVW	R3, #65535
SXTH	R3, R3
MOVW	R2, #lo_addr(_round_button_order+0)
MOVT	R2, #hi_addr(_round_button_order+0)
STRH	R3, [R2, #0]
;MyProject_driver.c,1465 :: 		label_order         = -1;
MOVW	R3, #65535
SXTH	R3, R3
MOVW	R2, #lo_addr(_label_order+0)
MOVT	R2, #hi_addr(_label_order+0)
STRH	R3, [R2, #0]
;MyProject_driver.c,1466 :: 		image_order         = -1;
MOVW	R3, #65535
SXTH	R3, R3
MOVW	R2, #lo_addr(_image_order+0)
MOVT	R2, #hi_addr(_image_order+0)
STRH	R3, [R2, #0]
;MyProject_driver.c,1467 :: 		box_order           = -1;
MOVW	R3, #65535
SXTH	R3, R3
MOVW	R2, #lo_addr(_box_order+0)
MOVT	R2, #hi_addr(_box_order+0)
STRH	R3, [R2, #0]
;MyProject_driver.c,1468 :: 		box_round_order     = -1;
MOVW	R3, #65535
SXTH	R3, R3
MOVW	R2, #lo_addr(_box_round_order+0)
MOVT	R2, #hi_addr(_box_round_order+0)
STRH	R3, [R2, #0]
;MyProject_driver.c,1470 :: 		for ( _object_count = 0 ; _object_count < CurrentScreen->Buttons_RoundCount ; _object_count++ ) {
MOVS	R3, #0
SXTH	R3, R3
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
STRH	R3, [R2, #0]
; X end address is: 0 (R0)
; Y end address is: 4 (R1)
UXTH	R8, R0
UXTH	R7, R1
L_Get_Object45:
; Y start address is: 28 (R7)
; X start address is: 32 (R8)
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
ADDS	R2, #8
LDRH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	CS
BCS	L_Get_Object46
;MyProject_driver.c,1471 :: 		local_round_button = GetRoundButton(_object_count);
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
ADDS	R2, #12
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
LSLS	R2, R2, #2
ADDS	R2, R3, R2
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_local_round_button+0)
MOVT	R2, #hi_addr(_local_round_button+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1472 :: 		if (local_round_button->Active != 0) {
ADDW	R2, R3, #19
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Get_Object48
;MyProject_driver.c,1474 :: 		local_round_button->Width, local_round_button->Height) == 1) {
MOVW	R6, #lo_addr(_local_round_button+0)
MOVT	R6, #hi_addr(_local_round_button+0)
LDR	R2, [R6, #0]
ADDS	R2, #12
LDRH	R2, [R2, #0]
UXTH	R5, R2
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, #10
LDRH	R2, [R2, #0]
UXTH	R4, R2
;MyProject_driver.c,1473 :: 		if (IsInsideObject(X, Y, local_round_button->Left, local_round_button->Top,
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, #8
LDRH	R2, [R2, #0]
UXTH	R3, R2
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, R2, #6
LDRH	R2, [R2, #0]
UXTH	R1, R7
UXTH	R0, R8
;MyProject_driver.c,1474 :: 		local_round_button->Width, local_round_button->Height) == 1) {
PUSH	(R5)
PUSH	(R4)
BL	MyProject_driver_IsInsideObject+0
ADD	SP, SP, #8
CMP	R0, #1
IT	NE
BNE	L_Get_Object49
;MyProject_driver.c,1475 :: 		round_button_order = local_round_button->Order;
MOVW	R4, #lo_addr(_local_round_button+0)
MOVT	R4, #hi_addr(_local_round_button+0)
LDR	R2, [R4, #0]
ADDS	R2, R2, #4
LDRB	R3, [R2, #0]
MOVW	R2, #lo_addr(_round_button_order+0)
MOVT	R2, #hi_addr(_round_button_order+0)
STRH	R3, [R2, #0]
;MyProject_driver.c,1476 :: 		exec_round_button = local_round_button;
MOV	R2, R4
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_exec_round_button+0)
MOVT	R2, #hi_addr(_exec_round_button+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1477 :: 		}
L_Get_Object49:
;MyProject_driver.c,1478 :: 		}
L_Get_Object48:
;MyProject_driver.c,1470 :: 		for ( _object_count = 0 ; _object_count < CurrentScreen->Buttons_RoundCount ; _object_count++ ) {
MOVW	R3, #lo_addr(__object_count+0)
MOVT	R3, #hi_addr(__object_count+0)
LDRSH	R2, [R3, #0]
ADDS	R2, R2, #1
STRH	R2, [R3, #0]
;MyProject_driver.c,1479 :: 		}
IT	AL
BAL	L_Get_Object45
L_Get_Object46:
;MyProject_driver.c,1482 :: 		for ( _object_count = 0 ; _object_count < CurrentScreen->LabelsCount ; _object_count++ ) {
MOVS	R3, #0
SXTH	R3, R3
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
STRH	R3, [R2, #0]
; Y end address is: 28 (R7)
; X end address is: 32 (R8)
STRH	R8, [SP, #4]
UXTH	R8, R7
LDRH	R7, [SP, #4]
L_Get_Object50:
; X start address is: 28 (R7)
; Y start address is: 32 (R8)
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
ADDS	R2, #16
LDRH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	CS
BCS	L_Get_Object51
;MyProject_driver.c,1483 :: 		local_label = GetLabel(_object_count);
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
ADDS	R2, #20
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
LSLS	R2, R2, #2
ADDS	R2, R3, R2
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_local_label+0)
MOVT	R2, #hi_addr(_local_label+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1484 :: 		if (local_label->Active != 0) {
ADDW	R2, R3, #28
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Get_Object53
;MyProject_driver.c,1486 :: 		local_label->Width, local_label->Height) == 1) {
MOVW	R6, #lo_addr(_local_label+0)
MOVT	R6, #hi_addr(_local_label+0)
LDR	R2, [R6, #0]
ADDS	R2, #12
LDRH	R2, [R2, #0]
UXTH	R5, R2
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, #10
LDRH	R2, [R2, #0]
UXTH	R4, R2
;MyProject_driver.c,1485 :: 		if (IsInsideObject(X, Y, local_label->Left, local_label->Top,
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, #8
LDRH	R2, [R2, #0]
UXTH	R3, R2
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, R2, #6
LDRH	R2, [R2, #0]
UXTH	R1, R8
UXTH	R0, R7
;MyProject_driver.c,1486 :: 		local_label->Width, local_label->Height) == 1) {
PUSH	(R5)
PUSH	(R4)
BL	MyProject_driver_IsInsideObject+0
ADD	SP, SP, #8
CMP	R0, #1
IT	NE
BNE	L_Get_Object54
;MyProject_driver.c,1487 :: 		label_order = local_label->Order;
MOVW	R4, #lo_addr(_local_label+0)
MOVT	R4, #hi_addr(_local_label+0)
LDR	R2, [R4, #0]
ADDS	R2, R2, #4
LDRB	R3, [R2, #0]
MOVW	R2, #lo_addr(_label_order+0)
MOVT	R2, #hi_addr(_label_order+0)
STRH	R3, [R2, #0]
;MyProject_driver.c,1488 :: 		exec_label = local_label;
MOV	R2, R4
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_exec_label+0)
MOVT	R2, #hi_addr(_exec_label+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1489 :: 		}
L_Get_Object54:
;MyProject_driver.c,1490 :: 		}
L_Get_Object53:
;MyProject_driver.c,1482 :: 		for ( _object_count = 0 ; _object_count < CurrentScreen->LabelsCount ; _object_count++ ) {
MOVW	R3, #lo_addr(__object_count+0)
MOVT	R3, #hi_addr(__object_count+0)
LDRSH	R2, [R3, #0]
ADDS	R2, R2, #1
STRH	R2, [R3, #0]
;MyProject_driver.c,1491 :: 		}
IT	AL
BAL	L_Get_Object50
L_Get_Object51:
;MyProject_driver.c,1494 :: 		for ( _object_count = 0 ; _object_count < CurrentScreen->ImagesCount ; _object_count++ ) {
MOVS	R3, #0
SXTH	R3, R3
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
STRH	R3, [R2, #0]
; X end address is: 28 (R7)
; Y end address is: 32 (R8)
STRH	R8, [SP, #4]
UXTH	R8, R7
LDRH	R7, [SP, #4]
L_Get_Object55:
; Y start address is: 28 (R7)
; X start address is: 32 (R8)
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
ADDS	R2, #24
LDRH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	CS
BCS	L_Get_Object56
;MyProject_driver.c,1495 :: 		local_image = GetImage(_object_count);
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
ADDS	R2, #28
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
LSLS	R2, R2, #2
ADDS	R2, R3, R2
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_local_image+0)
MOVT	R2, #hi_addr(_local_image+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1496 :: 		if (local_image->Active != 0) {
ADDW	R2, R3, #21
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Get_Object58
;MyProject_driver.c,1498 :: 		local_image->Width, local_image->Height) == 1) {
MOVW	R6, #lo_addr(_local_image+0)
MOVT	R6, #hi_addr(_local_image+0)
LDR	R2, [R6, #0]
ADDS	R2, #12
LDRH	R2, [R2, #0]
UXTH	R5, R2
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, #10
LDRH	R2, [R2, #0]
UXTH	R4, R2
;MyProject_driver.c,1497 :: 		if (IsInsideObject(X, Y, local_image->Left, local_image->Top,
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, #8
LDRH	R2, [R2, #0]
UXTH	R3, R2
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, R2, #6
LDRH	R2, [R2, #0]
UXTH	R1, R7
UXTH	R0, R8
;MyProject_driver.c,1498 :: 		local_image->Width, local_image->Height) == 1) {
PUSH	(R5)
PUSH	(R4)
BL	MyProject_driver_IsInsideObject+0
ADD	SP, SP, #8
CMP	R0, #1
IT	NE
BNE	L_Get_Object59
;MyProject_driver.c,1499 :: 		image_order = local_image->Order;
MOVW	R4, #lo_addr(_local_image+0)
MOVT	R4, #hi_addr(_local_image+0)
LDR	R2, [R4, #0]
ADDS	R2, R2, #4
LDRB	R3, [R2, #0]
MOVW	R2, #lo_addr(_image_order+0)
MOVT	R2, #hi_addr(_image_order+0)
STRH	R3, [R2, #0]
;MyProject_driver.c,1500 :: 		exec_image = local_image;
MOV	R2, R4
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_exec_image+0)
MOVT	R2, #hi_addr(_exec_image+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1501 :: 		}
L_Get_Object59:
;MyProject_driver.c,1502 :: 		}
L_Get_Object58:
;MyProject_driver.c,1494 :: 		for ( _object_count = 0 ; _object_count < CurrentScreen->ImagesCount ; _object_count++ ) {
MOVW	R3, #lo_addr(__object_count+0)
MOVT	R3, #hi_addr(__object_count+0)
LDRSH	R2, [R3, #0]
ADDS	R2, R2, #1
STRH	R2, [R3, #0]
;MyProject_driver.c,1503 :: 		}
IT	AL
BAL	L_Get_Object55
L_Get_Object56:
;MyProject_driver.c,1506 :: 		for ( _object_count = 0 ; _object_count < CurrentScreen->BoxesCount ; _object_count++ ) {
MOVS	R3, #0
SXTH	R3, R3
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
STRH	R3, [R2, #0]
; Y end address is: 28 (R7)
; X end address is: 32 (R8)
STRH	R8, [SP, #4]
UXTH	R8, R7
LDRH	R7, [SP, #4]
L_Get_Object60:
; X start address is: 28 (R7)
; Y start address is: 32 (R8)
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
ADDS	R2, #32
LDRH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	CS
BCS	L_Get_Object61
;MyProject_driver.c,1507 :: 		local_box = GetBox(_object_count);
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
ADDS	R2, #36
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
LSLS	R2, R2, #2
ADDS	R2, R3, R2
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_local_box+0)
MOVT	R2, #hi_addr(_local_box+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1508 :: 		if (local_box->Active != 0) {
ADDW	R2, R3, #19
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Get_Object63
;MyProject_driver.c,1510 :: 		local_box->Width, local_box->Height) == 1) {
MOVW	R6, #lo_addr(_local_box+0)
MOVT	R6, #hi_addr(_local_box+0)
LDR	R2, [R6, #0]
ADDS	R2, #12
LDRH	R2, [R2, #0]
UXTH	R5, R2
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, #10
LDRH	R2, [R2, #0]
UXTH	R4, R2
;MyProject_driver.c,1509 :: 		if (IsInsideObject(X, Y, local_box->Left, local_box->Top,
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, #8
LDRH	R2, [R2, #0]
UXTH	R3, R2
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, R2, #6
LDRH	R2, [R2, #0]
UXTH	R1, R8
UXTH	R0, R7
;MyProject_driver.c,1510 :: 		local_box->Width, local_box->Height) == 1) {
PUSH	(R5)
PUSH	(R4)
BL	MyProject_driver_IsInsideObject+0
ADD	SP, SP, #8
CMP	R0, #1
IT	NE
BNE	L_Get_Object64
;MyProject_driver.c,1511 :: 		box_order = local_box->Order;
MOVW	R4, #lo_addr(_local_box+0)
MOVT	R4, #hi_addr(_local_box+0)
LDR	R2, [R4, #0]
ADDS	R2, R2, #4
LDRB	R3, [R2, #0]
MOVW	R2, #lo_addr(_box_order+0)
MOVT	R2, #hi_addr(_box_order+0)
STRH	R3, [R2, #0]
;MyProject_driver.c,1512 :: 		exec_box = local_box;
MOV	R2, R4
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_exec_box+0)
MOVT	R2, #hi_addr(_exec_box+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1513 :: 		}
L_Get_Object64:
;MyProject_driver.c,1514 :: 		}
L_Get_Object63:
;MyProject_driver.c,1506 :: 		for ( _object_count = 0 ; _object_count < CurrentScreen->BoxesCount ; _object_count++ ) {
MOVW	R3, #lo_addr(__object_count+0)
MOVT	R3, #hi_addr(__object_count+0)
LDRSH	R2, [R3, #0]
ADDS	R2, R2, #1
STRH	R2, [R3, #0]
;MyProject_driver.c,1515 :: 		}
IT	AL
BAL	L_Get_Object60
L_Get_Object61:
;MyProject_driver.c,1518 :: 		for ( _object_count = 0 ; _object_count < CurrentScreen->Boxes_RoundCount ; _object_count++ ) {
MOVS	R3, #0
SXTH	R3, R3
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
STRH	R3, [R2, #0]
; X end address is: 28 (R7)
; Y end address is: 32 (R8)
STRH	R8, [SP, #4]
UXTH	R8, R7
LDRH	R7, [SP, #4]
L_Get_Object65:
; X start address is: 32 (R8)
; Y start address is: 28 (R7)
; Y start address is: 28 (R7)
; Y end address is: 28 (R7)
; X start address is: 32 (R8)
; X end address is: 32 (R8)
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
ADDS	R2, #40
LDRH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	CS
BCS	L_Get_Object66
; Y end address is: 28 (R7)
; X end address is: 32 (R8)
;MyProject_driver.c,1519 :: 		local_round_box = GetBox_Round(_object_count);
; X start address is: 32 (R8)
; Y start address is: 28 (R7)
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
ADDS	R2, #44
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
LSLS	R2, R2, #2
ADDS	R2, R3, R2
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_local_round_box+0)
MOVT	R2, #hi_addr(_local_round_box+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1520 :: 		if (local_round_box->Active != 0) {
ADDW	R2, R3, #19
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Get_Object68
;MyProject_driver.c,1522 :: 		local_round_box->Width, local_round_box->Height) == 1) {
MOVW	R6, #lo_addr(_local_round_box+0)
MOVT	R6, #hi_addr(_local_round_box+0)
LDR	R2, [R6, #0]
ADDS	R2, #12
LDRH	R2, [R2, #0]
UXTH	R5, R2
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, #10
LDRH	R2, [R2, #0]
UXTH	R4, R2
;MyProject_driver.c,1521 :: 		if (IsInsideObject(X, Y, local_round_box->Left, local_round_box->Top,
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, #8
LDRH	R2, [R2, #0]
UXTH	R3, R2
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, R2, #6
LDRH	R2, [R2, #0]
UXTH	R1, R7
UXTH	R0, R8
;MyProject_driver.c,1522 :: 		local_round_box->Width, local_round_box->Height) == 1) {
PUSH	(R5)
PUSH	(R4)
BL	MyProject_driver_IsInsideObject+0
ADD	SP, SP, #8
CMP	R0, #1
IT	NE
BNE	L_Get_Object69
;MyProject_driver.c,1523 :: 		box_round_order = local_round_box->Order;
MOVW	R4, #lo_addr(_local_round_box+0)
MOVT	R4, #hi_addr(_local_round_box+0)
LDR	R2, [R4, #0]
ADDS	R2, R2, #4
LDRB	R3, [R2, #0]
MOVW	R2, #lo_addr(_box_round_order+0)
MOVT	R2, #hi_addr(_box_round_order+0)
STRH	R3, [R2, #0]
;MyProject_driver.c,1524 :: 		exec_round_box = local_round_box;
MOV	R2, R4
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_exec_round_box+0)
MOVT	R2, #hi_addr(_exec_round_box+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1525 :: 		}
L_Get_Object69:
;MyProject_driver.c,1526 :: 		}
L_Get_Object68:
;MyProject_driver.c,1518 :: 		for ( _object_count = 0 ; _object_count < CurrentScreen->Boxes_RoundCount ; _object_count++ ) {
MOVW	R3, #lo_addr(__object_count+0)
MOVT	R3, #hi_addr(__object_count+0)
LDRSH	R2, [R3, #0]
ADDS	R2, R2, #1
STRH	R2, [R3, #0]
;MyProject_driver.c,1527 :: 		}
; Y end address is: 28 (R7)
; X end address is: 32 (R8)
IT	AL
BAL	L_Get_Object65
L_Get_Object66:
;MyProject_driver.c,1529 :: 		_object_count = -1;
MOVW	R3, #65535
SXTH	R3, R3
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
STRH	R3, [R2, #0]
;MyProject_driver.c,1530 :: 		if (round_button_order >  _object_count )
MOVW	R2, #lo_addr(_round_button_order+0)
MOVT	R2, #hi_addr(_round_button_order+0)
LDRSH	R2, [R2, #0]
CMP	R2, #-1
IT	LE
BLE	L_Get_Object70
;MyProject_driver.c,1531 :: 		_object_count = round_button_order;
MOVW	R2, #lo_addr(_round_button_order+0)
MOVT	R2, #hi_addr(_round_button_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
STRH	R3, [R2, #0]
L_Get_Object70:
;MyProject_driver.c,1532 :: 		if (label_order >  _object_count )
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(_label_order+0)
MOVT	R2, #hi_addr(_label_order+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	LE
BLE	L_Get_Object71
;MyProject_driver.c,1533 :: 		_object_count = label_order;
MOVW	R2, #lo_addr(_label_order+0)
MOVT	R2, #hi_addr(_label_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
STRH	R3, [R2, #0]
L_Get_Object71:
;MyProject_driver.c,1534 :: 		if (image_order >  _object_count )
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(_image_order+0)
MOVT	R2, #hi_addr(_image_order+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	LE
BLE	L_Get_Object72
;MyProject_driver.c,1535 :: 		_object_count = image_order;
MOVW	R2, #lo_addr(_image_order+0)
MOVT	R2, #hi_addr(_image_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
STRH	R3, [R2, #0]
L_Get_Object72:
;MyProject_driver.c,1536 :: 		if (box_order >  _object_count )
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(_box_order+0)
MOVT	R2, #hi_addr(_box_order+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	LE
BLE	L_Get_Object73
;MyProject_driver.c,1537 :: 		_object_count = box_order;
MOVW	R2, #lo_addr(_box_order+0)
MOVT	R2, #hi_addr(_box_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
STRH	R3, [R2, #0]
L_Get_Object73:
;MyProject_driver.c,1538 :: 		if (box_round_order >  _object_count )
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(_box_round_order+0)
MOVT	R2, #hi_addr(_box_round_order+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	LE
BLE	L_Get_Object74
;MyProject_driver.c,1539 :: 		_object_count = box_round_order;
MOVW	R2, #lo_addr(_box_round_order+0)
MOVT	R2, #hi_addr(_box_round_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
STRH	R3, [R2, #0]
L_Get_Object74:
;MyProject_driver.c,1540 :: 		}
L_end_Get_Object:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _Get_Object
_Process_TP_Press:
;MyProject_driver.c,1543 :: 		void Process_TP_Press(unsigned int X, unsigned int Y) {
; Y start address is: 4 (R1)
; X start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; Y end address is: 4 (R1)
; X end address is: 0 (R0)
; X start address is: 0 (R0)
; Y start address is: 4 (R1)
;MyProject_driver.c,1544 :: 		exec_round_button   = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_exec_round_button+0)
MOVT	R2, #hi_addr(_exec_round_button+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1545 :: 		exec_label          = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_exec_label+0)
MOVT	R2, #hi_addr(_exec_label+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1546 :: 		exec_image          = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_exec_image+0)
MOVT	R2, #hi_addr(_exec_image+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1547 :: 		exec_box            = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_exec_box+0)
MOVT	R2, #hi_addr(_exec_box+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1548 :: 		exec_round_box      = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_exec_round_box+0)
MOVT	R2, #hi_addr(_exec_round_box+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1550 :: 		Get_Object(X, Y);
; Y end address is: 4 (R1)
; X end address is: 0 (R0)
BL	_Get_Object+0
;MyProject_driver.c,1552 :: 		if (_object_count != -1) {
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, #-1
IT	EQ
BEQ	L_Process_TP_Press75
;MyProject_driver.c,1553 :: 		if (_object_count == round_button_order) {
MOVW	R2, #lo_addr(_round_button_order+0)
MOVT	R2, #hi_addr(_round_button_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Press76
;MyProject_driver.c,1554 :: 		if (exec_round_button->Active != 0) {
MOVW	R2, #lo_addr(_exec_round_button+0)
MOVT	R2, #hi_addr(_exec_round_button+0)
LDR	R2, [R2, #0]
ADDS	R2, #19
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Press77
;MyProject_driver.c,1555 :: 		if (exec_round_button->OnPressPtr != 0) {
MOVW	R4, #lo_addr(_exec_round_button+0)
MOVT	R4, #hi_addr(_exec_round_button+0)
LDR	R4, [R4, #0]
ADDS	R4, #64
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Press78
;MyProject_driver.c,1556 :: 		exec_round_button->OnPressPtr();
MOVW	R4, #lo_addr(_exec_round_button+0)
MOVT	R4, #hi_addr(_exec_round_button+0)
LDR	R4, [R4, #0]
ADDS	R4, #64
LDR	R2, [R4, #0]
BLX	R2
;MyProject_driver.c,1557 :: 		return;
IT	AL
BAL	L_end_Process_TP_Press
;MyProject_driver.c,1558 :: 		}
L_Process_TP_Press78:
;MyProject_driver.c,1559 :: 		}
L_Process_TP_Press77:
;MyProject_driver.c,1560 :: 		}
L_Process_TP_Press76:
;MyProject_driver.c,1562 :: 		if (_object_count == label_order) {
MOVW	R2, #lo_addr(_label_order+0)
MOVT	R2, #hi_addr(_label_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Press79
;MyProject_driver.c,1563 :: 		if (exec_label->Active != 0) {
MOVW	R2, #lo_addr(_exec_label+0)
MOVT	R2, #hi_addr(_exec_label+0)
LDR	R2, [R2, #0]
ADDS	R2, #28
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Press80
;MyProject_driver.c,1564 :: 		if (exec_label->OnPressPtr != 0) {
MOVW	R4, #lo_addr(_exec_label+0)
MOVT	R4, #hi_addr(_exec_label+0)
LDR	R4, [R4, #0]
ADDS	R4, #44
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Press81
;MyProject_driver.c,1565 :: 		exec_label->OnPressPtr();
MOVW	R4, #lo_addr(_exec_label+0)
MOVT	R4, #hi_addr(_exec_label+0)
LDR	R4, [R4, #0]
ADDS	R4, #44
LDR	R2, [R4, #0]
BLX	R2
;MyProject_driver.c,1566 :: 		return;
IT	AL
BAL	L_end_Process_TP_Press
;MyProject_driver.c,1567 :: 		}
L_Process_TP_Press81:
;MyProject_driver.c,1568 :: 		}
L_Process_TP_Press80:
;MyProject_driver.c,1569 :: 		}
L_Process_TP_Press79:
;MyProject_driver.c,1571 :: 		if (_object_count == image_order) {
MOVW	R2, #lo_addr(_image_order+0)
MOVT	R2, #hi_addr(_image_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Press82
;MyProject_driver.c,1572 :: 		if (exec_image->Active != 0) {
MOVW	R2, #lo_addr(_exec_image+0)
MOVT	R2, #hi_addr(_exec_image+0)
LDR	R2, [R2, #0]
ADDS	R2, #21
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Press83
;MyProject_driver.c,1573 :: 		if (exec_image->OnPressPtr != 0) {
MOVW	R4, #lo_addr(_exec_image+0)
MOVT	R4, #hi_addr(_exec_image+0)
LDR	R4, [R4, #0]
ADDS	R4, #36
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Press84
;MyProject_driver.c,1574 :: 		exec_image->OnPressPtr();
MOVW	R4, #lo_addr(_exec_image+0)
MOVT	R4, #hi_addr(_exec_image+0)
LDR	R4, [R4, #0]
ADDS	R4, #36
LDR	R2, [R4, #0]
BLX	R2
;MyProject_driver.c,1575 :: 		return;
IT	AL
BAL	L_end_Process_TP_Press
;MyProject_driver.c,1576 :: 		}
L_Process_TP_Press84:
;MyProject_driver.c,1577 :: 		}
L_Process_TP_Press83:
;MyProject_driver.c,1578 :: 		}
L_Process_TP_Press82:
;MyProject_driver.c,1580 :: 		if (_object_count == box_order) {
MOVW	R2, #lo_addr(_box_order+0)
MOVT	R2, #hi_addr(_box_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Press85
;MyProject_driver.c,1581 :: 		if (exec_box->Active != 0) {
MOVW	R2, #lo_addr(_exec_box+0)
MOVT	R2, #hi_addr(_exec_box+0)
LDR	R2, [R2, #0]
ADDS	R2, #19
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Press86
;MyProject_driver.c,1582 :: 		if (exec_box->OnPressPtr != 0) {
MOVW	R4, #lo_addr(_exec_box+0)
MOVT	R4, #hi_addr(_exec_box+0)
LDR	R4, [R4, #0]
ADDS	R4, #48
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Press87
;MyProject_driver.c,1583 :: 		exec_box->OnPressPtr();
MOVW	R4, #lo_addr(_exec_box+0)
MOVT	R4, #hi_addr(_exec_box+0)
LDR	R4, [R4, #0]
ADDS	R4, #48
LDR	R2, [R4, #0]
BLX	R2
;MyProject_driver.c,1584 :: 		return;
IT	AL
BAL	L_end_Process_TP_Press
;MyProject_driver.c,1585 :: 		}
L_Process_TP_Press87:
;MyProject_driver.c,1586 :: 		}
L_Process_TP_Press86:
;MyProject_driver.c,1587 :: 		}
L_Process_TP_Press85:
;MyProject_driver.c,1589 :: 		if (_object_count == box_round_order) {
MOVW	R2, #lo_addr(_box_round_order+0)
MOVT	R2, #hi_addr(_box_round_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Press88
;MyProject_driver.c,1590 :: 		if (exec_round_box->Active != 0) {
MOVW	R2, #lo_addr(_exec_round_box+0)
MOVT	R2, #hi_addr(_exec_round_box+0)
LDR	R2, [R2, #0]
ADDS	R2, #19
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Press89
;MyProject_driver.c,1591 :: 		if (exec_round_box->OnPressPtr != 0) {
MOVW	R4, #lo_addr(_exec_round_box+0)
MOVT	R4, #hi_addr(_exec_round_box+0)
LDR	R4, [R4, #0]
ADDS	R4, #48
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Press90
;MyProject_driver.c,1592 :: 		exec_round_box->OnPressPtr();
MOVW	R4, #lo_addr(_exec_round_box+0)
MOVT	R4, #hi_addr(_exec_round_box+0)
LDR	R4, [R4, #0]
ADDS	R4, #48
LDR	R2, [R4, #0]
BLX	R2
;MyProject_driver.c,1593 :: 		return;
IT	AL
BAL	L_end_Process_TP_Press
;MyProject_driver.c,1594 :: 		}
L_Process_TP_Press90:
;MyProject_driver.c,1595 :: 		}
L_Process_TP_Press89:
;MyProject_driver.c,1596 :: 		}
L_Process_TP_Press88:
;MyProject_driver.c,1598 :: 		}
L_Process_TP_Press75:
;MyProject_driver.c,1599 :: 		}
L_end_Process_TP_Press:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _Process_TP_Press
_Process_TP_Up:
;MyProject_driver.c,1601 :: 		void Process_TP_Up(unsigned int X, unsigned int Y) {
; Y start address is: 4 (R1)
; X start address is: 0 (R0)
SUB	SP, SP, #12
STR	LR, [SP, #0]
; Y end address is: 4 (R1)
; X end address is: 0 (R0)
; X start address is: 0 (R0)
; Y start address is: 4 (R1)
;MyProject_driver.c,1603 :: 		switch (PressedObjectType) {
IT	AL
BAL	L_Process_TP_Up91
;MyProject_driver.c,1605 :: 		case 1: {
L_Process_TP_Up93:
;MyProject_driver.c,1606 :: 		if (PressedObject != 0) {
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
LDR	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Up94
;MyProject_driver.c,1607 :: 		exec_round_button = (TButton_Round*)PressedObject;
MOVW	R4, #lo_addr(_PressedObject+0)
MOVT	R4, #hi_addr(_PressedObject+0)
LDR	R3, [R4, #0]
MOVW	R2, #lo_addr(_exec_round_button+0)
MOVT	R2, #hi_addr(_exec_round_button+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1608 :: 		if ((exec_round_button->PressColEnabled != 0) && (exec_round_button->OwnerScreen == CurrentScreen)) {
MOV	R2, R4
LDR	R2, [R2, #0]
ADDS	R2, #49
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L__Process_TP_Up181
MOVW	R2, #lo_addr(_exec_round_button+0)
MOVT	R2, #hi_addr(_exec_round_button+0)
LDR	R2, [R2, #0]
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
CMP	R3, R2
IT	NE
BNE	L__Process_TP_Up180
L__Process_TP_Up179:
;MyProject_driver.c,1609 :: 		DrawRoundButton(exec_round_button);
MOVW	R2, #lo_addr(_exec_round_button+0)
MOVT	R2, #hi_addr(_exec_round_button+0)
LDR	R2, [R2, #0]
STRH	R1, [SP, #4]
STRH	R0, [SP, #8]
MOV	R0, R2
BL	_DrawRoundButton+0
LDRH	R0, [SP, #8]
LDRH	R1, [SP, #4]
;MyProject_driver.c,1608 :: 		if ((exec_round_button->PressColEnabled != 0) && (exec_round_button->OwnerScreen == CurrentScreen)) {
L__Process_TP_Up181:
L__Process_TP_Up180:
;MyProject_driver.c,1611 :: 		break;
IT	AL
BAL	L_Process_TP_Up92
;MyProject_driver.c,1612 :: 		}
L_Process_TP_Up94:
;MyProject_driver.c,1613 :: 		break;
IT	AL
BAL	L_Process_TP_Up92
;MyProject_driver.c,1616 :: 		case 6: {
L_Process_TP_Up98:
;MyProject_driver.c,1617 :: 		if (PressedObject != 0) {
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
LDR	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Up99
;MyProject_driver.c,1618 :: 		exec_box = (TBox*)PressedObject;
MOVW	R4, #lo_addr(_PressedObject+0)
MOVT	R4, #hi_addr(_PressedObject+0)
LDR	R3, [R4, #0]
MOVW	R2, #lo_addr(_exec_box+0)
MOVT	R2, #hi_addr(_exec_box+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1619 :: 		if ((exec_box->PressColEnabled != 0) && (exec_box->OwnerScreen == CurrentScreen)) {
MOV	R2, R4
LDR	R2, [R2, #0]
ADDS	R2, #30
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L__Process_TP_Up183
MOVW	R2, #lo_addr(_exec_box+0)
MOVT	R2, #hi_addr(_exec_box+0)
LDR	R2, [R2, #0]
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
CMP	R3, R2
IT	NE
BNE	L__Process_TP_Up182
L__Process_TP_Up178:
;MyProject_driver.c,1620 :: 		DrawBox(exec_box);
MOVW	R2, #lo_addr(_exec_box+0)
MOVT	R2, #hi_addr(_exec_box+0)
LDR	R2, [R2, #0]
STRH	R1, [SP, #4]
STRH	R0, [SP, #8]
MOV	R0, R2
BL	_DrawBox+0
LDRH	R0, [SP, #8]
LDRH	R1, [SP, #4]
;MyProject_driver.c,1619 :: 		if ((exec_box->PressColEnabled != 0) && (exec_box->OwnerScreen == CurrentScreen)) {
L__Process_TP_Up183:
L__Process_TP_Up182:
;MyProject_driver.c,1622 :: 		break;
IT	AL
BAL	L_Process_TP_Up92
;MyProject_driver.c,1623 :: 		}
L_Process_TP_Up99:
;MyProject_driver.c,1624 :: 		break;
IT	AL
BAL	L_Process_TP_Up92
;MyProject_driver.c,1627 :: 		case 7: {
L_Process_TP_Up103:
;MyProject_driver.c,1628 :: 		if (PressedObject != 0) {
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
LDR	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Up104
;MyProject_driver.c,1629 :: 		exec_round_box = (TBox_Round*)PressedObject;
MOVW	R4, #lo_addr(_PressedObject+0)
MOVT	R4, #hi_addr(_PressedObject+0)
LDR	R3, [R4, #0]
MOVW	R2, #lo_addr(_exec_round_box+0)
MOVT	R2, #hi_addr(_exec_round_box+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1630 :: 		if ((exec_round_box->PressColEnabled != 0) && (exec_round_box->OwnerScreen == CurrentScreen)) {
MOV	R2, R4
LDR	R2, [R2, #0]
ADDS	R2, #31
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L__Process_TP_Up185
MOVW	R2, #lo_addr(_exec_round_box+0)
MOVT	R2, #hi_addr(_exec_round_box+0)
LDR	R2, [R2, #0]
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
CMP	R3, R2
IT	NE
BNE	L__Process_TP_Up184
L__Process_TP_Up177:
;MyProject_driver.c,1631 :: 		DrawRoundBox(exec_round_box);
MOVW	R2, #lo_addr(_exec_round_box+0)
MOVT	R2, #hi_addr(_exec_round_box+0)
LDR	R2, [R2, #0]
STRH	R1, [SP, #4]
STRH	R0, [SP, #8]
MOV	R0, R2
BL	_DrawRoundBox+0
LDRH	R0, [SP, #8]
LDRH	R1, [SP, #4]
;MyProject_driver.c,1630 :: 		if ((exec_round_box->PressColEnabled != 0) && (exec_round_box->OwnerScreen == CurrentScreen)) {
L__Process_TP_Up185:
L__Process_TP_Up184:
;MyProject_driver.c,1633 :: 		break;
IT	AL
BAL	L_Process_TP_Up92
;MyProject_driver.c,1634 :: 		}
L_Process_TP_Up104:
;MyProject_driver.c,1635 :: 		break;
IT	AL
BAL	L_Process_TP_Up92
;MyProject_driver.c,1637 :: 		}
L_Process_TP_Up91:
MOVW	R2, #lo_addr(_PressedObjectType+0)
MOVT	R2, #hi_addr(_PressedObjectType+0)
LDRSH	R2, [R2, #0]
CMP	R2, #1
IT	EQ
BEQ	L_Process_TP_Up93
MOVW	R2, #lo_addr(_PressedObjectType+0)
MOVT	R2, #hi_addr(_PressedObjectType+0)
LDRSH	R2, [R2, #0]
CMP	R2, #6
IT	EQ
BEQ	L_Process_TP_Up98
MOVW	R2, #lo_addr(_PressedObjectType+0)
MOVT	R2, #hi_addr(_PressedObjectType+0)
LDRSH	R2, [R2, #0]
CMP	R2, #7
IT	EQ
BEQ	L_Process_TP_Up103
L_Process_TP_Up92:
;MyProject_driver.c,1639 :: 		exec_label          = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_exec_label+0)
MOVT	R2, #hi_addr(_exec_label+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1640 :: 		exec_image          = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_exec_image+0)
MOVT	R2, #hi_addr(_exec_image+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1642 :: 		Get_Object(X, Y);
; Y end address is: 4 (R1)
; X end address is: 0 (R0)
BL	_Get_Object+0
;MyProject_driver.c,1645 :: 		if (_object_count != -1) {
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, #-1
IT	EQ
BEQ	L_Process_TP_Up108
;MyProject_driver.c,1647 :: 		if (_object_count == round_button_order) {
MOVW	R2, #lo_addr(_round_button_order+0)
MOVT	R2, #hi_addr(_round_button_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Up109
;MyProject_driver.c,1648 :: 		if (exec_round_button->Active != 0) {
MOVW	R2, #lo_addr(_exec_round_button+0)
MOVT	R2, #hi_addr(_exec_round_button+0)
LDR	R2, [R2, #0]
ADDS	R2, #19
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Up110
;MyProject_driver.c,1649 :: 		if (exec_round_button->OnUpPtr != 0)
MOVW	R4, #lo_addr(_exec_round_button+0)
MOVT	R4, #hi_addr(_exec_round_button+0)
LDR	R4, [R4, #0]
ADDS	R4, #52
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Up111
;MyProject_driver.c,1650 :: 		exec_round_button->OnUpPtr();
MOVW	R4, #lo_addr(_exec_round_button+0)
MOVT	R4, #hi_addr(_exec_round_button+0)
LDR	R4, [R4, #0]
ADDS	R4, #52
LDR	R2, [R4, #0]
BLX	R2
L_Process_TP_Up111:
;MyProject_driver.c,1651 :: 		if (PressedObject == (void *)exec_round_button)
MOVW	R2, #lo_addr(_exec_round_button+0)
MOVT	R2, #hi_addr(_exec_round_button+0)
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
LDR	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Up112
;MyProject_driver.c,1652 :: 		if (exec_round_button->OnClickPtr != 0)
MOVW	R4, #lo_addr(_exec_round_button+0)
MOVT	R4, #hi_addr(_exec_round_button+0)
LDR	R4, [R4, #0]
ADDS	R4, #60
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Up113
;MyProject_driver.c,1653 :: 		exec_round_button->OnClickPtr();
MOVW	R4, #lo_addr(_exec_round_button+0)
MOVT	R4, #hi_addr(_exec_round_button+0)
LDR	R4, [R4, #0]
ADDS	R4, #60
LDR	R2, [R4, #0]
BLX	R2
L_Process_TP_Up113:
L_Process_TP_Up112:
;MyProject_driver.c,1654 :: 		PressedObject = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1655 :: 		PressedObjectType = -1;
MOVW	R3, #65535
SXTH	R3, R3
MOVW	R2, #lo_addr(_PressedObjectType+0)
MOVT	R2, #hi_addr(_PressedObjectType+0)
STRH	R3, [R2, #0]
;MyProject_driver.c,1656 :: 		return;
IT	AL
BAL	L_end_Process_TP_Up
;MyProject_driver.c,1657 :: 		}
L_Process_TP_Up110:
;MyProject_driver.c,1658 :: 		}
L_Process_TP_Up109:
;MyProject_driver.c,1661 :: 		if (_object_count == label_order) {
MOVW	R2, #lo_addr(_label_order+0)
MOVT	R2, #hi_addr(_label_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Up114
;MyProject_driver.c,1662 :: 		if (exec_label->Active != 0) {
MOVW	R2, #lo_addr(_exec_label+0)
MOVT	R2, #hi_addr(_exec_label+0)
LDR	R2, [R2, #0]
ADDS	R2, #28
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Up115
;MyProject_driver.c,1663 :: 		if (exec_label->OnUpPtr != 0)
MOVW	R4, #lo_addr(_exec_label+0)
MOVT	R4, #hi_addr(_exec_label+0)
LDR	R4, [R4, #0]
ADDS	R4, #32
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Up116
;MyProject_driver.c,1664 :: 		exec_label->OnUpPtr();
MOVW	R4, #lo_addr(_exec_label+0)
MOVT	R4, #hi_addr(_exec_label+0)
LDR	R4, [R4, #0]
ADDS	R4, #32
LDR	R2, [R4, #0]
BLX	R2
L_Process_TP_Up116:
;MyProject_driver.c,1665 :: 		if (PressedObject == (void *)exec_label)
MOVW	R2, #lo_addr(_exec_label+0)
MOVT	R2, #hi_addr(_exec_label+0)
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
LDR	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Up117
;MyProject_driver.c,1666 :: 		if (exec_label->OnClickPtr != 0)
MOVW	R4, #lo_addr(_exec_label+0)
MOVT	R4, #hi_addr(_exec_label+0)
LDR	R4, [R4, #0]
ADDS	R4, #40
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Up118
;MyProject_driver.c,1667 :: 		exec_label->OnClickPtr();
MOVW	R4, #lo_addr(_exec_label+0)
MOVT	R4, #hi_addr(_exec_label+0)
LDR	R4, [R4, #0]
ADDS	R4, #40
LDR	R2, [R4, #0]
BLX	R2
L_Process_TP_Up118:
L_Process_TP_Up117:
;MyProject_driver.c,1668 :: 		PressedObject = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1669 :: 		PressedObjectType = -1;
MOVW	R3, #65535
SXTH	R3, R3
MOVW	R2, #lo_addr(_PressedObjectType+0)
MOVT	R2, #hi_addr(_PressedObjectType+0)
STRH	R3, [R2, #0]
;MyProject_driver.c,1670 :: 		return;
IT	AL
BAL	L_end_Process_TP_Up
;MyProject_driver.c,1671 :: 		}
L_Process_TP_Up115:
;MyProject_driver.c,1672 :: 		}
L_Process_TP_Up114:
;MyProject_driver.c,1675 :: 		if (_object_count == image_order) {
MOVW	R2, #lo_addr(_image_order+0)
MOVT	R2, #hi_addr(_image_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Up119
;MyProject_driver.c,1676 :: 		if (exec_image->Active != 0) {
MOVW	R2, #lo_addr(_exec_image+0)
MOVT	R2, #hi_addr(_exec_image+0)
LDR	R2, [R2, #0]
ADDS	R2, #21
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Up120
;MyProject_driver.c,1677 :: 		if (exec_image->OnUpPtr != 0)
MOVW	R4, #lo_addr(_exec_image+0)
MOVT	R4, #hi_addr(_exec_image+0)
LDR	R4, [R4, #0]
ADDS	R4, #24
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Up121
;MyProject_driver.c,1678 :: 		exec_image->OnUpPtr();
MOVW	R4, #lo_addr(_exec_image+0)
MOVT	R4, #hi_addr(_exec_image+0)
LDR	R4, [R4, #0]
ADDS	R4, #24
LDR	R2, [R4, #0]
BLX	R2
L_Process_TP_Up121:
;MyProject_driver.c,1679 :: 		if (PressedObject == (void *)exec_image)
MOVW	R2, #lo_addr(_exec_image+0)
MOVT	R2, #hi_addr(_exec_image+0)
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
LDR	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Up122
;MyProject_driver.c,1680 :: 		if (exec_image->OnClickPtr != 0)
MOVW	R4, #lo_addr(_exec_image+0)
MOVT	R4, #hi_addr(_exec_image+0)
LDR	R4, [R4, #0]
ADDS	R4, #32
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Up123
;MyProject_driver.c,1681 :: 		exec_image->OnClickPtr();
MOVW	R4, #lo_addr(_exec_image+0)
MOVT	R4, #hi_addr(_exec_image+0)
LDR	R4, [R4, #0]
ADDS	R4, #32
LDR	R2, [R4, #0]
BLX	R2
L_Process_TP_Up123:
L_Process_TP_Up122:
;MyProject_driver.c,1682 :: 		PressedObject = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1683 :: 		PressedObjectType = -1;
MOVW	R3, #65535
SXTH	R3, R3
MOVW	R2, #lo_addr(_PressedObjectType+0)
MOVT	R2, #hi_addr(_PressedObjectType+0)
STRH	R3, [R2, #0]
;MyProject_driver.c,1684 :: 		return;
IT	AL
BAL	L_end_Process_TP_Up
;MyProject_driver.c,1685 :: 		}
L_Process_TP_Up120:
;MyProject_driver.c,1686 :: 		}
L_Process_TP_Up119:
;MyProject_driver.c,1689 :: 		if (_object_count == box_order) {
MOVW	R2, #lo_addr(_box_order+0)
MOVT	R2, #hi_addr(_box_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Up124
;MyProject_driver.c,1690 :: 		if (exec_box->Active != 0) {
MOVW	R2, #lo_addr(_exec_box+0)
MOVT	R2, #hi_addr(_exec_box+0)
LDR	R2, [R2, #0]
ADDS	R2, #19
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Up125
;MyProject_driver.c,1691 :: 		if (exec_box->OnUpPtr != 0)
MOVW	R4, #lo_addr(_exec_box+0)
MOVT	R4, #hi_addr(_exec_box+0)
LDR	R4, [R4, #0]
ADDS	R4, #36
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Up126
;MyProject_driver.c,1692 :: 		exec_box->OnUpPtr();
MOVW	R4, #lo_addr(_exec_box+0)
MOVT	R4, #hi_addr(_exec_box+0)
LDR	R4, [R4, #0]
ADDS	R4, #36
LDR	R2, [R4, #0]
BLX	R2
L_Process_TP_Up126:
;MyProject_driver.c,1693 :: 		if (PressedObject == (void *)exec_box)
MOVW	R2, #lo_addr(_exec_box+0)
MOVT	R2, #hi_addr(_exec_box+0)
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
LDR	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Up127
;MyProject_driver.c,1694 :: 		if (exec_box->OnClickPtr != 0)
MOVW	R4, #lo_addr(_exec_box+0)
MOVT	R4, #hi_addr(_exec_box+0)
LDR	R4, [R4, #0]
ADDS	R4, #44
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Up128
;MyProject_driver.c,1695 :: 		exec_box->OnClickPtr();
MOVW	R4, #lo_addr(_exec_box+0)
MOVT	R4, #hi_addr(_exec_box+0)
LDR	R4, [R4, #0]
ADDS	R4, #44
LDR	R2, [R4, #0]
BLX	R2
L_Process_TP_Up128:
L_Process_TP_Up127:
;MyProject_driver.c,1696 :: 		PressedObject = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1697 :: 		PressedObjectType = -1;
MOVW	R3, #65535
SXTH	R3, R3
MOVW	R2, #lo_addr(_PressedObjectType+0)
MOVT	R2, #hi_addr(_PressedObjectType+0)
STRH	R3, [R2, #0]
;MyProject_driver.c,1698 :: 		return;
IT	AL
BAL	L_end_Process_TP_Up
;MyProject_driver.c,1699 :: 		}
L_Process_TP_Up125:
;MyProject_driver.c,1700 :: 		}
L_Process_TP_Up124:
;MyProject_driver.c,1703 :: 		if (_object_count == box_round_order) {
MOVW	R2, #lo_addr(_box_round_order+0)
MOVT	R2, #hi_addr(_box_round_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Up129
;MyProject_driver.c,1704 :: 		if (exec_round_box->Active != 0) {
MOVW	R2, #lo_addr(_exec_round_box+0)
MOVT	R2, #hi_addr(_exec_round_box+0)
LDR	R2, [R2, #0]
ADDS	R2, #19
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Up130
;MyProject_driver.c,1705 :: 		if (exec_round_box->OnUpPtr != 0)
MOVW	R4, #lo_addr(_exec_round_box+0)
MOVT	R4, #hi_addr(_exec_round_box+0)
LDR	R4, [R4, #0]
ADDS	R4, #36
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Up131
;MyProject_driver.c,1706 :: 		exec_round_box->OnUpPtr();
MOVW	R4, #lo_addr(_exec_round_box+0)
MOVT	R4, #hi_addr(_exec_round_box+0)
LDR	R4, [R4, #0]
ADDS	R4, #36
LDR	R2, [R4, #0]
BLX	R2
L_Process_TP_Up131:
;MyProject_driver.c,1707 :: 		if (PressedObject == (void *)exec_round_box)
MOVW	R2, #lo_addr(_exec_round_box+0)
MOVT	R2, #hi_addr(_exec_round_box+0)
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
LDR	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Up132
;MyProject_driver.c,1708 :: 		if (exec_round_box->OnClickPtr != 0)
MOVW	R4, #lo_addr(_exec_round_box+0)
MOVT	R4, #hi_addr(_exec_round_box+0)
LDR	R4, [R4, #0]
ADDS	R4, #44
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Up133
;MyProject_driver.c,1709 :: 		exec_round_box->OnClickPtr();
MOVW	R4, #lo_addr(_exec_round_box+0)
MOVT	R4, #hi_addr(_exec_round_box+0)
LDR	R4, [R4, #0]
ADDS	R4, #44
LDR	R2, [R4, #0]
BLX	R2
L_Process_TP_Up133:
L_Process_TP_Up132:
;MyProject_driver.c,1710 :: 		PressedObject = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1711 :: 		PressedObjectType = -1;
MOVW	R3, #65535
SXTH	R3, R3
MOVW	R2, #lo_addr(_PressedObjectType+0)
MOVT	R2, #hi_addr(_PressedObjectType+0)
STRH	R3, [R2, #0]
;MyProject_driver.c,1712 :: 		return;
IT	AL
BAL	L_end_Process_TP_Up
;MyProject_driver.c,1713 :: 		}
L_Process_TP_Up130:
;MyProject_driver.c,1714 :: 		}
L_Process_TP_Up129:
;MyProject_driver.c,1716 :: 		}
L_Process_TP_Up108:
;MyProject_driver.c,1717 :: 		PressedObject = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1718 :: 		PressedObjectType = -1;
MOVW	R3, #65535
SXTH	R3, R3
MOVW	R2, #lo_addr(_PressedObjectType+0)
MOVT	R2, #hi_addr(_PressedObjectType+0)
STRH	R3, [R2, #0]
;MyProject_driver.c,1719 :: 		}
L_end_Process_TP_Up:
LDR	LR, [SP, #0]
ADD	SP, SP, #12
BX	LR
; end of _Process_TP_Up
_Process_TP_Down:
;MyProject_driver.c,1721 :: 		void Process_TP_Down(unsigned int X, unsigned int Y) {
; Y start address is: 4 (R1)
; X start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; Y end address is: 4 (R1)
; X end address is: 0 (R0)
; X start address is: 0 (R0)
; Y start address is: 4 (R1)
;MyProject_driver.c,1723 :: 		object_pressed      = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_object_pressed+0)
MOVT	R2, #hi_addr(_object_pressed+0)
STRB	R3, [R2, #0]
;MyProject_driver.c,1724 :: 		exec_round_button   = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_exec_round_button+0)
MOVT	R2, #hi_addr(_exec_round_button+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1725 :: 		exec_label          = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_exec_label+0)
MOVT	R2, #hi_addr(_exec_label+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1726 :: 		exec_image          = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_exec_image+0)
MOVT	R2, #hi_addr(_exec_image+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1727 :: 		exec_box            = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_exec_box+0)
MOVT	R2, #hi_addr(_exec_box+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1728 :: 		exec_round_box      = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_exec_round_box+0)
MOVT	R2, #hi_addr(_exec_round_box+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1730 :: 		Get_Object(X, Y);
; Y end address is: 4 (R1)
; X end address is: 0 (R0)
BL	_Get_Object+0
;MyProject_driver.c,1732 :: 		if (_object_count != -1) {
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, #-1
IT	EQ
BEQ	L_Process_TP_Down134
;MyProject_driver.c,1733 :: 		if (_object_count == round_button_order) {
MOVW	R2, #lo_addr(_round_button_order+0)
MOVT	R2, #hi_addr(_round_button_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Down135
;MyProject_driver.c,1734 :: 		if (exec_round_button->Active != 0) {
MOVW	R2, #lo_addr(_exec_round_button+0)
MOVT	R2, #hi_addr(_exec_round_button+0)
LDR	R2, [R2, #0]
ADDS	R2, #19
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Down136
;MyProject_driver.c,1735 :: 		if (exec_round_button->PressColEnabled != 0) {
MOVW	R2, #lo_addr(_exec_round_button+0)
MOVT	R2, #hi_addr(_exec_round_button+0)
LDR	R2, [R2, #0]
ADDS	R2, #49
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Down137
;MyProject_driver.c,1736 :: 		object_pressed = 1;
MOVS	R3, #1
MOVW	R2, #lo_addr(_object_pressed+0)
MOVT	R2, #hi_addr(_object_pressed+0)
STRB	R3, [R2, #0]
;MyProject_driver.c,1737 :: 		DrawRoundButton(exec_round_button);
MOVW	R2, #lo_addr(_exec_round_button+0)
MOVT	R2, #hi_addr(_exec_round_button+0)
LDR	R2, [R2, #0]
MOV	R0, R2
BL	_DrawRoundButton+0
;MyProject_driver.c,1738 :: 		}
L_Process_TP_Down137:
;MyProject_driver.c,1739 :: 		PressedObject = (void *)exec_round_button;
MOVW	R4, #lo_addr(_exec_round_button+0)
MOVT	R4, #hi_addr(_exec_round_button+0)
LDR	R3, [R4, #0]
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1740 :: 		PressedObjectType = 1;
MOVS	R3, #1
SXTH	R3, R3
MOVW	R2, #lo_addr(_PressedObjectType+0)
MOVT	R2, #hi_addr(_PressedObjectType+0)
STRH	R3, [R2, #0]
;MyProject_driver.c,1741 :: 		if (exec_round_button->OnDownPtr != 0) {
LDR	R4, [R4, #0]
ADDS	R4, #56
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Down138
;MyProject_driver.c,1742 :: 		exec_round_button->OnDownPtr();
MOVW	R4, #lo_addr(_exec_round_button+0)
MOVT	R4, #hi_addr(_exec_round_button+0)
LDR	R4, [R4, #0]
ADDS	R4, #56
LDR	R2, [R4, #0]
BLX	R2
;MyProject_driver.c,1743 :: 		return;
IT	AL
BAL	L_end_Process_TP_Down
;MyProject_driver.c,1744 :: 		}
L_Process_TP_Down138:
;MyProject_driver.c,1745 :: 		}
L_Process_TP_Down136:
;MyProject_driver.c,1746 :: 		}
L_Process_TP_Down135:
;MyProject_driver.c,1748 :: 		if (_object_count == label_order) {
MOVW	R2, #lo_addr(_label_order+0)
MOVT	R2, #hi_addr(_label_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Down139
;MyProject_driver.c,1749 :: 		if (exec_label->Active != 0) {
MOVW	R2, #lo_addr(_exec_label+0)
MOVT	R2, #hi_addr(_exec_label+0)
LDR	R2, [R2, #0]
ADDS	R2, #28
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Down140
;MyProject_driver.c,1750 :: 		PressedObject = (void *)exec_label;
MOVW	R4, #lo_addr(_exec_label+0)
MOVT	R4, #hi_addr(_exec_label+0)
LDR	R3, [R4, #0]
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1751 :: 		PressedObjectType = 2;
MOVS	R3, #2
SXTH	R3, R3
MOVW	R2, #lo_addr(_PressedObjectType+0)
MOVT	R2, #hi_addr(_PressedObjectType+0)
STRH	R3, [R2, #0]
;MyProject_driver.c,1752 :: 		if (exec_label->OnDownPtr != 0) {
LDR	R4, [R4, #0]
ADDS	R4, #36
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Down141
;MyProject_driver.c,1753 :: 		exec_label->OnDownPtr();
MOVW	R4, #lo_addr(_exec_label+0)
MOVT	R4, #hi_addr(_exec_label+0)
LDR	R4, [R4, #0]
ADDS	R4, #36
LDR	R2, [R4, #0]
BLX	R2
;MyProject_driver.c,1754 :: 		return;
IT	AL
BAL	L_end_Process_TP_Down
;MyProject_driver.c,1755 :: 		}
L_Process_TP_Down141:
;MyProject_driver.c,1756 :: 		}
L_Process_TP_Down140:
;MyProject_driver.c,1757 :: 		}
L_Process_TP_Down139:
;MyProject_driver.c,1759 :: 		if (_object_count == image_order) {
MOVW	R2, #lo_addr(_image_order+0)
MOVT	R2, #hi_addr(_image_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Down142
;MyProject_driver.c,1760 :: 		if (exec_image->Active != 0) {
MOVW	R2, #lo_addr(_exec_image+0)
MOVT	R2, #hi_addr(_exec_image+0)
LDR	R2, [R2, #0]
ADDS	R2, #21
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Down143
;MyProject_driver.c,1761 :: 		PressedObject = (void *)exec_image;
MOVW	R4, #lo_addr(_exec_image+0)
MOVT	R4, #hi_addr(_exec_image+0)
LDR	R3, [R4, #0]
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1762 :: 		PressedObjectType = 3;
MOVS	R3, #3
SXTH	R3, R3
MOVW	R2, #lo_addr(_PressedObjectType+0)
MOVT	R2, #hi_addr(_PressedObjectType+0)
STRH	R3, [R2, #0]
;MyProject_driver.c,1763 :: 		if (exec_image->OnDownPtr != 0) {
LDR	R4, [R4, #0]
ADDS	R4, #28
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Down144
;MyProject_driver.c,1764 :: 		exec_image->OnDownPtr();
MOVW	R4, #lo_addr(_exec_image+0)
MOVT	R4, #hi_addr(_exec_image+0)
LDR	R4, [R4, #0]
ADDS	R4, #28
LDR	R2, [R4, #0]
BLX	R2
;MyProject_driver.c,1765 :: 		return;
IT	AL
BAL	L_end_Process_TP_Down
;MyProject_driver.c,1766 :: 		}
L_Process_TP_Down144:
;MyProject_driver.c,1767 :: 		}
L_Process_TP_Down143:
;MyProject_driver.c,1768 :: 		}
L_Process_TP_Down142:
;MyProject_driver.c,1770 :: 		if (_object_count == box_order) {
MOVW	R2, #lo_addr(_box_order+0)
MOVT	R2, #hi_addr(_box_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Down145
;MyProject_driver.c,1771 :: 		if (exec_box->Active != 0) {
MOVW	R2, #lo_addr(_exec_box+0)
MOVT	R2, #hi_addr(_exec_box+0)
LDR	R2, [R2, #0]
ADDS	R2, #19
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Down146
;MyProject_driver.c,1772 :: 		if (exec_box->PressColEnabled != 0) {
MOVW	R2, #lo_addr(_exec_box+0)
MOVT	R2, #hi_addr(_exec_box+0)
LDR	R2, [R2, #0]
ADDS	R2, #30
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Down147
;MyProject_driver.c,1773 :: 		object_pressed = 1;
MOVS	R3, #1
MOVW	R2, #lo_addr(_object_pressed+0)
MOVT	R2, #hi_addr(_object_pressed+0)
STRB	R3, [R2, #0]
;MyProject_driver.c,1774 :: 		DrawBox(exec_box);
MOVW	R2, #lo_addr(_exec_box+0)
MOVT	R2, #hi_addr(_exec_box+0)
LDR	R2, [R2, #0]
MOV	R0, R2
BL	_DrawBox+0
;MyProject_driver.c,1775 :: 		}
L_Process_TP_Down147:
;MyProject_driver.c,1776 :: 		PressedObject = (void *)exec_box;
MOVW	R4, #lo_addr(_exec_box+0)
MOVT	R4, #hi_addr(_exec_box+0)
LDR	R3, [R4, #0]
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1777 :: 		PressedObjectType = 6;
MOVS	R3, #6
SXTH	R3, R3
MOVW	R2, #lo_addr(_PressedObjectType+0)
MOVT	R2, #hi_addr(_PressedObjectType+0)
STRH	R3, [R2, #0]
;MyProject_driver.c,1778 :: 		if (exec_box->OnDownPtr != 0) {
LDR	R4, [R4, #0]
ADDS	R4, #40
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Down148
;MyProject_driver.c,1779 :: 		exec_box->OnDownPtr();
MOVW	R4, #lo_addr(_exec_box+0)
MOVT	R4, #hi_addr(_exec_box+0)
LDR	R4, [R4, #0]
ADDS	R4, #40
LDR	R2, [R4, #0]
BLX	R2
;MyProject_driver.c,1780 :: 		return;
IT	AL
BAL	L_end_Process_TP_Down
;MyProject_driver.c,1781 :: 		}
L_Process_TP_Down148:
;MyProject_driver.c,1782 :: 		}
L_Process_TP_Down146:
;MyProject_driver.c,1783 :: 		}
L_Process_TP_Down145:
;MyProject_driver.c,1785 :: 		if (_object_count == box_round_order) {
MOVW	R2, #lo_addr(_box_round_order+0)
MOVT	R2, #hi_addr(_box_round_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Down149
;MyProject_driver.c,1786 :: 		if (exec_round_box->Active != 0) {
MOVW	R2, #lo_addr(_exec_round_box+0)
MOVT	R2, #hi_addr(_exec_round_box+0)
LDR	R2, [R2, #0]
ADDS	R2, #19
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Down150
;MyProject_driver.c,1787 :: 		if (exec_round_box->PressColEnabled != 0) {
MOVW	R2, #lo_addr(_exec_round_box+0)
MOVT	R2, #hi_addr(_exec_round_box+0)
LDR	R2, [R2, #0]
ADDS	R2, #31
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Down151
;MyProject_driver.c,1788 :: 		object_pressed = 1;
MOVS	R3, #1
MOVW	R2, #lo_addr(_object_pressed+0)
MOVT	R2, #hi_addr(_object_pressed+0)
STRB	R3, [R2, #0]
;MyProject_driver.c,1789 :: 		DrawRoundBox(exec_round_box);
MOVW	R2, #lo_addr(_exec_round_box+0)
MOVT	R2, #hi_addr(_exec_round_box+0)
LDR	R2, [R2, #0]
MOV	R0, R2
BL	_DrawRoundBox+0
;MyProject_driver.c,1790 :: 		}
L_Process_TP_Down151:
;MyProject_driver.c,1791 :: 		PressedObject = (void *)exec_round_box;
MOVW	R4, #lo_addr(_exec_round_box+0)
MOVT	R4, #hi_addr(_exec_round_box+0)
LDR	R3, [R4, #0]
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
STR	R3, [R2, #0]
;MyProject_driver.c,1792 :: 		PressedObjectType = 7;
MOVS	R3, #7
SXTH	R3, R3
MOVW	R2, #lo_addr(_PressedObjectType+0)
MOVT	R2, #hi_addr(_PressedObjectType+0)
STRH	R3, [R2, #0]
;MyProject_driver.c,1793 :: 		if (exec_round_box->OnDownPtr != 0) {
LDR	R4, [R4, #0]
ADDS	R4, #40
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Down152
;MyProject_driver.c,1794 :: 		exec_round_box->OnDownPtr();
MOVW	R4, #lo_addr(_exec_round_box+0)
MOVT	R4, #hi_addr(_exec_round_box+0)
LDR	R4, [R4, #0]
ADDS	R4, #40
LDR	R2, [R4, #0]
BLX	R2
;MyProject_driver.c,1795 :: 		return;
IT	AL
BAL	L_end_Process_TP_Down
;MyProject_driver.c,1796 :: 		}
L_Process_TP_Down152:
;MyProject_driver.c,1797 :: 		}
L_Process_TP_Down150:
;MyProject_driver.c,1798 :: 		}
L_Process_TP_Down149:
;MyProject_driver.c,1800 :: 		}
L_Process_TP_Down134:
;MyProject_driver.c,1801 :: 		}
L_end_Process_TP_Down:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _Process_TP_Down
_Check_TP:
;MyProject_driver.c,1803 :: 		void Check_TP() {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_driver.c,1804 :: 		if (FT5XX6_PressDetect()) {
BL	_FT5XX6_PressDetect+0
CMP	R0, #0
IT	EQ
BEQ	L_Check_TP153
;MyProject_driver.c,1805 :: 		if (FT5XX6_GetCoordinates(&Xcoord, &Ycoord) == 0) {
MOVW	R1, #lo_addr(_Ycoord+0)
MOVT	R1, #hi_addr(_Ycoord+0)
MOVW	R0, #lo_addr(_Xcoord+0)
MOVT	R0, #hi_addr(_Xcoord+0)
BL	_FT5XX6_GetCoordinates+0
CMP	R0, #0
IT	NE
BNE	L_Check_TP154
;MyProject_driver.c,1807 :: 		Process_TP_Press(Xcoord, Ycoord);
MOVW	R0, #lo_addr(_Ycoord+0)
MOVT	R0, #hi_addr(_Ycoord+0)
LDRH	R1, [R0, #0]
MOVW	R0, #lo_addr(_Xcoord+0)
MOVT	R0, #hi_addr(_Xcoord+0)
LDRH	R0, [R0, #0]
BL	_Process_TP_Press+0
;MyProject_driver.c,1808 :: 		if (PenDown == 0) {
MOVW	R0, #lo_addr(_PenDown+0)
MOVT	R0, #hi_addr(_PenDown+0)
LDRB	R0, [R0, #0]
CMP	R0, #0
IT	NE
BNE	L_Check_TP155
;MyProject_driver.c,1809 :: 		PenDown = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_PenDown+0)
MOVT	R0, #hi_addr(_PenDown+0)
STRB	R1, [R0, #0]
;MyProject_driver.c,1810 :: 		Process_TP_Down(Xcoord, Ycoord);
MOVW	R0, #lo_addr(_Ycoord+0)
MOVT	R0, #hi_addr(_Ycoord+0)
LDRH	R1, [R0, #0]
MOVW	R0, #lo_addr(_Xcoord+0)
MOVT	R0, #hi_addr(_Xcoord+0)
LDRH	R0, [R0, #0]
BL	_Process_TP_Down+0
;MyProject_driver.c,1811 :: 		}
L_Check_TP155:
;MyProject_driver.c,1812 :: 		}
L_Check_TP154:
;MyProject_driver.c,1813 :: 		}
IT	AL
BAL	L_Check_TP156
L_Check_TP153:
;MyProject_driver.c,1814 :: 		else if (PenDown == 1) {
MOVW	R0, #lo_addr(_PenDown+0)
MOVT	R0, #hi_addr(_PenDown+0)
LDRB	R0, [R0, #0]
CMP	R0, #1
IT	NE
BNE	L_Check_TP157
;MyProject_driver.c,1815 :: 		PenDown = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_PenDown+0)
MOVT	R0, #hi_addr(_PenDown+0)
STRB	R1, [R0, #0]
;MyProject_driver.c,1816 :: 		Process_TP_Up(Xcoord, Ycoord);
MOVW	R0, #lo_addr(_Ycoord+0)
MOVT	R0, #hi_addr(_Ycoord+0)
LDRH	R1, [R0, #0]
MOVW	R0, #lo_addr(_Xcoord+0)
MOVT	R0, #hi_addr(_Xcoord+0)
LDRH	R0, [R0, #0]
BL	_Process_TP_Up+0
;MyProject_driver.c,1817 :: 		}
L_Check_TP157:
L_Check_TP156:
;MyProject_driver.c,1818 :: 		}
L_end_Check_TP:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _Check_TP
_Init_MCU:
;MyProject_driver.c,1820 :: 		void Init_MCU() {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_driver.c,1822 :: 		GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_1);
MOVW	R1, #2
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Output+0
;MyProject_driver.c,1823 :: 		GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_0);
MOVW	R1, #1
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Input+0
;MyProject_driver.c,1824 :: 		GPIOF_ODR.B1 = 1;
MOVW	R1, #lo_addr(GPIOF_ODR+0)
MOVT	R1, #hi_addr(GPIOF_ODR+0)
LDR	R0, [R1, #0]
ORR	R0, R0, #2
STR	R0, [R1, #0]
;MyProject_driver.c,1825 :: 		while (GPIOF_IDR.B0 == 0) {
L_Init_MCU158:
MOVW	R0, #lo_addr(GPIOF_IDR+0)
MOVT	R0, #hi_addr(GPIOF_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #0, #1
CMP	R0, #0
IT	NE
BNE	L_Init_MCU159
;MyProject_driver.c,1826 :: 		GPIOF_ODR.B1 = 0;
MOVW	R1, #lo_addr(GPIOF_ODR+0)
MOVT	R1, #hi_addr(GPIOF_ODR+0)
LDR	R0, [R1, #0]
BFC	R0, #1, #1
STR	R0, [R1, #0]
;MyProject_driver.c,1827 :: 		Delay_us(10);
MOVW	R7, #2154
MOVT	R7, #0
NOP
NOP
L_Init_MCU160:
SUBS	R7, R7, #1
BNE	L_Init_MCU160
NOP
NOP
NOP
;MyProject_driver.c,1828 :: 		GPIOF_ODR.B1 = 1;
MOVW	R1, #lo_addr(GPIOF_ODR+0)
MOVT	R1, #hi_addr(GPIOF_ODR+0)
LDR	R0, [R1, #0]
ORR	R0, R0, #2
STR	R0, [R1, #0]
;MyProject_driver.c,1829 :: 		Delay_us(10);
MOVW	R7, #2154
MOVT	R7, #0
NOP
NOP
L_Init_MCU162:
SUBS	R7, R7, #1
BNE	L_Init_MCU162
NOP
NOP
NOP
;MyProject_driver.c,1830 :: 		}
IT	AL
BAL	L_Init_MCU158
L_Init_MCU159:
;MyProject_driver.c,1831 :: 		I2C2_Init_Advanced(400000, &_GPIO_MODULE_I2C2_PF10);
MOVW	R1, #lo_addr(__GPIO_MODULE_I2C2_PF10+0)
MOVT	R1, #hi_addr(__GPIO_MODULE_I2C2_PF10+0)
MOVW	R0, #6784
MOVT	R0, #6
BL	_I2C2_Init_Advanced+0
;MyProject_driver.c,1832 :: 		}
L_end_Init_MCU:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _Init_MCU
_FT5XX6_Config:
;MyProject_driver.c,1834 :: 		char FT5XX6_Config()  {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_driver.c,1835 :: 		FT5XX6_SetI2CAddress(0x38);
MOVS	R0, #56
BL	_FT5XX6_SetI2CAddress+0
;MyProject_driver.c,1836 :: 		if (FT5XX6_IsOperational() != FT5XX6_OK)
BL	_FT5XX6_IsOperational+0
CMP	R0, #0
IT	EQ
BEQ	L_FT5XX6_Config164
;MyProject_driver.c,1837 :: 		return  FT5XX6_FAILURE;
MOVS	R0, #1
IT	AL
BAL	L_end_FT5XX6_Config
L_FT5XX6_Config164:
;MyProject_driver.c,1838 :: 		FT5XX6_SetDefaultMode();
BL	_FT5XX6_SetDefaultMode+0
;MyProject_driver.c,1839 :: 		FT5XX6_SetController(_TC_FT5X26);
MOVS	R0, #3
BL	_FT5XX6_SetController+0
;MyProject_driver.c,1840 :: 		FT5XX6_SetSizeAndRotation(800,480,2);
MOVS	R2, #2
MOVW	R1, #480
MOVW	R0, #800
BL	_FT5XX6_SetSizeAndRotation+0
;MyProject_driver.c,1841 :: 		return FT5XX6_OK;
MOVS	R0, #0
;MyProject_driver.c,1842 :: 		}
L_end_FT5XX6_Config:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _FT5XX6_Config
_Start_TP:
;MyProject_driver.c,1844 :: 		void Start_TP() {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_driver.c,1845 :: 		Init_MCU();
BL	_Init_MCU+0
;MyProject_driver.c,1847 :: 		InitializeTouchPanel();
BL	MyProject_driver_InitializeTouchPanel+0
;MyProject_driver.c,1848 :: 		if (FT5XX6_Config() == FT5XX6_OK) {
BL	_FT5XX6_Config+0
CMP	R0, #0
IT	NE
BNE	L_Start_TP165
;MyProject_driver.c,1849 :: 		} else {
IT	AL
BAL	L_Start_TP166
L_Start_TP165:
;MyProject_driver.c,1850 :: 		while(1);
L_Start_TP167:
IT	AL
BAL	L_Start_TP167
;MyProject_driver.c,1851 :: 		}
L_Start_TP166:
;MyProject_driver.c,1854 :: 		InitializeObjects();
BL	MyProject_driver_InitializeObjects+0
;MyProject_driver.c,1855 :: 		display_width = Screen1.Width;
MOVW	R0, #lo_addr(_Screen1+2)
MOVT	R0, #hi_addr(_Screen1+2)
LDRH	R1, [R0, #0]
MOVW	R0, #lo_addr(_display_width+0)
MOVT	R0, #hi_addr(_display_width+0)
STRH	R1, [R0, #0]
;MyProject_driver.c,1856 :: 		display_height = Screen1.Height;
MOVW	R0, #lo_addr(_Screen1+4)
MOVT	R0, #hi_addr(_Screen1+4)
LDRH	R1, [R0, #0]
MOVW	R0, #lo_addr(_display_height+0)
MOVT	R0, #hi_addr(_display_height+0)
STRH	R1, [R0, #0]
;MyProject_driver.c,1857 :: 		DrawScreen(&Screen1);
MOVW	R0, #lo_addr(_Screen1+0)
MOVT	R0, #hi_addr(_Screen1+0)
BL	_DrawScreen+0
;MyProject_driver.c,1858 :: 		}
L_end_Start_TP:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _Start_TP
MyProject_driver____?ag:
L_end_MyProject_driver___?ag:
BX	LR
; end of MyProject_driver____?ag
