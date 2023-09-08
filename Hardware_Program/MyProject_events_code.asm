_get_index:
;signal_processing.h,40 :: 		float get_index(float *array, int n){
; n start address is: 4 (R1)
; array start address is: 0 (R0)
; n end address is: 4 (R1)
; array end address is: 0 (R0)
; array start address is: 0 (R0)
; n start address is: 4 (R1)
;signal_processing.h,41 :: 		if(n < 0) {
CMP	R1, #0
IT	GE
BGE	L_get_index0
; n end address is: 4 (R1)
;signal_processing.h,42 :: 		return array[0];
VLDR	#1, S0, [R0, #0]
; array end address is: 0 (R0)
IT	AL
BAL	L_end_get_index
;signal_processing.h,43 :: 		}
L_get_index0:
;signal_processing.h,44 :: 		return array[n];
; n start address is: 4 (R1)
; array start address is: 0 (R0)
LSLS	R2, R1, #2
; n end address is: 4 (R1)
ADDS	R2, R0, R2
; array end address is: 0 (R0)
VLDR	#1, S0, [R2, #0]
;signal_processing.h,45 :: 		}
L_end_get_index:
BX	LR
; end of _get_index
_get_rotating_index:
;signal_processing.h,47 :: 		float get_rotating_index(float *array, int max, int n) {
; n start address is: 8 (R2)
; max start address is: 4 (R1)
; array start address is: 0 (R0)
; n end address is: 8 (R2)
; max end address is: 4 (R1)
; array end address is: 0 (R0)
; array start address is: 0 (R0)
; max start address is: 4 (R1)
; n start address is: 8 (R2)
;signal_processing.h,48 :: 		if(n < 0) {
CMP	R2, #0
IT	GE
BGE	L_get_rotating_index1
;signal_processing.h,49 :: 		return array[max + n];
ADDS	R3, R1, R2
SXTH	R3, R3
; max end address is: 4 (R1)
; n end address is: 8 (R2)
LSLS	R3, R3, #2
ADDS	R3, R0, R3
; array end address is: 0 (R0)
VLDR	#1, S0, [R3, #0]
IT	AL
BAL	L_end_get_rotating_index
;signal_processing.h,50 :: 		}
L_get_rotating_index1:
;signal_processing.h,51 :: 		return array[n];
; n start address is: 8 (R2)
; array start address is: 0 (R0)
LSLS	R3, R2, #2
; n end address is: 8 (R2)
ADDS	R3, R0, R3
; array end address is: 0 (R0)
VLDR	#1, S0, [R3, #0]
;signal_processing.h,52 :: 		}
L_end_get_rotating_index:
BX	LR
; end of _get_rotating_index
_emg_init:
;signal_processing.h,65 :: 		void emg_init(EMG_Instance_t* emg, float fs_emg){
; fs_emg start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; emg start address is: 0 (R0)
MOV	R6, R0
; fs_emg end address is: 0 (R0)
; emg end address is: 0 (R0)
; emg start address is: 24 (R6)
; fs_emg start address is: 0 (R0)
;signal_processing.h,66 :: 		emg->fs_emg = fs_emg;
MOVW	R1, #16004
ADDS	R1, R6, R1
VSTR	#1, S0, [R1, #0]
; fs_emg end address is: 0 (R0)
;signal_processing.h,67 :: 		emg->length_emg = 0;
ADD	R2, R6, #16000
MOVS	R1, #0
SXTH	R1, R1
STRH	R1, [R2, #0]
;signal_processing.h,68 :: 		emg->current_index_emg = 0;
MOVW	R1, #16002
ADDS	R2, R6, R1
MOVS	R1, #0
SXTH	R1, R1
STRH	R1, [R2, #0]
;signal_processing.h,69 :: 		emg->sum_data_emg = 0.0;
MOVW	R1, #48008
ADDS	R2, R6, R1
MOV	R1, #0
VMOV	S0, R1
VSTR	#1, S0, [R2, #0]
;signal_processing.h,71 :: 		memset(emg->emg_signal, 0, sizeof(emg->emg_signal));
MOVW	R2, #16000
SXTH	R2, R2
MOVS	R1, #0
MOV	R0, R6
BL	_memset+0
;signal_processing.h,72 :: 		memset(emg->lpf_emg, 0, sizeof(emg->lpf_emg));
MOVW	R1, #16008
ADDS	R1, R6, R1
MOVW	R2, #16000
SXTH	R2, R2
MOV	R0, R1
MOVS	R1, #0
BL	_memset+0
;signal_processing.h,73 :: 		memset(emg->hpf_emg, 0, sizeof(emg->hpf_emg));
MOVW	R1, #32008
ADDS	R1, R6, R1
; emg end address is: 24 (R6)
MOVW	R2, #16000
SXTH	R2, R2
MOV	R0, R1
MOVS	R1, #0
BL	_memset+0
;signal_processing.h,74 :: 		}
L_end_emg_init:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _emg_init
_absol:
;signal_processing.h,76 :: 		float absol(float z){
; z start address is: 0 (R0)
VMOV.F32	S1, S0
; z end address is: 0 (R0)
; z start address is: 4 (R1)
;signal_processing.h,77 :: 		if(z<0){
VCMPE.F32	S1, #0
VMRS	#60, FPSCR
IT	GE
BGE	L_absol2
;signal_processing.h,78 :: 		z = z*(-1);
VMOV.F32	S0, #-1
VMUL.F32	S0, S1, S0
; z end address is: 4 (R1)
; z start address is: 0 (R0)
;signal_processing.h,79 :: 		}
; z end address is: 0 (R0)
IT	AL
BAL	L_absol3
L_absol2:
;signal_processing.h,81 :: 		z = z;
; z start address is: 0 (R0)
; z start address is: 4 (R1)
VMOV.F32	S0, S1
; z end address is: 4 (R1)
; z end address is: 0 (R0)
;signal_processing.h,82 :: 		}
L_absol3:
;signal_processing.h,83 :: 		return z;
; z start address is: 0 (R0)
; z end address is: 0 (R0)
;signal_processing.h,84 :: 		}
L_end_absol:
BX	LR
; end of _absol
_emg_baseline_restore:
;signal_processing.h,86 :: 		void emg_baseline_restore(EMG_Instance_t* emg){
; emg start address is: 0 (R0)
; emg end address is: 0 (R0)
; emg start address is: 0 (R0)
;signal_processing.h,87 :: 		int i = emg->current_index_emg & N_DISPLAY_EMG;
MOVW	R1, #16002
ADDS	R1, R0, R1
LDRSH	R1, [R1, #0]
AND	R2, R1, #780
SXTH	R2, R2
; i start address is: 16 (R4)
SXTH	R4, R2
;signal_processing.h,89 :: 		emg->sum_data_emg += emg->emg_signal[i];
MOVW	R1, #48008
ADDS	R3, R0, R1
LSLS	R1, R2, #2
ADDS	R1, R0, R1
VLDR	#1, S1, [R1, #0]
VLDR	#1, S0, [R3, #0]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [R3, #0]
;signal_processing.h,90 :: 		emg->emg_signal[i] = emg->emg_signal[i] - (emg->sum_data_emg / emg->length_emg);
LSLS	R1, R4, #2
; i end address is: 16 (R4)
ADDS	R2, R0, R1
VLDR	#1, S2, [R2, #0]
MOVW	R1, #48008
ADDS	R1, R0, R1
VLDR	#1, S1, [R1, #0]
ADD	R1, R0, #16000
; emg end address is: 0 (R0)
LDRSH	R1, [R1, #0]
VMOV	S0, R1
VCVT.F32	#1, S0, S0
VDIV.F32	S0, S1, S0
VSUB.F32	S0, S2, S0
VSTR	#1, S0, [R2, #0]
;signal_processing.h,91 :: 		}
L_end_emg_baseline_restore:
BX	LR
; end of _emg_baseline_restore
_emg_filter:
;signal_processing.h,93 :: 		float emg_filter(EMG_Instance_t* emg)
; emg start address is: 0 (R0)
SUB	SP, SP, #12
STR	LR, [SP, #0]
MOV	R4, R0
; emg end address is: 0 (R0)
; emg start address is: 16 (R4)
;signal_processing.h,95 :: 		int i = emg->current_index_emg;
MOVW	R1, #16002
ADDS	R1, R4, R1
LDRSH	R1, [R1, #0]
; i start address is: 20 (R5)
SXTH	R5, R1
;signal_processing.h,97 :: 		if (i == 0){
CMP	R1, #0
IT	NE
BNE	L_emg_filter4
;signal_processing.h,98 :: 		emg->lpf_emg[i] = (0.2929*(get_rotating_index(emg->emg_signal, N_DISPLAY_EMG, i)));
MOVW	R1, #16008
ADDS	R2, R4, R1
LSLS	R1, R5, #2
ADDS	R1, R2, R1
STR	R1, [SP, #4]
SXTH	R2, R5
MOVW	R1, #780
SXTH	R1, R1
MOV	R0, R4
BL	_get_rotating_index+0
MOVW	R1, #63229
MOVT	R1, #16021
VMOV	S1, R1
VMUL.F32	S0, S1, S0
LDR	R1, [SP, #4]
VSTR	#1, S0, [R1, #0]
;signal_processing.h,99 :: 		} else if (i == 1){
IT	AL
BAL	L_emg_filter5
L_emg_filter4:
CMP	R5, #1
IT	NE
BNE	L_emg_filter6
;signal_processing.h,100 :: 		emg->lpf_emg[i] = (0.2929*(get_rotating_index(emg->emg_signal, N_DISPLAY_EMG, i))+0.5858*(get_rotating_index(emg->emg_signal, N_DISPLAY_EMG, i-1)));
MOVW	R1, #16008
ADDS	R2, R4, R1
LSLS	R1, R5, #2
ADDS	R1, R2, R1
STR	R1, [SP, #8]
SXTH	R2, R5
MOVW	R1, #780
SXTH	R1, R1
MOV	R0, R4
BL	_get_rotating_index+0
MOVW	R1, #63229
MOVT	R1, #16021
VMOV	S1, R1
VMUL.F32	S0, S1, S0
VSTR	#1, S0, [SP, #4]
SUBS	R1, R5, #1
SXTH	R2, R1
MOVW	R1, #780
SXTH	R1, R1
MOV	R0, R4
BL	_get_rotating_index+0
MOVW	R1, #63229
MOVT	R1, #16149
VMOV	S1, R1
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #4]
VADD.F32	S0, S0, S1
LDR	R1, [SP, #8]
VSTR	#1, S0, [R1, #0]
;signal_processing.h,101 :: 		} else{
IT	AL
BAL	L_emg_filter7
L_emg_filter6:
;signal_processing.h,102 :: 		emg->lpf_emg[i] = (0.2929*(get_rotating_index(emg->emg_signal, N_DISPLAY_EMG, i))+0.5858*(get_rotating_index(emg->emg_signal, N_DISPLAY_EMG, i-1))+0.2929*(get_rotating_index(emg->emg_signal, N_DISPLAY_EMG, i-2)) - 0.1716*(get_rotating_index(emg->lpf_emg, N_DISPLAY_EMG, i-2)));
MOVW	R1, #16008
ADDS	R2, R4, R1
LSLS	R1, R5, #2
ADDS	R1, R2, R1
STR	R1, [SP, #8]
SXTH	R2, R5
MOVW	R1, #780
SXTH	R1, R1
MOV	R0, R4
BL	_get_rotating_index+0
MOVW	R1, #63229
MOVT	R1, #16021
VMOV	S1, R1
VMUL.F32	S0, S1, S0
VSTR	#1, S0, [SP, #4]
SUBS	R1, R5, #1
SXTH	R2, R1
MOVW	R1, #780
SXTH	R1, R1
MOV	R0, R4
BL	_get_rotating_index+0
MOVW	R1, #63229
MOVT	R1, #16149
VMOV	S1, R1
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #4]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [SP, #4]
SUBS	R1, R5, #2
SXTH	R2, R1
MOVW	R1, #780
SXTH	R1, R1
MOV	R0, R4
BL	_get_rotating_index+0
MOVW	R1, #63229
MOVT	R1, #16021
VMOV	S1, R1
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #4]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [SP, #4]
SUBS	R2, R5, #2
MOVW	R1, #16008
ADDS	R1, R4, R1
MOV	R0, R1
MOVW	R1, #780
SXTH	R1, R1
BL	_get_rotating_index+0
MOVW	R1, #47081
MOVT	R1, #15919
VMOV	S1, R1
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #4]
VSUB.F32	S0, S0, S1
LDR	R1, [SP, #8]
VSTR	#1, S0, [R1, #0]
;signal_processing.h,103 :: 		}
L_emg_filter7:
L_emg_filter5:
;signal_processing.h,105 :: 		if (i == 0){
CMP	R5, #0
IT	NE
BNE	L_emg_filter8
;signal_processing.h,106 :: 		emg->hpf_emg[i] = (0.9565*(get_rotating_index(emg->lpf_emg, N_DISPLAY_EMG, i)));
MOVW	R1, #32008
ADDS	R2, R4, R1
LSLS	R1, R5, #2
ADDS	R1, R2, R1
STR	R1, [SP, #4]
MOVW	R1, #16008
ADDS	R1, R4, R1
; emg end address is: 16 (R4)
SXTH	R2, R5
; i end address is: 20 (R5)
MOV	R0, R1
MOVW	R1, #780
SXTH	R1, R1
BL	_get_rotating_index+0
MOVW	R1, #56623
MOVT	R1, #16244
VMOV	S1, R1
VMUL.F32	S0, S1, S0
LDR	R1, [SP, #4]
VSTR	#1, S0, [R1, #0]
;signal_processing.h,107 :: 		} else if (i == 1){
IT	AL
BAL	L_emg_filter9
L_emg_filter8:
; i start address is: 20 (R5)
; emg start address is: 16 (R4)
CMP	R5, #1
IT	NE
BNE	L_emg_filter10
;signal_processing.h,108 :: 		emg->hpf_emg[i] = (0.9565*(get_rotating_index(emg->lpf_emg, N_DISPLAY_EMG, i))-(1.9131*(get_rotating_index(emg->lpf_emg, N_DISPLAY_EMG, i-1)))+1.9112*(get_rotating_index(emg->hpf_emg, N_DISPLAY_EMG, i-1)));
MOVW	R1, #32008
ADDS	R2, R4, R1
LSLS	R1, R5, #2
ADDS	R1, R2, R1
STR	R1, [SP, #8]
MOVW	R1, #16008
ADDS	R1, R4, R1
SXTH	R2, R5
MOV	R0, R1
MOVW	R1, #780
SXTH	R1, R1
BL	_get_rotating_index+0
MOVW	R1, #56623
MOVT	R1, #16244
VMOV	S1, R1
VMUL.F32	S0, S1, S0
VSTR	#1, S0, [SP, #4]
SUBS	R2, R5, #1
MOVW	R1, #16008
ADDS	R1, R4, R1
MOV	R0, R1
MOVW	R1, #780
SXTH	R1, R1
BL	_get_rotating_index+0
MOVW	R1, #57462
MOVT	R1, #16372
VMOV	S1, R1
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #4]
VSUB.F32	S0, S0, S1
VSTR	#1, S0, [SP, #4]
SUBS	R2, R5, #1
; i end address is: 20 (R5)
MOVW	R1, #32008
ADDS	R1, R4, R1
; emg end address is: 16 (R4)
MOV	R0, R1
MOVW	R1, #780
SXTH	R1, R1
BL	_get_rotating_index+0
MOVW	R1, #41524
MOVT	R1, #16372
VMOV	S1, R1
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #4]
VADD.F32	S0, S0, S1
LDR	R1, [SP, #8]
VSTR	#1, S0, [R1, #0]
;signal_processing.h,109 :: 		} else{
IT	AL
BAL	L_emg_filter11
L_emg_filter10:
;signal_processing.h,110 :: 		emg->hpf_emg[i] = (0.9565*(get_rotating_index(emg->lpf_emg, N_DISPLAY_EMG, i))-(1.9131*(get_rotating_index(emg->lpf_emg, N_DISPLAY_EMG, i-1)))+0.9565*(get_rotating_index(emg->lpf_emg, N_DISPLAY_EMG, i-2))+(1.9112*(get_rotating_index(emg->hpf_emg, N_DISPLAY_EMG, i-1))) - 0.9150*(get_rotating_index(emg->hpf_emg, N_DISPLAY_EMG, i-2)));
; i start address is: 20 (R5)
; emg start address is: 16 (R4)
MOVW	R1, #32008
ADDS	R2, R4, R1
LSLS	R1, R5, #2
ADDS	R1, R2, R1
STR	R1, [SP, #8]
MOVW	R1, #16008
ADDS	R1, R4, R1
SXTH	R2, R5
MOV	R0, R1
MOVW	R1, #780
SXTH	R1, R1
BL	_get_rotating_index+0
MOVW	R1, #56623
MOVT	R1, #16244
VMOV	S1, R1
VMUL.F32	S0, S1, S0
VSTR	#1, S0, [SP, #4]
SUBS	R2, R5, #1
MOVW	R1, #16008
ADDS	R1, R4, R1
MOV	R0, R1
MOVW	R1, #780
SXTH	R1, R1
BL	_get_rotating_index+0
MOVW	R1, #57462
MOVT	R1, #16372
VMOV	S1, R1
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #4]
VSUB.F32	S0, S0, S1
VSTR	#1, S0, [SP, #4]
SUBS	R2, R5, #2
MOVW	R1, #16008
ADDS	R1, R4, R1
MOV	R0, R1
MOVW	R1, #780
SXTH	R1, R1
BL	_get_rotating_index+0
MOVW	R1, #56623
MOVT	R1, #16244
VMOV	S1, R1
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #4]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [SP, #4]
SUBS	R2, R5, #1
MOVW	R1, #32008
ADDS	R1, R4, R1
MOV	R0, R1
MOVW	R1, #780
SXTH	R1, R1
BL	_get_rotating_index+0
MOVW	R1, #41524
MOVT	R1, #16372
VMOV	S1, R1
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #4]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [SP, #4]
SUBS	R2, R5, #2
; i end address is: 20 (R5)
MOVW	R1, #32008
ADDS	R1, R4, R1
; emg end address is: 16 (R4)
MOV	R0, R1
MOVW	R1, #780
SXTH	R1, R1
BL	_get_rotating_index+0
MOVW	R1, #15729
MOVT	R1, #16234
VMOV	S1, R1
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #4]
VSUB.F32	S0, S0, S1
LDR	R1, [SP, #8]
VSTR	#1, S0, [R1, #0]
;signal_processing.h,111 :: 		}
L_emg_filter11:
L_emg_filter9:
;signal_processing.h,112 :: 		}
L_end_emg_filter:
LDR	LR, [SP, #0]
ADD	SP, SP, #12
BX	LR
; end of _emg_filter
_extract_contractions:
;signal_processing.h,115 :: 		int extract_contractions(double* emg, int length, int min_length, double** contractions) {
SUB	SP, SP, #40
STR	LR, [SP, #0]
STR	R0, [SP, #12]
STRH	R1, [SP, #16]
STRH	R2, [SP, #20]
STR	R3, [SP, #24]
;signal_processing.h,116 :: 		int contraction_count = 0;
MOVW	R4, #0
STRH	R4, [SP, #4]
MOVW	R4, #0
STRH	R4, [SP, #6]
;signal_processing.h,117 :: 		int contraction_start = 0;
;signal_processing.h,118 :: 		int contraction_end = 0;
;signal_processing.h,119 :: 		int contraction_length = 0;
; contraction_length start address is: 0 (R0)
MOVW	R0, #0
SXTH	R0, R0
;signal_processing.h,120 :: 		int contraction_index = 0;
MOVW	R4, #0
STRH	R4, [SP, #8]
;signal_processing.h,122 :: 		for (i = 0; i < length; i++) {
MOVS	R5, #0
SXTH	R5, R5
MOVW	R4, #lo_addr(_i+0)
MOVT	R4, #hi_addr(_i+0)
STRH	R5, [R4, #0]
; contraction_length end address is: 0 (R0)
SXTH	R9, R0
L_extract_contractions12:
; contraction_length start address is: 36 (R9)
LDRSH	R5, [SP, #16]
MOVW	R4, #lo_addr(_i+0)
MOVT	R4, #hi_addr(_i+0)
LDRSH	R4, [R4, #0]
CMP	R4, R5
IT	GE
BGE	L_extract_contractions13
;signal_processing.h,123 :: 		if (emg[i] != 0 && contraction_length == 0) {
MOVW	R4, #lo_addr(_i+0)
MOVT	R4, #hi_addr(_i+0)
LDRSH	R4, [R4, #0]
LSLS	R5, R4, #2
LDR	R4, [SP, #12]
ADDS	R4, R4, R5
VLDR	#1, S0, [R4, #0]
VCMPE.F32	S0, #0
VMRS	#60, FPSCR
IT	EQ
BEQ	L__extract_contractions174
CMP	R9, #0
IT	NE
BNE	L__extract_contractions173
L__extract_contractions172:
;signal_processing.h,124 :: 		contraction_start = i;
MOVW	R4, #lo_addr(_i+0)
MOVT	R4, #hi_addr(_i+0)
LDRSH	R4, [R4, #0]
STRH	R4, [SP, #6]
;signal_processing.h,125 :: 		contraction_length++;
ADD	R0, R9, #1
SXTH	R0, R0
; contraction_length end address is: 36 (R9)
; contraction_length start address is: 0 (R0)
;signal_processing.h,126 :: 		} else if (emg[i] != 0 && contraction_length > 0) {
; contraction_length end address is: 0 (R0)
IT	AL
BAL	L_extract_contractions18
;signal_processing.h,123 :: 		if (emg[i] != 0 && contraction_length == 0) {
L__extract_contractions174:
; contraction_length start address is: 36 (R9)
L__extract_contractions173:
;signal_processing.h,126 :: 		} else if (emg[i] != 0 && contraction_length > 0) {
MOVW	R4, #lo_addr(_i+0)
MOVT	R4, #hi_addr(_i+0)
LDRSH	R4, [R4, #0]
LSLS	R5, R4, #2
LDR	R4, [SP, #12]
ADDS	R4, R4, R5
VLDR	#1, S0, [R4, #0]
VCMPE.F32	S0, #0
VMRS	#60, FPSCR
IT	EQ
BEQ	L__extract_contractions176
CMP	R9, #0
IT	LE
BLE	L__extract_contractions175
L__extract_contractions171:
;signal_processing.h,127 :: 		contraction_length++;
ADD	R4, R9, #1
; contraction_length end address is: 36 (R9)
; contraction_length start address is: 16 (R4)
;signal_processing.h,128 :: 		} else if (emg[i] == 0 && contraction_length > 0) {
SXTH	R0, R4
; contraction_length end address is: 16 (R4)
IT	AL
BAL	L_extract_contractions22
;signal_processing.h,126 :: 		} else if (emg[i] != 0 && contraction_length > 0) {
L__extract_contractions176:
; contraction_length start address is: 36 (R9)
L__extract_contractions175:
;signal_processing.h,128 :: 		} else if (emg[i] == 0 && contraction_length > 0) {
MOVW	R4, #lo_addr(_i+0)
MOVT	R4, #hi_addr(_i+0)
LDRSH	R4, [R4, #0]
LSLS	R5, R4, #2
LDR	R4, [SP, #12]
ADDS	R4, R4, R5
VLDR	#1, S0, [R4, #0]
VCMPE.F32	S0, #0
VMRS	#60, FPSCR
IT	NE
BNE	L__extract_contractions179
CMP	R9, #0
IT	LE
BLE	L__extract_contractions180
L__extract_contractions170:
;signal_processing.h,129 :: 		contraction_end = i - 1;
MOVW	R4, #lo_addr(_i+0)
MOVT	R4, #hi_addr(_i+0)
LDRSH	R4, [R4, #0]
SUBS	R4, R4, #1
STRH	R4, [SP, #28]
;signal_processing.h,131 :: 		if (contraction_length >= min_length) {
LDRSH	R4, [SP, #20]
CMP	R9, R4
IT	LT
BLT	L_extract_contractions26
;signal_processing.h,133 :: 		contractions[contraction_count] = (double*)malloc(contraction_length * sizeof(double));
LDRSH	R4, [SP, #4]
LSLS	R5, R4, #2
LDR	R4, [SP, #24]
ADDS	R4, R4, R5
STR	R4, [SP, #36]
LSL	R4, R9, #2
SXTH	R4, R4
; contraction_length end address is: 36 (R9)
SXTH	R0, R4
BL	_Malloc+0
LDR	R4, [SP, #36]
STR	R0, [R4, #0]
;signal_processing.h,136 :: 		for (j = contraction_start; j <= contraction_end; j++) {
LDRSH	R5, [SP, #6]
MOVW	R4, #lo_addr(_j+0)
MOVT	R4, #hi_addr(_j+0)
STRH	R5, [R4, #0]
L_extract_contractions27:
LDRSH	R5, [SP, #28]
MOVW	R4, #lo_addr(_j+0)
MOVT	R4, #hi_addr(_j+0)
LDRSH	R4, [R4, #0]
CMP	R4, R5
IT	GT
BGT	L_extract_contractions28
;signal_processing.h,137 :: 		contractions[contraction_count][contraction_index] = emg[j];
LDRSH	R4, [SP, #4]
LSLS	R5, R4, #2
LDR	R4, [SP, #24]
ADDS	R4, R4, R5
LDR	R5, [R4, #0]
LDRSH	R4, [SP, #8]
LSLS	R4, R4, #2
ADDS	R7, R5, R4
MOVW	R6, #lo_addr(_j+0)
MOVT	R6, #hi_addr(_j+0)
LDRSH	R4, [R6, #0]
LSLS	R5, R4, #2
LDR	R4, [SP, #12]
ADDS	R4, R4, R5
VLDR	#1, S0, [R4, #0]
VSTR	#1, S0, [R7, #0]
;signal_processing.h,138 :: 		contraction_index++;
LDRSH	R4, [SP, #8]
ADDS	R4, R4, #1
STRH	R4, [SP, #8]
;signal_processing.h,136 :: 		for (j = contraction_start; j <= contraction_end; j++) {
MOV	R4, R6
LDRSH	R4, [R4, #0]
ADDS	R4, R4, #1
STRH	R4, [R6, #0]
;signal_processing.h,139 :: 		}
IT	AL
BAL	L_extract_contractions27
L_extract_contractions28:
;signal_processing.h,142 :: 		contraction_count++;
LDRSH	R4, [SP, #4]
ADDS	R4, R4, #1
STRH	R4, [SP, #4]
;signal_processing.h,143 :: 		contraction_index = 0;
MOVS	R4, #0
SXTH	R4, R4
STRH	R4, [SP, #8]
;signal_processing.h,144 :: 		}
L_extract_contractions26:
;signal_processing.h,147 :: 		contraction_start = 0;
MOVS	R4, #0
SXTH	R4, R4
STRH	R4, [SP, #6]
;signal_processing.h,149 :: 		contraction_length = 0;
; contraction_length start address is: 28 (R7)
MOVS	R7, #0
SXTH	R7, R7
; contraction_length end address is: 28 (R7)
SXTH	R0, R7
;signal_processing.h,128 :: 		} else if (emg[i] == 0 && contraction_length > 0) {
IT	AL
BAL	L__extract_contractions178
L__extract_contractions179:
SXTH	R0, R9
L__extract_contractions178:
; contraction_length start address is: 0 (R0)
; contraction_length end address is: 0 (R0)
IT	AL
BAL	L__extract_contractions177
L__extract_contractions180:
SXTH	R0, R9
L__extract_contractions177:
;signal_processing.h,150 :: 		}
; contraction_length start address is: 0 (R0)
; contraction_length end address is: 0 (R0)
L_extract_contractions22:
; contraction_length start address is: 0 (R0)
; contraction_length end address is: 0 (R0)
L_extract_contractions18:
;signal_processing.h,122 :: 		for (i = 0; i < length; i++) {
; contraction_length start address is: 0 (R0)
MOVW	R5, #lo_addr(_i+0)
MOVT	R5, #hi_addr(_i+0)
LDRSH	R4, [R5, #0]
ADDS	R4, R4, #1
STRH	R4, [R5, #0]
;signal_processing.h,151 :: 		}
SXTH	R9, R0
; contraction_length end address is: 0 (R0)
IT	AL
BAL	L_extract_contractions12
L_extract_contractions13:
;signal_processing.h,153 :: 		return contraction_count;
LDRSH	R0, [SP, #4]
;signal_processing.h,154 :: 		}
L_end_extract_contractions:
LDR	LR, [SP, #0]
ADD	SP, SP, #40
BX	LR
; end of _extract_contractions
_emg_time_domain_calculation:
;signal_processing.h,156 :: 		void emg_time_domain_calculation(EMG_Instance_t *emg) {
; emg start address is: 0 (R0)
SUB	SP, SP, #12
STR	LR, [SP, #0]
; emg end address is: 0 (R0)
; emg start address is: 0 (R0)
;signal_processing.h,158 :: 		int i, segment_duration = 300000, limit = 2, current_index = 0;
;signal_processing.h,160 :: 		float _rms = 0.0;
; _rms start address is: 28 (R7)
MOV	R1, #0
VMOV	S7, R1
;signal_processing.h,161 :: 		float _ssi = 0.0;
; _ssi start address is: 24 (R6)
MOV	R1, #0
VMOV	S6, R1
;signal_processing.h,162 :: 		float _mav = 0.0;
; _mav start address is: 20 (R5)
MOV	R1, #0
VMOV	S5, R1
;signal_processing.h,163 :: 		float _iemg = 0.0;
; _iemg start address is: 16 (R4)
MOV	R1, #0
VMOV	S4, R1
;signal_processing.h,166 :: 		for(i = 0; i < emg->length_emg; i++) {
; i start address is: 4 (R1)
MOVS	R1, #0
SXTH	R1, R1
; i end address is: 4 (R1)
; _iemg end address is: 16 (R4)
; _mav end address is: 20 (R5)
; _ssi end address is: 24 (R6)
; _rms end address is: 28 (R7)
; emg end address is: 0 (R0)
MOV	R3, R0
SXTH	R0, R1
L_emg_time_domain_calculation30:
; i start address is: 0 (R0)
; _iemg start address is: 16 (R4)
; _mav start address is: 20 (R5)
; _ssi start address is: 24 (R6)
; _rms start address is: 28 (R7)
; emg start address is: 12 (R3)
ADD	R1, R3, #16000
LDRSH	R1, [R1, #0]
CMP	R0, R1
IT	GE
BGE	L_emg_time_domain_calculation31
;signal_processing.h,167 :: 		_rms += emg->hpf_emg[i] * emg->hpf_emg[i];
MOVW	R1, #32008
ADDS	R2, R3, R1
LSLS	R1, R0, #2
ADDS	R1, R2, R1
VLDR	#1, S0, [R1, #0]
VMUL.F32	S0, S0, S0
VADD.F32	S7, S7, S0
;signal_processing.h,166 :: 		for(i = 0; i < emg->length_emg; i++) {
ADDS	R0, R0, #1
SXTH	R0, R0
;signal_processing.h,168 :: 		}
; i end address is: 0 (R0)
IT	AL
BAL	L_emg_time_domain_calculation30
L_emg_time_domain_calculation31:
;signal_processing.h,169 :: 		emg->rms = (float) sqrt(_rms / (emg->length_emg));
MOVW	R1, #48012
ADDS	R1, R3, R1
STR	R1, [SP, #8]
ADD	R1, R3, #16000
LDRSH	R1, [R1, #0]
VMOV	S0, R1
VCVT.F32	#1, S0, S0
VDIV.F32	S0, S7, S0
; _rms end address is: 28 (R7)
BL	_sqrt+0
LDR	R1, [SP, #8]
VSTR	#1, S0, [R1, #0]
;signal_processing.h,172 :: 		for(i = 0; i < emg->length_emg; i++) {
; i start address is: 16 (R4)
MOVS	R4, #0
SXTH	R4, R4
; _iemg end address is: 16 (R4)
; _mav end address is: 20 (R5)
; _ssi end address is: 24 (R6)
; emg end address is: 12 (R3)
; i end address is: 16 (R4)
VMOV.F32	S2, S4
VMOV.F32	S1, S5
MOV	R0, R3
VMOV.F32	S3, S6
L_emg_time_domain_calculation33:
; i start address is: 16 (R4)
; emg start address is: 0 (R0)
; _ssi start address is: 12 (R3)
; _mav start address is: 4 (R1)
; _iemg start address is: 8 (R2)
ADD	R1, R0, #16000
LDRSH	R1, [R1, #0]
CMP	R4, R1
IT	GE
BGE	L_emg_time_domain_calculation34
;signal_processing.h,173 :: 		_ssi += emg->hpf_emg[i] * emg->hpf_emg[i];
MOVW	R1, #32008
ADDS	R2, R0, R1
LSLS	R1, R4, #2
ADDS	R1, R2, R1
VLDR	#1, S0, [R1, #0]
VMUL.F32	S0, S0, S0
VADD.F32	S3, S3, S0
;signal_processing.h,172 :: 		for(i = 0; i < emg->length_emg; i++) {
ADDS	R4, R4, #1
SXTH	R4, R4
;signal_processing.h,174 :: 		}
; i end address is: 16 (R4)
IT	AL
BAL	L_emg_time_domain_calculation33
L_emg_time_domain_calculation34:
;signal_processing.h,175 :: 		emg->ssi = (float) _ssi;
MOVW	R1, #48016
ADDS	R1, R0, R1
VSTR	#1, S3, [R1, #0]
; _ssi end address is: 12 (R3)
;signal_processing.h,178 :: 		for(i = 0; i < emg->length_emg; i++) {
; i start address is: 12 (R3)
MOVS	R3, #0
SXTH	R3, R3
; _mav end address is: 4 (R1)
; emg end address is: 0 (R0)
; _iemg end address is: 8 (R2)
; i end address is: 12 (R3)
VMOV.F32	S3, S1
L_emg_time_domain_calculation36:
; i start address is: 12 (R3)
; _iemg start address is: 8 (R2)
; _mav start address is: 12 (R3)
; emg start address is: 0 (R0)
ADD	R1, R0, #16000
LDRSH	R1, [R1, #0]
CMP	R3, R1
IT	GE
BGE	L_emg_time_domain_calculation37
;signal_processing.h,179 :: 		_mav += fabs(emg->hpf_emg[i]);
MOVW	R1, #32008
ADDS	R2, R0, R1
LSLS	R1, R3, #2
ADDS	R1, R2, R1
VLDR	#1, S0, [R1, #0]
BL	_fabs+0
VADD.F32	S3, S3, S0
;signal_processing.h,178 :: 		for(i = 0; i < emg->length_emg; i++) {
ADDS	R3, R3, #1
SXTH	R3, R3
;signal_processing.h,180 :: 		}
STRH	R3, [SP, #4]
; i end address is: 12 (R3)
LDRSH	R3, [SP, #4]
IT	AL
BAL	L_emg_time_domain_calculation36
L_emg_time_domain_calculation37:
;signal_processing.h,181 :: 		emg->mav = (float) _mav / (emg->length_emg) ;
MOVW	R1, #48020
ADDS	R2, R0, R1
ADD	R1, R0, #16000
LDRSH	R1, [R1, #0]
VMOV	S0, R1
VCVT.F32	#1, S0, S0
VDIV.F32	S0, S3, S0
; _mav end address is: 12 (R3)
VSTR	#1, S0, [R2, #0]
;signal_processing.h,184 :: 		for(i = 0; i < emg->length_emg; i++) {
; i start address is: 12 (R3)
MOVS	R3, #0
SXTH	R3, R3
; emg end address is: 0 (R0)
; _iemg end address is: 8 (R2)
; i end address is: 12 (R3)
L_emg_time_domain_calculation39:
; i start address is: 12 (R3)
; emg start address is: 0 (R0)
; _iemg start address is: 8 (R2)
ADD	R1, R0, #16000
LDRSH	R1, [R1, #0]
CMP	R3, R1
IT	GE
BGE	L_emg_time_domain_calculation40
;signal_processing.h,185 :: 		_iemg += fabs(emg->hpf_emg[i]);
MOVW	R1, #32008
ADDS	R2, R0, R1
LSLS	R1, R3, #2
ADDS	R1, R2, R1
VLDR	#1, S0, [R1, #0]
BL	_fabs+0
VADD.F32	S2, S2, S0
;signal_processing.h,184 :: 		for(i = 0; i < emg->length_emg; i++) {
ADDS	R3, R3, #1
SXTH	R3, R3
;signal_processing.h,186 :: 		}
; i end address is: 12 (R3)
IT	AL
BAL	L_emg_time_domain_calculation39
L_emg_time_domain_calculation40:
;signal_processing.h,187 :: 		emg->iemg = (float) _iemg;
MOVW	R1, #48024
ADDS	R1, R0, R1
; emg end address is: 0 (R0)
VSTR	#1, S2, [R1, #0]
; _iemg end address is: 8 (R2)
;signal_processing.h,188 :: 		}
L_end_emg_time_domain_calculation:
LDR	LR, [SP, #0]
ADD	SP, SP, #12
BX	LR
; end of _emg_time_domain_calculation
_multiply:
;signal_processing.h,190 :: 		complex_t_2 multiply(complex_t_2 a, complex_t_2 b) {
SUB	SP, SP, #8
; su_addr start address is: 0 (R0)
MOV	R0, R12
;signal_processing.h,192 :: 		result.real_2 = (a.real_2 * b.real_2) - (a.imag_2 * b.imag_2);
VLDR	#1, S1, [SP, #16]
VLDR	#1, S0, [SP, #8]
VMUL.F32	S2, S0, S1
VLDR	#1, S1, [SP, #20]
VLDR	#1, S0, [SP, #12]
VMUL.F32	S0, S0, S1
VSUB.F32	S0, S2, S0
VSTR	#1, S0, [SP, #0]
;signal_processing.h,193 :: 		result.imag_2 = (a.real_2 * b.imag_2) + (a.imag_2 * b.real_2);
VLDR	#1, S1, [SP, #20]
VLDR	#1, S0, [SP, #8]
VMUL.F32	S2, S0, S1
VLDR	#1, S1, [SP, #16]
VLDR	#1, S0, [SP, #12]
VMUL.F32	S0, S0, S1
VADD.F32	S0, S2, S0
VSTR	#1, S0, [SP, #4]
;signal_processing.h,194 :: 		return result;
MOV	R3, #8
MOV	R2, R0
; su_addr end address is: 0 (R0)
ADD	R1, SP, #0
L_multiply42:
LDRB	R0, [R1, #0]
STRB	R0, [R2, #0]
SUBS	R3, R3, #1
ADDS	R1, R1, #1
ADDS	R2, R2, #1
CMP	R3, #0
IT	NE
BNE	L_multiply42
;signal_processing.h,195 :: 		}
L_end_multiply:
ADD	SP, SP, #8
BX	LR
; end of _multiply
_fft:
;signal_processing.h,197 :: 		void fft(complex_t_2 *v, int n, complex_t_2 *tmp){
; tmp start address is: 8 (R2)
; n start address is: 4 (R1)
; v start address is: 0 (R0)
SUB	SP, SP, #36
STR	LR, [SP, #0]
MOV	R4, R2
; tmp end address is: 8 (R2)
; n end address is: 4 (R1)
; v end address is: 0 (R0)
; v start address is: 0 (R0)
; n start address is: 4 (R1)
; tmp start address is: 16 (R4)
;signal_processing.h,198 :: 		if (n > 1) {
CMP	R1, #1
IT	LE
BLE	L_fft43
;signal_processing.h,201 :: 		ve = tmp; vo = tmp + n/2;
; ve start address is: 8 (R2)
MOV	R2, R4
MOVS	R3, #2
SXTH	R3, R3
SDIV	R3, R1, R3
SXTH	R3, R3
LSLS	R3, R3, #3
ADDS	R3, R4, R3
; tmp end address is: 16 (R4)
; vo start address is: 12 (R3)
;signal_processing.h,202 :: 		for(k = 0; k < n/2; k++) {
; k start address is: 28 (R7)
MOVS	R7, #0
SXTH	R7, R7
; v end address is: 0 (R0)
; n end address is: 4 (R1)
; vo end address is: 12 (R3)
; k end address is: 28 (R7)
; ve end address is: 8 (R2)
SXTH	R8, R1
MOV	R1, R0
MOV	R0, R3
L_fft44:
; k start address is: 28 (R7)
; vo start address is: 0 (R0)
; ve start address is: 8 (R2)
; n start address is: 32 (R8)
; v start address is: 4 (R1)
MOVS	R3, #2
SXTH	R3, R3
SDIV	R3, R8, R3
SXTH	R3, R3
CMP	R7, R3
IT	GE
BGE	L_fft45
;signal_processing.h,203 :: 		ve[k] = v[2*k];
LSLS	R3, R7, #3
ADDS	R4, R2, R3
LSLS	R3, R7, #1
SXTH	R3, R3
LSLS	R3, R3, #3
ADDS	R3, R1, R3
MOV	R6, #8
MOV	R5, R4
MOV	R4, R3
; k end address is: 28 (R7)
; vo end address is: 0 (R0)
MOV	R9, R0
SXTH	R0, R7
IT	AL
BAL	L_fft47
L__fft181:
L_fft47:
; k start address is: 0 (R0)
; v start address is: 4 (R1)
; vo start address is: 36 (R9)
; v end address is: 4 (R1)
; n start address is: 32 (R8)
; n end address is: 32 (R8)
; ve start address is: 8 (R2)
; ve end address is: 8 (R2)
; vo start address is: 36 (R9)
; vo end address is: 36 (R9)
; k start address is: 0 (R0)
; k end address is: 0 (R0)
LDRB	R3, [R4, #0]
STRB	R3, [R5, #0]
SUBS	R6, R6, #1
ADDS	R4, R4, #1
ADDS	R5, R5, #1
CMP	R6, #0
IT	NE
BNE	L__fft181
; ve end address is: 8 (R2)
; vo end address is: 36 (R9)
; v end address is: 4 (R1)
; k end address is: 0 (R0)
; n end address is: 32 (R8)
;signal_processing.h,204 :: 		vo[k] = v[2*k + 1];
; n start address is: 32 (R8)
; k start address is: 0 (R0)
; v start address is: 4 (R1)
; vo start address is: 36 (R9)
; ve start address is: 8 (R2)
LSLS	R3, R0, #3
ADD	R4, R9, R3, LSL #0
LSLS	R3, R0, #1
SXTH	R3, R3
ADDS	R3, R3, #1
SXTH	R3, R3
LSLS	R3, R3, #3
ADDS	R3, R1, R3
MOV	R6, #8
MOV	R5, R4
MOV	R4, R3
; ve end address is: 8 (R2)
; vo end address is: 36 (R9)
MOV	R7, R2
MOV	R2, R9
IT	AL
BAL	L_fft48
L__fft182:
L_fft48:
; k start address is: 0 (R0)
; ve start address is: 28 (R7)
; vo start address is: 8 (R2)
; k end address is: 0 (R0)
; vo start address is: 8 (R2)
; vo end address is: 8 (R2)
; ve start address is: 28 (R7)
; ve end address is: 28 (R7)
; n start address is: 32 (R8)
; n end address is: 32 (R8)
; v start address is: 4 (R1)
; v end address is: 4 (R1)
LDRB	R3, [R4, #0]
STRB	R3, [R5, #0]
SUBS	R6, R6, #1
ADDS	R4, R4, #1
ADDS	R5, R5, #1
CMP	R6, #0
IT	NE
BNE	L__fft182
; vo end address is: 8 (R2)
; ve end address is: 28 (R7)
; v end address is: 4 (R1)
; k end address is: 0 (R0)
; n end address is: 32 (R8)
;signal_processing.h,202 :: 		for(k = 0; k < n/2; k++) {
; n start address is: 32 (R8)
; k start address is: 0 (R0)
; v start address is: 4 (R1)
; ve start address is: 28 (R7)
; vo start address is: 8 (R2)
ADDS	R0, R0, #1
SXTH	R0, R0
;signal_processing.h,205 :: 		}
STRH	R0, [SP, #4]
; vo end address is: 8 (R2)
; ve end address is: 28 (R7)
; k end address is: 0 (R0)
MOV	R0, R2
MOV	R2, R7
LDRSH	R7, [SP, #4]
IT	AL
BAL	L_fft44
L_fft45:
;signal_processing.h,206 :: 		fft(ve, n/2, v);
; ve start address is: 8 (R2)
; vo start address is: 0 (R0)
MOVS	R3, #2
SXTH	R3, R3
SDIV	R3, R8, R3
STR	R1, [SP, #4]
STRH	R8, [SP, #8]
STR	R2, [SP, #12]
STR	R0, [SP, #16]
MOV	R0, R2
MOV	R2, R1
SXTH	R1, R3
BL	_fft+0
LDR	R0, [SP, #16]
LDR	R2, [SP, #12]
LDRSH	R8, [SP, #8]
LDR	R1, [SP, #4]
;signal_processing.h,207 :: 		fft(vo, n/2, v);
MOVS	R3, #2
SXTH	R3, R3
SDIV	R3, R8, R3
STR	R1, [SP, #4]
STRH	R8, [SP, #8]
STR	R2, [SP, #12]
STR	R0, [SP, #16]
MOV	R2, R1
SXTH	R1, R3
BL	_fft+0
LDR	R0, [SP, #16]
LDR	R2, [SP, #12]
LDRSH	R8, [SP, #8]
LDR	R1, [SP, #4]
;signal_processing.h,208 :: 		for(m=0; m<n/2; m++) {
; m start address is: 24 (R6)
MOVS	R6, #0
SXTH	R6, R6
; vo end address is: 0 (R0)
; ve end address is: 8 (R2)
; v end address is: 4 (R1)
; n end address is: 32 (R8)
; m end address is: 24 (R6)
MOV	R10, R0
MOV	R9, R2
MOV	R7, R1
L_fft49:
; m start address is: 24 (R6)
; vo start address is: 40 (R10)
; ve start address is: 36 (R9)
; v start address is: 28 (R7)
; v start address is: 28 (R7)
; v end address is: 28 (R7)
; n start address is: 32 (R8)
; ve start address is: 36 (R9)
; ve end address is: 36 (R9)
; vo start address is: 40 (R10)
; vo end address is: 40 (R10)
MOVS	R3, #2
SXTH	R3, R3
SDIV	R3, R8, R3
SXTH	R3, R3
CMP	R6, R3
IT	GE
BGE	L_fft50
; v end address is: 28 (R7)
; ve end address is: 36 (R9)
; vo end address is: 40 (R10)
;signal_processing.h,209 :: 		w.real_2 = cos(2*phi_t*m/(double)n);
; vo start address is: 40 (R10)
; ve start address is: 36 (R9)
; v start address is: 28 (R7)
VMOV	S1, R6
VCVT.F32	#1, S1, S1
MOVW	R3, #62915
MOVT	R3, #16584
VMOV	S0, R3
VMUL.F32	S1, S0, S1
VMOV	S0, R8
VCVT.F32	#1, S0, S0
VDIV.F32	S0, S1, S0
BL	_cos+0
VSTR	#1, S0, [SP, #28]
;signal_processing.h,210 :: 		w.imag_2 = -sin(2*phi_t*m/(double)n);
VMOV	S1, R6
VCVT.F32	#1, S1, S1
MOVW	R3, #62915
MOVT	R3, #16584
VMOV	S0, R3
VMUL.F32	S1, S0, S1
VMOV	S0, R8
VCVT.F32	#1, S0, S0
VDIV.F32	S0, S1, S0
BL	_sin+0
VNEG.F32	S2, S0
VSTR	#1, S2, [SP, #32]
;signal_processing.h,211 :: 		z.real_2 = w.real_2*vo[m].real_2 - w.imag_2*vo[m].imag_2;
LSLS	R5, R6, #3
ADD	R4, R10, R5, LSL #0
VLDR	#1, S1, [R4, #0]
VLDR	#1, S0, [SP, #28]
VMUL.F32	S1, S0, S1
ADDS	R3, R4, #4
VLDR	#1, S0, [R3, #0]
VMUL.F32	S0, S2, S0
VSUB.F32	S0, S1, S0
VSTR	#1, S0, [SP, #20]
;signal_processing.h,212 :: 		z.imag_2 = w.real_2*vo[m].imag_2 + w.imag_2*vo[m].real_2;
VLDR	#1, S1, [R3, #0]
VLDR	#1, S0, [SP, #28]
VMUL.F32	S1, S0, S1
VLDR	#1, S0, [R4, #0]
VMUL.F32	S0, S2, S0
VADD.F32	S0, S1, S0
VSTR	#1, S0, [SP, #24]
;signal_processing.h,213 :: 		v[  m  ].real_2 = ve[m].real_2 + z.real_2;
ADDS	R4, R7, R5
ADD	R3, R9, R5, LSL #0
VLDR	#1, S1, [R3, #0]
VLDR	#1, S0, [SP, #20]
VADD.F32	S0, S1, S0
VSTR	#1, S0, [R4, #0]
;signal_processing.h,214 :: 		v[  m  ].imag_2 = ve[m].imag_2 + z.imag_2;
LSLS	R4, R6, #3
ADDS	R3, R7, R4
ADDS	R5, R3, #4
ADD	R3, R9, R4, LSL #0
ADDS	R3, R3, #4
VLDR	#1, S1, [R3, #0]
VLDR	#1, S0, [SP, #24]
VADD.F32	S0, S1, S0
VSTR	#1, S0, [R5, #0]
;signal_processing.h,215 :: 		v[m+n/2].real_2 = ve[m].real_2 - z.real_2;
MOVS	R3, #2
SXTH	R3, R3
SDIV	R3, R8, R3
SXTH	R3, R3
ADDS	R3, R6, R3
SXTH	R3, R3
LSLS	R3, R3, #3
ADDS	R4, R7, R3
LSLS	R3, R6, #3
ADD	R3, R9, R3, LSL #0
VLDR	#1, S1, [R3, #0]
VLDR	#1, S0, [SP, #20]
VSUB.F32	S0, S1, S0
VSTR	#1, S0, [R4, #0]
;signal_processing.h,216 :: 		v[m+n/2].imag_2 = ve[m].imag_2 - z.imag_2;
MOVS	R3, #2
SXTH	R3, R3
SDIV	R3, R8, R3
SXTH	R3, R3
ADDS	R3, R6, R3
SXTH	R3, R3
LSLS	R3, R3, #3
ADDS	R3, R7, R3
ADDS	R4, R3, #4
LSLS	R3, R6, #3
ADD	R3, R9, R3, LSL #0
ADDS	R3, R3, #4
VLDR	#1, S1, [R3, #0]
VLDR	#1, S0, [SP, #24]
VSUB.F32	S0, S1, S0
VSTR	#1, S0, [R4, #0]
;signal_processing.h,208 :: 		for(m=0; m<n/2; m++) {
ADDS	R6, R6, #1
SXTH	R6, R6
;signal_processing.h,217 :: 		}
; v end address is: 28 (R7)
; n end address is: 32 (R8)
; ve end address is: 36 (R9)
; vo end address is: 40 (R10)
; m end address is: 24 (R6)
IT	AL
BAL	L_fft49
L_fft50:
;signal_processing.h,218 :: 		}
L_fft43:
;signal_processing.h,219 :: 		}
L_end_fft:
LDR	LR, [SP, #0]
ADD	SP, SP, #36
BX	LR
; end of _fft
_psd_fft:
;signal_processing.h,221 :: 		void psd_fft(int n, int n_fft, float *input, float *psd, float fs) {
; n start address is: 0 (R0)
SUB	SP, SP, #12288
ADD	SP, SP, #244
STR	LR, [SP, #0]
; n end address is: 0 (R0)
; n start address is: 0 (R0)
MOVW	R4, #12012
ADD	R4, SP, R4
STRH	R1, [R4, #0]
MOVW	R4, #12016
ADD	R4, SP, R4
STR	R2, [R4, #0]
MOVW	R4, #12020
ADD	R4, SP, R4
STR	R3, [R4, #0]
; fs start address is: 4 (R1)
VMOV.F32	S1, S0
;signal_processing.h,223 :: 		float input_mean = 0.0, enbw = 0.0, scale = 0.0;
; enbw start address is: 28 (R7)
MOV	R4, #0
VMOV	S7, R4
;signal_processing.h,226 :: 		for(i = 0; i < n; i++) {
; i start address is: 40 (R10)
MOVW	R10, #0
SXTH	R10, R10
; fs end address is: 4 (R1)
; enbw end address is: 28 (R7)
; i end address is: 40 (R10)
; n end address is: 0 (R0)
SXTH	R9, R0
VMOV.F32	S6, S7
VMOV.F32	S7, S1
SXTH	R6, R10
L_psd_fft52:
; i start address is: 24 (R6)
; enbw start address is: 24 (R6)
; fs start address is: 28 (R7)
; n start address is: 36 (R9)
CMP	R6, R9
IT	GE
BGE	L_psd_fft53
;signal_processing.h,227 :: 		hanning_window[i] = 0.5 - 0.5 * cos((2.0 * phi_t * i) / ((float) n - 1.0));
ADD	R5, SP, #8
LSLS	R4, R6, #2
ADDS	R4, R5, R4
STR	R0, [SP, #4]
MOVW	R0, #12040
ADD	R0, SP, R0
STR	R4, [R0, #0]
LDR	R0, [SP, #4]
VMOV	S1, R6
VCVT.F32	#1, S1, S1
MOVW	R4, #62915
MOVT	R4, #16584
VMOV	S0, R4
VMUL.F32	S2, S0, S1
VMOV	S1, R9
VCVT.F32	#1, S1, S1
VMOV.F32	S0, #1
VSUB.F32	S0, S1, S0
VDIV.F32	S0, S2, S0
BL	_cos+0
VMOV.F32	S1, #0.5
VMUL.F32	S1, S1, S0
VMOV.F32	S0, #0.5
VSUB.F32	S0, S0, S1
STR	R0, [SP, #4]
MOVW	R0, #12040
ADD	R0, SP, R0
LDR	R4, [R0, #0]
LDR	R0, [SP, #4]
VSTR	#1, S0, [R4, #0]
;signal_processing.h,228 :: 		enbw += hanning_window[i] * hanning_window[i];
ADD	R5, SP, #8
LSLS	R4, R6, #2
ADDS	R4, R5, R4
VLDR	#1, S0, [R4, #0]
VMUL.F32	S0, S0, S0
VADD.F32	S0, S6, S0
; enbw end address is: 24 (R6)
; enbw start address is: 0 (R0)
;signal_processing.h,226 :: 		for(i = 0; i < n; i++) {
ADDS	R4, R6, #1
; i end address is: 24 (R6)
; i start address is: 40 (R10)
SXTH	R10, R4
;signal_processing.h,229 :: 		}
; enbw end address is: 0 (R0)
; i end address is: 40 (R10)
VMOV.F32	S6, S0
SXTH	R6, R10
IT	AL
BAL	L_psd_fft52
L_psd_fft53:
;signal_processing.h,230 :: 		scale = 1.0 / (fs * enbw);
; enbw start address is: 24 (R6)
VMUL.F32	S1, S7, S6
; enbw end address is: 24 (R6)
; fs end address is: 28 (R7)
VMOV.F32	S0, #1
VDIV.F32	S0, S0, S1
MOVW	R4, #12024
ADD	R4, SP, R4
VSTR	#1, S0, [R4, #0]
;signal_processing.h,231 :: 		for(i = 0; i < N_FFT; i++) {
; i start address is: 4 (R1)
MOVS	R1, #0
SXTH	R1, R1
; n end address is: 36 (R9)
; i end address is: 4 (R1)
SXTH	R0, R9
L_psd_fft55:
; i start address is: 4 (R1)
; n start address is: 0 (R0)
CMP	R1, #4096
IT	GE
BGE	L_psd_fft56
;signal_processing.h,232 :: 		fft_input_2[i].real_2 = 0.0;
LSLS	R5, R1, #3
MOVW	R4, #lo_addr(_fft_input_2+0)
MOVT	R4, #hi_addr(_fft_input_2+0)
ADDS	R5, R4, R5
MOV	R4, #0
VMOV	S0, R4
VSTR	#1, S0, [R5, #0]
;signal_processing.h,233 :: 		fft_input_2[i].imag_2 = 0.0;
LSLS	R5, R1, #3
MOVW	R4, #lo_addr(_fft_input_2+0)
MOVT	R4, #hi_addr(_fft_input_2+0)
ADDS	R4, R4, R5
ADDS	R5, R4, #4
MOV	R4, #0
VMOV	S0, R4
VSTR	#1, S0, [R5, #0]
;signal_processing.h,231 :: 		for(i = 0; i < N_FFT; i++) {
ADDS	R6, R1, #1
SXTH	R6, R6
; i end address is: 4 (R1)
; i start address is: 24 (R6)
;signal_processing.h,234 :: 		}
; i end address is: 24 (R6)
SXTH	R1, R6
IT	AL
BAL	L_psd_fft55
L_psd_fft56:
;signal_processing.h,236 :: 		for(i = 0; i < n; i++) {
; i start address is: 24 (R6)
MOVS	R6, #0
SXTH	R6, R6
; n end address is: 0 (R0)
; i end address is: 24 (R6)
SXTH	R2, R0
SXTH	R1, R6
L_psd_fft58:
; i start address is: 4 (R1)
; n start address is: 8 (R2)
CMP	R1, R2
IT	GE
BGE	L_psd_fft59
;signal_processing.h,237 :: 		fft_input_2[i].real_2 = input[i];
LSLS	R5, R1, #3
MOVW	R4, #lo_addr(_fft_input_2+0)
MOVT	R4, #hi_addr(_fft_input_2+0)
ADDS	R6, R4, R5
LSLS	R5, R1, #2
MOVW	R4, #12016
ADD	R4, SP, R4
LDR	R4, [R4, #0]
ADDS	R4, R4, R5
VLDR	#1, S0, [R4, #0]
VSTR	#1, S0, [R6, #0]
;signal_processing.h,236 :: 		for(i = 0; i < n; i++) {
ADDS	R4, R1, #1
; i end address is: 4 (R1)
; i start address is: 24 (R6)
SXTH	R6, R4
;signal_processing.h,238 :: 		}
; i end address is: 24 (R6)
SXTH	R1, R6
IT	AL
BAL	L_psd_fft58
L_psd_fft59:
;signal_processing.h,242 :: 		for(i = 0; i < n; i++) {
; i start address is: 28 (R7)
MOVS	R7, #0
SXTH	R7, R7
; n end address is: 8 (R2)
; i end address is: 28 (R7)
SXTH	R0, R7
L_psd_fft61:
; i start address is: 0 (R0)
; n start address is: 8 (R2)
CMP	R0, R2
IT	GE
BGE	L_psd_fft62
;signal_processing.h,243 :: 		fft_input_2[i].real_2 = hanning_window[i] * input[i];
LSLS	R5, R0, #3
MOVW	R4, #lo_addr(_fft_input_2+0)
MOVT	R4, #hi_addr(_fft_input_2+0)
ADDS	R6, R4, R5
ADD	R4, SP, #8
LSLS	R5, R0, #2
ADDS	R4, R4, R5
VLDR	#1, S1, [R4, #0]
MOVW	R4, #12016
ADD	R4, SP, R4
LDR	R4, [R4, #0]
ADDS	R4, R4, R5
VLDR	#1, S0, [R4, #0]
VMUL.F32	S0, S1, S0
VSTR	#1, S0, [R6, #0]
;signal_processing.h,242 :: 		for(i = 0; i < n; i++) {
ADDS	R4, R0, #1
; i end address is: 0 (R0)
; i start address is: 28 (R7)
SXTH	R7, R4
;signal_processing.h,244 :: 		}
; n end address is: 8 (R2)
; i end address is: 28 (R7)
SXTH	R0, R7
IT	AL
BAL	L_psd_fft61
L_psd_fft62:
;signal_processing.h,245 :: 		fft(fft_input_2, n_fft, fft_temp_2);
MOVW	R4, #12012
ADD	R4, SP, R4
MOVW	R2, #lo_addr(_fft_temp_2+0)
MOVT	R2, #hi_addr(_fft_temp_2+0)
LDRSH	R1, [R4, #0]
MOVW	R0, #lo_addr(_fft_input_2+0)
MOVT	R0, #hi_addr(_fft_input_2+0)
BL	_fft+0
;signal_processing.h,247 :: 		memcpy(fft_input_conjugated_2, fft_input_2, sizeof(complex_t_2) * n_fft);
MOVW	R4, #12012
ADD	R4, SP, R4
LDRSH	R4, [R4, #0]
LSLS	R4, R4, #3
SXTH	R2, R4
MOVW	R1, #lo_addr(_fft_input_2+0)
MOVT	R1, #hi_addr(_fft_input_2+0)
MOVW	R0, #lo_addr(_fft_input_conjugated_2+0)
MOVT	R0, #hi_addr(_fft_input_conjugated_2+0)
BL	_memcpy+0
;signal_processing.h,249 :: 		for(i = 0; i < n_fft; i++) {
; i start address is: 32 (R8)
MOVW	R8, #0
SXTH	R8, R8
; i end address is: 32 (R8)
L_psd_fft64:
; i start address is: 32 (R8)
MOVW	R4, #12012
ADD	R4, SP, R4
LDRSH	R4, [R4, #0]
CMP	R8, R4
IT	GE
BGE	L_psd_fft65
;signal_processing.h,250 :: 		fft_input_conjugated_2[i].imag_2 *= -1.0;
LSL	R5, R8, #3
MOVW	R4, #lo_addr(_fft_input_conjugated_2+0)
MOVT	R4, #hi_addr(_fft_input_conjugated_2+0)
ADDS	R4, R4, R5
ADDS	R5, R4, #4
VLDR	#1, S1, [R5, #0]
VMOV.F32	S0, #-1
VMUL.F32	S0, S1, S0
VSTR	#1, S0, [R5, #0]
;signal_processing.h,251 :: 		fft_input_2[i] = multiply(fft_input_2[i], fft_input_conjugated_2[i]);
LSL	R5, R8, #3
MOVW	R4, #lo_addr(_fft_input_2+0)
MOVT	R4, #hi_addr(_fft_input_2+0)
ADDS	R6, R4, R5
STR	R0, [SP, #4]
MOVW	R0, #12040
ADD	R0, SP, R0
STR	R6, [R0, #0]
LDR	R0, [SP, #4]
MOVW	R4, #lo_addr(_fft_input_conjugated_2+0)
MOVT	R4, #hi_addr(_fft_input_conjugated_2+0)
ADDS	R5, R4, R5
MOV	R4, R6
SUB	SP, SP, #8
MOV	R12, R5
ADD	R11, SP, #0
ADD	R10, R11, #8
BL	___CC2DW+0
SUB	SP, SP, #8
MOV	R12, R4
ADD	R11, SP, #0
ADD	R10, R11, #8
BL	___CC2DW+0
MOVW	R12, #12044
ADD	R12, SP, R12
BL	_multiply+0
ADD	SP, SP, #16
MOV	R7, #8
STR	R0, [SP, #4]
MOVW	R0, #12040
ADD	R0, SP, R0
LDR	R4, [R0, #0]
LDR	R0, [SP, #4]
MOV	R6, R4
MOVW	R5, #12028
ADD	R5, SP, R5
; i end address is: 32 (R8)
SXTH	R2, R8
IT	AL
BAL	L_psd_fft67
L__psd_fft183:
L_psd_fft67:
; i start address is: 8 (R2)
; i start address is: 8 (R2)
; i end address is: 8 (R2)
LDRB	R4, [R5, #0]
STRB	R4, [R6, #0]
SUBS	R7, R7, #1
ADDS	R5, R5, #1
ADDS	R6, R6, #1
CMP	R7, #0
IT	NE
BNE	L__psd_fft183
; i end address is: 8 (R2)
; i start address is: 8 (R2)
;signal_processing.h,252 :: 		fft_input_2[i].real_2 *= scale;
LSLS	R5, R2, #3
MOVW	R4, #lo_addr(_fft_input_2+0)
MOVT	R4, #hi_addr(_fft_input_2+0)
ADDS	R6, R4, R5
VLDR	#1, S1, [R6, #0]
MOVW	R4, #12024
ADD	R4, SP, R4
VLDR	#1, S0, [R4, #0]
VMUL.F32	S0, S1, S0
VSTR	#1, S0, [R6, #0]
;signal_processing.h,253 :: 		if (i != 0) fft_input_2[i].real_2 *= 2;
CMP	R2, #0
IT	EQ
BEQ	L_psd_fft68
LSLS	R5, R2, #3
MOVW	R4, #lo_addr(_fft_input_2+0)
MOVT	R4, #hi_addr(_fft_input_2+0)
ADDS	R5, R4, R5
VLDR	#1, S1, [R5, #0]
VMOV.F32	S0, #2
VMUL.F32	S0, S1, S0
VSTR	#1, S0, [R5, #0]
L_psd_fft68:
;signal_processing.h,249 :: 		for(i = 0; i < n_fft; i++) {
ADDS	R4, R2, #1
; i end address is: 8 (R2)
; i start address is: 32 (R8)
SXTH	R8, R4
;signal_processing.h,254 :: 		}
; i end address is: 32 (R8)
IT	AL
BAL	L_psd_fft64
L_psd_fft65:
;signal_processing.h,256 :: 		for(i = 0; i < N_FFT_2; i++) {
; i start address is: 0 (R0)
MOVS	R0, #0
SXTH	R0, R0
; i end address is: 0 (R0)
L_psd_fft69:
; i start address is: 0 (R0)
CMP	R0, #2048
IT	GE
BGE	L_psd_fft70
;signal_processing.h,257 :: 		psd[i] = fft_input_2[i].real_2;
LSLS	R5, R0, #2
MOVW	R4, #12020
ADD	R4, SP, R4
LDR	R4, [R4, #0]
ADDS	R6, R4, R5
LSLS	R5, R0, #3
MOVW	R4, #lo_addr(_fft_input_2+0)
MOVT	R4, #hi_addr(_fft_input_2+0)
ADDS	R4, R4, R5
VLDR	#1, S0, [R4, #0]
VSTR	#1, S0, [R6, #0]
;signal_processing.h,256 :: 		for(i = 0; i < N_FFT_2; i++) {
ADDS	R4, R0, #1
; i end address is: 0 (R0)
; i start address is: 4 (R1)
SXTH	R1, R4
;signal_processing.h,258 :: 		}
SXTH	R0, R1
; i end address is: 4 (R1)
IT	AL
BAL	L_psd_fft69
L_psd_fft70:
;signal_processing.h,259 :: 		}
L_end_psd_fft:
LDR	LR, [SP, #0]
ADD	SP, SP, #12288
SUB	SP, SP, #244
BX	LR
; end of _psd_fft
_emg_frequency_domain_calculation:
;signal_processing.h,261 :: 		void emg_frequency_domain_calculation(EMG_Instance_t* emg){
; emg start address is: 0 (R0)
SUB	SP, SP, #16
STR	LR, [SP, #0]
; emg end address is: 0 (R0)
; emg start address is: 0 (R0)
;signal_processing.h,262 :: 		int i = 0;
;signal_processing.h,265 :: 		int n_fft = 1<<12;
; n_fft start address is: 12 (R3)
MOVW	R3, #4096
SXTH	R3, R3
;signal_processing.h,266 :: 		float fs_fft = 2000.0;
; fs_fft start address is: 4 (R1)
MOVW	R1, #0
MOVT	R1, #17658
VMOV	S1, R1
;signal_processing.h,283 :: 		val_fft = 0.16479; //val = 1.0 / ((float)n_fft * (1.0 / fs));  675
MOVW	R1, #48822
MOVT	R1, #15912
; val_fft start address is: 0 (R0)
VMOV	S0, R1
;signal_processing.h,284 :: 		psd_fft(emg->length_emg, n_fft, emg->hpf_emg, power2, fs_fft);
MOVW	R1, #32008
ADDS	R2, R0, R1
ADD	R1, R0, #16000
LDRSH	R1, [R1, #0]
VSTR	#1, S0, [SP, #4]
; fs_fft end address is: 4 (R1)
STRH	R3, [SP, #8]
STR	R0, [SP, #12]
VMOV.F32	S0, S1
SXTH	R0, R1
SXTH	R1, R3
MOVW	R3, #lo_addr(_power2+0)
MOVT	R3, #hi_addr(_power2+0)
BL	_psd_fft+0
LDR	R0, [SP, #12]
LDRSH	R3, [SP, #8]
VLDR	#1, S0, [SP, #4]
;signal_processing.h,287 :: 		for(i = 0; i < N_FFT_2; i++) {
; i start address is: 16 (R4)
MOVS	R4, #0
SXTH	R4, R4
; val_fft end address is: 0 (R0)
; n_fft end address is: 12 (R3)
; emg end address is: 0 (R0)
; i end address is: 16 (R4)
VMOV.F32	S1, S0
L_emg_frequency_domain_calculation72:
; i start address is: 16 (R4)
; val_fft start address is: 4 (R1)
; val_fft start address is: 4 (R1)
; val_fft end address is: 4 (R1)
; n_fft start address is: 12 (R3)
; emg start address is: 0 (R0)
CMP	R4, #2048
IT	GE
BGE	L_emg_frequency_domain_calculation73
; val_fft end address is: 4 (R1)
;signal_processing.h,288 :: 		freq_emg[i] = i * val_fft;
; val_fft start address is: 4 (R1)
LSLS	R2, R4, #2
MOVW	R1, #lo_addr(_freq_emg+0)
MOVT	R1, #hi_addr(_freq_emg+0)
ADDS	R2, R1, R2
VMOV	S0, R4
VCVT.F32	#1, S0, S0
VMUL.F32	S0, S0, S1
VSTR	#1, S0, [R2, #0]
;signal_processing.h,287 :: 		for(i = 0; i < N_FFT_2; i++) {
ADDS	R4, R4, #1
SXTH	R4, R4
;signal_processing.h,289 :: 		}
; val_fft end address is: 4 (R1)
; i end address is: 16 (R4)
IT	AL
BAL	L_emg_frequency_domain_calculation72
L_emg_frequency_domain_calculation73:
;signal_processing.h,293 :: 		max_psd = power2[0];
MOVW	R1, #lo_addr(_power2+0)
MOVT	R1, #hi_addr(_power2+0)
; max_psd start address is: 4 (R1)
VLDR	#1, S1, [R1, #0]
;signal_processing.h,294 :: 		emg->pkf = 0.0;
MOVW	R1, #48036
ADDS	R2, R0, R1
MOV	R1, #0
VMOV	S0, R1
VSTR	#1, S0, [R2, #0]
;signal_processing.h,295 :: 		for (i = 1; i < N_FFT_2; i++) {
; i start address is: 16 (R4)
MOVS	R4, #1
SXTH	R4, R4
; n_fft end address is: 12 (R3)
; emg end address is: 0 (R0)
; i end address is: 16 (R4)
SXTH	R5, R3
L_emg_frequency_domain_calculation75:
; i start address is: 16 (R4)
; max_psd start address is: 4 (R1)
; max_psd end address is: 4 (R1)
; emg start address is: 0 (R0)
; n_fft start address is: 20 (R5)
CMP	R4, #2048
IT	GE
BGE	L_emg_frequency_domain_calculation76
; max_psd end address is: 4 (R1)
;signal_processing.h,296 :: 		if (power2[i] > max_psd) {
; max_psd start address is: 4 (R1)
LSLS	R2, R4, #2
MOVW	R1, #lo_addr(_power2+0)
MOVT	R1, #hi_addr(_power2+0)
ADDS	R1, R1, R2
VLDR	#1, S0, [R1, #0]
VCMPE.F32	S0, S1
VMRS	#60, FPSCR
IT	LE
BLE	L_emg_frequency_domain_calculation78
;signal_processing.h,297 :: 		emg->max_psd = power2[i];
MOVW	R1, #48032
ADDS	R3, R0, R1
LSLS	R2, R4, #2
MOVW	R1, #lo_addr(_power2+0)
MOVT	R1, #hi_addr(_power2+0)
ADDS	R1, R1, R2
VLDR	#1, S0, [R1, #0]
VSTR	#1, S0, [R3, #0]
;signal_processing.h,298 :: 		emg->peak_bin = i;
MOVW	R1, #48028
ADDS	R2, R0, R1
VMOV	S0, R4
VCVT.F32	#1, S0, S0
VSTR	#1, S0, [R2, #0]
;signal_processing.h,299 :: 		}
L_emg_frequency_domain_calculation78:
;signal_processing.h,295 :: 		for (i = 1; i < N_FFT_2; i++) {
ADDS	R4, R4, #1
SXTH	R4, R4
;signal_processing.h,300 :: 		}
; max_psd end address is: 4 (R1)
; i end address is: 16 (R4)
IT	AL
BAL	L_emg_frequency_domain_calculation75
L_emg_frequency_domain_calculation76:
;signal_processing.h,303 :: 		emg->pkf = emg->peak_bin * fs / n_fft;
MOVW	R1, #48036
ADDS	R2, R0, R1
MOVW	R1, #48028
ADDS	R1, R0, R1
VLDR	#1, S1, [R1, #0]
MOVW	R1, #0
MOVT	R1, #17658
VMOV	S0, R1
VMUL.F32	S1, S1, S0
VMOV	S0, R5
VCVT.F32	#1, S0, S0
; n_fft end address is: 20 (R5)
VDIV.F32	S0, S1, S0
VSTR	#1, S0, [R2, #0]
;signal_processing.h,306 :: 		emg->mnp = 0.0;
MOVW	R1, #48040
ADDS	R2, R0, R1
MOV	R1, #0
VMOV	S0, R1
VSTR	#1, S0, [R2, #0]
;signal_processing.h,307 :: 		for (i = 0; i < N_FFT_2; i++) {
; i start address is: 16 (R4)
MOVS	R4, #0
SXTH	R4, R4
; emg end address is: 0 (R0)
; i end address is: 16 (R4)
L_emg_frequency_domain_calculation79:
; i start address is: 16 (R4)
; emg start address is: 0 (R0)
CMP	R4, #2048
IT	GE
BGE	L_emg_frequency_domain_calculation80
;signal_processing.h,308 :: 		emg->mnp += power2[i];
MOVW	R1, #48040
ADDS	R3, R0, R1
LSLS	R2, R4, #2
MOVW	R1, #lo_addr(_power2+0)
MOVT	R1, #hi_addr(_power2+0)
ADDS	R1, R1, R2
VLDR	#1, S1, [R1, #0]
VLDR	#1, S0, [R3, #0]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [R3, #0]
;signal_processing.h,307 :: 		for (i = 0; i < N_FFT_2; i++) {
ADDS	R4, R4, #1
SXTH	R4, R4
;signal_processing.h,309 :: 		}
; i end address is: 16 (R4)
IT	AL
BAL	L_emg_frequency_domain_calculation79
L_emg_frequency_domain_calculation80:
;signal_processing.h,310 :: 		emg->mnp /= N_FFT_2;
MOVW	R1, #48040
ADDS	R2, R0, R1
; emg end address is: 0 (R0)
VLDR	#1, S1, [R2, #0]
MOV	R1, #1157627904
VMOV	S0, R1
VDIV.F32	S0, S1, S0
VSTR	#1, S0, [R2, #0]
;signal_processing.h,311 :: 		}
L_end_emg_frequency_domain_calculation:
LDR	LR, [SP, #0]
ADD	SP, SP, #16
BX	LR
; end of _emg_frequency_domain_calculation
_emg_process:
;signal_processing.h,313 :: 		int emg_process(EMG_Instance_t* emg, float emg_value){
; emg_value start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; emg start address is: 0 (R0)
MOV	R6, R0
; emg_value end address is: 0 (R0)
; emg end address is: 0 (R0)
; emg start address is: 24 (R6)
; emg_value start address is: 0 (R0)
;signal_processing.h,314 :: 		emg->emg_signal[emg->length_emg] = emg_value;
ADD	R1, R6, #16000
LDRSH	R1, [R1, #0]
LSLS	R1, R1, #2
ADDS	R1, R6, R1
VSTR	#1, S0, [R1, #0]
; emg_value end address is: 0 (R0)
;signal_processing.h,315 :: 		emg->current_index_emg = emg->length_emg;
MOVW	R1, #16002
ADDS	R2, R6, R1
ADD	R1, R6, #16000
LDRSH	R1, [R1, #0]
STRH	R1, [R2, #0]
;signal_processing.h,316 :: 		emg->length_emg++;
ADD	R2, R6, #16000
LDRSH	R1, [R2, #0]
ADDS	R1, R1, #1
STRH	R1, [R2, #0]
;signal_processing.h,318 :: 		if (emg->length_emg == (N_EMG - 1)) {
ADD	R1, R6, #16000
LDRSH	R2, [R1, #0]
MOVW	R1, #3999
CMP	R2, R1
IT	NE
BNE	L_emg_process82
;signal_processing.h,319 :: 		emg->length_emg = 0;
ADD	R2, R6, #16000
MOVS	R1, #0
SXTH	R1, R1
STRH	R1, [R2, #0]
;signal_processing.h,320 :: 		}
L_emg_process82:
;signal_processing.h,321 :: 		emg_baseline_restore(emg);
MOV	R0, R6
BL	_emg_baseline_restore+0
;signal_processing.h,322 :: 		emg_filter(emg);
MOV	R0, R6
; emg end address is: 24 (R6)
BL	_emg_filter+0
;signal_processing.h,323 :: 		return 0;
MOVS	R0, #0
SXTH	R0, R0
;signal_processing.h,324 :: 		}
L_end_emg_process:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _emg_process
_sigmoid:
;ann.h,362 :: 		double sigmoid(double x){
SUB	SP, SP, #4
STR	LR, [SP, #0]
; x start address is: 0 (R0)
VMOV.F32	S1, S0
; x end address is: 0 (R0)
; x start address is: 4 (R1)
;ann.h,363 :: 		double temp = exp(-x);
VNEG.F32	S0, S1
; x end address is: 4 (R1)
BL	_exp+0
;ann.h,364 :: 		double tempp = 1/(1+temp);
VMOV.F32	S1, #1
VADD.F32	S1, S1, S0
VMOV.F32	S0, #1
VDIV.F32	S0, S0, S1
;ann.h,365 :: 		return tempp;
;ann.h,366 :: 		}
L_end_sigmoid:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _sigmoid
_intohid1:
;ann.h,370 :: 		void intohid1(){
SUB	SP, SP, #8
STR	LR, [SP, #0]
;ann.h,372 :: 		for (i = 0; i<32; i++){
; i start address is: 20 (R5)
MOVS	R5, #0
SXTH	R5, R5
; i end address is: 20 (R5)
L_intohid183:
; i start address is: 20 (R5)
CMP	R5, #32
IT	GE
BGE	L_intohid184
;ann.h,373 :: 		res[i]=0;
LSLS	R1, R5, #2
MOVW	R0, #lo_addr(_res+0)
MOVT	R0, #hi_addr(_res+0)
ADDS	R1, R0, R1
MOV	R0, #0
VMOV	S0, R0
VSTR	#1, S0, [R1, #0]
;ann.h,374 :: 		for (j = 0; j<10; j++){
; j start address is: 16 (R4)
MOVS	R4, #0
SXTH	R4, R4
; j end address is: 16 (R4)
; i end address is: 20 (R5)
L_intohid186:
; j start address is: 16 (R4)
; i start address is: 20 (R5)
CMP	R4, #10
IT	GE
BGE	L_intohid187
;ann.h,375 :: 		res [i] += in[j]*weight1[j][i];
LSLS	R3, R5, #2
MOVW	R0, #lo_addr(_res+0)
MOVT	R0, #hi_addr(_res+0)
ADDS	R2, R0, R3
LSLS	R1, R4, #2
MOVW	R0, #lo_addr(_in+0)
MOVT	R0, #hi_addr(_in+0)
ADDS	R0, R0, R1
VLDR	#1, S1, [R0, #0]
LSLS	R1, R4, #7
MOVW	R0, #lo_addr(_weight1+0)
MOVT	R0, #hi_addr(_weight1+0)
ADDS	R0, R0, R1
ADDS	R0, R0, R3
VLDR	#1, S0, [R0, #0]
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [R2, #0]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [R2, #0]
;ann.h,374 :: 		for (j = 0; j<10; j++){
ADDS	R4, R4, #1
SXTH	R4, R4
;ann.h,376 :: 		}
; j end address is: 16 (R4)
IT	AL
BAL	L_intohid186
L_intohid187:
;ann.h,377 :: 		res [i] += bias1[i];
LSLS	R1, R5, #2
MOVW	R0, #lo_addr(_res+0)
MOVT	R0, #hi_addr(_res+0)
ADDS	R2, R0, R1
MOVW	R0, #lo_addr(_bias1+0)
MOVT	R0, #hi_addr(_bias1+0)
ADDS	R0, R0, R1
VLDR	#1, S1, [R0, #0]
VLDR	#1, S0, [R2, #0]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [R2, #0]
;ann.h,378 :: 		hid1score[i] = sigmoid(res[i]);
LSLS	R1, R5, #2
MOVW	R0, #lo_addr(_hid1score+0)
MOVT	R0, #hi_addr(_hid1score+0)
ADDS	R0, R0, R1
STR	R0, [SP, #4]
MOVW	R0, #lo_addr(_res+0)
MOVT	R0, #hi_addr(_res+0)
ADDS	R0, R0, R1
VLDR	#1, S0, [R0, #0]
BL	_sigmoid+0
LDR	R0, [SP, #4]
VSTR	#1, S0, [R0, #0]
;ann.h,372 :: 		for (i = 0; i<32; i++){
ADDS	R5, R5, #1
SXTH	R5, R5
;ann.h,379 :: 		}
; i end address is: 20 (R5)
IT	AL
BAL	L_intohid183
L_intohid184:
;ann.h,380 :: 		}
L_end_intohid1:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _intohid1
_hid1tohid2:
;ann.h,382 :: 		void hid1tohid2(){
SUB	SP, SP, #8
STR	LR, [SP, #0]
;ann.h,384 :: 		for (i = 0; i<16; i++){
; i start address is: 20 (R5)
MOVS	R5, #0
SXTH	R5, R5
; i end address is: 20 (R5)
L_hid1tohid289:
; i start address is: 20 (R5)
CMP	R5, #16
IT	GE
BGE	L_hid1tohid290
;ann.h,385 :: 		res2[i]=0;
LSLS	R1, R5, #2
MOVW	R0, #lo_addr(_res2+0)
MOVT	R0, #hi_addr(_res2+0)
ADDS	R1, R0, R1
MOV	R0, #0
VMOV	S0, R0
VSTR	#1, S0, [R1, #0]
;ann.h,386 :: 		for (j = 0; j<32; j++){
; j start address is: 16 (R4)
MOVS	R4, #0
SXTH	R4, R4
; j end address is: 16 (R4)
; i end address is: 20 (R5)
L_hid1tohid292:
; j start address is: 16 (R4)
; i start address is: 20 (R5)
CMP	R4, #32
IT	GE
BGE	L_hid1tohid293
;ann.h,387 :: 		res2 [i] += hid1score[j]*weight2[j][i];
LSLS	R3, R5, #2
MOVW	R0, #lo_addr(_res2+0)
MOVT	R0, #hi_addr(_res2+0)
ADDS	R2, R0, R3
LSLS	R1, R4, #2
MOVW	R0, #lo_addr(_hid1score+0)
MOVT	R0, #hi_addr(_hid1score+0)
ADDS	R0, R0, R1
VLDR	#1, S1, [R0, #0]
LSLS	R1, R4, #6
MOVW	R0, #lo_addr(_weight2+0)
MOVT	R0, #hi_addr(_weight2+0)
ADDS	R0, R0, R1
ADDS	R0, R0, R3
VLDR	#1, S0, [R0, #0]
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [R2, #0]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [R2, #0]
;ann.h,386 :: 		for (j = 0; j<32; j++){
ADDS	R4, R4, #1
SXTH	R4, R4
;ann.h,388 :: 		}
; j end address is: 16 (R4)
IT	AL
BAL	L_hid1tohid292
L_hid1tohid293:
;ann.h,389 :: 		res2 [i] += bias2[i];
LSLS	R1, R5, #2
MOVW	R0, #lo_addr(_res2+0)
MOVT	R0, #hi_addr(_res2+0)
ADDS	R2, R0, R1
MOVW	R0, #lo_addr(_bias2+0)
MOVT	R0, #hi_addr(_bias2+0)
ADDS	R0, R0, R1
VLDR	#1, S1, [R0, #0]
VLDR	#1, S0, [R2, #0]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [R2, #0]
;ann.h,390 :: 		hid2score[i]= sigmoid(res2[i]);
LSLS	R1, R5, #2
MOVW	R0, #lo_addr(_hid2score+0)
MOVT	R0, #hi_addr(_hid2score+0)
ADDS	R0, R0, R1
STR	R0, [SP, #4]
MOVW	R0, #lo_addr(_res2+0)
MOVT	R0, #hi_addr(_res2+0)
ADDS	R0, R0, R1
VLDR	#1, S0, [R0, #0]
BL	_sigmoid+0
LDR	R0, [SP, #4]
VSTR	#1, S0, [R0, #0]
;ann.h,384 :: 		for (i = 0; i<16; i++){
ADDS	R5, R5, #1
SXTH	R5, R5
;ann.h,391 :: 		}
; i end address is: 20 (R5)
IT	AL
BAL	L_hid1tohid289
L_hid1tohid290:
;ann.h,395 :: 		}
L_end_hid1tohid2:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _hid1tohid2
_hid2tohid3:
;ann.h,397 :: 		void hid2tohid3(){
SUB	SP, SP, #8
STR	LR, [SP, #0]
;ann.h,399 :: 		for (i = 0; i<8; i++){
; i start address is: 20 (R5)
MOVS	R5, #0
SXTH	R5, R5
; i end address is: 20 (R5)
L_hid2tohid395:
; i start address is: 20 (R5)
CMP	R5, #8
IT	GE
BGE	L_hid2tohid396
;ann.h,400 :: 		res3[i]=0;
LSLS	R1, R5, #2
MOVW	R0, #lo_addr(_res3+0)
MOVT	R0, #hi_addr(_res3+0)
ADDS	R1, R0, R1
MOV	R0, #0
VMOV	S0, R0
VSTR	#1, S0, [R1, #0]
;ann.h,401 :: 		for (j = 0; j<16; j++){
; j start address is: 16 (R4)
MOVS	R4, #0
SXTH	R4, R4
; j end address is: 16 (R4)
; i end address is: 20 (R5)
L_hid2tohid398:
; j start address is: 16 (R4)
; i start address is: 20 (R5)
CMP	R4, #16
IT	GE
BGE	L_hid2tohid399
;ann.h,402 :: 		res3 [i] += hid2score[j]*weight3[j][i];
LSLS	R3, R5, #2
MOVW	R0, #lo_addr(_res3+0)
MOVT	R0, #hi_addr(_res3+0)
ADDS	R2, R0, R3
LSLS	R1, R4, #2
MOVW	R0, #lo_addr(_hid2score+0)
MOVT	R0, #hi_addr(_hid2score+0)
ADDS	R0, R0, R1
VLDR	#1, S1, [R0, #0]
LSLS	R1, R4, #5
MOVW	R0, #lo_addr(_weight3+0)
MOVT	R0, #hi_addr(_weight3+0)
ADDS	R0, R0, R1
ADDS	R0, R0, R3
VLDR	#1, S0, [R0, #0]
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [R2, #0]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [R2, #0]
;ann.h,401 :: 		for (j = 0; j<16; j++){
ADDS	R4, R4, #1
SXTH	R4, R4
;ann.h,403 :: 		}
; j end address is: 16 (R4)
IT	AL
BAL	L_hid2tohid398
L_hid2tohid399:
;ann.h,404 :: 		res3 [i] += bias3[i];
LSLS	R1, R5, #2
MOVW	R0, #lo_addr(_res3+0)
MOVT	R0, #hi_addr(_res3+0)
ADDS	R2, R0, R1
MOVW	R0, #lo_addr(_bias3+0)
MOVT	R0, #hi_addr(_bias3+0)
ADDS	R0, R0, R1
VLDR	#1, S1, [R0, #0]
VLDR	#1, S0, [R2, #0]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [R2, #0]
;ann.h,405 :: 		hid3score[i]= sigmoid(res3[i]);
LSLS	R1, R5, #2
MOVW	R0, #lo_addr(_hid3score+0)
MOVT	R0, #hi_addr(_hid3score+0)
ADDS	R0, R0, R1
STR	R0, [SP, #4]
MOVW	R0, #lo_addr(_res3+0)
MOVT	R0, #hi_addr(_res3+0)
ADDS	R0, R0, R1
VLDR	#1, S0, [R0, #0]
BL	_sigmoid+0
LDR	R0, [SP, #4]
VSTR	#1, S0, [R0, #0]
;ann.h,399 :: 		for (i = 0; i<8; i++){
ADDS	R5, R5, #1
SXTH	R5, R5
;ann.h,406 :: 		}
; i end address is: 20 (R5)
IT	AL
BAL	L_hid2tohid395
L_hid2tohid396:
;ann.h,410 :: 		}
L_end_hid2tohid3:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _hid2tohid3
_hid3toout:
;ann.h,412 :: 		void hid3toout(){
;ann.h,414 :: 		for (i = 0; i<1; i++){
; i start address is: 20 (R5)
MOVS	R5, #0
SXTH	R5, R5
; i end address is: 20 (R5)
L_hid3toout101:
; i start address is: 20 (R5)
CMP	R5, #1
IT	GE
BGE	L_hid3toout102
;ann.h,415 :: 		res4[i]=0;
LSLS	R1, R5, #2
MOVW	R0, #lo_addr(_res4+0)
MOVT	R0, #hi_addr(_res4+0)
ADDS	R1, R0, R1
MOV	R0, #0
VMOV	S0, R0
VSTR	#1, S0, [R1, #0]
;ann.h,416 :: 		for (j = 0; j<8; j++){
; j start address is: 16 (R4)
MOVS	R4, #0
SXTH	R4, R4
; j end address is: 16 (R4)
; i end address is: 20 (R5)
L_hid3toout104:
; j start address is: 16 (R4)
; i start address is: 20 (R5)
CMP	R4, #8
IT	GE
BGE	L_hid3toout105
;ann.h,417 :: 		res4 [i] += hid3score[j]*weight4[j][i];
LSLS	R3, R5, #2
MOVW	R0, #lo_addr(_res4+0)
MOVT	R0, #hi_addr(_res4+0)
ADDS	R2, R0, R3
LSLS	R1, R4, #2
MOVW	R0, #lo_addr(_hid3score+0)
MOVT	R0, #hi_addr(_hid3score+0)
ADDS	R0, R0, R1
VLDR	#1, S1, [R0, #0]
MOVW	R0, #lo_addr(_weight4+0)
MOVT	R0, #hi_addr(_weight4+0)
ADDS	R0, R0, R1
ADDS	R0, R0, R3
VLDR	#1, S0, [R0, #0]
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [R2, #0]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [R2, #0]
;ann.h,416 :: 		for (j = 0; j<8; j++){
ADDS	R4, R4, #1
SXTH	R4, R4
;ann.h,418 :: 		}
; j end address is: 16 (R4)
IT	AL
BAL	L_hid3toout104
L_hid3toout105:
;ann.h,419 :: 		res4 [i] += bias4[i];
LSLS	R1, R5, #2
MOVW	R0, #lo_addr(_res4+0)
MOVT	R0, #hi_addr(_res4+0)
ADDS	R2, R0, R1
MOVW	R0, #lo_addr(_bias4+0)
MOVT	R0, #hi_addr(_bias4+0)
ADDS	R0, R0, R1
VLDR	#1, S1, [R0, #0]
VLDR	#1, S0, [R2, #0]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [R2, #0]
;ann.h,420 :: 		hid4score[i] = res4[i];
LSLS	R2, R5, #2
MOVW	R0, #lo_addr(_hid4score+0)
MOVT	R0, #hi_addr(_hid4score+0)
LDR	R0, [R0, #0]
ADDS	R1, R0, R2
MOVW	R0, #lo_addr(_res4+0)
MOVT	R0, #hi_addr(_res4+0)
ADDS	R0, R0, R2
VLDR	#1, S0, [R0, #0]
VSTR	#1, S0, [R1, #0]
;ann.h,414 :: 		for (i = 0; i<1; i++){
ADDS	R5, R5, #1
SXTH	R5, R5
;ann.h,421 :: 		}
; i end address is: 20 (R5)
IT	AL
BAL	L_hid3toout101
L_hid3toout102:
;ann.h,422 :: 		}
L_end_hid3toout:
BX	LR
; end of _hid3toout
_predict:
;ann.h,424 :: 		void predict(){
SUB	SP, SP, #4
STR	LR, [SP, #0]
;ann.h,425 :: 		if (hid4score[0] >= 0.5){
MOVW	R0, #lo_addr(_hid4score+0)
MOVT	R0, #hi_addr(_hid4score+0)
LDR	R0, [R0, #0]
VLDR	#1, S1, [R0, #0]
VMOV.F32	S0, #0.5
VCMPE.F32	S1, S0
VMRS	#60, FPSCR
IT	LT
BLT	L_predict107
;ann.h,426 :: 		detection = 1;
MOVS	R1, #1
SXTH	R1, R1
MOVW	R0, #lo_addr(_detection+0)
MOVT	R0, #hi_addr(_detection+0)
STRH	R1, [R0, #0]
;ann.h,427 :: 		}
IT	AL
BAL	L_predict108
L_predict107:
;ann.h,428 :: 		else {detection = 0;}
MOVS	R1, #0
SXTH	R1, R1
MOVW	R0, #lo_addr(_detection+0)
MOVT	R0, #hi_addr(_detection+0)
STRH	R1, [R0, #0]
L_predict108:
;ann.h,438 :: 		if (detection == 0){
MOVW	R0, #lo_addr(_detection+0)
MOVT	R0, #hi_addr(_detection+0)
LDRSH	R0, [R0, #0]
CMP	R0, #0
IT	NE
BNE	L_predict109
;ann.h,442 :: 		TFT_Write_Text("No DOMS", 390, 375);
MOVW	R0, #lo_addr(?lstr1_MyProject_events_code+0)
MOVT	R0, #hi_addr(?lstr1_MyProject_events_code+0)
MOVW	R2, #375
MOVW	R1, #390
BL	_TFT_Write_Text+0
;ann.h,443 :: 		}
IT	AL
BAL	L_predict110
L_predict109:
;ann.h,444 :: 		else if (detection == 1){
MOVW	R0, #lo_addr(_detection+0)
MOVT	R0, #hi_addr(_detection+0)
LDRSH	R0, [R0, #0]
CMP	R0, #1
IT	NE
BNE	L_predict111
;ann.h,447 :: 		TFT_Write_Text("DOMS", 405, 375);
MOVW	R0, #lo_addr(?lstr2_MyProject_events_code+0)
MOVT	R0, #hi_addr(?lstr2_MyProject_events_code+0)
MOVW	R2, #375
MOVW	R1, #405
BL	_TFT_Write_Text+0
;ann.h,448 :: 		}
L_predict111:
L_predict110:
;ann.h,449 :: 		}
L_end_predict:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _predict
_InitTimer14:
;MyProject_events_code.c,15 :: 		void InitTimer14(){
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_events_code.c,16 :: 		RCC_APB1ENR.TIM14EN = 1;
MOVW	R1, #lo_addr(RCC_APB1ENR+0)
MOVT	R1, #hi_addr(RCC_APB1ENR+0)
LDR	R0, [R1, #0]
ORR	R0, R0, #256
STR	R0, [R1, #0]
;MyProject_events_code.c,17 :: 		TIM14_CR1.CEN = 0;
MOVW	R1, #lo_addr(TIM14_CR1+0)
MOVT	R1, #hi_addr(TIM14_CR1+0)
LDR	R0, [R1, #0]
BFC	R0, #0, #1
STR	R0, [R1, #0]
;MyProject_events_code.c,18 :: 		TIM14_PSC = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(TIM14_PSC+0)
MOVT	R0, #hi_addr(TIM14_PSC+0)
STR	R1, [R0, #0]
;MyProject_events_code.c,19 :: 		TIM14_ARR = 53999;
MOVW	R1, #53999
MOVW	R0, #lo_addr(TIM14_ARR+0)
MOVT	R0, #hi_addr(TIM14_ARR+0)
STR	R1, [R0, #0]
;MyProject_events_code.c,20 :: 		NVIC_IntEnable(IVT_INT_TIM8_TRG_COM_TIM14);
MOVW	R0, #61
BL	_NVIC_IntEnable+0
;MyProject_events_code.c,21 :: 		TIM14_DIER.UIE = 1;
MOVW	R1, #lo_addr(TIM14_DIER+0)
MOVT	R1, #hi_addr(TIM14_DIER+0)
LDR	R0, [R1, #0]
ORR	R0, R0, #1
STR	R0, [R1, #0]
;MyProject_events_code.c,22 :: 		TIM14_CR1.CEN = 1;
MOVW	R1, #lo_addr(TIM14_CR1+0)
MOVT	R1, #hi_addr(TIM14_CR1+0)
LDR	R0, [R1, #0]
ORR	R0, R0, #1
STR	R0, [R1, #0]
;MyProject_events_code.c,23 :: 		}
L_end_InitTimer14:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _InitTimer14
_bingkai_blank:
;MyProject_events_code.c,26 :: 		void bingkai_blank(int X1,int Y1, int X2, int Y2)
; Y2 start address is: 12 (R3)
; X2 start address is: 8 (R2)
; Y1 start address is: 4 (R1)
; X1 start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
SXTH	R7, R0
SXTH	R8, R1
SXTH	R9, R2
SXTH	R10, R3
; Y2 end address is: 12 (R3)
; X2 end address is: 8 (R2)
; Y1 end address is: 4 (R1)
; X1 end address is: 0 (R0)
; X1 start address is: 28 (R7)
; Y1 start address is: 32 (R8)
; X2 start address is: 36 (R9)
; Y2 start address is: 40 (R10)
;MyProject_events_code.c,28 :: 		TFT_Set_Pen(CL_WHITE, 1);
MOVS	R1, #1
MOVW	R0, #65535
BL	_TFT_Set_Pen+0
;MyProject_events_code.c,29 :: 		TFT_Set_Brush(1, 0, 0, LEFT_TO_RIGHT, CL_WHITE, CL_WHITE);
MOVW	R5, #65535
MOVW	R4, #65535
MOVS	R3, #1
MOVS	R2, #0
MOVS	R1, #0
MOVS	R0, #1
PUSH	(R5)
PUSH	(R4)
BL	_TFT_Set_Brush+0
ADD	SP, SP, #8
;MyProject_events_code.c,30 :: 		TFT_Rectangle(X1,Y1,X2,Y2);
SXTH	R3, R10
; Y2 end address is: 40 (R10)
SXTH	R2, R9
; X2 end address is: 36 (R9)
SXTH	R1, R8
; Y1 end address is: 32 (R8)
SXTH	R0, R7
; X1 end address is: 28 (R7)
BL	_TFT_Rectangle+0
;MyProject_events_code.c,31 :: 		}
L_end_bingkai_blank:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _bingkai_blank
_bingkai_feature:
;MyProject_events_code.c,33 :: 		void bingkai_feature(int X1, int Y1, int X2, int Y2, float dat)
; dat start address is: 0 (R0)
; Y1 start address is: 4 (R1)
; X1 start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
SXTH	R8, R0
SXTH	R9, R1
; dat end address is: 0 (R0)
; Y1 end address is: 4 (R1)
; X1 end address is: 0 (R0)
; X1 start address is: 32 (R8)
; Y1 start address is: 36 (R9)
; dat start address is: 0 (R0)
;MyProject_events_code.c,35 :: 		TFT_Set_Pen(CL_WHITE, 1);
MOVS	R1, #1
MOVW	R0, #65535
BL	_TFT_Set_Pen+0
;MyProject_events_code.c,36 :: 		TFT_Set_Brush(0, 0, 0, LEFT_TO_RIGHT, CL_WHITE, CL_WHITE);
MOVW	R5, #65535
MOVW	R4, #65535
MOVS	R3, #1
MOVS	R2, #0
MOVS	R1, #0
MOVS	R0, #0
PUSH	(R5)
PUSH	(R4)
BL	_TFT_Set_Brush+0
ADD	SP, SP, #8
;MyProject_events_code.c,37 :: 		FloatToStr(dat, text);
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
; dat end address is: 0 (R0)
BL	_FloatToStr+0
;MyProject_events_code.c,38 :: 		TFT_Write_Text(text, X1, Y1);
UXTH	R2, R9
; Y1 end address is: 36 (R9)
UXTH	R1, R8
; X1 end address is: 32 (R8)
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_TFT_Write_Text+0
;MyProject_events_code.c,39 :: 		}
L_end_bingkai_feature:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _bingkai_feature
_systemInit:
;MyProject_events_code.c,41 :: 		void systemInit()
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_events_code.c,44 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_AN_PIN, _GPIO_INPUT );
MOVS	R2, #1
MOVS	R1, #0
MOVS	R0, #0
BL	_mikrobus_gpioInit+0
;MyProject_events_code.c,45 :: 		mikrobus_logInit( _LOG_USBUART, 115200 );
MOV	R1, #115200
MOVS	R0, #16
BL	_mikrobus_logInit+0
;MyProject_events_code.c,46 :: 		Delay_ms( 200 );
MOVW	R7, #11770
MOVT	R7, #659
NOP
NOP
L_systemInit112:
SUBS	R7, R7, #1
BNE	L_systemInit112
NOP
NOP
NOP
;MyProject_events_code.c,48 :: 		mikrobus_gpioInit( _MIKROBUS2, _MIKROBUS_AN_PIN, _GPIO_INPUT );
MOVS	R2, #1
MOVS	R1, #0
MOVS	R0, #1
BL	_mikrobus_gpioInit+0
;MyProject_events_code.c,49 :: 		mikrobus_logInit( _LOG_USBUART, 115200 );
MOV	R1, #115200
MOVS	R0, #16
BL	_mikrobus_logInit+0
;MyProject_events_code.c,50 :: 		Delay_ms( 200 );
MOVW	R7, #11770
MOVT	R7, #659
NOP
NOP
L_systemInit114:
SUBS	R7, R7, #1
BNE	L_systemInit114
NOP
NOP
NOP
;MyProject_events_code.c,52 :: 		mikrobus_gpioInit( _MIKROBUS3, _MIKROBUS_AN_PIN, _GPIO_INPUT );
MOVS	R2, #1
MOVS	R1, #0
MOVS	R0, #2
BL	_mikrobus_gpioInit+0
;MyProject_events_code.c,53 :: 		mikrobus_logInit( _LOG_USBUART, 115200 );
MOV	R1, #115200
MOVS	R0, #16
BL	_mikrobus_logInit+0
;MyProject_events_code.c,54 :: 		Delay_ms( 200 );
MOVW	R7, #11770
MOVT	R7, #659
NOP
NOP
L_systemInit116:
SUBS	R7, R7, #1
BNE	L_systemInit116
NOP
NOP
NOP
;MyProject_events_code.c,57 :: 		mikrobus_uartInit( _MIKROBUS4, &_USB_UART_UART_CFG[0] );
MOVW	R0, #lo_addr(__USB_UART_UART_CFG+0)
MOVT	R0, #hi_addr(__USB_UART_UART_CFG+0)
MOV	R1, R0
MOVS	R0, #3
BL	_mikrobus_uartInit+0
;MyProject_events_code.c,58 :: 		mikrobus_logInit( _MIKROBUS4, 115200 );
MOV	R1, #115200
MOVS	R0, #3
BL	_mikrobus_logInit+0
;MyProject_events_code.c,59 :: 		Delay_ms( 100 );
MOVW	R7, #38650
MOVT	R7, #329
NOP
NOP
L_systemInit118:
SUBS	R7, R7, #1
BNE	L_systemInit118
NOP
NOP
NOP
;MyProject_events_code.c,60 :: 		}
L_end_systemInit:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _systemInit
_applicationInit:
;MyProject_events_code.c,62 :: 		void applicationInit()
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_events_code.c,64 :: 		initTimer14();interrFlag = 0; interrCnt = 0;Delay_ms(200);
BL	_InitTimer14+0
MOVS	R1, #0
MOVW	R0, #lo_addr(_interrFlag+0)
MOVT	R0, #hi_addr(_interrFlag+0)
STRB	R1, [R0, #0]
MOVS	R1, #0
MOVW	R0, #lo_addr(_interrCnt+0)
MOVT	R0, #hi_addr(_interrCnt+0)
STR	R1, [R0, #0]
MOVW	R7, #11770
MOVT	R7, #659
NOP
NOP
L_applicationInit120:
SUBS	R7, R7, #1
BNE	L_applicationInit120
NOP
NOP
NOP
;MyProject_events_code.c,67 :: 		ADC1_Init(); Delay_ms( 200 );
BL	_ADC1_Init+0
MOVW	R7, #11770
MOVT	R7, #659
NOP
NOP
L_applicationInit122:
SUBS	R7, R7, #1
BNE	L_applicationInit122
NOP
NOP
NOP
;MyProject_events_code.c,68 :: 		ADC_Set_Input_Channel( _ADC_CHANNEL_3 ); Delay_ms( 200 );
MOVW	R0, #8
BL	_ADC_Set_Input_Channel+0
MOVW	R7, #11770
MOVT	R7, #659
NOP
NOP
L_applicationInit124:
SUBS	R7, R7, #1
BNE	L_applicationInit124
NOP
NOP
NOP
;MyProject_events_code.c,69 :: 		emg_gpioDriverInit( (T_EMG_P)&_MIKROBUS1_GPIO ); Delay_ms( 200 );
MOVW	R0, #lo_addr(__MIKROBUS1_GPIO+0)
MOVT	R0, #hi_addr(__MIKROBUS1_GPIO+0)
BL	_emg_gpioDriverInit+0
MOVW	R7, #11770
MOVT	R7, #659
NOP
NOP
L_applicationInit126:
SUBS	R7, R7, #1
BNE	L_applicationInit126
NOP
NOP
NOP
;MyProject_events_code.c,72 :: 		ADC2_Init(); Delay_ms( 200 );
BL	_ADC2_Init+0
MOVW	R7, #11770
MOVT	R7, #659
NOP
NOP
L_applicationInit128:
SUBS	R7, R7, #1
BNE	L_applicationInit128
NOP
NOP
NOP
;MyProject_events_code.c,73 :: 		ADC_Set_Input_Channel( _ADC_CHANNEL_10 ); Delay_ms( 200 );
MOVW	R0, #1024
BL	_ADC_Set_Input_Channel+0
MOVW	R7, #11770
MOVT	R7, #659
NOP
NOP
L_applicationInit130:
SUBS	R7, R7, #1
BNE	L_applicationInit130
NOP
NOP
NOP
;MyProject_events_code.c,74 :: 		emg_gpioDriverInit( (T_EMG_P)&_MIKROBUS2_GPIO ); Delay_ms( 200 );
MOVW	R0, #lo_addr(__MIKROBUS2_GPIO+0)
MOVT	R0, #hi_addr(__MIKROBUS2_GPIO+0)
BL	_emg_gpioDriverInit+0
MOVW	R7, #11770
MOVT	R7, #659
NOP
NOP
L_applicationInit132:
SUBS	R7, R7, #1
BNE	L_applicationInit132
NOP
NOP
NOP
;MyProject_events_code.c,77 :: 		ADC3_Init(); Delay_ms( 200 );
BL	_ADC3_Init+0
MOVW	R7, #11770
MOVT	R7, #659
NOP
NOP
L_applicationInit134:
SUBS	R7, R7, #1
BNE	L_applicationInit134
NOP
NOP
NOP
;MyProject_events_code.c,78 :: 		ADC_Set_Input_Channel( _ADC_CHANNEL_12 ); Delay_ms( 200 );
MOVW	R0, #4096
BL	_ADC_Set_Input_Channel+0
MOVW	R7, #11770
MOVT	R7, #659
NOP
NOP
L_applicationInit136:
SUBS	R7, R7, #1
BNE	L_applicationInit136
NOP
NOP
NOP
;MyProject_events_code.c,79 :: 		emg_gpioDriverInit( (T_EMG_P)&_MIKROBUS3_GPIO ); Delay_ms( 200 );
MOVW	R0, #lo_addr(__MIKROBUS3_GPIO+0)
MOVT	R0, #hi_addr(__MIKROBUS3_GPIO+0)
BL	_emg_gpioDriverInit+0
MOVW	R7, #11770
MOVT	R7, #659
NOP
NOP
L_applicationInit138:
SUBS	R7, R7, #1
BNE	L_applicationInit138
NOP
NOP
NOP
;MyProject_events_code.c,82 :: 		UART6_Init_Advanced(57600, _UART_8_BIT_DATA, _UART_NOPARITY, _UART_ONE_STOPBIT, &_GPIO_MODULE_UART6_PC67);
MOVW	R0, #lo_addr(__GPIO_MODULE_UART6_PC67+0)
MOVT	R0, #hi_addr(__GPIO_MODULE_UART6_PC67+0)
PUSH	(R0)
MOVW	R3, #0
MOVW	R2, #0
MOVW	R1, #0
MOVW	R0, #57600
BL	_UART6_Init_Advanced+0
ADD	SP, SP, #4
;MyProject_events_code.c,84 :: 		EnableInterrupts();
BL	_EnableInterrupts+0
;MyProject_events_code.c,85 :: 		Delay_ms( 200 );
MOVW	R7, #11770
MOVT	R7, #659
NOP
NOP
L_applicationInit140:
SUBS	R7, R7, #1
BNE	L_applicationInit140
NOP
NOP
NOP
;MyProject_events_code.c,86 :: 		}
L_end_applicationInit:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _applicationInit
_applicationTaskEMG:
;MyProject_events_code.c,89 :: 		void applicationTaskEMG()
SUB	SP, SP, #8
STR	LR, [SP, #0]
;MyProject_events_code.c,94 :: 		readADC1 = ADC1_Get_Sample(3);
MOVS	R0, #3
BL	_ADC1_Get_Sample+0
MOVW	R1, #lo_addr(_readADC1+0)
MOVT	R1, #hi_addr(_readADC1+0)
STR	R0, [R1, #0]
;MyProject_events_code.c,95 :: 		emg1_value = (float) (readADC1 * 3.3)/4095;
MOV	R0, R1
VLDR	#1, S0, [R0, #0]
VCVT.F32	#0, S1, S0
MOVW	R0, #13107
MOVT	R0, #16467
VMOV	S0, R0
VMUL.F32	S1, S1, S0
MOVW	R0, #61440
MOVT	R0, #17791
VMOV	S0, R0
VDIV.F32	S0, S1, S0
;MyProject_events_code.c,96 :: 		stop = emg_process(emg_ptr1, emg1_value);
MOVW	R0, #lo_addr(_emg_ptr1+0)
MOVT	R0, #hi_addr(_emg_ptr1+0)
LDR	R0, [R0, #0]
VMOV.F32	S0, S0
BL	_emg_process+0
;MyProject_events_code.c,98 :: 		readADC2 = ADC2_Get_Sample(10);
MOVS	R0, #10
BL	_ADC2_Get_Sample+0
MOVW	R1, #lo_addr(_readADC2+0)
MOVT	R1, #hi_addr(_readADC2+0)
STR	R0, [R1, #0]
;MyProject_events_code.c,99 :: 		emg2_value = (float) (readADC2 * 3.3)/4095;
MOV	R0, R1
VLDR	#1, S0, [R0, #0]
VCVT.F32	#0, S1, S0
MOVW	R0, #13107
MOVT	R0, #16467
VMOV	S0, R0
VMUL.F32	S1, S1, S0
MOVW	R0, #61440
MOVT	R0, #17791
VMOV	S0, R0
VDIV.F32	S0, S1, S0
;MyProject_events_code.c,100 :: 		stop = emg_process(emg_ptr2, emg2_value);
MOVW	R0, #lo_addr(_emg_ptr2+0)
MOVT	R0, #hi_addr(_emg_ptr2+0)
LDR	R0, [R0, #0]
VMOV.F32	S0, S0
BL	_emg_process+0
;MyProject_events_code.c,102 :: 		readADC3 = ADC3_Get_Sample(12);
MOVS	R0, #12
BL	_ADC3_Get_Sample+0
MOVW	R1, #lo_addr(_readADC3+0)
MOVT	R1, #hi_addr(_readADC3+0)
STR	R0, [R1, #0]
;MyProject_events_code.c,103 :: 		emg3_value = (float) (readADC3 * 3.3)/4095;
MOV	R0, R1
VLDR	#1, S0, [R0, #0]
VCVT.F32	#0, S1, S0
MOVW	R0, #13107
MOVT	R0, #16467
VMOV	S0, R0
VMUL.F32	S1, S1, S0
MOVW	R0, #61440
MOVT	R0, #17791
VMOV	S0, R0
VDIV.F32	S0, S1, S0
;MyProject_events_code.c,104 :: 		stop = emg_process(emg_ptr3, emg3_value);
MOVW	R0, #lo_addr(_emg_ptr3+0)
MOVT	R0, #hi_addr(_emg_ptr3+0)
LDR	R0, [R0, #0]
VMOV.F32	S0, S0
BL	_emg_process+0
;MyProject_events_code.c,106 :: 		i = emg_ptr1->length_emg - 1;
MOVW	R0, #lo_addr(_emg_ptr1+0)
MOVT	R0, #hi_addr(_emg_ptr1+0)
LDR	R0, [R0, #0]
ADD	R0, R0, #16000
LDRSH	R0, [R0, #0]
SUBS	R2, R0, #1
SXTH	R2, R2
; i start address is: 20 (R5)
SXTH	R5, R2
;MyProject_events_code.c,107 :: 		i_plot = (emg_ptr1->length_emg -1) % N_DISPLAY_EMG;
MOVW	R1, #780
SXTH	R1, R1
SDIV	R0, R2, R1
MLS	R0, R1, R0, R2
SXTH	R0, R0
; i_plot start address is: 24 (R6)
SXTH	R6, R0
;MyProject_events_code.c,109 :: 		if ((i_plot)  == 0) bingkai_blank(10,10,788,425);
CMP	R0, #0
IT	NE
BNE	L_applicationTaskEMG142
STRH	R6, [SP, #4]
STRH	R5, [SP, #6]
MOVW	R3, #425
SXTH	R3, R3
MOVW	R2, #788
SXTH	R2, R2
MOVS	R1, #10
SXTH	R1, R1
MOVS	R0, #10
SXTH	R0, R0
BL	_bingkai_blank+0
LDRSH	R5, [SP, #6]
LDRSH	R6, [SP, #4]
L_applicationTaskEMG142:
;MyProject_events_code.c,113 :: 		if (i_plot >= 1) {
CMP	R6, #1
IT	LT
BLT	L_applicationTaskEMG143
;MyProject_events_code.c,114 :: 		TFT_Set_Pen(CL_RED, 2);
MOVS	R1, #2
MOVW	R0, #63488
BL	_TFT_Set_Pen+0
;MyProject_events_code.c,115 :: 		TFT_Line(10+(i_plot - 1), 120 - 15*(emg_ptr1->emg_signal[i-1]), 10+i_plot , 120 - 15*((emg_ptr1->emg_signal[i])));
LSLS	R1, R5, #2
MOVW	R4, #lo_addr(_emg_ptr1+0)
MOVT	R4, #hi_addr(_emg_ptr1+0)
LDR	R0, [R4, #0]
ADDS	R0, R0, R1
VLDR	#1, S1, [R0, #0]
VMOV.F32	S0, #15
VMUL.F32	S1, S0, S1
MOVW	R0, #0
MOVT	R0, #17136
VMOV	S0, R0
VSUB.F32	S0, S0, S1
VCVT	#1, .F32, S0, S0
VMOV	R3, S0
SXTH	R3, R3
ADDW	R2, R6, #10
SUBS	R0, R5, #1
SXTH	R0, R0
LSLS	R1, R0, #2
MOV	R0, R4
LDR	R0, [R0, #0]
ADDS	R0, R0, R1
VLDR	#1, S1, [R0, #0]
VMOV.F32	S0, #15
VMUL.F32	S1, S0, S1
MOVW	R0, #0
MOVT	R0, #17136
VMOV	S0, R0
VSUB.F32	S0, S0, S1
VCVT	#1, .F32, S0, S0
VMOV	R1, S0
SXTH	R1, R1
SUBS	R0, R6, #1
SXTH	R0, R0
ADDS	R0, #10
STRH	R6, [SP, #4]
STRH	R5, [SP, #6]
BL	_TFT_Line+0
LDRSH	R5, [SP, #6]
LDRSH	R6, [SP, #4]
;MyProject_events_code.c,116 :: 		}
L_applicationTaskEMG143:
;MyProject_events_code.c,119 :: 		if (i_plot >= 1) {
CMP	R6, #1
IT	LT
BLT	L_applicationTaskEMG144
;MyProject_events_code.c,120 :: 		TFT_Set_Pen(CL_YELLOW, 2);
MOVS	R1, #2
MOVW	R0, #65504
BL	_TFT_Set_Pen+0
;MyProject_events_code.c,121 :: 		TFT_Line(10+(i_plot - 1), 240 - 15*(emg_ptr2->emg_signal[i-1]), 10+i_plot, 240 - 15*(emg_ptr2->emg_signal[i]));
LSLS	R1, R5, #2
MOVW	R4, #lo_addr(_emg_ptr2+0)
MOVT	R4, #hi_addr(_emg_ptr2+0)
LDR	R0, [R4, #0]
ADDS	R0, R0, R1
VLDR	#1, S1, [R0, #0]
VMOV.F32	S0, #15
VMUL.F32	S1, S0, S1
MOVW	R0, #0
MOVT	R0, #17264
VMOV	S0, R0
VSUB.F32	S0, S0, S1
VCVT	#1, .F32, S0, S0
VMOV	R3, S0
SXTH	R3, R3
ADDW	R2, R6, #10
SUBS	R0, R5, #1
SXTH	R0, R0
LSLS	R1, R0, #2
MOV	R0, R4
LDR	R0, [R0, #0]
ADDS	R0, R0, R1
VLDR	#1, S1, [R0, #0]
VMOV.F32	S0, #15
VMUL.F32	S1, S0, S1
MOVW	R0, #0
MOVT	R0, #17264
VMOV	S0, R0
VSUB.F32	S0, S0, S1
VCVT	#1, .F32, S0, S0
VMOV	R1, S0
SXTH	R1, R1
SUBS	R0, R6, #1
SXTH	R0, R0
ADDS	R0, #10
STRH	R6, [SP, #4]
STRH	R5, [SP, #6]
BL	_TFT_Line+0
LDRSH	R5, [SP, #6]
LDRSH	R6, [SP, #4]
;MyProject_events_code.c,122 :: 		}
L_applicationTaskEMG144:
;MyProject_events_code.c,125 :: 		if (i_plot >= 1) {
CMP	R6, #1
IT	LT
BLT	L_applicationTaskEMG145
;MyProject_events_code.c,126 :: 		TFT_Set_Pen(CL_WHITE, 2);
MOVS	R1, #2
MOVW	R0, #65535
BL	_TFT_Set_Pen+0
;MyProject_events_code.c,127 :: 		TFT_Line(10+(i_plot - 1), 360 - 15*(emg_ptr3->emg_signal[i-1]), 10+i_plot, 360 - 15*(emg_ptr3->emg_signal[i]));
LSLS	R1, R5, #2
MOVW	R4, #lo_addr(_emg_ptr3+0)
MOVT	R4, #hi_addr(_emg_ptr3+0)
LDR	R0, [R4, #0]
ADDS	R0, R0, R1
VLDR	#1, S1, [R0, #0]
VMOV.F32	S0, #15
VMUL.F32	S1, S0, S1
MOVW	R0, #0
MOVT	R0, #17332
VMOV	S0, R0
VSUB.F32	S0, S0, S1
VCVT	#1, .F32, S0, S0
VMOV	R3, S0
SXTH	R3, R3
ADDW	R2, R6, #10
SUBS	R0, R5, #1
SXTH	R0, R0
; i end address is: 20 (R5)
LSLS	R1, R0, #2
MOV	R0, R4
LDR	R0, [R0, #0]
ADDS	R0, R0, R1
VLDR	#1, S1, [R0, #0]
VMOV.F32	S0, #15
VMUL.F32	S1, S0, S1
MOVW	R0, #0
MOVT	R0, #17332
VMOV	S0, R0
VSUB.F32	S0, S0, S1
VCVT	#1, .F32, S0, S0
VMOV	R1, S0
SXTH	R1, R1
SUBS	R0, R6, #1
SXTH	R0, R0
; i_plot end address is: 24 (R6)
ADDS	R0, #10
BL	_TFT_Line+0
;MyProject_events_code.c,128 :: 		}
L_applicationTaskEMG145:
;MyProject_events_code.c,129 :: 		}
L_end_applicationTaskEMG:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _applicationTaskEMG
_Timer14_interrupt:
;MyProject_events_code.c,131 :: 		void Timer14_interrupt() iv IVT_INT_TIM8_TRG_COM_TIM14 {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_events_code.c,132 :: 		TIM14_SR.UIF = 0;
MOVW	R1, #lo_addr(TIM14_SR+0)
MOVT	R1, #hi_addr(TIM14_SR+0)
LDR	R0, [R1, #0]
BFC	R0, #0, #1
STR	R0, [R1, #0]
;MyProject_events_code.c,134 :: 		Check_TP();
BL	_Check_TP+0
;MyProject_events_code.c,135 :: 		if (buttonFlag1)
MOVW	R0, #lo_addr(_buttonFlag1+0)
MOVT	R0, #hi_addr(_buttonFlag1+0)
LDRB	R0, [R0, #0]
UBFX	R0, R0, BitPos(_buttonFlag1+0), #1
CMP	R0, #0
IT	EQ
BEQ	L_Timer14_interrupt146
;MyProject_events_code.c,137 :: 		applicationTaskEMG();
BL	_applicationTaskEMG+0
;MyProject_events_code.c,140 :: 		i++;
MOVW	R2, #lo_addr(_i+0)
MOVT	R2, #hi_addr(_i+0)
LDRSH	R0, [R2, #0]
ADDS	R1, R0, #1
SXTH	R1, R1
STRH	R1, [R2, #0]
;MyProject_events_code.c,143 :: 		if (i >= 3000)
MOVW	R0, #3000
CMP	R1, R0
IT	LT
BLT	L_Timer14_interrupt147
;MyProject_events_code.c,146 :: 		buttonFlag1 = ~buttonFlag1;
MOVW	R2, #lo_addr(_buttonFlag1+0)
MOVT	R2, #hi_addr(_buttonFlag1+0)
LDRB	R0, [R2, #0]
UBFX	R0, R0, BitPos(_buttonFlag1+0), #1
EOR	R1, R0, #1
LDRB	R0, [R2, #0]
BFI	R0, R1, BitPos(_buttonFlag1+0), #1
STRB	R0, [R2, #0]
;MyProject_events_code.c,147 :: 		ButtonRound3.Caption = "RUN";
MOVW	R1, #lo_addr(?lstr3_MyProject_events_code+0)
MOVT	R1, #hi_addr(?lstr3_MyProject_events_code+0)
MOVW	R0, #lo_addr(_ButtonRound3+24)
MOVT	R0, #hi_addr(_ButtonRound3+24)
STR	R1, [R0, #0]
;MyProject_events_code.c,148 :: 		ButtonRound3.Color = CL_LIME;
MOVW	R1, #2016
MOVW	R0, #lo_addr(_ButtonRound3+46)
MOVT	R0, #hi_addr(_ButtonRound3+46)
STRH	R1, [R0, #0]
;MyProject_events_code.c,149 :: 		DrawRoundButton(&ButtonRound3);
MOVW	R0, #lo_addr(_ButtonRound3+0)
MOVT	R0, #hi_addr(_ButtonRound3+0)
BL	_DrawRoundButton+0
;MyProject_events_code.c,150 :: 		}
L_Timer14_interrupt147:
;MyProject_events_code.c,151 :: 		}
L_Timer14_interrupt146:
;MyProject_events_code.c,152 :: 		}
L_end_Timer14_interrupt:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _Timer14_interrupt
_ButtonRound1OnClick:
;MyProject_events_code.c,158 :: 		void ButtonRound1OnClick() {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_events_code.c,159 :: 		OR = 1;
MOVS	R1, #1
SXTH	R1, R1
MOVW	R0, #lo_addr(_OR+0)
MOVT	R0, #hi_addr(_OR+0)
STRH	R1, [R0, #0]
;MyProject_events_code.c,160 :: 		DrawScreen(&Screen2);  //Record page
MOVW	R0, #lo_addr(_Screen2+0)
MOVT	R0, #hi_addr(_Screen2+0)
BL	_DrawScreen+0
;MyProject_events_code.c,161 :: 		}
L_end_ButtonRound1OnClick:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _ButtonRound1OnClick
_ButtonRound2OnClick:
;MyProject_events_code.c,163 :: 		void ButtonRound2OnClick() {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_events_code.c,164 :: 		OR = 0;
MOVS	R1, #0
SXTH	R1, R1
MOVW	R0, #lo_addr(_OR+0)
MOVT	R0, #hi_addr(_OR+0)
STRH	R1, [R0, #0]
;MyProject_events_code.c,165 :: 		DrawScreen(&Screen2);  //Detection page
MOVW	R0, #lo_addr(_Screen2+0)
MOVT	R0, #hi_addr(_Screen2+0)
BL	_DrawScreen+0
;MyProject_events_code.c,166 :: 		}
L_end_ButtonRound2OnClick:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _ButtonRound2OnClick
_ButtonRound3OnClick:
;MyProject_events_code.c,168 :: 		void ButtonRound3OnClick() {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_events_code.c,169 :: 		buttonFlag1 = ~buttonFlag1;
MOVW	R2, #lo_addr(_buttonFlag1+0)
MOVT	R2, #hi_addr(_buttonFlag1+0)
LDRB	R0, [R2, #0]
UBFX	R0, R0, BitPos(_buttonFlag1+0), #1
EOR	R1, R0, #1
LDRB	R0, [R2, #0]
BFI	R0, R1, BitPos(_buttonFlag1+0), #1
STRB	R0, [R2, #0]
;MyProject_events_code.c,170 :: 		if (!buttonFlag1){
MOV	R0, R2
LDRB	R0, [R0, #0]
UBFX	R0, R0, BitPos(_buttonFlag1+0), #1
CMP	R0, #0
IT	NE
BNE	L_ButtonRound3OnClick148
;MyProject_events_code.c,171 :: 		ButtonRound3.Caption = "RUN";
MOVW	R1, #lo_addr(?lstr4_MyProject_events_code+0)
MOVT	R1, #hi_addr(?lstr4_MyProject_events_code+0)
MOVW	R0, #lo_addr(_ButtonRound3+24)
MOVT	R0, #hi_addr(_ButtonRound3+24)
STR	R1, [R0, #0]
;MyProject_events_code.c,172 :: 		ButtonRound3.Color = CL_LIME;
MOVW	R1, #2016
MOVW	R0, #lo_addr(_ButtonRound3+46)
MOVT	R0, #hi_addr(_ButtonRound3+46)
STRH	R1, [R0, #0]
;MyProject_events_code.c,173 :: 		} else {
IT	AL
BAL	L_ButtonRound3OnClick149
L_ButtonRound3OnClick148:
;MyProject_events_code.c,174 :: 		emg_init(emg_ptr1, 2000.0);
MOVW	R0, #lo_addr(_emg_ptr1+0)
MOVT	R0, #hi_addr(_emg_ptr1+0)
LDR	R1, [R0, #0]
MOVW	R0, #0
MOVT	R0, #17658
VMOV	S0, R0
MOV	R0, R1
BL	_emg_init+0
;MyProject_events_code.c,175 :: 		emg_init(emg_ptr2, 2000.0);
MOVW	R0, #lo_addr(_emg_ptr2+0)
MOVT	R0, #hi_addr(_emg_ptr2+0)
LDR	R1, [R0, #0]
MOVW	R0, #0
MOVT	R0, #17658
VMOV	S0, R0
MOV	R0, R1
BL	_emg_init+0
;MyProject_events_code.c,176 :: 		emg_init(emg_ptr3, 2000.0);
MOVW	R0, #lo_addr(_emg_ptr3+0)
MOVT	R0, #hi_addr(_emg_ptr3+0)
LDR	R1, [R0, #0]
MOVW	R0, #0
MOVT	R0, #17658
VMOV	S0, R0
MOV	R0, R1
BL	_emg_init+0
;MyProject_events_code.c,177 :: 		ButtonRound3.Caption = "STOP";
MOVW	R1, #lo_addr(?lstr5_MyProject_events_code+0)
MOVT	R1, #hi_addr(?lstr5_MyProject_events_code+0)
MOVW	R0, #lo_addr(_ButtonRound3+24)
MOVT	R0, #hi_addr(_ButtonRound3+24)
STR	R1, [R0, #0]
;MyProject_events_code.c,178 :: 		ButtonRound3.Color = CL_RED;
MOVW	R1, #63488
MOVW	R0, #lo_addr(_ButtonRound3+46)
MOVT	R0, #hi_addr(_ButtonRound3+46)
STRH	R1, [R0, #0]
;MyProject_events_code.c,179 :: 		}
L_ButtonRound3OnClick149:
;MyProject_events_code.c,180 :: 		DrawRoundButton(&ButtonRound3);
MOVW	R0, #lo_addr(_ButtonRound3+0)
MOVT	R0, #hi_addr(_ButtonRound3+0)
BL	_DrawRoundButton+0
;MyProject_events_code.c,181 :: 		}
L_end_ButtonRound3OnClick:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _ButtonRound3OnClick
_ButtonRound4OnClick:
;MyProject_events_code.c,182 :: 		void ButtonRound4OnClick() {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_events_code.c,183 :: 		DrawScreen(&Screen1);  //HOME page
MOVW	R0, #lo_addr(_Screen1+0)
MOVT	R0, #hi_addr(_Screen1+0)
BL	_DrawScreen+0
;MyProject_events_code.c,184 :: 		}
L_end_ButtonRound4OnClick:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _ButtonRound4OnClick
_ButtonRound5OnClick:
;MyProject_events_code.c,185 :: 		void ButtonRound5OnClick() {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_events_code.c,187 :: 		DrawScreen(&Screen4);
MOVW	R0, #lo_addr(_Screen4+0)
MOVT	R0, #hi_addr(_Screen4+0)
BL	_DrawScreen+0
;MyProject_events_code.c,188 :: 		emg_time_domain_calculation(emg_ptr1);
MOVW	R0, #lo_addr(_emg_ptr1+0)
MOVT	R0, #hi_addr(_emg_ptr1+0)
LDR	R0, [R0, #0]
BL	_emg_time_domain_calculation+0
;MyProject_events_code.c,189 :: 		emg_frequency_domain_calculation(emg_ptr1);
MOVW	R0, #lo_addr(_emg_ptr1+0)
MOVT	R0, #hi_addr(_emg_ptr1+0)
LDR	R0, [R0, #0]
BL	_emg_frequency_domain_calculation+0
;MyProject_events_code.c,191 :: 		emg_time_domain_calculation(emg_ptr2);
MOVW	R0, #lo_addr(_emg_ptr2+0)
MOVT	R0, #hi_addr(_emg_ptr2+0)
LDR	R0, [R0, #0]
BL	_emg_time_domain_calculation+0
;MyProject_events_code.c,192 :: 		emg_frequency_domain_calculation(emg_ptr2);
MOVW	R0, #lo_addr(_emg_ptr2+0)
MOVT	R0, #hi_addr(_emg_ptr2+0)
LDR	R0, [R0, #0]
BL	_emg_frequency_domain_calculation+0
;MyProject_events_code.c,194 :: 		emg_time_domain_calculation(emg_ptr3);
MOVW	R0, #lo_addr(_emg_ptr3+0)
MOVT	R0, #hi_addr(_emg_ptr3+0)
LDR	R0, [R0, #0]
BL	_emg_time_domain_calculation+0
;MyProject_events_code.c,195 :: 		emg_frequency_domain_calculation(emg_ptr3);
MOVW	R0, #lo_addr(_emg_ptr3+0)
MOVT	R0, #hi_addr(_emg_ptr3+0)
LDR	R0, [R0, #0]
BL	_emg_frequency_domain_calculation+0
;MyProject_events_code.c,198 :: 		bingkai_feature(150, 60, 185, 370, emg_ptr1->rms);
MOVW	R0, #lo_addr(_emg_ptr1+0)
MOVT	R0, #hi_addr(_emg_ptr1+0)
LDR	R1, [R0, #0]
MOVW	R0, #48012
ADDS	R0, R1, R0
VLDR	#1, S0, [R0, #0]
MOVW	R3, #370
SXTH	R3, R3
MOVS	R2, #185
SXTH	R2, R2
MOVS	R1, #60
SXTH	R1, R1
MOVS	R0, #150
SXTH	R0, R0
BL	_bingkai_feature+0
;MyProject_events_code.c,199 :: 		bingkai_feature(150, 120, 600, 160, emg_ptr1->ssi);
MOVW	R0, #lo_addr(_emg_ptr1+0)
MOVT	R0, #hi_addr(_emg_ptr1+0)
LDR	R1, [R0, #0]
MOVW	R0, #48016
ADDS	R0, R1, R0
VLDR	#1, S0, [R0, #0]
MOVS	R3, #160
SXTH	R3, R3
MOVW	R2, #600
SXTH	R2, R2
MOVS	R1, #120
SXTH	R1, R1
MOVS	R0, #150
SXTH	R0, R0
BL	_bingkai_feature+0
;MyProject_events_code.c,200 :: 		bingkai_feature(150, 180, 185, 390, emg_ptr1->mav);
MOVW	R0, #lo_addr(_emg_ptr1+0)
MOVT	R0, #hi_addr(_emg_ptr1+0)
LDR	R1, [R0, #0]
MOVW	R0, #48020
ADDS	R0, R1, R0
VLDR	#1, S0, [R0, #0]
MOVW	R3, #390
SXTH	R3, R3
MOVS	R2, #185
SXTH	R2, R2
MOVS	R1, #180
SXTH	R1, R1
MOVS	R0, #150
SXTH	R0, R0
BL	_bingkai_feature+0
;MyProject_events_code.c,201 :: 		bingkai_feature(150, 240, 210, 160, emg_ptr1->iemg);
MOVW	R0, #lo_addr(_emg_ptr1+0)
MOVT	R0, #hi_addr(_emg_ptr1+0)
LDR	R1, [R0, #0]
MOVW	R0, #48024
ADDS	R0, R1, R0
VLDR	#1, S0, [R0, #0]
MOVS	R3, #160
SXTH	R3, R3
MOVS	R2, #210
SXTH	R2, R2
MOVS	R1, #240
SXTH	R1, R1
MOVS	R0, #150
SXTH	R0, R0
BL	_bingkai_feature+0
;MyProject_events_code.c,204 :: 		bingkai_feature(150, 300, 210, 160, OR);
MOVW	R0, #lo_addr(_OR+0)
MOVT	R0, #hi_addr(_OR+0)
LDRSH	R0, [R0, #0]
VMOV	S0, R0
VCVT.F32	#1, S0, S0
MOVS	R3, #160
SXTH	R3, R3
MOVS	R2, #210
SXTH	R2, R2
MOVW	R1, #300
SXTH	R1, R1
MOVS	R0, #150
SXTH	R0, R0
BL	_bingkai_feature+0
;MyProject_events_code.c,207 :: 		bingkai_feature(615, 60, 185, 390, emg_ptr2->rms);
MOVW	R0, #lo_addr(_emg_ptr2+0)
MOVT	R0, #hi_addr(_emg_ptr2+0)
LDR	R1, [R0, #0]
MOVW	R0, #48012
ADDS	R0, R1, R0
VLDR	#1, S0, [R0, #0]
MOVW	R3, #390
SXTH	R3, R3
MOVS	R2, #185
SXTH	R2, R2
MOVS	R1, #60
SXTH	R1, R1
MOVW	R0, #615
SXTH	R0, R0
BL	_bingkai_feature+0
;MyProject_events_code.c,208 :: 		bingkai_feature(615, 120, 185, 390, emg_ptr2->mav);
MOVW	R0, #lo_addr(_emg_ptr2+0)
MOVT	R0, #hi_addr(_emg_ptr2+0)
LDR	R1, [R0, #0]
MOVW	R0, #48020
ADDS	R0, R1, R0
VLDR	#1, S0, [R0, #0]
MOVW	R3, #390
SXTH	R3, R3
MOVS	R2, #185
SXTH	R2, R2
MOVS	R1, #120
SXTH	R1, R1
MOVW	R0, #615
SXTH	R0, R0
BL	_bingkai_feature+0
;MyProject_events_code.c,209 :: 		bingkai_feature(615, 180, 210, 160, emg_ptr2->iemg);
MOVW	R0, #lo_addr(_emg_ptr2+0)
MOVT	R0, #hi_addr(_emg_ptr2+0)
LDR	R1, [R0, #0]
MOVW	R0, #48024
ADDS	R0, R1, R0
VLDR	#1, S0, [R0, #0]
MOVS	R3, #160
SXTH	R3, R3
MOVS	R2, #210
SXTH	R2, R2
MOVS	R1, #180
SXTH	R1, R1
MOVW	R0, #615
SXTH	R0, R0
BL	_bingkai_feature+0
;MyProject_events_code.c,210 :: 		bingkai_feature(615, 240, 600, 305, emg_ptr2->pkf);
MOVW	R0, #lo_addr(_emg_ptr2+0)
MOVT	R0, #hi_addr(_emg_ptr2+0)
LDR	R1, [R0, #0]
MOVW	R0, #48036
ADDS	R0, R1, R0
VLDR	#1, S0, [R0, #0]
MOVW	R3, #305
SXTH	R3, R3
MOVW	R2, #600
SXTH	R2, R2
MOVS	R1, #240
SXTH	R1, R1
MOVW	R0, #615
SXTH	R0, R0
BL	_bingkai_feature+0
;MyProject_events_code.c,213 :: 		bingkai_feature(615, 300, 600, 305, emg_ptr3->pkf);
MOVW	R0, #lo_addr(_emg_ptr3+0)
MOVT	R0, #hi_addr(_emg_ptr3+0)
LDR	R1, [R0, #0]
MOVW	R0, #48036
ADDS	R0, R1, R0
VLDR	#1, S0, [R0, #0]
MOVW	R3, #305
SXTH	R3, R3
MOVW	R2, #600
SXTH	R2, R2
MOVW	R1, #300
SXTH	R1, R1
MOVW	R0, #615
SXTH	R0, R0
BL	_bingkai_feature+0
;MyProject_events_code.c,216 :: 		in[0] = ((emg_ptr1->rms - 2.18009029e-01) / 8.05556134e-02);
MOVW	R2, #lo_addr(_emg_ptr1+0)
MOVT	R2, #hi_addr(_emg_ptr1+0)
LDR	R1, [R2, #0]
MOVW	R0, #48012
ADDS	R0, R1, R0
VLDR	#1, S1, [R0, #0]
MOVW	R0, #15810
MOVT	R0, #15967
VMOV	S0, R0
VSUB.F32	S1, S1, S0
MOVW	R0, #64087
MOVT	R0, #15780
VMOV	S0, R0
VDIV.F32	S0, S1, S0
MOVW	R0, #lo_addr(_in+0)
MOVT	R0, #hi_addr(_in+0)
VSTR	#1, S0, [R0, #0]
;MyProject_events_code.c,217 :: 		in[1] = ((emg_ptr1->ssi - 2.12871335e+02) / 1.50767416e+02);
MOV	R0, R2
LDR	R1, [R0, #0]
MOVW	R0, #48016
ADDS	R0, R1, R0
VLDR	#1, S1, [R0, #0]
MOVW	R0, #57104
MOVT	R0, #17236
VMOV	S0, R0
VSUB.F32	S1, S1, S0
MOVW	R0, #50293
MOVT	R0, #17174
VMOV	S0, R0
VDIV.F32	S0, S1, S0
MOVW	R0, #lo_addr(_in+4)
MOVT	R0, #hi_addr(_in+4)
VSTR	#1, S0, [R0, #0]
;MyProject_events_code.c,218 :: 		in[2] = ((emg_ptr1->mav - 1.48594221e-01) / 5.80820397e-02);
MOV	R0, R2
LDR	R1, [R0, #0]
MOVW	R0, #48020
ADDS	R0, R1, R0
VLDR	#1, S1, [R0, #0]
MOVW	R0, #10517
MOVT	R0, #15896
VMOV	S0, R0
VSUB.F32	S1, S1, S0
MOVW	R0, #59247
MOVT	R0, #15725
VMOV	S0, R0
VDIV.F32	S0, S1, S0
MOVW	R0, #lo_addr(_in+8)
MOVT	R0, #hi_addr(_in+8)
VSTR	#1, S0, [R0, #0]
;MyProject_events_code.c,219 :: 		in[3] = ((emg_ptr1->iemg - 5.97430826e+02) / 2.24148482e+02);
MOV	R0, R2
LDR	R1, [R0, #0]
MOVW	R0, #48024
ADDS	R0, R1, R0
VLDR	#1, S1, [R0, #0]
MOVW	R0, #23443
MOVT	R0, #17429
VMOV	S0, R0
VSUB.F32	S1, S1, S0
MOVW	R0, #9731
MOVT	R0, #17248
VMOV	S0, R0
VDIV.F32	S0, S1, S0
MOVW	R0, #lo_addr(_in+12)
MOVT	R0, #hi_addr(_in+12)
VSTR	#1, S0, [R0, #0]
;MyProject_events_code.c,220 :: 		in[4] = ((emg_ptr2->rms - 3.11378197e-01) / 9.06935858e-02);
MOVW	R2, #lo_addr(_emg_ptr2+0)
MOVT	R2, #hi_addr(_emg_ptr2+0)
LDR	R1, [R2, #0]
MOVW	R0, #48012
ADDS	R0, R1, R0
VLDR	#1, S1, [R0, #0]
MOVW	R0, #27895
MOVT	R0, #16031
VMOV	S0, R0
VSUB.F32	S1, S1, S0
MOVW	R0, #48527
MOVT	R0, #15801
VMOV	S0, R0
VDIV.F32	S0, S1, S0
MOVW	R0, #lo_addr(_in+16)
MOVT	R0, #hi_addr(_in+16)
VSTR	#1, S0, [R0, #0]
;MyProject_events_code.c,221 :: 		in[5] = ((emg_ptr2->mav - 2.33309268e-01) / 6.94063728e-02);
MOV	R0, R2
LDR	R1, [R0, #0]
MOVW	R0, #48020
ADDS	R0, R1, R0
VLDR	#1, S1, [R0, #0]
MOVW	R0, #59552
MOVT	R0, #15982
VMOV	S0, R0
VSUB.F32	S1, S1, S0
MOVW	R0, #9454
MOVT	R0, #15758
VMOV	S0, R0
VDIV.F32	S0, S1, S0
MOVW	R0, #lo_addr(_in+20)
MOVT	R0, #hi_addr(_in+20)
VSTR	#1, S0, [R0, #0]
;MyProject_events_code.c,222 :: 		in[6] = ((emg_ptr2->iemg - 8.61362964e+02) / 2.46171824e+02);
MOV	R0, R2
LDR	R1, [R0, #0]
MOVW	R0, #48024
ADDS	R0, R1, R0
VLDR	#1, S1, [R0, #0]
MOVW	R0, #22331
MOVT	R0, #17495
VMOV	S0, R0
VSUB.F32	S1, S1, S0
MOVW	R0, #11261
MOVT	R0, #17270
VMOV	S0, R0
VDIV.F32	S0, S1, S0
MOVW	R0, #lo_addr(_in+24)
MOVT	R0, #hi_addr(_in+24)
VSTR	#1, S0, [R0, #0]
;MyProject_events_code.c,223 :: 		in[7] = ((emg_ptr2->pkf - 6.82443472e+01) / 2.30767773e+01);
MOV	R0, R2
LDR	R1, [R0, #0]
MOVW	R0, #48036
ADDS	R0, R1, R0
VLDR	#1, S1, [R0, #0]
MOVW	R0, #32027
MOVT	R0, #17032
VMOV	S0, R0
VSUB.F32	S1, S1, S0
MOVW	R0, #40253
MOVT	R0, #16824
VMOV	S0, R0
VDIV.F32	S0, S1, S0
MOVW	R0, #lo_addr(_in+28)
MOVT	R0, #hi_addr(_in+28)
VSTR	#1, S0, [R0, #0]
;MyProject_events_code.c,224 :: 		in[8] = ((emg_ptr3->pkf - 7.59770320e+01) / 2.76073988e+01);
MOVW	R0, #lo_addr(_emg_ptr3+0)
MOVT	R0, #hi_addr(_emg_ptr3+0)
LDR	R1, [R0, #0]
MOVW	R0, #48036
ADDS	R0, R1, R0
VLDR	#1, S1, [R0, #0]
MOVW	R0, #62526
MOVT	R0, #17047
VMOV	S0, R0
VSUB.F32	S1, S1, S0
MOVW	R0, #56308
MOVT	R0, #16860
VMOV	S0, R0
VDIV.F32	S0, S1, S0
MOVW	R0, #lo_addr(_in+32)
MOVT	R0, #hi_addr(_in+32)
VSTR	#1, S0, [R0, #0]
;MyProject_events_code.c,225 :: 		in[9] = (OR);
MOVW	R0, #lo_addr(_OR+0)
MOVT	R0, #hi_addr(_OR+0)
LDRSH	R0, [R0, #0]
VMOV	S0, R0
VCVT.F32	#1, S0, S0
MOVW	R0, #lo_addr(_in+36)
MOVT	R0, #hi_addr(_in+36)
VSTR	#1, S0, [R0, #0]
;MyProject_events_code.c,227 :: 		Delay_ms(500);
MOVW	R7, #62202
MOVT	R7, #1647
NOP
NOP
L_ButtonRound5OnClick150:
SUBS	R7, R7, #1
BNE	L_ButtonRound5OnClick150
NOP
NOP
NOP
;MyProject_events_code.c,228 :: 		intohid1();
BL	_intohid1+0
;MyProject_events_code.c,229 :: 		hid1tohid2();
BL	_hid1tohid2+0
;MyProject_events_code.c,230 :: 		hid2tohid3();
BL	_hid2tohid3+0
;MyProject_events_code.c,231 :: 		hid3toout();
BL	_hid3toout+0
;MyProject_events_code.c,233 :: 		TFT_Set_Pen(CL_WHITE, 1);
MOVS	R1, #1
MOVW	R0, #65535
BL	_TFT_Set_Pen+0
;MyProject_events_code.c,234 :: 		TFT_Set_Brush(0, 0, 0, LEFT_TO_RIGHT, CL_WHITE, CL_WHITE);
MOVW	R1, #65535
MOVW	R0, #65535
PUSH	(R1)
PUSH	(R0)
MOVS	R3, #1
MOVS	R2, #0
MOVS	R1, #0
MOVS	R0, #0
BL	_TFT_Set_Brush+0
ADD	SP, SP, #8
;MyProject_events_code.c,236 :: 		Delay_ms(150);
MOVW	R7, #25210
MOVT	R7, #494
NOP
NOP
L_ButtonRound5OnClick152:
SUBS	R7, R7, #1
BNE	L_ButtonRound5OnClick152
NOP
NOP
NOP
;MyProject_events_code.c,237 :: 		predict();
BL	_predict+0
;MyProject_events_code.c,238 :: 		Delay_ms(10);
MOVW	R7, #62842
MOVT	R7, #32
NOP
NOP
L_ButtonRound5OnClick154:
SUBS	R7, R7, #1
BNE	L_ButtonRound5OnClick154
NOP
NOP
NOP
;MyProject_events_code.c,239 :: 		}
L_end_ButtonRound5OnClick:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _ButtonRound5OnClick
_ButtonRound7OnClick:
;MyProject_events_code.c,241 :: 		void ButtonRound7OnClick() {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_events_code.c,242 :: 		DrawScreen(&Screen1); //HOME page
MOVW	R0, #lo_addr(_Screen1+0)
MOVT	R0, #hi_addr(_Screen1+0)
BL	_DrawScreen+0
;MyProject_events_code.c,243 :: 		}
L_end_ButtonRound7OnClick:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _ButtonRound7OnClick
_ButtonRound6OnClick:
;MyProject_events_code.c,244 :: 		void ButtonRound6OnClick() { //Button Detection di Screen 3
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_events_code.c,245 :: 		DrawScreen(&Screen4);
MOVW	R0, #lo_addr(_Screen4+0)
MOVT	R0, #hi_addr(_Screen4+0)
BL	_DrawScreen+0
;MyProject_events_code.c,246 :: 		emg_time_domain_calculation(emg_ptr1);
MOVW	R0, #lo_addr(_emg_ptr1+0)
MOVT	R0, #hi_addr(_emg_ptr1+0)
LDR	R0, [R0, #0]
BL	_emg_time_domain_calculation+0
;MyProject_events_code.c,247 :: 		emg_frequency_domain_calculation(emg_ptr1);
MOVW	R0, #lo_addr(_emg_ptr1+0)
MOVT	R0, #hi_addr(_emg_ptr1+0)
LDR	R0, [R0, #0]
BL	_emg_frequency_domain_calculation+0
;MyProject_events_code.c,249 :: 		Delay_ms(150);
MOVW	R7, #25210
MOVT	R7, #494
NOP
NOP
L_ButtonRound6OnClick156:
SUBS	R7, R7, #1
BNE	L_ButtonRound6OnClick156
NOP
NOP
NOP
;MyProject_events_code.c,250 :: 		emg_time_domain_calculation(emg_ptr2);
MOVW	R0, #lo_addr(_emg_ptr2+0)
MOVT	R0, #hi_addr(_emg_ptr2+0)
LDR	R0, [R0, #0]
BL	_emg_time_domain_calculation+0
;MyProject_events_code.c,251 :: 		emg_frequency_domain_calculation(emg_ptr2);
MOVW	R0, #lo_addr(_emg_ptr2+0)
MOVT	R0, #hi_addr(_emg_ptr2+0)
LDR	R0, [R0, #0]
BL	_emg_frequency_domain_calculation+0
;MyProject_events_code.c,253 :: 		Delay_ms(150);
MOVW	R7, #25210
MOVT	R7, #494
NOP
NOP
L_ButtonRound6OnClick158:
SUBS	R7, R7, #1
BNE	L_ButtonRound6OnClick158
NOP
NOP
NOP
;MyProject_events_code.c,254 :: 		emg_time_domain_calculation(emg_ptr3);
MOVW	R0, #lo_addr(_emg_ptr3+0)
MOVT	R0, #hi_addr(_emg_ptr3+0)
LDR	R0, [R0, #0]
BL	_emg_time_domain_calculation+0
;MyProject_events_code.c,255 :: 		emg_frequency_domain_calculation(emg_ptr3);
MOVW	R0, #lo_addr(_emg_ptr3+0)
MOVT	R0, #hi_addr(_emg_ptr3+0)
LDR	R0, [R0, #0]
BL	_emg_frequency_domain_calculation+0
;MyProject_events_code.c,257 :: 		Delay_ms(150);
MOVW	R7, #25210
MOVT	R7, #494
NOP
NOP
L_ButtonRound6OnClick160:
SUBS	R7, R7, #1
BNE	L_ButtonRound6OnClick160
NOP
NOP
NOP
;MyProject_events_code.c,259 :: 		bingkai_feature(150, 60, 185, 370, emg_ptr1->rms);
MOVW	R0, #lo_addr(_emg_ptr1+0)
MOVT	R0, #hi_addr(_emg_ptr1+0)
LDR	R1, [R0, #0]
MOVW	R0, #48012
ADDS	R0, R1, R0
VLDR	#1, S0, [R0, #0]
MOVW	R3, #370
SXTH	R3, R3
MOVS	R2, #185
SXTH	R2, R2
MOVS	R1, #60
SXTH	R1, R1
MOVS	R0, #150
SXTH	R0, R0
BL	_bingkai_feature+0
;MyProject_events_code.c,260 :: 		bingkai_feature(150, 120, 600, 160, emg_ptr1->ssi);
MOVW	R0, #lo_addr(_emg_ptr1+0)
MOVT	R0, #hi_addr(_emg_ptr1+0)
LDR	R1, [R0, #0]
MOVW	R0, #48016
ADDS	R0, R1, R0
VLDR	#1, S0, [R0, #0]
MOVS	R3, #160
SXTH	R3, R3
MOVW	R2, #600
SXTH	R2, R2
MOVS	R1, #120
SXTH	R1, R1
MOVS	R0, #150
SXTH	R0, R0
BL	_bingkai_feature+0
;MyProject_events_code.c,261 :: 		bingkai_feature(150, 180, 185, 390, emg_ptr1->mav);
MOVW	R0, #lo_addr(_emg_ptr1+0)
MOVT	R0, #hi_addr(_emg_ptr1+0)
LDR	R1, [R0, #0]
MOVW	R0, #48020
ADDS	R0, R1, R0
VLDR	#1, S0, [R0, #0]
MOVW	R3, #390
SXTH	R3, R3
MOVS	R2, #185
SXTH	R2, R2
MOVS	R1, #180
SXTH	R1, R1
MOVS	R0, #150
SXTH	R0, R0
BL	_bingkai_feature+0
;MyProject_events_code.c,262 :: 		bingkai_feature(150, 240, 210, 160, emg_ptr1->iemg);
MOVW	R0, #lo_addr(_emg_ptr1+0)
MOVT	R0, #hi_addr(_emg_ptr1+0)
LDR	R1, [R0, #0]
MOVW	R0, #48024
ADDS	R0, R1, R0
VLDR	#1, S0, [R0, #0]
MOVS	R3, #160
SXTH	R3, R3
MOVS	R2, #210
SXTH	R2, R2
MOVS	R1, #240
SXTH	R1, R1
MOVS	R0, #150
SXTH	R0, R0
BL	_bingkai_feature+0
;MyProject_events_code.c,265 :: 		bingkai_feature(150, 300, 210, 160, OR);
MOVW	R0, #lo_addr(_OR+0)
MOVT	R0, #hi_addr(_OR+0)
LDRSH	R0, [R0, #0]
VMOV	S0, R0
VCVT.F32	#1, S0, S0
MOVS	R3, #160
SXTH	R3, R3
MOVS	R2, #210
SXTH	R2, R2
MOVW	R1, #300
SXTH	R1, R1
MOVS	R0, #150
SXTH	R0, R0
BL	_bingkai_feature+0
;MyProject_events_code.c,268 :: 		bingkai_feature(615, 60, 185, 390, emg_ptr2->rms);
MOVW	R0, #lo_addr(_emg_ptr2+0)
MOVT	R0, #hi_addr(_emg_ptr2+0)
LDR	R1, [R0, #0]
MOVW	R0, #48012
ADDS	R0, R1, R0
VLDR	#1, S0, [R0, #0]
MOVW	R3, #390
SXTH	R3, R3
MOVS	R2, #185
SXTH	R2, R2
MOVS	R1, #60
SXTH	R1, R1
MOVW	R0, #615
SXTH	R0, R0
BL	_bingkai_feature+0
;MyProject_events_code.c,269 :: 		bingkai_feature(615, 120, 185, 390, emg_ptr2->mav);
MOVW	R0, #lo_addr(_emg_ptr2+0)
MOVT	R0, #hi_addr(_emg_ptr2+0)
LDR	R1, [R0, #0]
MOVW	R0, #48020
ADDS	R0, R1, R0
VLDR	#1, S0, [R0, #0]
MOVW	R3, #390
SXTH	R3, R3
MOVS	R2, #185
SXTH	R2, R2
MOVS	R1, #120
SXTH	R1, R1
MOVW	R0, #615
SXTH	R0, R0
BL	_bingkai_feature+0
;MyProject_events_code.c,270 :: 		bingkai_feature(615, 180, 210, 160, emg_ptr2->iemg);
MOVW	R0, #lo_addr(_emg_ptr2+0)
MOVT	R0, #hi_addr(_emg_ptr2+0)
LDR	R1, [R0, #0]
MOVW	R0, #48024
ADDS	R0, R1, R0
VLDR	#1, S0, [R0, #0]
MOVS	R3, #160
SXTH	R3, R3
MOVS	R2, #210
SXTH	R2, R2
MOVS	R1, #180
SXTH	R1, R1
MOVW	R0, #615
SXTH	R0, R0
BL	_bingkai_feature+0
;MyProject_events_code.c,271 :: 		bingkai_feature(615, 240, 600, 305, emg_ptr2->pkf);
MOVW	R0, #lo_addr(_emg_ptr2+0)
MOVT	R0, #hi_addr(_emg_ptr2+0)
LDR	R1, [R0, #0]
MOVW	R0, #48036
ADDS	R0, R1, R0
VLDR	#1, S0, [R0, #0]
MOVW	R3, #305
SXTH	R3, R3
MOVW	R2, #600
SXTH	R2, R2
MOVS	R1, #240
SXTH	R1, R1
MOVW	R0, #615
SXTH	R0, R0
BL	_bingkai_feature+0
;MyProject_events_code.c,274 :: 		bingkai_feature(615, 300, 600, 305, emg_ptr3->pkf);
MOVW	R0, #lo_addr(_emg_ptr3+0)
MOVT	R0, #hi_addr(_emg_ptr3+0)
LDR	R1, [R0, #0]
MOVW	R0, #48036
ADDS	R0, R1, R0
VLDR	#1, S0, [R0, #0]
MOVW	R3, #305
SXTH	R3, R3
MOVW	R2, #600
SXTH	R2, R2
MOVW	R1, #300
SXTH	R1, R1
MOVW	R0, #615
SXTH	R0, R0
BL	_bingkai_feature+0
;MyProject_events_code.c,276 :: 		Delay_ms(150);
MOVW	R7, #25210
MOVT	R7, #494
NOP
NOP
L_ButtonRound6OnClick162:
SUBS	R7, R7, #1
BNE	L_ButtonRound6OnClick162
NOP
NOP
NOP
;MyProject_events_code.c,278 :: 		in[0] = ((emg_ptr1->rms - 2.18009029e-01) / 8.05556134e-02);
MOVW	R2, #lo_addr(_emg_ptr1+0)
MOVT	R2, #hi_addr(_emg_ptr1+0)
LDR	R1, [R2, #0]
MOVW	R0, #48012
ADDS	R0, R1, R0
VLDR	#1, S1, [R0, #0]
MOVW	R0, #15810
MOVT	R0, #15967
VMOV	S0, R0
VSUB.F32	S1, S1, S0
MOVW	R0, #64087
MOVT	R0, #15780
VMOV	S0, R0
VDIV.F32	S0, S1, S0
MOVW	R0, #lo_addr(_in+0)
MOVT	R0, #hi_addr(_in+0)
VSTR	#1, S0, [R0, #0]
;MyProject_events_code.c,279 :: 		in[1] = ((emg_ptr1->ssi - 2.12871335e+02) / 1.50767416e+02);
MOV	R0, R2
LDR	R1, [R0, #0]
MOVW	R0, #48016
ADDS	R0, R1, R0
VLDR	#1, S1, [R0, #0]
MOVW	R0, #57104
MOVT	R0, #17236
VMOV	S0, R0
VSUB.F32	S1, S1, S0
MOVW	R0, #50293
MOVT	R0, #17174
VMOV	S0, R0
VDIV.F32	S0, S1, S0
MOVW	R0, #lo_addr(_in+4)
MOVT	R0, #hi_addr(_in+4)
VSTR	#1, S0, [R0, #0]
;MyProject_events_code.c,280 :: 		in[2] = ((emg_ptr1->mav - 1.48594221e-01) / 5.80820397e-02);
MOV	R0, R2
LDR	R1, [R0, #0]
MOVW	R0, #48020
ADDS	R0, R1, R0
VLDR	#1, S1, [R0, #0]
MOVW	R0, #10517
MOVT	R0, #15896
VMOV	S0, R0
VSUB.F32	S1, S1, S0
MOVW	R0, #59247
MOVT	R0, #15725
VMOV	S0, R0
VDIV.F32	S0, S1, S0
MOVW	R0, #lo_addr(_in+8)
MOVT	R0, #hi_addr(_in+8)
VSTR	#1, S0, [R0, #0]
;MyProject_events_code.c,281 :: 		in[3] = ((emg_ptr1->iemg - 5.97430826e+02) / 2.24148482e+02);
MOV	R0, R2
LDR	R1, [R0, #0]
MOVW	R0, #48024
ADDS	R0, R1, R0
VLDR	#1, S1, [R0, #0]
MOVW	R0, #23443
MOVT	R0, #17429
VMOV	S0, R0
VSUB.F32	S1, S1, S0
MOVW	R0, #9731
MOVT	R0, #17248
VMOV	S0, R0
VDIV.F32	S0, S1, S0
MOVW	R0, #lo_addr(_in+12)
MOVT	R0, #hi_addr(_in+12)
VSTR	#1, S0, [R0, #0]
;MyProject_events_code.c,282 :: 		in[4] = ((emg_ptr2->rms - 3.11378197e-01) / 9.06935858e-02);
MOVW	R2, #lo_addr(_emg_ptr2+0)
MOVT	R2, #hi_addr(_emg_ptr2+0)
LDR	R1, [R2, #0]
MOVW	R0, #48012
ADDS	R0, R1, R0
VLDR	#1, S1, [R0, #0]
MOVW	R0, #27895
MOVT	R0, #16031
VMOV	S0, R0
VSUB.F32	S1, S1, S0
MOVW	R0, #48527
MOVT	R0, #15801
VMOV	S0, R0
VDIV.F32	S0, S1, S0
MOVW	R0, #lo_addr(_in+16)
MOVT	R0, #hi_addr(_in+16)
VSTR	#1, S0, [R0, #0]
;MyProject_events_code.c,283 :: 		in[5] = ((emg_ptr2->mav - 2.33309268e-01) / 6.94063728e-02);
MOV	R0, R2
LDR	R1, [R0, #0]
MOVW	R0, #48020
ADDS	R0, R1, R0
VLDR	#1, S1, [R0, #0]
MOVW	R0, #59552
MOVT	R0, #15982
VMOV	S0, R0
VSUB.F32	S1, S1, S0
MOVW	R0, #9454
MOVT	R0, #15758
VMOV	S0, R0
VDIV.F32	S0, S1, S0
MOVW	R0, #lo_addr(_in+20)
MOVT	R0, #hi_addr(_in+20)
VSTR	#1, S0, [R0, #0]
;MyProject_events_code.c,284 :: 		in[6] = ((emg_ptr2->iemg - 8.61362964e+02) / 2.46171824e+02);
MOV	R0, R2
LDR	R1, [R0, #0]
MOVW	R0, #48024
ADDS	R0, R1, R0
VLDR	#1, S1, [R0, #0]
MOVW	R0, #22331
MOVT	R0, #17495
VMOV	S0, R0
VSUB.F32	S1, S1, S0
MOVW	R0, #11261
MOVT	R0, #17270
VMOV	S0, R0
VDIV.F32	S0, S1, S0
MOVW	R0, #lo_addr(_in+24)
MOVT	R0, #hi_addr(_in+24)
VSTR	#1, S0, [R0, #0]
;MyProject_events_code.c,285 :: 		in[7] = ((emg_ptr2->pkf - 6.82443472e+01) / 2.30767773e+01);
MOV	R0, R2
LDR	R1, [R0, #0]
MOVW	R0, #48036
ADDS	R0, R1, R0
VLDR	#1, S1, [R0, #0]
MOVW	R0, #32027
MOVT	R0, #17032
VMOV	S0, R0
VSUB.F32	S1, S1, S0
MOVW	R0, #40253
MOVT	R0, #16824
VMOV	S0, R0
VDIV.F32	S0, S1, S0
MOVW	R0, #lo_addr(_in+28)
MOVT	R0, #hi_addr(_in+28)
VSTR	#1, S0, [R0, #0]
;MyProject_events_code.c,286 :: 		in[8] = ((emg_ptr3->pkf - 7.59770320e+01) / 2.76073988e+01);
MOVW	R0, #lo_addr(_emg_ptr3+0)
MOVT	R0, #hi_addr(_emg_ptr3+0)
LDR	R1, [R0, #0]
MOVW	R0, #48036
ADDS	R0, R1, R0
VLDR	#1, S1, [R0, #0]
MOVW	R0, #62526
MOVT	R0, #17047
VMOV	S0, R0
VSUB.F32	S1, S1, S0
MOVW	R0, #56308
MOVT	R0, #16860
VMOV	S0, R0
VDIV.F32	S0, S1, S0
MOVW	R0, #lo_addr(_in+32)
MOVT	R0, #hi_addr(_in+32)
VSTR	#1, S0, [R0, #0]
;MyProject_events_code.c,287 :: 		in[9] = (OR);
MOVW	R0, #lo_addr(_OR+0)
MOVT	R0, #hi_addr(_OR+0)
LDRSH	R0, [R0, #0]
VMOV	S0, R0
VCVT.F32	#1, S0, S0
MOVW	R0, #lo_addr(_in+36)
MOVT	R0, #hi_addr(_in+36)
VSTR	#1, S0, [R0, #0]
;MyProject_events_code.c,289 :: 		Delay_ms(500);
MOVW	R7, #62202
MOVT	R7, #1647
NOP
NOP
L_ButtonRound6OnClick164:
SUBS	R7, R7, #1
BNE	L_ButtonRound6OnClick164
NOP
NOP
NOP
;MyProject_events_code.c,290 :: 		intohid1();
BL	_intohid1+0
;MyProject_events_code.c,291 :: 		hid1tohid2();
BL	_hid1tohid2+0
;MyProject_events_code.c,292 :: 		hid2tohid3();
BL	_hid2tohid3+0
;MyProject_events_code.c,293 :: 		hid3toout();
BL	_hid3toout+0
;MyProject_events_code.c,295 :: 		TFT_Set_Pen(CL_WHITE, 1);
MOVS	R1, #1
MOVW	R0, #65535
BL	_TFT_Set_Pen+0
;MyProject_events_code.c,296 :: 		TFT_Set_Brush(0, 0, 0, LEFT_TO_RIGHT, CL_WHITE, CL_WHITE);
MOVW	R1, #65535
MOVW	R0, #65535
PUSH	(R1)
PUSH	(R0)
MOVS	R3, #1
MOVS	R2, #0
MOVS	R1, #0
MOVS	R0, #0
BL	_TFT_Set_Brush+0
ADD	SP, SP, #8
;MyProject_events_code.c,298 :: 		Delay_ms(150);
MOVW	R7, #25210
MOVT	R7, #494
NOP
NOP
L_ButtonRound6OnClick166:
SUBS	R7, R7, #1
BNE	L_ButtonRound6OnClick166
NOP
NOP
NOP
;MyProject_events_code.c,299 :: 		predict();
BL	_predict+0
;MyProject_events_code.c,300 :: 		Delay_ms(10);
MOVW	R7, #62842
MOVT	R7, #32
NOP
NOP
L_ButtonRound6OnClick168:
SUBS	R7, R7, #1
BNE	L_ButtonRound6OnClick168
NOP
NOP
NOP
;MyProject_events_code.c,301 :: 		}
L_end_ButtonRound6OnClick:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _ButtonRound6OnClick
MyProject_events_code____?ag:
L_end_MyProject_events_code___?ag:
BX	LR
; end of MyProject_events_code____?ag
