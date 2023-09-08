#line 1 "E:/ITS/Pelajaran/Semester 8/3 - Tugas Akhir/Program_Mikro_Fix/MyProject_events_code.c"
#line 1 "e:/its/pelajaran/semester 8/3 - tugas akhir/program_mikro_fix/myproject_objects.h"
typedef enum {_taLeft, _taCenter, _taRight} TTextAlign;
typedef enum {_tavTop, _tavMiddle, _tavBottom} TTextAlignVertical;

typedef struct Screen TScreen;

typedef struct Button_Round {
 TScreen* OwnerScreen;
 char Order;
 unsigned int Left;
 unsigned int Top;
 unsigned int Width;
 unsigned int Height;
 char Pen_Width;
 unsigned int Pen_Color;
 char Visible;
 char Active;
 char Transparent;
 char *Caption;
 TTextAlign TextAlign;
 TTextAlignVertical TextAlignVertical;
 const char *FontName;
 unsigned int Font_Color;
 char VerticalText;
 char Gradient;
 char Gradient_Orientation;
 unsigned int Gradient_Start_Color;
 unsigned int Gradient_End_Color;
 unsigned int Color;
 char Corner_Radius;
 char PressColEnabled;
 unsigned int Press_Color;
 void (*OnUpPtr)();
 void (*OnDownPtr)();
 void (*OnClickPtr)();
 void (*OnPressPtr)();
} TButton_Round;

typedef struct Label {
 TScreen* OwnerScreen;
 char Order;
 unsigned int Left;
 unsigned int Top;
 unsigned int Width;
 unsigned int Height;
 char *Caption;
 const char *FontName;
 unsigned int Font_Color;
 char VerticalText;
 char Visible;
 char Active;
 void (*OnUpPtr)();
 void (*OnDownPtr)();
 void (*OnClickPtr)();
 void (*OnPressPtr)();
} TLabel;

typedef struct Image {
 TScreen* OwnerScreen;
 char Order;
 unsigned int Left;
 unsigned int Top;
 unsigned int Width;
 unsigned int Height;
 const char *Picture_Name;
 char Visible;
 char Active;
 char Picture_Type;
 char Picture_Ratio;
 void (*OnUpPtr)();
 void (*OnDownPtr)();
 void (*OnClickPtr)();
 void (*OnPressPtr)();
} TImage;

typedef struct Box {
 TScreen* OwnerScreen;
 char Order;
 unsigned int Left;
 unsigned int Top;
 unsigned int Width;
 unsigned int Height;
 char Pen_Width;
 unsigned int Pen_Color;
 char Visible;
 char Active;
 char Transparent;
 char Gradient;
 char Gradient_Orientation;
 unsigned int Gradient_Start_Color;
 unsigned int Gradient_End_Color;
 unsigned int Color;
 char PressColEnabled;
 unsigned int Press_Color;
 void (*OnUpPtr)();
 void (*OnDownPtr)();
 void (*OnClickPtr)();
 void (*OnPressPtr)();
} TBox;

typedef struct Box_Round {
 TScreen* OwnerScreen;
 char Order;
 unsigned int Left;
 unsigned int Top;
 unsigned int Width;
 unsigned int Height;
 char Pen_Width;
 unsigned int Pen_Color;
 char Visible;
 char Active;
 char Transparent;
 char Gradient;
 char Gradient_Orientation;
 unsigned int Gradient_Start_Color;
 unsigned int Gradient_End_Color;
 unsigned int Color;
 char Corner_Radius;
 char PressColEnabled;
 unsigned int Press_Color;
 void (*OnUpPtr)();
 void (*OnDownPtr)();
 void (*OnClickPtr)();
 void (*OnPressPtr)();
} TBox_Round;

struct Screen {
 unsigned int Color;
 unsigned int Width;
 unsigned int Height;
 unsigned int ObjectsCount;
 unsigned int Buttons_RoundCount;
 TButton_Round * const code *Buttons_Round;
 unsigned int LabelsCount;
 TLabel * const code *Labels;
 unsigned int ImagesCount;
 TImage * const code *Images;
 unsigned int BoxesCount;
 TBox * const code *Boxes;
 unsigned int Boxes_RoundCount;
 TBox_Round * const code *Boxes_Round;
 void (*OnSwipeLeftPtr)();
 void (*OnSwipeRightPtr)();
 void (*OnSwipeUpPtr)();
 void (*OnSwipeDownPtr)();
 void (*OnZoomInPtr)();
 void (*OnZoomOutPtr)();
};

extern TScreen Screen1;
extern TBox Box1;
extern TBox_Round BoxRound1;
extern TButton_Round ButtonRound2;
extern TImage Image1;
extern TImage Image2;
extern TButton_Round ButtonRound1;
extern TLabel Label1;
extern TLabel Label2;
extern TLabel Label3;
extern TLabel Label4;
extern TLabel Label5;
extern TLabel Label6;
extern TLabel Label7;
extern TLabel Label8;
extern TLabel Label9;
extern TLabel Label10;
extern TLabel Label11;
extern TLabel Label12;
extern TLabel Label14;
extern TLabel Label15;
extern TLabel Label18;
extern TButton_Round * const code Screen1_Buttons_Round[2];
extern TLabel * const code Screen1_Labels[15];
extern TImage * const code Screen1_Images[2];
extern TBox * const code Screen1_Boxes[1];
extern TBox_Round * const code Screen1_Boxes_Round[1];

extern TScreen Screen2;
extern TButton_Round ButtonRound3;
extern TButton_Round ButtonRound4;
extern TButton_Round ButtonRound5;
extern TBox Box2;
extern TButton_Round * const code Screen2_Buttons_Round[3];
extern TBox * const code Screen2_Boxes[1];

extern TScreen Screen3;
extern TButton_Round ButtonRound6;
extern TButton_Round ButtonRound7;
extern TBox Box3;
extern TLabel Label13;
extern TButton_Round * const code Screen3_Buttons_Round[2];
extern TLabel * const code Screen3_Labels[1];
extern TBox * const code Screen3_Boxes[1];

extern TScreen Screen4;
extern TBox_Round BoxRound3;
extern TButton_Round ButtonRound9;
extern TBox Box4;
extern TLabel Label16;
extern TLabel Label17;
extern TLabel Label19;
extern TLabel Label20;
extern TLabel Label21;
extern TLabel Label22;
extern TLabel Label23;
extern TLabel Label24;
extern TLabel Label25;
extern TLabel Label26;
extern TLabel Label27;
extern TLabel Label28;
extern TLabel Label29;
extern TLabel Label30;
extern TLabel Label31;
extern TLabel Label32;
extern TLabel Label33;
extern TLabel Label34;
extern TLabel Label35;
extern TLabel Label36;
extern TLabel Label37;
extern TLabel Label38;
extern TButton_Round * const code Screen4_Buttons_Round[1];
extern TLabel * const code Screen4_Labels[22];
extern TBox * const code Screen4_Boxes[1];
extern TBox_Round * const code Screen4_Boxes_Round[1];




void ButtonRound1OnClick();
void ButtonRound2OnClick();
void ButtonRound3OnClick();
void ButtonRound4OnClick();
void ButtonRound5OnClick();
void ButtonRound6OnClick();
void ButtonRound7OnClick();




