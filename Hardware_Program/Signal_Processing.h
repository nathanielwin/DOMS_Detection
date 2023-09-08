#define N_EMG           4000
#define N_EMG_2         2000
#define N_DISPLAY_EMG   780

typedef struct complex_2{
    float real_2;
    float imag_2;
} complex_t_2;

complex_t_2 fft_temp_2[N_FFT];
complex_t_2 fft_input_2[N_FFT];
complex_t_2 fft_input_conjugated_2[N_FFT];

typedef struct EMG_Instance {
    // variable for signal
    float emg_signal[N_EMG];
    int length_emg;
    int current_index_emg;
    float fs_emg;

    // private variable
    float lpf_emg[N_EMG];
    float hpf_emg[N_EMG];
    float sum_data_emg;

    // time domain
    float rms;
    float ssi;
    float mav;
    float iemg;

    // frequency domain
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

float power2[N_FFT_2], freq_emg[N_FFT_2];

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
     int i = emg->current_index_emg & N_DISPLAY_EMG;

     emg->sum_data_emg += emg->emg_signal[i];
     emg->emg_signal[i] = emg->emg_signal[i] - (emg->sum_data_emg / emg->length_emg);
}

float emg_filter(EMG_Instance_t* emg)
{
       int i = emg->current_index_emg;
       
       if (i == 0){
        emg->lpf_emg[i] = (0.2929*(get_rotating_index(emg->emg_signal, N_DISPLAY_EMG, i)));
        } else if (i == 1){
        emg->lpf_emg[i] = (0.2929*(get_rotating_index(emg->emg_signal, N_DISPLAY_EMG, i))+0.5858*(get_rotating_index(emg->emg_signal, N_DISPLAY_EMG, i-1)));
        } else{
        emg->lpf_emg[i] = (0.2929*(get_rotating_index(emg->emg_signal, N_DISPLAY_EMG, i))+0.5858*(get_rotating_index(emg->emg_signal, N_DISPLAY_EMG, i-1))+0.2929*(get_rotating_index(emg->emg_signal, N_DISPLAY_EMG, i-2)) - 0.1716*(get_rotating_index(emg->lpf_emg, N_DISPLAY_EMG, i-2)));
       }

       if (i == 0){
        emg->hpf_emg[i] = (0.9565*(get_rotating_index(emg->lpf_emg, N_DISPLAY_EMG, i)));
        } else if (i == 1){
        emg->hpf_emg[i] = (0.9565*(get_rotating_index(emg->lpf_emg, N_DISPLAY_EMG, i))-(1.9131*(get_rotating_index(emg->lpf_emg, N_DISPLAY_EMG, i-1)))+1.9112*(get_rotating_index(emg->hpf_emg, N_DISPLAY_EMG, i-1)));
        } else{
        emg->hpf_emg[i] = (0.9565*(get_rotating_index(emg->lpf_emg, N_DISPLAY_EMG, i))-(1.9131*(get_rotating_index(emg->lpf_emg, N_DISPLAY_EMG, i-1)))+0.9565*(get_rotating_index(emg->lpf_emg, N_DISPLAY_EMG, i-2))+(1.9112*(get_rotating_index(emg->hpf_emg, N_DISPLAY_EMG, i-1))) - 0.9150*(get_rotating_index(emg->hpf_emg, N_DISPLAY_EMG, i-2)));
        }
}

// Function to extract contractions from EMG signal
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
                // Allocate memory for the contraction array
                contractions[contraction_count] = (double*)malloc(contraction_length * sizeof(double));

                // Copy the contraction data into the allocated array
                for (j = contraction_start; j <= contraction_end; j++) {
                    contractions[contraction_count][contraction_index] = emg[j];
                    contraction_index++;
                }

                // Update contraction count and index
                contraction_count++;
                contraction_index = 0;
            }

            // Reset contraction parameters
            contraction_start = 0;
            contraction_end = 0;
            contraction_length = 0;
        }
    }

    return contraction_count;
}

