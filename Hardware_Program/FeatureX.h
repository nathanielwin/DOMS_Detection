// Time Domain Features
double root_mean_square(double* emg, int length) {
    double sum = 0.0;
    for (i = 0; i < length; i++) {
        sum += emg[i] * emg[i];
    }
    return sqrt(sum / length);
}

double simple_square_integral(double* emg, int length) {
    double sum = 0.0;
    for (i = 0; i < length; i++) {
        sum += emg[i] * emg[i];
    }
    return sum;
}

double mean_absolute_value(double* emg, int length) {
    double sum = 0.0;
    for (i = 0; i < length; i++) {
        sum += fabs(emg[i]);
    }
    return sum / length;
}

double integrated_emg(double* emg, int length) {
    double sum = 0.0;
    for (i = 0; i < length; i++) {
        sum += fabs(emg[i]);
    }
    return sum;
}

/*// Frequency Domain Features
double peak_frequency(double* emg, int length, int fs) {
    // Perform FFT and calculate magnitude spectrum
    // Implement the FFT and magnitude spectrum calculation here
    // Frequencies and magnitude_spectrum are the output arrays

    int peak_idx = 0;
    double peak_freq = 0.0;

    // Find the index of the peak magnitude
    // Implement the peak detection logic here

    // Calculate the corresponding frequency value
    peak_freq = frequencies[peak_idx];

    return peak_freq;
}

double mean_power(double* emg, int length, int fs) {
    double sum1 = 0.0;
    double sum2 = 0.0;

    // Perform FFT and calculate magnitude spectrum
    // Implement the FFT and magnitude spectrum calculation here
    // Frequencies and magnitude_spectrum are the output arrays

    for (int n = 0; n < round(length / 2); n++) {
        sum1 += (n * fs / length) * magnitude_spectrum[n];
        sum2 += length;
    }

    return sum1 / sum2;
}*/

void extract_features(double* emg, int length, int fs,
                      double* rms, double* ssi, double* mav, double* iemg, double* pkf, double* mnp) {
    *rms = root_mean_square(emg, length);
    *ssi = simple_square_integral(emg, length);
    *mav = mean_absolute_value(emg, length);
    *iemg = integrated_emg(emg, length);
//    *pkf = peak_frequency(emg, length, fs);
//    *mnp = mean_power(emg, length, fs);
}