extern char Box1_Caption[];
extern char BoxRound1_Caption[];
extern char ButtonRound2_Caption[];
extern char Image1_Caption[];
extern char Image2_Caption[];
extern char ButtonRound1_Caption[];
extern char Label1_Caption[];
extern char Label2_Caption[];
extern char Label3_Caption[];
extern char Label4_Caption[];
extern char Label5_Caption[];
extern char Label6_Caption[];
extern char Label7_Caption[];
extern char Label8_Caption[];
extern char Label9_Caption[];
extern char Label10_Caption[];
extern char Label11_Caption[];
extern char Label12_Caption[];
extern char Label14_Caption[];
extern char Label15_Caption[];
extern char Label18_Caption[];
extern char ButtonRound3_Caption[];
extern char ButtonRound4_Caption[];
extern char ButtonRound5_Caption[];
extern char Box2_Caption[];
extern char ButtonRound6_Caption[];
extern char ButtonRound7_Caption[];
extern char Box3_Caption[];
extern char Label13_Caption[];
extern char BoxRound3_Caption[];
extern char ButtonRound9_Caption[];
extern char Box4_Caption[];
extern char Label16_Caption[];
extern char Label17_Caption[];
extern char Label19_Caption[];
extern char Label20_Caption[];
extern char Label21_Caption[];
extern char Label22_Caption[];
extern char Label23_Caption[];
extern char Label24_Caption[];
extern char Label25_Caption[];
extern char Label26_Caption[];
extern char Label27_Caption[];
extern char Label28_Caption[];
extern char Label29_Caption[];
extern char Label30_Caption[];
extern char Label31_Caption[];
extern char Label32_Caption[];
extern char Label33_Caption[];
extern char Label34_Caption[];
extern char Label35_Caption[];
extern char Label36_Caption[];
extern char Label37_Caption[];
extern char Label38_Caption[];


void DrawScreen(TScreen *aScreen);
void DrawRoundButton(TButton_Round *Around_button);
void DrawLabel(TLabel *ALabel);
void DrawImage(TImage *AImage);
void DrawBox(TBox *ABox);
void DrawRoundBox(TBox_Round *Around_box);
void Check_TP();
void Start_TP();
void Process_TP_Press(unsigned int X, unsigned int Y);
void Process_TP_Up(unsigned int X, unsigned int Y);
void Process_TP_Down(unsigned int X, unsigned int Y);
#line 1 "e:/its/pelajaran/semester 8/3 - tugas akhir/program_mikro_fix/myproject_resources.h"
const code char Helvetica17x20_Regular[];
const code char Helvetica17x19_Bold[];
const code char Helvetica27x31_Regular[];
const code char Tahoma12x16_Regular[];
const code char Tahoma16x19_Regular[];
const code char Tahoma19x19_Bold[];
const code char Tahoma23x29_Regular[];
const code char Badge_ITS2_bmp[12174];
const code char bme_logo_bmp[11550];
#line 1 "e:/its/pelajaran/semester 8/3 - tugas akhir/program_mikro_fix/click_emg_types.h"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/include/stdint.h"





typedef signed char int8_t;
typedef signed int int16_t;
typedef signed long int int32_t;
typedef signed long long int64_t;


typedef unsigned char uint8_t;
typedef unsigned int uint16_t;
typedef unsigned long int uint32_t;
typedef unsigned long long uint64_t;


typedef signed char int_least8_t;
typedef signed int int_least16_t;
typedef signed long int int_least32_t;
typedef signed long long int_least64_t;


typedef unsigned char uint_least8_t;
typedef unsigned int uint_least16_t;
typedef unsigned long int uint_least32_t;
typedef unsigned long long uint_least64_t;



typedef signed long int int_fast8_t;
typedef signed long int int_fast16_t;
typedef signed long int int_fast32_t;
typedef signed long long int_fast64_t;


typedef unsigned long int uint_fast8_t;
typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long long uint_fast64_t;


typedef signed long int intptr_t;
typedef unsigned long int uintptr_t;


typedef signed long long intmax_t;
typedef unsigned long long uintmax_t;
#line 1 "e:/its/pelajaran/semester 8/3 - tugas akhir/program_mikro_fix/click_emg_config.h"
#line 1 "e:/its/pelajaran/semester 8/3 - tugas akhir/program_mikro_fix/click_emg_types.h"
#line 1 "e:/its/pelajaran/semester 8/3 - tugas akhir/program_mikro_fix/click_usb_uart_types.h"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/include/stdint.h"
#line 1 "e:/its/pelajaran/semester 8/3 - tugas akhir/program_mikro_fix/click_usb_uart_config.h"
#line 1 "e:/its/pelajaran/semester 8/3 - tugas akhir/program_mikro_fix/click_usb_uart_types.h"
#line 3 "e:/its/pelajaran/semester 8/3 - tugas akhir/program_mikro_fix/click_usb_uart_config.h"
const uint32_t _USB_UART_UART_CFG[ 4 ] =
{
 115200,
 _UART_8_BIT_DATA,
 _UART_NOPARITY,
 _UART_ONE_STOPBIT
};
#line 1 "e:/its/pelajaran/semester 8/3 - tugas akhir/program_mikro_fix/variable.h"










uint32_t interrCnt;
uint8_t interrFlag;


const uint32_t time_ms = 0.5, fs = 2000;
char sendEMG[150], text[25];

uint32_t readADC1, readADC2, readADC3;

bit buttonFlag1;
int i = 0, x, k, j, window, n = 0, ndata, detection, OR;
#line 1 "e:/its/pelajaran/semester 8/3 - tugas akhir/program_mikro_fix/signal_processing.h"




typedef struct complex_2{
 float real_2;
 float imag_2;
} complex_t_2;

complex_t_2 fft_temp_2[ 4096 ];
complex_t_2 fft_input_2[ 4096 ];
complex_t_2 fft_input_conjugated_2[ 4096 ];

typedef struct EMG_Instance {

 float emg_signal[ 4000 ];
 int length_emg;
 int current_index_emg;
 float fs_emg;


 float lpf_emg[ 4000 ];
 float hpf_emg[ 4000 ];
 float sum_data_emg;


 float rms;
 float ssi;
 float mav;
 float iemg;


 float peak_bin;
 float max_psd;
 float pkf;
 float mnp;

} EMG_Instance_t;

float get_index(float *array, int n){
 if(n < 0) {
 return array[0];
 }
 return array[n];
}

float get_rotating_index(float *array, int max, int n) {
 if(n < 0) {
 return array[max + n];
 }
 return array[n];
}

float power2[ 2048 ], freq_emg[ 2048 ];

EMG_Instance_t emg1;
EMG_Instance_t* emg_ptr1 = (EMG_Instance_t*) &emg1;

EMG_Instance_t emg2;
EMG_Instance_t* emg_ptr2 = (EMG_Instance_t*) &emg2;

EMG_Instance_t emg3;
EMG_Instance_t* emg_ptr3 = (EMG_Instance_t*) &emg3;

void emg_init(EMG_Instance_t* emg, float fs_emg){
 emg->fs_emg = fs_emg;
 emg->length_emg = 0;
 emg->current_index_emg = 0;
 emg->sum_data_emg = 0.0;

 memset(emg->emg_signal, 0, sizeof(emg->emg_signal));
 memset(emg->lpf_emg, 0, sizeof(emg->lpf_emg));
 memset(emg->hpf_emg, 0, sizeof(emg->hpf_emg));
}

float absol(float z){
 if(z<0){
 z = z*(-1);
 }
 else {
 z = z;
 }
 return z;
}

void emg_baseline_restore(EMG_Instance_t* emg){
 int i = emg->current_index_emg &  780 ;

 emg->sum_data_emg += emg->emg_signal[i];
 emg->emg_signal[i] = emg->emg_signal[i] - (emg->sum_data_emg / emg->length_emg);
}

