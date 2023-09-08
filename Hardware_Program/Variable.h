#define BUF_DEPTH       8192
//#define length          780
#define phi_t           3.14

#define N            75251
#define N_FFT        4096
#define N_FFT_2      2048
#define N_ONSET      3000
#define N_POWER_B    3000

uint32_t interrCnt;
uint8_t interrFlag;


const uint32_t time_ms = 0.5, fs = 2000;
char sendEMG[150], text[25];

uint32_t readADC1, readADC2, readADC3;

bit buttonFlag1;
int i = 0, x, k, j, window, n = 0, ndata, detection, OR;