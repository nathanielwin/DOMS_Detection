#include "MyProject_objects.h"
#include "MyProject_resources.h"

#include "Click_EMG_types.h"
#include "Click_EMG_config.h"
#include "Click_USB_UART_types.h"
#include "Click_USB_UART_config.h"
#include "Variable.h"
#include "Signal_Processing.h"
#include "ann.h"

//--------------------- User code ---------------------//

//EMG TIMER FOR 2000 Hz
void InitTimer14(){
  RCC_APB1ENR.TIM14EN = 1;
  TIM14_CR1.CEN = 0;
  TIM14_PSC = 1;
  TIM14_ARR = 53999;
  NVIC_IntEnable(IVT_INT_TIM8_TRG_COM_TIM14);
  TIM14_DIER.UIE = 1;
  TIM14_CR1.CEN = 1;
}

//BINGKAI
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
     //EMG1
    mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_AN_PIN, _GPIO_INPUT );
    mikrobus_logInit( _LOG_USBUART, 115200 );
    Delay_ms( 200 );
    //EMG2
    mikrobus_gpioInit( _MIKROBUS2, _MIKROBUS_AN_PIN, _GPIO_INPUT );
    mikrobus_logInit( _LOG_USBUART, 115200 );
    Delay_ms( 200 );
    //EMG3
    mikrobus_gpioInit( _MIKROBUS3, _MIKROBUS_AN_PIN, _GPIO_INPUT );
    mikrobus_logInit( _LOG_USBUART, 115200 );
    Delay_ms( 200 );
    
    //UART
    mikrobus_uartInit( _MIKROBUS4, &_USB_UART_UART_CFG[0] );
    mikrobus_logInit( _MIKROBUS4, 115200 );
    Delay_ms( 100 );
}

void applicationInit()
{
    initTimer14();interrFlag = 0; interrCnt = 0;Delay_ms(200);

    //EMG1
    ADC1_Init(); Delay_ms( 200 );
    ADC_Set_Input_Channel( _ADC_CHANNEL_3 ); Delay_ms( 200 );
    emg_gpioDriverInit( (T_EMG_P)&_MIKROBUS1_GPIO ); Delay_ms( 200 );

    //EMG2
    ADC2_Init(); Delay_ms( 200 );
    ADC_Set_Input_Channel( _ADC_CHANNEL_10 ); Delay_ms( 200 );
    emg_gpioDriverInit( (T_EMG_P)&_MIKROBUS2_GPIO ); Delay_ms( 200 );
    
    //EMG3
    ADC3_Init(); Delay_ms( 200 );
    ADC_Set_Input_Channel( _ADC_CHANNEL_12 ); Delay_ms( 200 );
    emg_gpioDriverInit( (T_EMG_P)&_MIKROBUS3_GPIO ); Delay_ms( 200 );
    
    //UART
    UART6_Init_Advanced(57600, _UART_8_BIT_DATA, _UART_NOPARITY, _UART_ONE_STOPBIT, &_GPIO_MODULE_UART6_PC67);
    
    EnableInterrupts();
    Delay_ms( 200 );
}

//EMG SIGNAL
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
   i_plot = (emg_ptr1->length_emg -1) % N_DISPLAY_EMG;

   if ((i_plot)  == 0) bingkai_blank(10,10,788,425);
   
   //EMG1

   if (i_plot >= 1) {
     TFT_Set_Pen(CL_RED, 2);
     TFT_Line(10+(i_plot - 1), 120 - 15*(emg_ptr1->emg_signal[i-1]), 10+i_plot , 120 - 15*((emg_ptr1->emg_signal[i])));
   }

   //EMG2
   if (i_plot >= 1) {
      TFT_Set_Pen(CL_YELLOW, 2);
      TFT_Line(10+(i_plot - 1), 240 - 15*(emg_ptr2->emg_signal[i-1]), 10+i_plot, 240 - 15*(emg_ptr2->emg_signal[i]));
    }

   //EMG3
   if (i_plot >= 1) {
      TFT_Set_Pen(CL_WHITE, 2);
      TFT_Line(10+(i_plot - 1), 360 - 15*(emg_ptr3->emg_signal[i-1]), 10+i_plot, 360 - 15*(emg_ptr3->emg_signal[i]));
   }
}

void Timer14_interrupt() iv IVT_INT_TIM8_TRG_COM_TIM14 {
  TIM14_SR.UIF = 0;
  //Enter your code here
  Check_TP();
  if (buttonFlag1)
  {
     applicationTaskEMG();

     // Increment the counter
     i++;

     // Check if the counter reaches 3000
     if (i >= 3000)
     {
        // Stop the button automatically
         buttonFlag1 = ~buttonFlag1;
         ButtonRound3.Caption = "RUN";
         ButtonRound3.Color = CL_LIME;
         DrawRoundButton(&ButtonRound3);
     }
  }
}


//----------------- End of User code ------------------//

// Event Handlers
void ButtonRound1OnClick() {
     OR = 1;
     DrawScreen(&Screen2);  //Record page
}

void ButtonRound2OnClick() {
     OR = 0;
     DrawScreen(&Screen2);  //Detection page
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
     DrawScreen(&Screen1);  //HOME page
}
void ButtonRound5OnClick() {

 DrawScreen(&Screen4);
     emg_time_domain_calculation(emg_ptr1);
     emg_frequency_domain_calculation(emg_ptr1);

     emg_time_domain_calculation(emg_ptr2);
     emg_frequency_domain_calculation(emg_ptr2);

     emg_time_domain_calculation(emg_ptr3);
     emg_frequency_domain_calculation(emg_ptr3);

     //Print Feature EMG1
     bingkai_feature(150, 60, 185, 370, emg_ptr1->rms);
     bingkai_feature(150, 120, 600, 160, emg_ptr1->ssi);
     bingkai_feature(150, 180, 185, 390, emg_ptr1->mav);
     bingkai_feature(150, 240, 210, 160, emg_ptr1->iemg);

     //Print Feature OR
     bingkai_feature(150, 300, 210, 160, OR);

     //Print Feature EMG2
     bingkai_feature(615, 60, 185, 390, emg_ptr2->rms);
     bingkai_feature(615, 120, 185, 390, emg_ptr2->mav);
     bingkai_feature(615, 180, 210, 160, emg_ptr2->iemg);
     bingkai_feature(615, 240, 600, 305, emg_ptr2->pkf);

     //Print Feature EMG3
     bingkai_feature(615, 300, 600, 305, emg_ptr3->pkf);

     // Fitur - std / mean
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
     DrawScreen(&Screen1); //HOME page
}
void ButtonRound6OnClick() { //Button Detection di Screen 3
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
     //Print Feature EMG1
     bingkai_feature(150, 60, 185, 370, emg_ptr1->rms);
     bingkai_feature(150, 120, 600, 160, emg_ptr1->ssi);
     bingkai_feature(150, 180, 185, 390, emg_ptr1->mav);
     bingkai_feature(150, 240, 210, 160, emg_ptr1->iemg);
     
     //Print Feature OR
     bingkai_feature(150, 300, 210, 160, OR);

     //Print Feature EMG2
     bingkai_feature(615, 60, 185, 390, emg_ptr2->rms);
     bingkai_feature(615, 120, 185, 390, emg_ptr2->mav);
     bingkai_feature(615, 180, 210, 160, emg_ptr2->iemg);
     bingkai_feature(615, 240, 600, 305, emg_ptr2->pkf);

     //Print Feature EMG3
     bingkai_feature(615, 300, 600, 305, emg_ptr3->pkf);
     
     Delay_ms(150);
     // Fitur - std / mean
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