float emg_filter(EMG_Instance_t* emg)
{
 int i = emg->current_index_emg;

 if (i == 0){
 emg->lpf_emg[i] = (0.2929*(get_rotating_index(emg->emg_signal,  780 , i)));
 } else if (i == 1){
 emg->lpf_emg[i] = (0.2929*(get_rotating_index(emg->emg_signal,  780 , i))+0.5858*(get_rotating_index(emg->emg_signal,  780 , i-1)));
 } else{
 emg->lpf_emg[i] = (0.2929*(get_rotating_index(emg->emg_signal,  780 , i))+0.5858*(get_rotating_index(emg->emg_signal,  780 , i-1))+0.2929*(get_rotating_index(emg->emg_signal,  780 , i-2)) - 0.1716*(get_rotating_index(emg->lpf_emg,  780 , i-2)));
 }

 if (i == 0){
 emg->hpf_emg[i] = (0.9565*(get_rotating_index(emg->lpf_emg,  780 , i)));
 } else if (i == 1){
 emg->hpf_emg[i] = (0.9565*(get_rotating_index(emg->lpf_emg,  780 , i))-(1.9131*(get_rotating_index(emg->lpf_emg,  780 , i-1)))+1.9112*(get_rotating_index(emg->hpf_emg,  780 , i-1)));
 } else{
 emg->hpf_emg[i] = (0.9565*(get_rotating_index(emg->lpf_emg,  780 , i))-(1.9131*(get_rotating_index(emg->lpf_emg,  780 , i-1)))+0.9565*(get_rotating_index(emg->lpf_emg,  780 , i-2))+(1.9112*(get_rotating_index(emg->hpf_emg,  780 , i-1))) - 0.9150*(get_rotating_index(emg->hpf_emg,  780 , i-2)));
 }
}


int extract_contractions(double* emg, int length, int min_length, double** contractions) {
 int contraction_count = 0;
 int contraction_start = 0;
 int contraction_end = 0;
 int contraction_length = 0;
 int contraction_index = 0;

 for (i = 0; i < length; i++) {
 if (emg[i] != 0 && contraction_length == 0) {
 contraction_start = i;
 contraction_length++;
 } else if (emg[i] != 0 && contraction_length > 0) {
 contraction_length++;
 } else if (emg[i] == 0 && contraction_length > 0) {
 contraction_end = i - 1;

 if (contraction_length >= min_length) {

 contractions[contraction_count] = (double*)malloc(contraction_length * sizeof(double));


 for (j = contraction_start; j <= contraction_end; j++) {
 contractions[contraction_count][contraction_index] = emg[j];
 contraction_index++;
 }


 contraction_count++;
 contraction_index = 0;
 }


 contraction_start = 0;
 contraction_end = 0;
 contraction_length = 0;
 }
 }

 return contraction_count;
}

void emg_time_domain_calculation(EMG_Instance_t *emg) {
 float rrd[ 3000  - 1];
 int i, segment_duration = 300000, limit = 2, current_index = 0;

 float _rms = 0.0;
 float _ssi = 0.0;
 float _mav = 0.0;
 float _iemg = 0.0;


 for(i = 0; i < emg->length_emg; i++) {
 _rms += emg->hpf_emg[i] * emg->hpf_emg[i];
 }
 emg->rms = (float) sqrt(_rms / (emg->length_emg));


 for(i = 0; i < emg->length_emg; i++) {
 _ssi += emg->hpf_emg[i] * emg->hpf_emg[i];
 }
 emg->ssi = (float) _ssi;


 for(i = 0; i < emg->length_emg; i++) {
 _mav += fabs(emg->hpf_emg[i]);
 }
 emg->mav = (float) _mav / (emg->length_emg) ;


 for(i = 0; i < emg->length_emg; i++) {
 _iemg += fabs(emg->hpf_emg[i]);
 }
 emg->iemg = (float) _iemg;
}

complex_t_2 multiply(complex_t_2 a, complex_t_2 b) {
 complex_t_2 result;
 result.real_2 = (a.real_2 * b.real_2) - (a.imag_2 * b.imag_2);
 result.imag_2 = (a.real_2 * b.imag_2) + (a.imag_2 * b.real_2);
 return result;
}

void fft(complex_t_2 *v, int n, complex_t_2 *tmp){
 if (n > 1) {
 int k, m;
 complex_t_2 z, w, *vo, *ve;
 ve = tmp; vo = tmp + n/2;
 for(k = 0; k < n/2; k++) {
 ve[k] = v[2*k];
 vo[k] = v[2*k + 1];
 }
 fft(ve, n/2, v);
 fft(vo, n/2, v);
 for(m=0; m<n/2; m++) {
 w.real_2 = cos(2* 3.14 *m/(double)n);
 w.imag_2 = -sin(2* 3.14 *m/(double)n);
 z.real_2 = w.real_2*vo[m].real_2 - w.imag_2*vo[m].imag_2;
 z.imag_2 = w.real_2*vo[m].imag_2 + w.imag_2*vo[m].real_2;
 v[ m ].real_2 = ve[m].real_2 + z.real_2;
 v[ m ].imag_2 = ve[m].imag_2 + z.imag_2;
 v[m+n/2].real_2 = ve[m].real_2 - z.real_2;
 v[m+n/2].imag_2 = ve[m].imag_2 - z.imag_2;
 }
 }
}

void psd_fft(int n, int n_fft, float *input, float *psd, float fs) {
 int i;
 float input_mean = 0.0, enbw = 0.0, scale = 0.0;
 float hanning_window[ 3000  + 1];

 for(i = 0; i < n; i++) {
 hanning_window[i] = 0.5 - 0.5 * cos((2.0 *  3.14  * i) / ((float) n - 1.0));
 enbw += hanning_window[i] * hanning_window[i];
 }
 scale = 1.0 / (fs * enbw);
 for(i = 0; i <  4096 ; i++) {
 fft_input_2[i].real_2 = 0.0;
 fft_input_2[i].imag_2 = 0.0;
 }

 for(i = 0; i < n; i++) {
 fft_input_2[i].real_2 = input[i];
 }



 for(i = 0; i < n; i++) {
 fft_input_2[i].real_2 = hanning_window[i] * input[i];
 }
 fft(fft_input_2, n_fft, fft_temp_2);

 memcpy(fft_input_conjugated_2, fft_input_2, sizeof(complex_t_2) * n_fft);

 for(i = 0; i < n_fft; i++) {
 fft_input_conjugated_2[i].imag_2 *= -1.0;
 fft_input_2[i] = multiply(fft_input_2[i], fft_input_conjugated_2[i]);
 fft_input_2[i].real_2 *= scale;
 if (i != 0) fft_input_2[i].real_2 *= 2;
 }

 for(i = 0; i <  2048 ; i++) {
 psd[i] = fft_input_2[i].real_2;
 }
}

void emg_frequency_domain_calculation(EMG_Instance_t* emg){
 int i = 0;
 int peak_bin;
 float max_psd, mean_power;
 int n_fft = 1<<12;
 float fs_fft = 2000.0;
 float val_fft, df;
 float frequencies[ 2048 ];
#line 283 "e:/its/pelajaran/semester 8/3 - tugas akhir/program_mikro_fix/signal_processing.h"
 val_fft = 0.16479;
 psd_fft(emg->length_emg, n_fft, emg->hpf_emg, power2, fs_fft);


 for(i = 0; i <  2048 ; i++) {
 freq_emg[i] = i * val_fft;
 }


 peak_bin = 0;
 max_psd = power2[0];
 emg->pkf = 0.0;
 for (i = 1; i <  2048 ; i++) {
 if (power2[i] > max_psd) {
 emg->max_psd = power2[i];
 emg->peak_bin = i;
 }
 }


 emg->pkf = emg->peak_bin * fs / n_fft;


 emg->mnp = 0.0;
 for (i = 0; i <  2048 ; i++) {
 emg->mnp += power2[i];
 }
 emg->mnp /=  2048 ;
}

