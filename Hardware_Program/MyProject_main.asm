_main:
;MyProject_main.c,20 :: 		void main() {
;MyProject_main.c,22 :: 		Start_TP();
BL	_Start_TP+0
;MyProject_main.c,23 :: 		systemInit();
BL	_systemInit+0
;MyProject_main.c,24 :: 		applicationInit();
BL	_applicationInit+0
;MyProject_main.c,25 :: 		}
L_end_main:
L__main_end_loop:
B	L__main_end_loop
; end of _main