void emg_time_domain_calculation(EMG_Instance_t *emg) {
    float rrd[N_ONSET - 1];
    int i, segment_duration = 300000, limit = 2, current_index = 0;

    float _rms = 0.0;
    float _ssi = 0.0;
    float _mav = 0.0;
    float _iemg = 0.0;

    // calculate rms
    for(i = 0; i < emg->length_emg; i++) {
        _rms += emg->hpf_emg[i] * emg->hpf_emg[i];
    }
    emg->rms = (float) sqrt(_rms / (emg->length_emg));
    
    // calculate ssi
    for(i = 0; i < emg->length_emg; i++) {
        _ssi += emg->hpf_emg[i] * emg->hpf_emg[i];
    }
    emg->ssi = (float) _ssi;
    
    // calculate mav
    for(i = 0; i < emg->length_emg; i++) {
        _mav += fabs(emg->hpf_emg[i]);
    }
    emg->mav = (float) _mav / (emg->length_emg) ;
    
    // calculate iemg
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
            w.real_2 = cos(2*phi_t*m/(double)n);
            w.imag_2 = -sin(2*phi_t*m/(double)n);
            z.real_2 = w.real_2*vo[m].real_2 - w.imag_2*vo[m].imag_2;
            z.imag_2 = w.real_2*vo[m].imag_2 + w.imag_2*vo[m].real_2;
            v[  m  ].real_2 = ve[m].real_2 + z.real_2;
            v[  m  ].imag_2 = ve[m].imag_2 + z.imag_2;
            v[m+n/2].real_2 = ve[m].real_2 - z.real_2;
            v[m+n/2].imag_2 = ve[m].imag_2 - z.imag_2;
        }
    }
}

void psd_fft(int n, int n_fft, float *input, float *psd, float fs) {
    int i;
    float input_mean = 0.0, enbw = 0.0, scale = 0.0;
    float hanning_window[N_ONSET + 1];
//    float scale = 0.002;
    for(i = 0; i < n; i++) {
        hanning_window[i] = 0.5 - 0.5 * cos((2.0 * phi_t * i) / ((float) n - 1.0));
        enbw += hanning_window[i] * hanning_window[i];
    }
    scale = 1.0 / (fs * enbw);
    for(i = 0; i < N_FFT; i++) {
        fft_input_2[i].real_2 = 0.0;
        fft_input_2[i].imag_2 = 0.0;
    }

    for(i = 0; i < n; i++) {
        fft_input_2[i].real_2 = input[i];
    }

    //scale = 1.0 / (fs);
    //scale = 0.002;
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

    for(i = 0; i < N_FFT_2; i++) {
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
    float frequencies[N_FFT_2];
    // detrend
    /*temp_new_mean = 0.0;
    for (i = 0; i < emg->length_emg; i++) {
        temp_new_mean += emg->hpf_emg[i];
    }
    new_mean = (float)temp_new_mean / (float) emg->length_emg;
    sprintf(sendText, "8");
    UART3_Write_Text(sendText);*/
//    for(i = 0; i < emg->length_emg; i++) {
//        emg->hpf_emg[i] = emg->hpf_emg[i] - new_mean;
//        sprintf(sendText, "emg = %f\r\n", emg->hpf_emg[i]);
//        UART3_Write_Text(sendText);
//    }

    val_fft = 0.16479; //val = 1.0 / ((float)n_fft * (1.0 / fs));  675
    psd_fft(emg->length_emg, n_fft, emg->hpf_emg, power2, fs_fft);


    for(i = 0; i < N_FFT_2; i++) {
        freq_emg[i] = i * val_fft;
    }
    
    // Find the peak frequency (bin with maximum PSD value)
    peak_bin = 0;
    max_psd = power2[0];
    emg->pkf = 0.0;
    for (i = 1; i < N_FFT_2; i++) {
        if (power2[i] > max_psd) {
            emg->max_psd = power2[i];
            emg->peak_bin = i;
        }
    }

    // Calculate the peak frequency
    emg->pkf = emg->peak_bin * fs / n_fft;

    // Calculate the mean power
    emg->mnp = 0.0;
    for (i = 0; i < N_FFT_2; i++) {
        emg->mnp += power2[i];
    }
    emg->mnp /= N_FFT_2;
}

int emg_process(EMG_Instance_t* emg, float emg_value){
    emg->emg_signal[emg->length_emg] = emg_value;
    emg->current_index_emg = emg->length_emg;
    emg->length_emg++;

    if (emg->length_emg == (N_EMG - 1)) {
        emg->length_emg = 0;
    }
    emg_baseline_restore(emg);
    emg_filter(emg);
    return 0;
}