int emg_process(EMG_Instance_t* emg, float emg_value){
 emg->emg_signal[emg->length_emg] = emg_value;
 emg->current_index_emg = emg->length_emg;
 emg->length_emg++;

 if (emg->length_emg == ( 4000  - 1)) {
 emg->length_emg = 0;
 }
 emg_baseline_restore(emg);
 emg_filter(emg);
 return 0;
}
#line 1 "e:/its/pelajaran/semester 8/3 - tugas akhir/program_mikro_fix/ann.h"
const float weight1[10][32]={
{-0.2285973 , -0.97627443, -0.08891128, -0.17807364, -0.12901257,
 -0.2690783 , -0.01932449, 0.05815076, 0.17026308, 0.2821976 ,
 0.18446629, 0.08340639, -0.30858037, 0.44668794, 0.07739967,
 0.23778972, 0.43745106, 0.12934513, 0.22616577, -0.4723527 ,
 -0.47752473, 0.316116 , -0.27305385, 0.12640055, -0.45543265,
 -0.81477755, 0.16567124, -0.19201829, 0.16392417, -1.2638537 ,
 -0.10067295, -0.24187948},
 { 0.55462486, -0.4791938 , -0.20092316, -0.27753964, -0.49277705,
 -0.39732373, 0.68995506, 0.312638 , -0.00525329, -0.06928213,
 -0.48021927, -0.30327755, -0.3769691 , 0.6740001 , 0.019229 ,
 0.5368286 , 0.12702236, -0.5952144 , -0.24332395, -0.68378896,
 -0.6810875 , -0.09840272, -0.68652606, 0.5579943 , 0.32499123,
 -0.7613076 , 0.1466802 , -0.6085029 , 0.5135661 , -0.9687356 ,
 0.13859506, -0.2774473 },
 {-0.36216167, -0.8094984 , -0.03851146, -0.26637596, -0.02690678,
 -0.2618719 , 0.35731223, -0.14164266, -0.2871395 , -0.21946763,
 -0.31292263, -0.3309482 , -0.30073014, 0.7002643 , -0.06741969,
 -0.4597467 , -0.15534817, -0.47068062, -0.07666145, -0.21849899,
 -0.79746985, -0.5464125 , 0.28282526, -0.1308547 , 0.2319395 ,
 -0.84533525, -0.7954408 , -0.00660565, 0.61720264, -1.2435923 ,
 0.19264527, -0.6160224 },
 { 0.22047625, 0.2800297 , 0.7232176 , -0.21108425, -0.07436464,
 -0.05053579, 0.63237613, -0.8111148 , -0.36144358, -0.03388417,
 -1.3056769 , -0.8352961 , -0.5306683 , 1.4904802 , -0.3561437 ,
 0.02545247, -0.5360232 , -1.303334 , -0.50394267, -0.32588983,
 -1.1539103 , -0.9535743 , -0.1892574 , -0.16651504, 0.3166831 ,
 0.18158454, 0.16001037, -0.68420047, 1.494675 , -0.4609426 ,
 -0.30888504, -0.76386964},
 { 0.2846418 , -1.3867499 , -1.7952583 , -0.5720714 , 0.50514734,
 0.24589947, -0.85733926, 1.5310086 , -0.15666302, -0.8107075 ,
 -0.3265966 , -0.22525488, -0.32894936, -0.20094761, -0.24546324,
 -0.22918788, 0.37990102, -0.24796383, -0.28856242, 0.88653386,
 -0.09326278, 0.01541071, -0.2877536 , -0.4545502 , 0.14086482,
 -0.22873844, -0.33073285, -0.3190975 , 0.3847607 , -0.76348984,
 -0.35042474, -0.0323948 },
 { 0.19716395, -0.8524033 , -1.2918118 , -0.64243126, 0.86949867,
 0.8678303 , -1.1628697 , 1.0569648 , -0.5466521 , -0.68425304,
 -0.42184108, -0.34223795, -0.2290012 , 0.27940878, -1.0096924 ,
 -0.7285551 , 0.3141625 , -0.16141836, -0.82980144, 0.8210594 ,
 -0.21986684, -0.62356657, 0.13656287, -0.35587585, 0.723606 ,
 -0.5776093 , -0.48794392, -0.3579497 , 0.31260282, -0.8595846 ,
 0.3831503 , -0.22514482},
 { 0.6693064 , -0.9538178 , -1.0160183 , 0.4121527 , -0.02070097,
 -0.29846466, 0.07906973, 1.1636908 , 0.2877334 , -0.1394629 ,
 -0.10575275, 0.13502155, 0.4268594 , -0.07789066, 0.04550759,
 0.60495603, 0.05862027, 0.10318344, -0.27239215, 0.15638696,
 -0.22999215, 0.32308623, 0.11065141, 0.27249682, -0.3489485 ,
 -0.6706561 , 0.22521791, 0.1673442 , 0.14689547, -0.5520788 ,
 -0.43209878, 0.15806584},
 {-1.0098556 , 0.37336954, 1.0945514 , -0.38729987, -0.2877462 ,
 -0.54854065, 0.66569364, -0.86933357, -0.7494084 , -1.0222341 ,
 -0.1717648 , -0.18274751, 0.37994936, -0.49204734, -0.7127653 ,
 0.19906951, -0.39651155, 0.21852495, -0.89692885, -0.78512454,
 -0.10596848, -0.31714 , -0.3839272 , -0.62200874, 0.83254844,
 0.02183023, -0.1303817 , -0.13356866, -0.09716081, -0.35605234,
 -0.0532304 , 0.23075318},
 {-0.07274358, -0.07508247, -0.23962097, -1.0242068 , -0.08631157,
 -0.14586446, 0.8430629 , 0.1846737 , -0.28851178, -1.0456576 ,
 -0.11834538, -0.3927521 , -0.8489531 , 0.5624392 , -0.8912581 ,
 -0.04580751, -0.22231852, -0.30220938, -0.7822442 , -0.44117913,
 -0.28700855, -0.7753643 , 0.2949439 , 0.47207648, 0.5130429 ,
 -0.1654595 , 0.78788626, -0.80714816, -0.11790075, 0.13559534,
 0.2013909 , -0.16830112},
 { 0.4289882 , -0.0923113 , -0.61151886, -0.02997533, -0.610305 ,
 0.02320727, -0.22587496, 1.0574198 , -0.947833 , 0.02000234,
 -0.45327747, -0.62033814, -0.68007016, 0.9594311 , 0.01186598,
 -0.16927013, -0.4025051 , -0.87454915, -0.18010113, -0.03831567,
 -0.7321609 , -0.79914165, -0.24014577, -0.2262995 , 0.8856533 ,
 0.19693951, 0.8563039 , -0.09574154, 0.47308138, 1.2633007 ,
 -0.74215555, -0.7072671 }
};

const float weight2[32][16]={
{ 1.00368060e-01, 5.44699766e-02, 3.34411800e-01,
 -3.11481863e-01, -6.90265670e-02, -8.48410055e-02,
 -7.36877248e-02, 1.95045441e-01, -4.10738498e-01,
 -3.17176640e-01, 9.72170830e-02, -2.27389544e-01,
 -3.60780805e-01, 4.53307897e-01, -1.05119221e-01,
 6.61480054e-02},
 { 3.16230565e-01, 5.87844670e-01, -1.96663946e-01,
 -3.53162408e-01, -3.80155116e-01, 5.21767199e-01,
 4.61344235e-02, -3.34506065e-01, 3.80735397e-01,
 -4.20737952e-01, -6.62320077e-01, -8.00554529e-02,
 6.03481352e-01, -3.00934225e-01, 3.90190810e-01,
 -5.83101809e-01},
 { 6.72399998e-01, 6.34152710e-01, -4.97654885e-01,
 -5.74588180e-01, -8.64046872e-01, 1.15496866e-01,
 -4.23956752e-01, -5.82187533e-01, 1.44665390e-01,
 -1.64474070e-01, -4.89689022e-01, -6.09753788e-01,
 6.33051574e-01, -2.10868910e-01, 1.18463174e-01,
 -8.70261192e-01},
 {-2.56094430e-02, 1.28347203e-01, 1.55132394e-02,
 4.45279837e-01, 4.23017085e-01, -2.71310151e-01,
 -7.98399597e-02, 1.93325371e-01, 1.05931938e-01,
 8.95724725e-03, 3.72353911e-01, -8.06083083e-02,
 -1.96550176e-01, 2.63322681e-01, -1.18885174e-01,
 2.86926359e-01},
 { 1.05346575e-01, -6.78360686e-02, -3.44366193e-01,
 3.61178331e-02, -5.89573264e-01, 1.89382553e-01,
 1.02674542e-02, -4.29338753e-01, 4.74127859e-01,
 -4.08814907e-01, -1.75938323e-01, -1.15863882e-01,
 1.53485373e-01, -2.59642690e-01, 1.72673479e-01,
 -5.82211137e-01},
 { 1.87884152e-01, -1.30512621e-02, -4.32891436e-02,
 1.82372853e-01, -4.02328163e-01, 1.57965153e-01,
 1.21528516e-02, -5.49513340e-01, 4.51849312e-01,
 -4.27126765e-01, -2.93621272e-01, -5.79478443e-01,
 6.13887534e-02, -4.31094408e-01, 3.84255588e-01,
 -4.61567312e-01},
 {-7.10180342e-01, -1.19035229e-01, 4.52163547e-01,
 -1.69757400e-02, 5.42859316e-01, -1.05361342e-01,
 3.07580233e-01, 3.77964795e-01, -8.46295208e-02,
 -1.47122487e-01, 3.48229676e-01, 4.69112039e-01,
 -6.17027164e-01, 6.38528764e-01, -7.03509390e-01,
 5.99139214e-01},
 {-5.41907907e-01, -1.25942230e-01, 5.44663787e-01,
 2.70231366e-01, 8.63090634e-01, -7.46854961e-01,
 3.48816812e-01, 3.60953987e-01, -3.99031579e-01,
 5.04525065e-01, 5.65612257e-01, 6.27031624e-01,
 -7.34468341e-01, 1.58222049e-01, -3.95732999e-01,
 5.53298116e-01},
 {-1.76669940e-01, -3.72108668e-01, 1.62519768e-01,
 -2.86783110e-02, 1.61928326e-01, -4.38943923e-01,
 -6.41666949e-02, -9.40621179e-03, -1.78671345e-01,
 1.72359303e-01, -6.59350157e-02, 1.51084244e-01,
 -2.79194325e-01, -6.78547844e-02, -3.40434402e-01,
 2.99490392e-01},
 {-3.95191699e-01, 6.80693239e-02, 2.82553047e-01,
 4.81951922e-01, 2.68050015e-01, -1.01816401e-01,
 -7.93393925e-02, 4.50444192e-01, 8.56941268e-02,
 1.76428989e-01, 3.11327912e-02, 8.70722011e-02,
 -9.72403362e-02, -9.25531015e-02, -1.11711904e-01,
 2.49449894e-01},
 { 1.99706376e-01, 8.16023052e-02, 3.36427718e-01,
 -1.78528845e-01, -1.99254438e-01, 6.40707090e-02,
 1.64754433e-03, 2.53985167e-01, -3.94242465e-01,
 4.50742453e-01, 2.76056796e-01, 2.31178980e-02,
 2.30261311e-01, 1.70026720e-01, -2.79542208e-01,
 1.20118387e-01},
 {-1.82231233e-01, -1.73528284e-01, 1.64089441e-01,
 -9.56868827e-02, 2.74074495e-01, -2.24762946e-01,
 -9.64047015e-02, 3.74636650e-01, -1.73955768e-01,
 -1.12374518e-02, 4.30389643e-01, 3.97487700e-01,
 -2.80531079e-01, 1.38121620e-01, 7.53403679e-02,
 1.12598352e-01},
 {-1.72461241e-01, 1.86215997e-01, -1.24058582e-01,
 1.74414590e-01, -2.25937247e-01, 9.17230695e-02,
 2.58227855e-01, 3.40418428e-01, -3.23324263e-01,
 5.49255079e-03, 3.53669643e-01, 4.18334186e-01,
 3.59106809e-02, 3.40261400e-01, -2.09639311e-01,
 3.80131602e-01},
 { 4.83144045e-01, 3.57741982e-01, -6.63635582e-02,
 -6.88782871e-01, -1.03068061e-01, 4.54740435e-01,
 -3.99394333e-01, -4.07896399e-01, 3.19041699e-01,
 -9.51761603e-01, -6.41768754e-01, -3.98746520e-01,
 3.03593010e-01, -6.59843445e-01, -5.75921573e-02,
 -4.13734585e-01},
 {-4.18348491e-01, -5.61344773e-02, 1.73614994e-01,
 3.74213994e-01, -5.26843593e-02, -3.37901860e-01,
 1.17991693e-01, 9.51102152e-02, -2.07025468e-01,
 2.89071500e-01, -2.21775189e-01, 4.12183970e-01,
 -2.35661492e-01, -2.18224049e-01, -3.57855469e-01,
 3.44385266e-01},
 { 1.63945220e-02, -3.76239061e-01, -2.42642194e-01,
 4.51991498e-01, 2.86454678e-01, -3.33123058e-01,
 4.41326410e-01, 4.72174346e-01, -6.01813458e-02,
 2.58037932e-02, 9.33244899e-02, 4.71337050e-01,
 -7.53319561e-02, 3.14032316e-01, -4.17880535e-01,
 2.19487920e-01},
 { 6.09046593e-02, -7.96255395e-02, -5.32211699e-02,
 -1.51567146e-01, -1.00107253e-01, 9.28035602e-02,
 -1.18496478e-01, -3.53032798e-01, -2.13385180e-01,
 2.10997477e-01, -2.43262902e-01, -4.07756418e-02,
 4.83799167e-02, -8.28172565e-02, 1.72810361e-01,
 -1.21549889e-02},
 {-2.05016002e-01, -4.33580130e-02, -8.16306770e-02,
 -9.79532227e-02, 1.65748984e-01, -3.26147437e-01,
 8.92307013e-02, 2.54581541e-01, -2.54233003e-01,
 3.25169146e-01, 7.98321888e-02, 4.57521640e-02,
 -4.17587042e-01, 2.85011917e-01, -3.49901289e-01,
 3.82649124e-01},
 { 5.29663190e-02, -3.21499705e-01, -1.67817563e-01,
 -7.76477307e-02, 9.04952660e-02, -4.30588633e-01,
 7.22126812e-02, -1.89914722e-02, -2.93215305e-01,
 3.42024624e-01, 4.59246486e-01, 1.31081969e-01,
 -3.53732973e-01, -1.37156874e-01, -3.57244581e-01,
 3.92385870e-01},
 { 4.42315876e-01, 3.76144767e-01, -3.11927855e-01,
 -1.13892760e-02, -4.58924100e-02, 1.40038341e-01,
 -1.80505097e-01, -2.90923506e-01, 5.08639872e-01,
 -3.87315929e-01, -4.77861881e-01, -1.47797480e-01,
 4.82114226e-01, -5.84305525e-01, 2.06676319e-01,
 -3.88205320e-01},
 {-1.42948613e-01, -3.22561264e-01, 4.61007595e-01,
 1.00704215e-01, 5.19915186e-02, -2.05066204e-01,
 -1.26999974e-01, 1.08474448e-01, -1.03143588e-01,
 2.71064699e-01, 1.04015343e-01, 3.74282710e-02,
 -4.44933981e-01, 1.37180667e-02, 1.70949206e-01,
 5.10277569e-01},
 {-3.42836052e-01, -5.75029969e-01, 2.19286069e-01,
 2.20003668e-02, 1.95564166e-01, -3.64600390e-01,
 3.15185517e-01, 3.14250410e-01, -6.29152000e-01,
 -3.58551182e-02, 9.50603485e-02, 2.90456116e-01,
 1.45551711e-01, 5.43192387e-01, 6.11716416e-04,
 5.08257806e-01},
 {-2.49199420e-01, -1.60031676e-01, -1.35338783e-01,
 1.86966166e-01, 2.64930516e-01, 1.75543040e-01,
 -2.67421007e-01, -3.67100865e-01, 3.26275170e-01,
 -1.48785561e-01, 7.54615068e-02, -4.23900574e-01,
 4.91320640e-02, 1.13393389e-01, 3.05270404e-01,
 -5.62545098e-02},
 { 1.06870778e-01, -1.33700594e-01, 2.63198733e-01,
 3.42555181e-03, 5.43917939e-02, -1.03381626e-01,
 2.82418966e-01, 5.60005531e-02, -6.26660436e-02,
 -1.83831364e-01, 4.29151088e-01, 3.87061745e-01,
 -2.19072223e-01, 4.80358452e-02, 5.98627366e-02,
 2.15436041e-01},
 { 8.30208138e-02, 5.12369633e-01, -4.71038446e-02,
 -5.46415806e-01, -2.15334147e-01, 4.42225844e-01,
 -1.76488549e-01, -3.99626911e-01, 1.46223396e-01,
 -5.09676456e-01, -5.80508640e-05, -4.40213621e-01,
 5.43100655e-01, 3.49094197e-02, 1.11070246e-01,
 -1.26694694e-01},
 { 3.29665244e-02, 4.19793054e-02, -3.02744489e-02,
 2.66691390e-02, -1.36849254e-01, 4.19331461e-01,
 -1.92263961e-01, -3.35080683e-01, 2.61001348e-01,
 -2.15552509e-01, -3.20616782e-01, -3.59739959e-01,
 1.09702662e-01, -1.46235898e-01, 6.63289130e-02,
 -4.11214828e-01},
 { 5.01668714e-02, -3.02079678e-01, -1.64396271e-01,
 -1.84455544e-01, -8.83661732e-02, 1.19175725e-01,
 3.89106065e-01, 4.09915358e-01, -3.30119342e-01,
 -2.59911180e-01, 5.54084592e-02, 3.65949214e-01,
 -2.09135920e-01, -5.85574545e-02, -2.11188719e-01,
 2.45734930e-01},
 {-3.02339077e-01, -3.86878222e-01, 5.87415742e-03,
 1.66305065e-01, 2.29111258e-02, 2.10954472e-01,
 3.02650332e-01, 4.07852948e-01, -2.97278184e-02,
 2.84283400e-01, 1.49701327e-01, 3.26896548e-01,
 1.37821928e-01, 2.15578124e-01, 3.02951574e-01,
 -2.33642042e-01},
 {-4.16725911e-02, 3.83979857e-01, -2.71692574e-01,
 -5.86153269e-01, -3.74561727e-01, 2.65664756e-01,
 -2.89140373e-01, -3.36521342e-02, 3.82816195e-01,
 -7.23081172e-01, -2.33034775e-01, -4.08082545e-01,
 5.67756414e-01, 1.09620944e-01, 3.97269189e-01,
 -1.89056978e-01},
 { 4.39912140e-01, 2.24954724e-01, -1.73175842e-01,
 -5.24146497e-01, -4.97601777e-01, 5.28510273e-01,
 -2.67759949e-01, -4.42276329e-01, -8.03368613e-02,
 1.33917868e-01, -5.50821386e-02, -5.26810527e-01,
 1.44832090e-01, -2.00535834e-01, 5.02806544e-01,
 -6.24376774e-01},
 { 1.12048164e-01, -1.30081147e-01, -1.97349504e-01,
 3.00489403e-02, -1.89062372e-01, -7.93324411e-02,
 -1.39025614e-01, -4.18898880e-01, 4.40240264e-01,
 1.15326263e-01, -2.21982494e-01, -1.41645923e-01,
 -7.63355047e-02, 2.82092858e-02, 4.21602912e-02,
 -1.05471753e-01},
 {-1.93759859e-01, 1.17276564e-01, 1.70358628e-01,
 3.93534005e-01, 3.02184373e-01, 9.67193116e-03,
 1.93095848e-01, 2.46516541e-01, 8.79787281e-03,
 8.19811970e-02, 3.23906183e-01, 1.09147288e-01,
 2.60818731e-02, 1.67833969e-01, -1.25017464e-01,
 1.37963384e-01}
};

const float weight3[16][8]={
 { 8.12175218e-03, 3.12406540e-01, 6.36582136e-01,
 1.81977004e-01, -2.45832667e-01, -4.53580856e-01,
 -6.43108368e-01, -3.21268141e-01},
 {-6.31192505e-01, 8.38098675e-02, 4.32827801e-01,
 -1.44454967e-02, -3.23938370e-01, 2.89567381e-01,
 -2.35779971e-01, 3.02476943e-01},
 { 5.16597480e-02, 3.31821799e-01, -3.05980474e-01,
 2.55262882e-01, 2.20579267e-01, -9.77954715e-02,
 5.73613346e-01, -5.88223822e-02},
 { 4.51298833e-01, 3.75907332e-01, -4.90747362e-01,
 1.57926857e-01, 5.57009935e-01, -3.43694128e-02,
 4.88733441e-01, 9.81542021e-02},
 { 3.99536639e-01, 8.55385363e-02, -3.47182602e-01,
 8.02224129e-03, 5.23396432e-01, 2.21800115e-02,
 7.57116914e-01, -2.35440821e-04},
 { 1.44230038e-01, -2.25735635e-01, 5.23147583e-01,
 1.78904191e-01, -5.88730097e-01, -2.29935154e-01,
 -6.01472139e-01, 2.33082935e-01},
 { 7.49176666e-02, -2.86921882e-03, -7.34348148e-02,
 -5.96169651e-01, 6.31212473e-01, -2.89541572e-01,
 1.58001840e-01, 5.25847554e-01},
 { 5.19357204e-01, 4.30133998e-01, -2.23163515e-02,
 -4.47021604e-01, 3.17479163e-01, -3.37034464e-01,
 -1.05567593e-02, 3.68010372e-01},
 { 7.38591477e-02, -3.88872683e-01, 1.51385784e-01,
 4.08432409e-02, -5.62659144e-01, -1.83552742e-01,
 -6.27636790e-01, -5.19347727e-01},
 { 3.54129910e-01, 6.56133950e-01, -5.63277900e-01,
 -5.67585588e-01, -2.60791361e-01, 1.05872564e-01,
 -2.44786330e-02, 2.18442574e-01},
 {-2.26547003e-01, 3.93419981e-01, -5.24506092e-01,
 -5.22333503e-01, 2.55856127e-01, 1.65567875e-01,
 6.86938822e-01, -4.14748713e-02},
 { 5.60347259e-01, 3.14519972e-01, -5.23879647e-01,
 -4.20603901e-01, 4.78703827e-01, -7.64003038e-01,
 5.58827333e-02, -1.19109206e-01},
 {-3.28300670e-02, -7.06420124e-01, 3.59903097e-01,
 7.19635904e-01, -4.88051206e-01, 6.28433168e-01,
 -8.44547212e-01, -3.36276591e-01},
 { 1.17925450e-01, -3.73413086e-01, -3.80024761e-01,
 9.96284746e-03, 9.99269187e-02, -3.14813465e-01,
 5.14013886e-01, -2.11061314e-01},
 {-3.24377149e-01, 1.96415335e-02, 4.59134519e-01,
 5.87288082e-01, 3.48910123e-01, 1.66172988e-03,
 -3.89143199e-01, 3.79197210e-01},
 { 6.00976110e-01, 7.15601802e-01, -5.83235502e-01,
 -8.15735221e-01, 6.23594001e-02, -2.86356002e-01,
 8.13013256e-01, 7.67191350e-01}
};

const float weight4[8][1]={
{ 0.2401085 },
 { 0.27782628},
 {-0.5388612 },
 {-0.69085264},
 { 0.5587577 },
 {-0.4282835 },
 { 0.6144492 },
 { 0.18620795}
};

const float bias1[32]={
 -0.43708324, 0.94829315, 1.2950369 , -0.3939444 , -0.10374515,
 -0.01690603, -0.3248042 , -0.9337858 , -0.34437597, 0.09681015,
 -0.6057988 , -0.52126735, -0.5140448 , 0.5666089 , -0.04872264,
 -0.06048252, -0.37623468, -0.544911 , -0.0949764 , -0.03522792,
 -0.8141251 , -0.49479458, -0.05556784, -0.27266267, 0.22957405,
 0.57152295, -0.11097222, -0.42691454, 0.6925708 , 1.1263548 ,
 -0.22096334, -0.316002
};

const float bias2[16]={
 0.07117348, 0.10208904, -0.16003443, -0.09386738, 0.00287915,
 0.08995385, -0.07730682, -0.0810321 , 0.02642249, -0.17805359,
 -0.08552487, -0.08516646, 0.13081576, -0.07508923, 0.0559045 ,
 -0.1345983
};

const float bias3[8]={
 0.0209794 , -0.00950916, -0.01826035, -0.01855106, 0.05654862,
 -0.10523497, 0.04600529, 0.1041428
};

const float bias4[1]={
 0.13622299
};

float in[10] = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0};

float res[32], res2[16], res3[8], res4[1];
float hid1score[32], hid2score[16], hid3score[8], *hid4score;

double sigmoid(double x){
 double temp = exp(-x);
 double tempp = 1/(1+temp);
 return tempp;
}



void intohid1(){
 int i, j;
 for (i = 0; i<32; i++){
 res[i]=0;
 for (j = 0; j<10; j++){
 res [i] += in[j]*weight1[j][i];
 }
 res [i] += bias1[i];
 hid1score[i] = sigmoid(res[i]);
 }
}

void hid1tohid2(){
 int i, j;
 for (i = 0; i<16; i++){
 res2[i]=0;
 for (j = 0; j<32; j++){
 res2 [i] += hid1score[j]*weight2[j][i];
 }
 res2 [i] += bias2[i];
 hid2score[i]= sigmoid(res2[i]);
 }



}

void hid2tohid3(){
 int i, j;
 for (i = 0; i<8; i++){
 res3[i]=0;
 for (j = 0; j<16; j++){
 res3 [i] += hid2score[j]*weight3[j][i];
 }
 res3 [i] += bias3[i];
 hid3score[i]= sigmoid(res3[i]);
 }



}

void hid3toout(){
 int i, j;
 for (i = 0; i<1; i++){
 res4[i]=0;
 for (j = 0; j<8; j++){
 res4 [i] += hid3score[j]*weight4[j][i];
 }
 res4 [i] += bias4[i];
 hid4score[i] = res4[i];
 }
}

void predict(){
 if (hid4score[0] >= 0.5){
 detection = 1;
 }
 else {detection = 0;}
#line 438 "e:/its/pelajaran/semester 8/3 - tugas akhir/program_mikro_fix/ann.h"
 if (detection == 0){



 TFT_Write_Text("No DOMS", 390, 375);
 }
 else if (detection == 1){


 TFT_Write_Text("DOMS", 405, 375);
 }
}
#line 15 "E:/ITS/Pelajaran/Semester 8/3 - Tugas Akhir/Program_Mikro_Fix/MyProject_events_code.c"
void InitTimer14(){
 RCC_APB1ENR.TIM14EN = 1;
 TIM14_CR1.CEN = 0;
 TIM14_PSC = 1;
 TIM14_ARR = 53999;
 NVIC_IntEnable(IVT_INT_TIM8_TRG_COM_TIM14);
 TIM14_DIER.UIE = 1;
 TIM14_CR1.CEN = 1;
}


void bingkai_blank(int X1,int Y1, int X2, int Y2)
{
 TFT_Set_Pen(CL_WHITE, 1);
 TFT_Set_Brush(1, 0, 0, LEFT_TO_RIGHT, CL_WHITE, CL_WHITE);
 TFT_Rectangle(X1,Y1,X2,Y2);
}

void bingkai_feature(int X1, int Y1, int X2, int Y2, float dat)
{
 TFT_Set_Pen(CL_WHITE, 1);
 TFT_Set_Brush(0, 0, 0, LEFT_TO_RIGHT, CL_WHITE, CL_WHITE);
 FloatToStr(dat, text);
 TFT_Write_Text(text, X1, Y1);
}

void systemInit()
{

 mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_AN_PIN, _GPIO_INPUT );
 mikrobus_logInit( _LOG_USBUART, 115200 );
 Delay_ms( 200 );

 mikrobus_gpioInit( _MIKROBUS2, _MIKROBUS_AN_PIN, _GPIO_INPUT );
 mikrobus_logInit( _LOG_USBUART, 115200 );
 Delay_ms( 200 );

 mikrobus_gpioInit( _MIKROBUS3, _MIKROBUS_AN_PIN, _GPIO_INPUT );
 mikrobus_logInit( _LOG_USBUART, 115200 );
 Delay_ms( 200 );


 mikrobus_uartInit( _MIKROBUS4, &_USB_UART_UART_CFG[0] );
 mikrobus_logInit( _MIKROBUS4, 115200 );
 Delay_ms( 100 );
}

void applicationInit()
{
 initTimer14();interrFlag = 0; interrCnt = 0;Delay_ms(200);


 ADC1_Init(); Delay_ms( 200 );
 ADC_Set_Input_Channel( _ADC_CHANNEL_3 ); Delay_ms( 200 );
 emg_gpioDriverInit( ( const uint8_t* )&_MIKROBUS1_GPIO ); Delay_ms( 200 );


 ADC2_Init(); Delay_ms( 200 );
 ADC_Set_Input_Channel( _ADC_CHANNEL_10 ); Delay_ms( 200 );
 emg_gpioDriverInit( ( const uint8_t* )&_MIKROBUS2_GPIO ); Delay_ms( 200 );


 ADC3_Init(); Delay_ms( 200 );
 ADC_Set_Input_Channel( _ADC_CHANNEL_12 ); Delay_ms( 200 );
 emg_gpioDriverInit( ( const uint8_t* )&_MIKROBUS3_GPIO ); Delay_ms( 200 );


 UART6_Init_Advanced(57600, _UART_8_BIT_DATA, _UART_NOPARITY, _UART_ONE_STOPBIT, &_GPIO_MODULE_UART6_PC67);

 EnableInterrupts();
 Delay_ms( 200 );
}


void applicationTaskEMG()
{
 int i, stop, i_plot, i_plot1;
 float emg1_value, emg2_value, emg3_value;

 readADC1 = ADC1_Get_Sample(3);
 emg1_value = (float) (readADC1 * 3.3)/4095;
 stop = emg_process(emg_ptr1, emg1_value);

 readADC2 = ADC2_Get_Sample(10);
 emg2_value = (float) (readADC2 * 3.3)/4095;
 stop = emg_process(emg_ptr2, emg2_value);

 readADC3 = ADC3_Get_Sample(12);
 emg3_value = (float) (readADC3 * 3.3)/4095;
 stop = emg_process(emg_ptr3, emg3_value);

 i = emg_ptr1->length_emg - 1;
 i_plot = (emg_ptr1->length_emg -1) %  780 ;

 if ((i_plot) == 0) bingkai_blank(10,10,788,425);



 if (i_plot >= 1) {
 TFT_Set_Pen(CL_RED, 2);
 TFT_Line(10+(i_plot - 1), 120 - 15*(emg_ptr1->emg_signal[i-1]), 10+i_plot , 120 - 15*((emg_ptr1->emg_signal[i])));
 }


 if (i_plot >= 1) {
 TFT_Set_Pen(CL_YELLOW, 2);
 TFT_Line(10+(i_plot - 1), 240 - 15*(emg_ptr2->emg_signal[i-1]), 10+i_plot, 240 - 15*(emg_ptr2->emg_signal[i]));
 }


 if (i_plot >= 1) {
 TFT_Set_Pen(CL_WHITE, 2);
 TFT_Line(10+(i_plot - 1), 360 - 15*(emg_ptr3->emg_signal[i-1]), 10+i_plot, 360 - 15*(emg_ptr3->emg_signal[i]));
 }
}

void Timer14_interrupt() iv IVT_INT_TIM8_TRG_COM_TIM14 {
 TIM14_SR.UIF = 0;

 Check_TP();
 if (buttonFlag1)
 {
 applicationTaskEMG();


 i++;


 if (i >= 3000)
 {

 buttonFlag1 = ~buttonFlag1;
 ButtonRound3.Caption = "RUN";
 ButtonRound3.Color = CL_LIME;
 DrawRoundButton(&ButtonRound3);
 }
 }
}





void ButtonRound1OnClick() {
 OR = 1;
 DrawScreen(&Screen2);
}

void ButtonRound2OnClick() {
 OR = 0;
 DrawScreen(&Screen2);
}

void ButtonRound3OnClick() {
 buttonFlag1 = ~buttonFlag1;
 if (!buttonFlag1){
 ButtonRound3.Caption = "RUN";
 ButtonRound3.Color = CL_LIME;
 } else {
 emg_init(emg_ptr1, 2000.0);
 emg_init(emg_ptr2, 2000.0);
 emg_init(emg_ptr3, 2000.0);
 ButtonRound3.Caption = "STOP";
 ButtonRound3.Color = CL_RED;
 }
 DrawRoundButton(&ButtonRound3);
}
void ButtonRound4OnClick() {
 DrawScreen(&Screen1);
}
void ButtonRound5OnClick() {

 DrawScreen(&Screen4);
 emg_time_domain_calculation(emg_ptr1);
 emg_frequency_domain_calculation(emg_ptr1);

 emg_time_domain_calculation(emg_ptr2);
 emg_frequency_domain_calculation(emg_ptr2);

 emg_time_domain_calculation(emg_ptr3);
 emg_frequency_domain_calculation(emg_ptr3);


 bingkai_feature(150, 60, 185, 370, emg_ptr1->rms);
 bingkai_feature(150, 120, 600, 160, emg_ptr1->ssi);
 bingkai_feature(150, 180, 185, 390, emg_ptr1->mav);
 bingkai_feature(150, 240, 210, 160, emg_ptr1->iemg);


 bingkai_feature(150, 300, 210, 160, OR);


 bingkai_feature(615, 60, 185, 390, emg_ptr2->rms);
 bingkai_feature(615, 120, 185, 390, emg_ptr2->mav);
 bingkai_feature(615, 180, 210, 160, emg_ptr2->iemg);
 bingkai_feature(615, 240, 600, 305, emg_ptr2->pkf);


 bingkai_feature(615, 300, 600, 305, emg_ptr3->pkf);


 in[0] = ((emg_ptr1->rms - 2.18009029e-01) / 8.05556134e-02);
 in[1] = ((emg_ptr1->ssi - 2.12871335e+02) / 1.50767416e+02);
 in[2] = ((emg_ptr1->mav - 1.48594221e-01) / 5.80820397e-02);
 in[3] = ((emg_ptr1->iemg - 5.97430826e+02) / 2.24148482e+02);
 in[4] = ((emg_ptr2->rms - 3.11378197e-01) / 9.06935858e-02);
 in[5] = ((emg_ptr2->mav - 2.33309268e-01) / 6.94063728e-02);
 in[6] = ((emg_ptr2->iemg - 8.61362964e+02) / 2.46171824e+02);
 in[7] = ((emg_ptr2->pkf - 6.82443472e+01) / 2.30767773e+01);
 in[8] = ((emg_ptr3->pkf - 7.59770320e+01) / 2.76073988e+01);
 in[9] = (OR);

 Delay_ms(500);
 intohid1();
 hid1tohid2();
 hid2tohid3();
 hid3toout();

 TFT_Set_Pen(CL_WHITE, 1);
 TFT_Set_Brush(0, 0, 0, LEFT_TO_RIGHT, CL_WHITE, CL_WHITE);

 Delay_ms(150);
 predict();
 Delay_ms(10);
}

void ButtonRound7OnClick() {
 DrawScreen(&Screen1);
}
void ButtonRound6OnClick() {
 DrawScreen(&Screen4);
 emg_time_domain_calculation(emg_ptr1);
 emg_frequency_domain_calculation(emg_ptr1);

 Delay_ms(150);
 emg_time_domain_calculation(emg_ptr2);
 emg_frequency_domain_calculation(emg_ptr2);

 Delay_ms(150);
 emg_time_domain_calculation(emg_ptr3);
 emg_frequency_domain_calculation(emg_ptr3);

 Delay_ms(150);

 bingkai_feature(150, 60, 185, 370, emg_ptr1->rms);
 bingkai_feature(150, 120, 600, 160, emg_ptr1->ssi);
 bingkai_feature(150, 180, 185, 390, emg_ptr1->mav);
 bingkai_feature(150, 240, 210, 160, emg_ptr1->iemg);


 bingkai_feature(150, 300, 210, 160, OR);


 bingkai_feature(615, 60, 185, 390, emg_ptr2->rms);
 bingkai_feature(615, 120, 185, 390, emg_ptr2->mav);
 bingkai_feature(615, 180, 210, 160, emg_ptr2->iemg);
 bingkai_feature(615, 240, 600, 305, emg_ptr2->pkf);


 bingkai_feature(615, 300, 600, 305, emg_ptr3->pkf);

 Delay_ms(150);

 in[0] = ((emg_ptr1->rms - 2.18009029e-01) / 8.05556134e-02);
 in[1] = ((emg_ptr1->ssi - 2.12871335e+02) / 1.50767416e+02);
 in[2] = ((emg_ptr1->mav - 1.48594221e-01) / 5.80820397e-02);
 in[3] = ((emg_ptr1->iemg - 5.97430826e+02) / 2.24148482e+02);
 in[4] = ((emg_ptr2->rms - 3.11378197e-01) / 9.06935858e-02);
 in[5] = ((emg_ptr2->mav - 2.33309268e-01) / 6.94063728e-02);
 in[6] = ((emg_ptr2->iemg - 8.61362964e+02) / 2.46171824e+02);
 in[7] = ((emg_ptr2->pkf - 6.82443472e+01) / 2.30767773e+01);
 in[8] = ((emg_ptr3->pkf - 7.59770320e+01) / 2.76073988e+01);
 in[9] = (OR);

 Delay_ms(500);
 intohid1();
 hid1tohid2();
 hid2tohid3();
 hid3toout();

 TFT_Set_Pen(CL_WHITE, 1);
 TFT_Set_Brush(0, 0, 0, LEFT_TO_RIGHT, CL_WHITE, CL_WHITE);

 Delay_ms(150);
 predict();
 Delay_ms(10);
}
