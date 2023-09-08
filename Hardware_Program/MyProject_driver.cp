#line 1 "E:/ITS/Pelajaran/Semester 8/3 - Tugas Akhir/Program_Mikro_Fix/MyProject_driver.c"
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
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/include/built_in.h"
#line 7 "E:/ITS/Pelajaran/Semester 8/3 - Tugas Akhir/Program_Mikro_Fix/MyProject_driver.c"
sbit TFT_BLED at GPIOF_ODR.B10;
sbit TFT_CS at GPIOF_ODR.B12;
unsigned int TFT_DataPort at GPIOG_ODR;
sbit TFT_RD at GPIOF_ODR.B14;
sbit TFT_RS at GPIOF_ODR.B13;
sbit TFT_RST at GPIOF_ODR.B11;
sbit TFT_WR at GPIOF_ODR.B15;






unsigned int Xcoord, Ycoord;
char PenDown;
void *PressedObject;
int PressedObjectType;
unsigned int caption_length, caption_height;
unsigned int display_width, display_height;

int _object_count;
unsigned short object_pressed;
TButton_Round *local_round_button;
TButton_Round *exec_round_button;
int round_button_order;
TLabel *local_label;
TLabel *exec_label;
int label_order;
TImage *local_image;
TImage *exec_image;
int image_order;
TBox *local_box;
TBox *exec_box;
int box_order;
TBox_Round *local_round_box;
TBox_Round *exec_round_box;
int box_round_order;


void Write_to_Data_Lines(unsigned char _hi, unsigned char _lo) {
 GPIOG_ODR = (unsigned int) (_lo | (_hi << 8));
}

void Set_Index(unsigned short index) {
 TFT_RS = 0;
 Write_to_Data_Lines(0, index);
 TFT_WR = 0;
 asm nop;
 TFT_WR = 1;
}

void Write_Command(unsigned short cmd) {
 TFT_RS = 1;
 Write_to_Data_Lines(0, cmd);
 TFT_WR = 0;
 asm nop;
 TFT_WR = 1;
}

void Write_Data(unsigned int _data) {
 TFT_RS = 1;
 Write_to_Data_Lines( ((char *)&_data)[1] ,  ((char *)&_data)[0] );
 TFT_WR = 0;
 asm nop;
 TFT_WR = 1;
}

static void InitializeTouchPanel() {
 TFT_Set_Active(Set_Index, Write_Command, Write_Data);
 TFT_Init_SSD1963_Board_70(800, 480);

 TFT_Set_DBC_SSD1963(255);

 PenDown = 0;
 PressedObject = 0;
 PressedObjectType = -1;
}



 TScreen* CurrentScreen;

 TScreen Screen1;
 TBox Box1;
 TBox_Round BoxRound1;
 TButton_Round ButtonRound2;
char ButtonRound2_Caption[6] = "Tidak";

 TImage Image1;
 TImage Image2;
 TButton_Round ButtonRound1;
char ButtonRound1_Caption[3] = "Ya";

 TLabel Label1;
char Label1_Caption[58] = "Deteksi Delayed Onset Muscle Soreness (DOMS) Pada Latihan";

 TLabel Label2;
char Label2_Caption[50] = "Sepeda Statis Menggunakan Multichannel EMG dengan";

 TLabel Label3;
char Label3_Caption[17] = "Machine Learning";

 TLabel Label4;
char Label4_Caption[39] = "Nathaniel Win Lincoln - 07311940000042";

 TLabel Label5;
char Label5_Caption[47] = "Pembimbing 1 : Dr. Rachmad Setiawan S.T., M.T.";

 TLabel Label6;
char Label6_Caption[50] = "Pembimbing 2 : Nada Fitrieyatul Hikmah S.T., M.T.";

 TLabel Label7;
char Label7_Caption[44] = "Kelompok A : Instrumentasi Biomedika Cerdas";

 TLabel Label8;
char Label8_Caption[16] = "Program Sarjana";

 TLabel Label9;
char Label9_Caption[27] = "Departemen Teknik Biomedik";

 TLabel Label10;
char Label10_Caption[50] = "Fakultas Teknologi Elektro dan Informatika Cerdas";

 TLabel Label11;
char Label11_Caption[36] = "Institut Teknologi Sepuluh Nopember";

 TLabel Label12;
char Label12_Caption[5] = "2023";

 TLabel Label14;
char Label14_Caption[32] = "Apakah kamu sering berolahraga\?";

 TLabel Label15;
char Label15_Caption[21] = "Untuk memulai record";

 TLabel Label18;
char Label18_Caption[26] = "Jawab pertanyaan berikut:";

 TButton_Round * const code Screen1_Buttons_Round[2]=
 {
 &ButtonRound2,
 &ButtonRound1
 };
 TLabel * const code Screen1_Labels[15]=
 {
 &Label1,
 &Label2,
 &Label3,
 &Label4,
 &Label5,
 &Label6,
 &Label7,
 &Label8,
 &Label9,
 &Label10,
 &Label11,
 &Label12,
 &Label14,
 &Label15,
 &Label18
 };
 TImage * const code Screen1_Images[2]=
 {
 &Image1,
 &Image2
 };
 TBox * const code Screen1_Boxes[1]=
 {
 &Box1
 };
 TBox_Round * const code Screen1_Boxes_Round[1]=
 {
 &BoxRound1
 };

 TScreen Screen2;
 TButton_Round ButtonRound3;
char ButtonRound3_Caption[4] = "RUN";

 TButton_Round ButtonRound4;
char ButtonRound4_Caption[5] = "HOME";

 TButton_Round ButtonRound5;
char ButtonRound5_Caption[10] = "Detection";

 TBox Box2;
 TButton_Round * const code Screen2_Buttons_Round[3]=
 {
 &ButtonRound3,
 &ButtonRound4,
 &ButtonRound5
 };
 TBox * const code Screen2_Boxes[1]=
 {
 &Box2
 };

 TScreen Screen3;
 TButton_Round ButtonRound6;
char ButtonRound6_Caption[7] = "Detect";

 TButton_Round ButtonRound7;
char ButtonRound7_Caption[5] = "HOME";

 TBox Box3;
 TLabel Label13;
char Label13_Caption[12] = "EMG Feature";

 TButton_Round * const code Screen3_Buttons_Round[2]=
 {
 &ButtonRound6,
 &ButtonRound7
 };
 TLabel * const code Screen3_Labels[1]=
 {
 &Label13
 };
 TBox * const code Screen3_Boxes[1]=
 {
 &Box3
 };

 TScreen Screen4;
 TBox_Round BoxRound3;
 TButton_Round ButtonRound9;
char ButtonRound9_Caption[5] = "HOME";

 TBox Box4;
 TLabel Label16;
char Label16_Caption[12] = "EMG Feature";

 TLabel Label17;
char Label17_Caption[9] = "Result =";

 TLabel Label19;
char Label19_Caption[5] = "RMS1";

 TLabel Label20;
char Label20_Caption[5] = "SSI1";

 TLabel Label21;
char Label21_Caption[5] = "MAV1";

 TLabel Label22;
char Label22_Caption[6] = "IEMG1";

 TLabel Label23;
char Label23_Caption[3] = "OR";

 TLabel Label24;
char Label24_Caption[5] = "RMS2";

 TLabel Label25;
char Label25_Caption[5] = "MAV2";

 TLabel Label26;
char Label26_Caption[6] = "IEMG2";

 TLabel Label27;
char Label27_Caption[5] = "PKF2";

 TLabel Label28;
char Label28_Caption[5] = "PKF3";

 TLabel Label29;
char Label29_Caption[2] = "=";

 TLabel Label30;
char Label30_Caption[2] = "=";

 TLabel Label31;
char Label31_Caption[2] = "=";

 TLabel Label32;
char Label32_Caption[2] = "=";

 TLabel Label33;
char Label33_Caption[2] = "=";

 TLabel Label34;
char Label34_Caption[2] = "=";

 TLabel Label35;
char Label35_Caption[2] = "=";

 TLabel Label36;
char Label36_Caption[2] = "=";

 TLabel Label37;
char Label37_Caption[2] = "=";

 TLabel Label38;
char Label38_Caption[2] = "=";

 TButton_Round * const code Screen4_Buttons_Round[1]=
 {
 &ButtonRound9
 };
 TLabel * const code Screen4_Labels[22]=
 {
 &Label16,
 &Label17,
 &Label19,
 &Label20,
 &Label21,
 &Label22,
 &Label23,
 &Label24,
 &Label25,
 &Label26,
 &Label27,
 &Label28,
 &Label29,
 &Label30,
 &Label31,
 &Label32,
 &Label33,
 &Label34,
 &Label35,
 &Label36,
 &Label37,
 &Label38
 };
 TBox * const code Screen4_Boxes[1]=
 {
 &Box4
 };
 TBox_Round * const code Screen4_Boxes_Round[1]=
 {
 &BoxRound3
 };



static void InitializeObjects() {
 Screen1.Color = 0x001F;
 Screen1.Width = 800;
 Screen1.Height = 480;
 Screen1.Buttons_RoundCount = 2;
 Screen1.Buttons_Round = Screen1_Buttons_Round;
 Screen1.LabelsCount = 15;
 Screen1.Labels = Screen1_Labels;
 Screen1.ImagesCount = 2;
 Screen1.Images = Screen1_Images;
 Screen1.BoxesCount = 1;
 Screen1.Boxes = Screen1_Boxes;
 Screen1.Boxes_RoundCount = 1;
 Screen1.Boxes_Round = Screen1_Boxes_Round;
 Screen1.ObjectsCount = 21;
 Screen1.OnSwipeUpPtr = 0;
 Screen1.OnSwipeDownPtr = 0;
 Screen1.OnSwipeLeftPtr = 0;
 Screen1.OnSwipeRightPtr = 0;
 Screen1.OnZoomInPtr = 0;
 Screen1.OnZoomOutPtr = 0;

 Screen2.Color = 0x001F;
 Screen2.Width = 800;
 Screen2.Height = 480;
 Screen2.Buttons_RoundCount = 3;
 Screen2.Buttons_Round = Screen2_Buttons_Round;
 Screen2.LabelsCount = 0;
 Screen2.ImagesCount = 0;
 Screen2.BoxesCount = 1;
 Screen2.Boxes = Screen2_Boxes;
 Screen2.Boxes_RoundCount = 0;
 Screen2.ObjectsCount = 4;
 Screen2.OnSwipeUpPtr = 0;
 Screen2.OnSwipeDownPtr = 0;
 Screen2.OnSwipeLeftPtr = 0;
 Screen2.OnSwipeRightPtr = 0;
 Screen2.OnZoomInPtr = 0;
 Screen2.OnZoomOutPtr = 0;

 Screen3.Color = 0x001F;
 Screen3.Width = 800;
 Screen3.Height = 480;
 Screen3.Buttons_RoundCount = 2;
 Screen3.Buttons_Round = Screen3_Buttons_Round;
 Screen3.LabelsCount = 1;
 Screen3.Labels = Screen3_Labels;
 Screen3.ImagesCount = 0;
 Screen3.BoxesCount = 1;
 Screen3.Boxes = Screen3_Boxes;
 Screen3.Boxes_RoundCount = 0;
 Screen3.ObjectsCount = 4;
 Screen3.OnSwipeUpPtr = 0;
 Screen3.OnSwipeDownPtr = 0;
 Screen3.OnSwipeLeftPtr = 0;
 Screen3.OnSwipeRightPtr = 0;
 Screen3.OnZoomInPtr = 0;
 Screen3.OnZoomOutPtr = 0;

 Screen4.Color = 0x001F;
 Screen4.Width = 800;
 Screen4.Height = 480;
 Screen4.Buttons_RoundCount = 1;
 Screen4.Buttons_Round = Screen4_Buttons_Round;
 Screen4.LabelsCount = 22;
 Screen4.Labels = Screen4_Labels;
 Screen4.ImagesCount = 0;
 Screen4.BoxesCount = 1;
 Screen4.Boxes = Screen4_Boxes;
 Screen4.Boxes_RoundCount = 1;
 Screen4.Boxes_Round = Screen4_Boxes_Round;
 Screen4.ObjectsCount = 25;
 Screen4.OnSwipeUpPtr = 0;
 Screen4.OnSwipeDownPtr = 0;
 Screen4.OnSwipeLeftPtr = 0;
 Screen4.OnSwipeRightPtr = 0;
 Screen4.OnZoomInPtr = 0;
 Screen4.OnZoomOutPtr = 0;


 Box1.OwnerScreen = &Screen1;
 Box1.Order = 0;
 Box1.Left = 10;
 Box1.Top = 10;
 Box1.Width = 780;
 Box1.Height = 460;
 Box1.Pen_Width = 1;
 Box1.Pen_Color = 0xFFFF;
 Box1.Visible = 1;
 Box1.Active = 1;
 Box1.Transparent = 1;
 Box1.Gradient = 0;
 Box1.Gradient_Orientation = 0;
 Box1.Gradient_Start_Color = 0xFFFF;
 Box1.Gradient_End_Color = 0xC618;
 Box1.Color = 0x0000;
 Box1.PressColEnabled = 0;
 Box1.Press_Color = 0xE71C;

 BoxRound1.OwnerScreen = &Screen1;
 BoxRound1.Order = 1;
 BoxRound1.Left = 233;
 BoxRound1.Top = 27;
 BoxRound1.Width = 549;
 BoxRound1.Height = 425;
 BoxRound1.Pen_Width = 1;
 BoxRound1.Pen_Color = 0x0000;
 BoxRound1.Visible = 1;
 BoxRound1.Active = 1;
 BoxRound1.Transparent = 1;
 BoxRound1.Gradient = 1;
 BoxRound1.Gradient_Orientation = 0;
 BoxRound1.Gradient_Start_Color = 0xFFFF;
 BoxRound1.Gradient_End_Color = 0xC618;
 BoxRound1.Color = 0xC618;
 BoxRound1.PressColEnabled = 0;
 BoxRound1.Press_Color = 0xE71C;
 BoxRound1.Corner_Radius = 3;

 ButtonRound2.OwnerScreen = &Screen1;
 ButtonRound2.Order = 2;
 ButtonRound2.Left = 129;
 ButtonRound2.Top = 330;
 ButtonRound2.Width = 85;
 ButtonRound2.Height = 40;
 ButtonRound2.Pen_Width = 1;
 ButtonRound2.Pen_Color = 0x0000;
 ButtonRound2.Visible = 1;
 ButtonRound2.Active = 1;
 ButtonRound2.Transparent = 1;
 ButtonRound2.Caption = ButtonRound2_Caption;
 ButtonRound2.TextAlign = _taCenter;
 ButtonRound2.TextAlignVertical= _tavMiddle;
 ButtonRound2.FontName = Tahoma16x19_Regular;
 ButtonRound2.PressColEnabled = 1;
 ButtonRound2.Font_Color = 0x0000;
 ButtonRound2.VerticalText = 0;
 ButtonRound2.Gradient = 1;
 ButtonRound2.Gradient_Orientation = 0;
 ButtonRound2.Gradient_Start_Color = 0xFFFF;
 ButtonRound2.Gradient_End_Color = 0xC618;
 ButtonRound2.Color = 0xC618;
 ButtonRound2.Press_Color = 0xE71C;
 ButtonRound2.Corner_Radius = 3;
 ButtonRound2.OnClickPtr = ButtonRound2OnClick;

 Image1.OwnerScreen = &Screen1;
 Image1.Order = 3;
 Image1.Left = 31;
 Image1.Top = 31;
 Image1.Width = 78;
 Image1.Height = 78;
 Image1.Picture_Type = 0;
 Image1.Picture_Ratio = 1;
 Image1.Picture_Name = Badge_ITS2_bmp;
 Image1.Visible = 1;
 Image1.Active = 1;

 Image2.OwnerScreen = &Screen1;
 Image2.Order = 4;
 Image2.Left = 132;
 Image2.Top = 31;
 Image2.Width = 74;
 Image2.Height = 78;
 Image2.Picture_Type = 0;
 Image2.Picture_Ratio = 1;
 Image2.Picture_Name = bme_logo_bmp;
 Image2.Visible = 1;
 Image2.Active = 1;

 ButtonRound1.OwnerScreen = &Screen1;
 ButtonRound1.Order = 5;
 ButtonRound1.Left = 21;
 ButtonRound1.Top = 331;
 ButtonRound1.Width = 85;
 ButtonRound1.Height = 40;
 ButtonRound1.Pen_Width = 1;
 ButtonRound1.Pen_Color = 0x0000;
 ButtonRound1.Visible = 1;
 ButtonRound1.Active = 1;
 ButtonRound1.Transparent = 1;
 ButtonRound1.Caption = ButtonRound1_Caption;
 ButtonRound1.TextAlign = _taCenter;
 ButtonRound1.TextAlignVertical= _tavMiddle;
 ButtonRound1.FontName = Tahoma16x19_Regular;
 ButtonRound1.PressColEnabled = 1;
 ButtonRound1.Font_Color = 0x0000;
 ButtonRound1.VerticalText = 0;
 ButtonRound1.Gradient = 1;
 ButtonRound1.Gradient_Orientation = 0;
 ButtonRound1.Gradient_Start_Color = 0xFFFF;
 ButtonRound1.Gradient_End_Color = 0xC618;
 ButtonRound1.Color = 0xC618;
 ButtonRound1.Press_Color = 0xE71C;
 ButtonRound1.Corner_Radius = 3;
 ButtonRound1.OnClickPtr = ButtonRound1OnClick;

 Label1.OwnerScreen = &Screen1;
 Label1.Order = 6;
 Label1.Left = 238;
 Label1.Top = 45;
 Label1.Width = 518;
 Label1.Height = 22;
 Label1.Visible = 1;
 Label1.Active = 1;
 Label1.Caption = Label1_Caption;
 Label1.FontName = Helvetica17x19_Bold;
 Label1.Font_Color = 0x0000;
 Label1.VerticalText = 0;

 Label2.OwnerScreen = &Screen1;
 Label2.Order = 7;
 Label2.Left = 238;
 Label2.Top = 65;
 Label2.Width = 457;
 Label2.Height = 22;
 Label2.Visible = 1;
 Label2.Active = 1;
 Label2.Caption = Label2_Caption;
 Label2.FontName = Helvetica17x19_Bold;
 Label2.Font_Color = 0x0000;
 Label2.VerticalText = 0;

 Label3.OwnerScreen = &Screen1;
 Label3.Order = 8;
 Label3.Left = 238;
 Label3.Top = 85;
 Label3.Width = 150;
 Label3.Height = 22;
 Label3.Visible = 1;
 Label3.Active = 1;
 Label3.Caption = Label3_Caption;
 Label3.FontName = Helvetica17x19_Bold;
 Label3.Font_Color = 0x0000;
 Label3.VerticalText = 0;

 Label4.OwnerScreen = &Screen1;
 Label4.Order = 9;
 Label4.Left = 238;
 Label4.Top = 152;
 Label4.Width = 327;
 Label4.Height = 22;
 Label4.Visible = 1;
 Label4.Active = 1;
 Label4.Caption = Label4_Caption;
 Label4.FontName = Helvetica17x20_Regular;
 Label4.Font_Color = 0x0000;
 Label4.VerticalText = 0;

 Label5.OwnerScreen = &Screen1;
 Label5.Order = 10;
 Label5.Left = 238;
 Label5.Top = 205;
 Label5.Width = 394;
 Label5.Height = 22;
 Label5.Visible = 1;
 Label5.Active = 1;
 Label5.Caption = Label5_Caption;
 Label5.FontName = Helvetica17x20_Regular;
 Label5.Font_Color = 0x0000;
 Label5.VerticalText = 0;

 Label6.OwnerScreen = &Screen1;
 Label6.Order = 11;
 Label6.Left = 238;
 Label6.Top = 225;
 Label6.Width = 401;
 Label6.Height = 22;
 Label6.Visible = 1;
 Label6.Active = 1;
 Label6.Caption = Label6_Caption;
 Label6.FontName = Helvetica17x20_Regular;
 Label6.Font_Color = 0x0000;
 Label6.VerticalText = 0;

 Label7.OwnerScreen = &Screen1;
 Label7.Order = 12;
 Label7.Left = 238;
 Label7.Top = 255;
 Label7.Width = 368;
 Label7.Height = 22;
 Label7.Visible = 1;
 Label7.Active = 1;
 Label7.Caption = Label7_Caption;
 Label7.FontName = Helvetica17x20_Regular;
 Label7.Font_Color = 0x0000;
 Label7.VerticalText = 0;

 Label8.OwnerScreen = &Screen1;
 Label8.Order = 13;
 Label8.Left = 238;
 Label8.Top = 335;
 Label8.Width = 138;
 Label8.Height = 22;
 Label8.Visible = 1;
 Label8.Active = 1;
 Label8.Caption = Label8_Caption;
 Label8.FontName = Helvetica17x20_Regular;
 Label8.Font_Color = 0x0000;
 Label8.VerticalText = 0;

 Label9.OwnerScreen = &Screen1;
 Label9.Order = 14;
 Label9.Left = 238;
 Label9.Top = 355;
 Label9.Width = 235;
 Label9.Height = 22;
 Label9.Visible = 1;
 Label9.Active = 1;
 Label9.Caption = Label9_Caption;
 Label9.FontName = Helvetica17x20_Regular;
 Label9.Font_Color = 0x0000;
 Label9.VerticalText = 0;

 Label10.OwnerScreen = &Screen1;
 Label10.Order = 15;
 Label10.Left = 238;
 Label10.Top = 375;
 Label10.Width = 399;
 Label10.Height = 22;
 Label10.Visible = 1;
 Label10.Active = 1;
 Label10.Caption = Label10_Caption;
 Label10.FontName = Helvetica17x20_Regular;
 Label10.Font_Color = 0x0000;
 Label10.VerticalText = 0;

 Label11.OwnerScreen = &Screen1;
 Label11.Order = 16;
 Label11.Left = 238;
 Label11.Top = 395;
 Label11.Width = 294;
 Label11.Height = 22;
 Label11.Visible = 1;
 Label11.Active = 1;
 Label11.Caption = Label11_Caption;
 Label11.FontName = Helvetica17x20_Regular;
 Label11.Font_Color = 0x0000;
 Label11.VerticalText = 0;

 Label12.OwnerScreen = &Screen1;
 Label12.Order = 17;
 Label12.Left = 238;
 Label12.Top = 415;
 Label12.Width = 45;
 Label12.Height = 22;
 Label12.Visible = 1;
 Label12.Active = 1;
 Label12.Caption = Label12_Caption;
 Label12.FontName = Helvetica17x20_Regular;
 Label12.Font_Color = 0x0000;
 Label12.VerticalText = 0;

 Label14.OwnerScreen = &Screen1;
 Label14.Order = 18;
 Label14.Left = 18;
 Label14.Top = 308;
 Label14.Width = 205;
 Label14.Height = 17;
 Label14.Visible = 1;
 Label14.Active = 1;
 Label14.Caption = Label14_Caption;
 Label14.FontName = Tahoma12x16_Regular;
 Label14.Font_Color = 0xFFFF;
 Label14.VerticalText = 0;

 Label15.OwnerScreen = &Screen1;
 Label15.Order = 19;
 Label15.Left = 35;
 Label15.Top = 255;
 Label15.Width = 166;
 Label15.Height = 21;
 Label15.Visible = 1;
 Label15.Active = 1;
 Label15.Caption = Label15_Caption;
 Label15.FontName = Tahoma16x19_Regular;
 Label15.Font_Color = 0xFFFF;
 Label15.VerticalText = 0;

 Label18.OwnerScreen = &Screen1;
 Label18.Order = 20;
 Label18.Left = 23;
 Label18.Top = 273;
 Label18.Width = 199;
 Label18.Height = 21;
 Label18.Visible = 1;
 Label18.Active = 1;
 Label18.Caption = Label18_Caption;
 Label18.FontName = Tahoma16x19_Regular;
 Label18.Font_Color = 0xFFFF;
 Label18.VerticalText = 0;

 ButtonRound3.OwnerScreen = &Screen2;
 ButtonRound3.Order = 0;
 ButtonRound3.Left = 235;
 ButtonRound3.Top = 433;
 ButtonRound3.Width = 100;
 ButtonRound3.Height = 35;
 ButtonRound3.Pen_Width = 1;
 ButtonRound3.Pen_Color = 0x0000;
 ButtonRound3.Visible = 1;
 ButtonRound3.Active = 1;
 ButtonRound3.Transparent = 1;
 ButtonRound3.Caption = ButtonRound3_Caption;
 ButtonRound3.TextAlign = _taCenter;
 ButtonRound3.TextAlignVertical= _tavMiddle;
 ButtonRound3.FontName = Tahoma12x16_Regular;
 ButtonRound3.PressColEnabled = 0;
 ButtonRound3.Font_Color = 0x0000;
 ButtonRound3.VerticalText = 0;
 ButtonRound3.Gradient = 0;
 ButtonRound3.Gradient_Orientation = 0;
 ButtonRound3.Gradient_Start_Color = 0xFFFF;
 ButtonRound3.Gradient_End_Color = 0xC618;
 ButtonRound3.Color = 0x07E0;
 ButtonRound3.Press_Color = 0xE71C;
 ButtonRound3.Corner_Radius = 3;
 ButtonRound3.OnClickPtr = ButtonRound3OnClick;

 ButtonRound4.OwnerScreen = &Screen2;
 ButtonRound4.Order = 1;
 ButtonRound4.Left = 350;
 ButtonRound4.Top = 434;
 ButtonRound4.Width = 100;
 ButtonRound4.Height = 35;
 ButtonRound4.Pen_Width = 2;
 ButtonRound4.Pen_Color = 0xFFFF;
 ButtonRound4.Visible = 1;
 ButtonRound4.Active = 1;
 ButtonRound4.Transparent = 1;
 ButtonRound4.Caption = ButtonRound4_Caption;
 ButtonRound4.TextAlign = _taCenter;
 ButtonRound4.TextAlignVertical= _tavMiddle;
 ButtonRound4.FontName = Tahoma12x16_Regular;
 ButtonRound4.PressColEnabled = 1;
 ButtonRound4.Font_Color = 0x0000;
 ButtonRound4.VerticalText = 0;
 ButtonRound4.Gradient = 0;
 ButtonRound4.Gradient_Orientation = 0;
 ButtonRound4.Gradient_Start_Color = 0x632C;
 ButtonRound4.Gradient_End_Color = 0x0000;
 ButtonRound4.Color = 0xFFE0;
 ButtonRound4.Press_Color = 0xE71C;
 ButtonRound4.Corner_Radius = 3;
 ButtonRound4.OnClickPtr = ButtonRound4OnClick;

 ButtonRound5.OwnerScreen = &Screen2;
 ButtonRound5.Order = 2;
 ButtonRound5.Left = 465;
 ButtonRound5.Top = 433;
 ButtonRound5.Width = 100;
 ButtonRound5.Height = 35;
 ButtonRound5.Pen_Width = 1;
 ButtonRound5.Pen_Color = 0x0000;
 ButtonRound5.Visible = 1;
 ButtonRound5.Active = 1;
 ButtonRound5.Transparent = 1;
 ButtonRound5.Caption = ButtonRound5_Caption;
 ButtonRound5.TextAlign = _taCenter;
 ButtonRound5.TextAlignVertical= _tavMiddle;
 ButtonRound5.FontName = Tahoma12x16_Regular;
 ButtonRound5.PressColEnabled = 1;
 ButtonRound5.Font_Color = 0x0000;
 ButtonRound5.VerticalText = 0;
 ButtonRound5.Gradient = 1;
 ButtonRound5.Gradient_Orientation = 0;
 ButtonRound5.Gradient_Start_Color = 0xFFFF;
 ButtonRound5.Gradient_End_Color = 0xC618;
 ButtonRound5.Color = 0xC618;
 ButtonRound5.Press_Color = 0xE71C;
 ButtonRound5.Corner_Radius = 3;
 ButtonRound5.OnClickPtr = ButtonRound5OnClick;

 Box2.OwnerScreen = &Screen2;
 Box2.Order = 3;
 Box2.Left = 10;
 Box2.Top = 10;
 Box2.Width = 780;
 Box2.Height = 415;
 Box2.Pen_Width = 1;
 Box2.Pen_Color = 0xFFFF;
 Box2.Visible = 1;
 Box2.Active = 1;
 Box2.Transparent = 1;
 Box2.Gradient = 0;
 Box2.Gradient_Orientation = 0;
 Box2.Gradient_Start_Color = 0xFFFF;
 Box2.Gradient_End_Color = 0xC618;
 Box2.Color = 0x0000;
 Box2.PressColEnabled = 0;
 Box2.Press_Color = 0xE71C;

 ButtonRound6.OwnerScreen = &Screen3;
 ButtonRound6.Order = 0;
 ButtonRound6.Left = 290;
 ButtonRound6.Top = 433;
 ButtonRound6.Width = 100;
 ButtonRound6.Height = 35;
 ButtonRound6.Pen_Width = 1;
 ButtonRound6.Pen_Color = 0x0000;
 ButtonRound6.Visible = 1;
 ButtonRound6.Active = 1;
 ButtonRound6.Transparent = 1;
 ButtonRound6.Caption = ButtonRound6_Caption;
 ButtonRound6.TextAlign = _taCenter;
 ButtonRound6.TextAlignVertical= _tavMiddle;
 ButtonRound6.FontName = Tahoma12x16_Regular;
 ButtonRound6.PressColEnabled = 1;
 ButtonRound6.Font_Color = 0x0000;
 ButtonRound6.VerticalText = 0;
 ButtonRound6.Gradient = 1;
 ButtonRound6.Gradient_Orientation = 0;
 ButtonRound6.Gradient_Start_Color = 0xFFFF;
 ButtonRound6.Gradient_End_Color = 0xC618;
 ButtonRound6.Color = 0xC618;
 ButtonRound6.Press_Color = 0xE71C;
 ButtonRound6.Corner_Radius = 3;
 ButtonRound6.OnClickPtr = ButtonRound6OnClick;

 ButtonRound7.OwnerScreen = &Screen3;
 ButtonRound7.Order = 1;
 ButtonRound7.Left = 410;
 ButtonRound7.Top = 432;
 ButtonRound7.Width = 100;
 ButtonRound7.Height = 35;
 ButtonRound7.Pen_Width = 2;
 ButtonRound7.Pen_Color = 0xFFFF;
 ButtonRound7.Visible = 1;
 ButtonRound7.Active = 1;
 ButtonRound7.Transparent = 1;
 ButtonRound7.Caption = ButtonRound7_Caption;
 ButtonRound7.TextAlign = _taCenter;
 ButtonRound7.TextAlignVertical= _tavMiddle;
 ButtonRound7.FontName = Tahoma12x16_Regular;
 ButtonRound7.PressColEnabled = 1;
 ButtonRound7.Font_Color = 0x0000;
 ButtonRound7.VerticalText = 0;
 ButtonRound7.Gradient = 0;
 ButtonRound7.Gradient_Orientation = 0;
 ButtonRound7.Gradient_Start_Color = 0x632C;
 ButtonRound7.Gradient_End_Color = 0x0000;
 ButtonRound7.Color = 0xFFE0;
 ButtonRound7.Press_Color = 0xE71C;
 ButtonRound7.Corner_Radius = 3;
 ButtonRound7.OnClickPtr = ButtonRound7OnClick;

 Box3.OwnerScreen = &Screen3;
 Box3.Order = 2;
 Box3.Left = 10;
 Box3.Top = 10;
 Box3.Width = 780;
 Box3.Height = 414;
 Box3.Pen_Width = 1;
 Box3.Pen_Color = 0xFFFF;
 Box3.Visible = 1;
 Box3.Active = 1;
 Box3.Transparent = 1;
 Box3.Gradient = 0;
 Box3.Gradient_Orientation = 0;
 Box3.Gradient_Start_Color = 0xFFFF;
 Box3.Gradient_End_Color = 0xC618;
 Box3.Color = 0x0000;
 Box3.PressColEnabled = 0;
 Box3.Press_Color = 0xE71C;

 Label13.OwnerScreen = &Screen3;
 Label13.Order = 3;
 Label13.Left = 345;
 Label13.Top = 20;
 Label13.Width = 111;
 Label13.Height = 21;
 Label13.Visible = 1;
 Label13.Active = 1;
 Label13.Caption = Label13_Caption;
 Label13.FontName = Tahoma19x19_Bold;
 Label13.Font_Color = 0xFFFF;
 Label13.VerticalText = 0;

 BoxRound3.OwnerScreen = &Screen4;
 BoxRound3.Order = 0;
 BoxRound3.Left = 288;
 BoxRound3.Top = 368;
 BoxRound3.Width = 225;
 BoxRound3.Height = 50;
 BoxRound3.Pen_Width = 1;
 BoxRound3.Pen_Color = 0xFFFF;
 BoxRound3.Visible = 1;
 BoxRound3.Active = 1;
 BoxRound3.Transparent = 1;
 BoxRound3.Gradient = 0;
 BoxRound3.Gradient_Orientation = 0;
 BoxRound3.Gradient_Start_Color = 0xFFFF;
 BoxRound3.Gradient_End_Color = 0xC618;
 BoxRound3.Color = 0x0000;
 BoxRound3.PressColEnabled = 0;
 BoxRound3.Press_Color = 0xE71C;
 BoxRound3.Corner_Radius = 3;

 ButtonRound9.OwnerScreen = &Screen4;
 ButtonRound9.Order = 1;
 ButtonRound9.Left = 344;
 ButtonRound9.Top = 433;
 ButtonRound9.Width = 100;
 ButtonRound9.Height = 35;
 ButtonRound9.Pen_Width = 2;
 ButtonRound9.Pen_Color = 0xFFFF;
 ButtonRound9.Visible = 1;
 ButtonRound9.Active = 1;
 ButtonRound9.Transparent = 1;
 ButtonRound9.Caption = ButtonRound9_Caption;
 ButtonRound9.TextAlign = _taCenter;
 ButtonRound9.TextAlignVertical= _tavMiddle;
 ButtonRound9.FontName = Tahoma12x16_Regular;
 ButtonRound9.PressColEnabled = 1;
 ButtonRound9.Font_Color = 0x0000;
 ButtonRound9.VerticalText = 0;
 ButtonRound9.Gradient = 0;
 ButtonRound9.Gradient_Orientation = 0;
 ButtonRound9.Gradient_Start_Color = 0x632C;
 ButtonRound9.Gradient_End_Color = 0x0000;
 ButtonRound9.Color = 0xFFE0;
 ButtonRound9.Press_Color = 0xE71C;
 ButtonRound9.Corner_Radius = 3;
 ButtonRound9.OnClickPtr = ButtonRound7OnClick;

 Box4.OwnerScreen = &Screen4;
 Box4.Order = 2;
 Box4.Left = 10;
 Box4.Top = 10;
 Box4.Width = 780;
 Box4.Height = 347;
 Box4.Pen_Width = 1;
 Box4.Pen_Color = 0xFFFF;
 Box4.Visible = 1;
 Box4.Active = 1;
 Box4.Transparent = 1;
 Box4.Gradient = 0;
 Box4.Gradient_Orientation = 0;
 Box4.Gradient_Start_Color = 0xFFFF;
 Box4.Gradient_End_Color = 0xC618;
 Box4.Color = 0x0000;
 Box4.PressColEnabled = 0;
 Box4.Press_Color = 0xE71C;

 Label16.OwnerScreen = &Screen4;
 Label16.Order = 3;
 Label16.Left = 345;
 Label16.Top = 19;
 Label16.Width = 111;
 Label16.Height = 21;
 Label16.Visible = 1;
 Label16.Active = 1;
 Label16.Caption = Label16_Caption;
 Label16.FontName = Tahoma19x19_Bold;
 Label16.Font_Color = 0xF800;
 Label16.VerticalText = 0;

 Label17.OwnerScreen = &Screen4;
 Label17.Order = 4;
 Label17.Left = 293;
 Label17.Top = 375;
 Label17.Width = 112;
 Label17.Height = 35;
 Label17.Visible = 1;
 Label17.Active = 1;
 Label17.Caption = Label17_Caption;
 Label17.FontName = Helvetica27x31_Regular;
 Label17.Font_Color = 0xFFFF;
 Label17.VerticalText = 0;

 Label19.OwnerScreen = &Screen4;
 Label19.Order = 5;
 Label19.Left = 35;
 Label19.Top = 60;
 Label19.Width = 70;
 Label19.Height = 32;
 Label19.Visible = 1;
 Label19.Active = 1;
 Label19.Caption = Label19_Caption;
 Label19.FontName = Tahoma23x29_Regular;
 Label19.Font_Color = 0xFFFF;
 Label19.VerticalText = 0;

 Label20.OwnerScreen = &Screen4;
 Label20.Order = 6;
 Label20.Left = 35;
 Label20.Top = 120;
 Label20.Width = 58;
 Label20.Height = 32;
 Label20.Visible = 1;
 Label20.Active = 1;
 Label20.Caption = Label20_Caption;
 Label20.FontName = Tahoma23x29_Regular;
 Label20.Font_Color = 0xFFFF;
 Label20.VerticalText = 0;

 Label21.OwnerScreen = &Screen4;
 Label21.Order = 7;
 Label21.Left = 35;
 Label21.Top = 180;
 Label21.Width = 70;
 Label21.Height = 32;
 Label21.Visible = 1;
 Label21.Active = 1;
 Label21.Caption = Label21_Caption;
 Label21.FontName = Tahoma23x29_Regular;
 Label21.Font_Color = 0xFFFF;
 Label21.VerticalText = 0;

 Label22.OwnerScreen = &Screen4;
 Label22.Order = 8;
 Label22.Left = 35;
 Label22.Top = 240;
 Label22.Width = 80;
 Label22.Height = 32;
 Label22.Visible = 1;
 Label22.Active = 1;
 Label22.Caption = Label22_Caption;
 Label22.FontName = Tahoma23x29_Regular;
 Label22.Font_Color = 0xFFFF;
 Label22.VerticalText = 0;

 Label23.OwnerScreen = &Screen4;
 Label23.Order = 9;
 Label23.Left = 35;
 Label23.Top = 300;
 Label23.Width = 41;
 Label23.Height = 32;
 Label23.Visible = 1;
 Label23.Active = 1;
 Label23.Caption = Label23_Caption;
 Label23.FontName = Tahoma23x29_Regular;
 Label23.Font_Color = 0xFFFF;
 Label23.VerticalText = 0;

 Label24.OwnerScreen = &Screen4;
 Label24.Order = 10;
 Label24.Left = 500;
 Label24.Top = 60;
 Label24.Width = 70;
 Label24.Height = 32;
 Label24.Visible = 1;
 Label24.Active = 1;
 Label24.Caption = Label24_Caption;
 Label24.FontName = Tahoma23x29_Regular;
 Label24.Font_Color = 0xFFFF;
 Label24.VerticalText = 0;

 Label25.OwnerScreen = &Screen4;
 Label25.Order = 11;
 Label25.Left = 500;
 Label25.Top = 120;
 Label25.Width = 70;
 Label25.Height = 32;
 Label25.Visible = 1;
 Label25.Active = 1;
 Label25.Caption = Label25_Caption;
 Label25.FontName = Tahoma23x29_Regular;
 Label25.Font_Color = 0xFFFF;
 Label25.VerticalText = 0;

 Label26.OwnerScreen = &Screen4;
 Label26.Order = 12;
 Label26.Left = 500;
 Label26.Top = 180;
 Label26.Width = 80;
 Label26.Height = 32;
 Label26.Visible = 1;
 Label26.Active = 1;
 Label26.Caption = Label26_Caption;
 Label26.FontName = Tahoma23x29_Regular;
 Label26.Font_Color = 0xFFFF;
 Label26.VerticalText = 0;

 Label27.OwnerScreen = &Screen4;
 Label27.Order = 13;
 Label27.Left = 500;
 Label27.Top = 240;
 Label27.Width = 63;
 Label27.Height = 32;
 Label27.Visible = 1;
 Label27.Active = 1;
 Label27.Caption = Label27_Caption;
 Label27.FontName = Tahoma23x29_Regular;
 Label27.Font_Color = 0xFFFF;
 Label27.VerticalText = 0;

 Label28.OwnerScreen = &Screen4;
 Label28.Order = 14;
 Label28.Left = 500;
 Label28.Top = 300;
 Label28.Width = 63;
 Label28.Height = 32;
 Label28.Visible = 1;
 Label28.Active = 1;
 Label28.Caption = Label28_Caption;
 Label28.FontName = Tahoma23x29_Regular;
 Label28.Font_Color = 0xFFFF;
 Label28.VerticalText = 0;

 Label29.OwnerScreen = &Screen4;
 Label29.Order = 15;
 Label29.Left = 120;
 Label29.Top = 60;
 Label29.Width = 26;
 Label29.Height = 32;
 Label29.Visible = 1;
 Label29.Active = 1;
 Label29.Caption = Label29_Caption;
 Label29.FontName = Tahoma23x29_Regular;
 Label29.Font_Color = 0xFFFF;
 Label29.VerticalText = 0;

 Label30.OwnerScreen = &Screen4;
 Label30.Order = 16;
 Label30.Left = 120;
 Label30.Top = 120;
 Label30.Width = 26;
 Label30.Height = 32;
 Label30.Visible = 1;
 Label30.Active = 1;
 Label30.Caption = Label30_Caption;
 Label30.FontName = Tahoma23x29_Regular;
 Label30.Font_Color = 0xFFFF;
 Label30.VerticalText = 0;

 Label31.OwnerScreen = &Screen4;
 Label31.Order = 17;
 Label31.Left = 120;
 Label31.Top = 180;
 Label31.Width = 26;
 Label31.Height = 32;
 Label31.Visible = 1;
 Label31.Active = 1;
 Label31.Caption = Label31_Caption;
 Label31.FontName = Tahoma23x29_Regular;
 Label31.Font_Color = 0xFFFF;
 Label31.VerticalText = 0;

 Label32.OwnerScreen = &Screen4;
 Label32.Order = 18;
 Label32.Left = 120;
 Label32.Top = 240;
 Label32.Width = 26;
 Label32.Height = 32;
 Label32.Visible = 1;
 Label32.Active = 1;
 Label32.Caption = Label32_Caption;
 Label32.FontName = Tahoma23x29_Regular;
 Label32.Font_Color = 0xFFFF;
 Label32.VerticalText = 0;

 Label33.OwnerScreen = &Screen4;
 Label33.Order = 19;
 Label33.Left = 120;
 Label33.Top = 300;
 Label33.Width = 26;
 Label33.Height = 32;
 Label33.Visible = 1;
 Label33.Active = 1;
 Label33.Caption = Label33_Caption;
 Label33.FontName = Tahoma23x29_Regular;
 Label33.Font_Color = 0xFFFF;
 Label33.VerticalText = 0;

 Label34.OwnerScreen = &Screen4;
 Label34.Order = 20;
 Label34.Left = 585;
 Label34.Top = 60;
 Label34.Width = 26;
 Label34.Height = 32;
 Label34.Visible = 1;
 Label34.Active = 1;
 Label34.Caption = Label34_Caption;
 Label34.FontName = Tahoma23x29_Regular;
 Label34.Font_Color = 0xFFFF;
 Label34.VerticalText = 0;

 Label35.OwnerScreen = &Screen4;
 Label35.Order = 21;
 Label35.Left = 585;
 Label35.Top = 120;
 Label35.Width = 26;
 Label35.Height = 32;
 Label35.Visible = 1;
 Label35.Active = 1;
 Label35.Caption = Label35_Caption;
 Label35.FontName = Tahoma23x29_Regular;
 Label35.Font_Color = 0xFFFF;
 Label35.VerticalText = 0;

 Label36.OwnerScreen = &Screen4;
 Label36.Order = 22;
 Label36.Left = 585;
 Label36.Top = 180;
 Label36.Width = 26;
 Label36.Height = 32;
 Label36.Visible = 1;
 Label36.Active = 1;
 Label36.Caption = Label36_Caption;
 Label36.FontName = Tahoma23x29_Regular;
 Label36.Font_Color = 0xFFFF;
 Label36.VerticalText = 0;

 Label37.OwnerScreen = &Screen4;
 Label37.Order = 23;
 Label37.Left = 585;
 Label37.Top = 240;
 Label37.Width = 26;
 Label37.Height = 32;
 Label37.Visible = 1;
 Label37.Active = 1;
 Label37.Caption = Label37_Caption;
 Label37.FontName = Tahoma23x29_Regular;
 Label37.Font_Color = 0xFFFF;
 Label37.VerticalText = 0;

 Label38.OwnerScreen = &Screen4;
 Label38.Order = 24;
 Label38.Left = 585;
 Label38.Top = 300;
 Label38.Width = 26;
 Label38.Height = 32;
 Label38.Visible = 1;
 Label38.Active = 1;
 Label38.Caption = Label38_Caption;
 Label38.FontName = Tahoma23x29_Regular;
 Label38.Font_Color = 0xFFFF;
 Label38.VerticalText = 0;
}

static char IsInsideObject (unsigned int X, unsigned int Y, unsigned int Left, unsigned int Top, unsigned int Width, unsigned int Height) {
 if ( (Left<= X) && (Left+ Width - 1 >= X) &&
 (Top <= Y) && (Top + Height - 1 >= Y) )
 return 1;
 else
 return 0;
}









void DrawRoundButton(TButton_Round *Around_button) {
unsigned int ALeft, ATop;
 if (Around_button->Visible != 0) {
 if (object_pressed == 1) {
 object_pressed = 0;
 TFT_Set_Brush(Around_button->Transparent, Around_button->Press_Color, Around_button->Gradient, Around_button->Gradient_Orientation,
 Around_button->Gradient_End_Color, Around_button->Gradient_Start_Color);
 }
 else {
 TFT_Set_Brush(Around_button->Transparent, Around_button->Color, Around_button->Gradient, Around_button->Gradient_Orientation,
 Around_button->Gradient_Start_Color, Around_button->Gradient_End_Color);
 }
 TFT_Set_Pen(Around_button->Pen_Color, Around_button->Pen_Width);
 TFT_Rectangle_Round_Edges(Around_button->Left + 1, Around_button->Top + 1,
 Around_button->Left + Around_button->Width - 2,
 Around_button->Top + Around_button->Height - 2, Around_button->Corner_Radius);
 if (Around_button->VerticalText != 0)
 TFT_Set_Font(Around_button->FontName, Around_button->Font_Color, FO_VERTICAL_COLUMN);
 else
 TFT_Set_Font(Around_button->FontName, Around_button->Font_Color, FO_HORIZONTAL);
 TFT_Write_Text_Return_Pos(Around_button->Caption, Around_button->Left, Around_button->Top);
 if (Around_button->TextAlign == _taLeft)
 ALeft = Around_button->Left + 4;
 else if (Around_button->TextAlign == _taCenter)
 ALeft = Around_button->Left + (Around_button->Width - caption_length) / 2;
 else if (Around_button->TextAlign == _taRight)
 ALeft = Around_button->Left + Around_button->Width - caption_length - 4;

 if (Around_button->TextAlignVertical == _tavTop)
 ATop = Around_button->Top + 3;
 else if (Around_button->TextAlignVertical == _tavMiddle)
 ATop = Around_button->Top + (Around_button->Height - caption_height) / 2;
 else if (Around_button->TextAlignVertical == _tavBottom)
 ATop = Around_button->Top + Around_button->Height - caption_height - 4;

 TFT_Write_Text(Around_button->Caption, ALeft, ATop);
 }
}

void DrawLabel(TLabel *ALabel) {
 if (ALabel->Visible != 0) {
 if (ALabel->VerticalText != 0)
 TFT_Set_Font(ALabel->FontName, ALabel->Font_Color, FO_VERTICAL_COLUMN);
 else
 TFT_Set_Font(ALabel->FontName, ALabel->Font_Color, FO_HORIZONTAL);
 TFT_Write_Text(ALabel->Caption, ALabel->Left, ALabel->Top);
 }
}

void DrawImage(TImage *AImage) {
 if (AImage->Visible != 0) {
 TFT_Image(AImage->Left, AImage->Top, AImage->Picture_Name, AImage->Picture_Ratio);
 }
}

void DrawBox(TBox *ABox) {
 if (ABox->Visible != 0) {
 if (object_pressed == 1) {
 object_pressed = 0;
 TFT_Set_Brush(ABox->Transparent, ABox->Press_Color, ABox->Gradient, ABox->Gradient_Orientation, ABox->Gradient_End_Color, ABox->Gradient_Start_Color);
 }
 else {
 TFT_Set_Brush(ABox->Transparent, ABox->Color, ABox->Gradient, ABox->Gradient_Orientation, ABox->Gradient_Start_Color, ABox->Gradient_End_Color);
 }
 TFT_Set_Pen(ABox->Pen_Color, ABox->Pen_Width);
 TFT_Rectangle(ABox->Left, ABox->Top, ABox->Left + ABox->Width - 1, ABox->Top + ABox->Height - 1);
 }
}

void DrawRoundBox(TBox_Round *Around_box) {
 if (Around_box->Visible != 0) {
 if (object_pressed == 1) {
 object_pressed = 0;
 TFT_Set_Brush(Around_box->Transparent, Around_box->Press_Color, Around_box->Gradient, Around_box->Gradient_Orientation,
 Around_box->Gradient_End_Color, Around_box->Gradient_Start_Color);
 }
 else {
 TFT_Set_Brush(Around_box->Transparent, Around_box->Color, Around_box->Gradient, Around_box->Gradient_Orientation,
 Around_box->Gradient_Start_Color, Around_box->Gradient_End_Color);
 }
 TFT_Set_Pen(Around_box->Pen_Color, Around_box->Pen_Width);
 TFT_Rectangle_Round_Edges(Around_box->Left + 1, Around_box->Top + 1,
 Around_box->Left + Around_box->Width - 2,
 Around_box->Top + Around_box->Height - 2, Around_box->Corner_Radius);
 }
}

void DrawScreen(TScreen *aScreen) {
 unsigned int order;
 unsigned short round_button_idx;
 TButton_Round *local_round_button;
 unsigned short label_idx;
 TLabel *local_label;
 unsigned short image_idx;
 TImage *local_image;
 unsigned short box_idx;
 TBox *local_box;
 unsigned short round_box_idx;
 TBox_Round *local_round_box;
 char save_bled;

 object_pressed = 0;
 order = 0;
 round_button_idx = 0;
 label_idx = 0;
 image_idx = 0;
 box_idx = 0;
 round_box_idx = 0;
 CurrentScreen = aScreen;

 if ((display_width != CurrentScreen->Width) || (display_height != CurrentScreen->Height)) {
 save_bled = TFT_BLED;
 TFT_BLED = 0;
 TFT_Set_Active(Set_Index, Write_Command, Write_Data);
 TFT_Init_SSD1963_Board_70(CurrentScreen->Width, CurrentScreen->Height);
 FT5XX6_SetSize(CurrentScreen->Width, CurrentScreen->Height);
 TFT_Fill_Screen(CurrentScreen->Color);
 TFT_Set_DBC_SSD1963(255);
 display_width = CurrentScreen->Width;
 display_height = CurrentScreen->Height;
 TFT_BLED = save_bled;
 }
 else
 TFT_Fill_Screen(CurrentScreen->Color);


 while (order < CurrentScreen->ObjectsCount) {
 if (round_button_idx < CurrentScreen->Buttons_RoundCount) {
 local_round_button =  CurrentScreen->Buttons_Round[round_button_idx] ;
 if (order == local_round_button->Order) {
 round_button_idx++;
 order++;
 DrawRoundButton(local_round_button);
 }
 }

 if (label_idx < CurrentScreen->LabelsCount) {
 local_label =  CurrentScreen->Labels[label_idx] ;
 if (order == local_label->Order) {
 label_idx++;
 order++;
 DrawLabel(local_label);
 }
 }

 if (box_idx < CurrentScreen->BoxesCount) {
 local_box =  CurrentScreen->Boxes[box_idx] ;
 if (order == local_box->Order) {
 box_idx++;
 order++;
 DrawBox(local_box);
 }
 }

 if (round_box_idx < CurrentScreen->Boxes_RoundCount) {
 local_round_box =  CurrentScreen->Boxes_Round[round_box_idx] ;
 if (order == local_round_box->Order) {
 round_box_idx++;
 order++;
 DrawRoundBox(local_round_box);
 }
 }

 if (image_idx < CurrentScreen->ImagesCount) {
 local_image =  CurrentScreen->Images[image_idx] ;
 if (order == local_image->Order) {
 image_idx++;
 order++;
 DrawImage(local_image);
 }
 }

 }
}

void Get_Object(unsigned int X, unsigned int Y) {
 round_button_order = -1;
 label_order = -1;
 image_order = -1;
 box_order = -1;
 box_round_order = -1;

 for ( _object_count = 0 ; _object_count < CurrentScreen->Buttons_RoundCount ; _object_count++ ) {
 local_round_button =  CurrentScreen->Buttons_Round[_object_count] ;
 if (local_round_button->Active != 0) {
 if (IsInsideObject(X, Y, local_round_button->Left, local_round_button->Top,
 local_round_button->Width, local_round_button->Height) == 1) {
 round_button_order = local_round_button->Order;
 exec_round_button = local_round_button;
 }
 }
 }


 for ( _object_count = 0 ; _object_count < CurrentScreen->LabelsCount ; _object_count++ ) {
 local_label =  CurrentScreen->Labels[_object_count] ;
 if (local_label->Active != 0) {
 if (IsInsideObject(X, Y, local_label->Left, local_label->Top,
 local_label->Width, local_label->Height) == 1) {
 label_order = local_label->Order;
 exec_label = local_label;
 }
 }
 }


 for ( _object_count = 0 ; _object_count < CurrentScreen->ImagesCount ; _object_count++ ) {
 local_image =  CurrentScreen->Images[_object_count] ;
 if (local_image->Active != 0) {
 if (IsInsideObject(X, Y, local_image->Left, local_image->Top,
 local_image->Width, local_image->Height) == 1) {
 image_order = local_image->Order;
 exec_image = local_image;
 }
 }
 }


 for ( _object_count = 0 ; _object_count < CurrentScreen->BoxesCount ; _object_count++ ) {
 local_box =  CurrentScreen->Boxes[_object_count] ;
 if (local_box->Active != 0) {
 if (IsInsideObject(X, Y, local_box->Left, local_box->Top,
 local_box->Width, local_box->Height) == 1) {
 box_order = local_box->Order;
 exec_box = local_box;
 }
 }
 }


 for ( _object_count = 0 ; _object_count < CurrentScreen->Boxes_RoundCount ; _object_count++ ) {
 local_round_box =  CurrentScreen->Boxes_Round[_object_count] ;
 if (local_round_box->Active != 0) {
 if (IsInsideObject(X, Y, local_round_box->Left, local_round_box->Top,
 local_round_box->Width, local_round_box->Height) == 1) {
 box_round_order = local_round_box->Order;
 exec_round_box = local_round_box;
 }
 }
 }

 _object_count = -1;
 if (round_button_order > _object_count )
 _object_count = round_button_order;
 if (label_order > _object_count )
 _object_count = label_order;
 if (image_order > _object_count )
 _object_count = image_order;
 if (box_order > _object_count )
 _object_count = box_order;
 if (box_round_order > _object_count )
 _object_count = box_round_order;
}


void Process_TP_Press(unsigned int X, unsigned int Y) {
 exec_round_button = 0;
 exec_label = 0;
 exec_image = 0;
 exec_box = 0;
 exec_round_box = 0;

 Get_Object(X, Y);

 if (_object_count != -1) {
 if (_object_count == round_button_order) {
 if (exec_round_button->Active != 0) {
 if (exec_round_button->OnPressPtr != 0) {
 exec_round_button->OnPressPtr();
 return;
 }
 }
 }

 if (_object_count == label_order) {
 if (exec_label->Active != 0) {
 if (exec_label->OnPressPtr != 0) {
 exec_label->OnPressPtr();
 return;
 }
 }
 }

 if (_object_count == image_order) {
 if (exec_image->Active != 0) {
 if (exec_image->OnPressPtr != 0) {
 exec_image->OnPressPtr();
 return;
 }
 }
 }

 if (_object_count == box_order) {
 if (exec_box->Active != 0) {
 if (exec_box->OnPressPtr != 0) {
 exec_box->OnPressPtr();
 return;
 }
 }
 }

 if (_object_count == box_round_order) {
 if (exec_round_box->Active != 0) {
 if (exec_round_box->OnPressPtr != 0) {
 exec_round_box->OnPressPtr();
 return;
 }
 }
 }

 }
}

void Process_TP_Up(unsigned int X, unsigned int Y) {

 switch (PressedObjectType) {

 case 1: {
 if (PressedObject != 0) {
 exec_round_button = (TButton_Round*)PressedObject;
 if ((exec_round_button->PressColEnabled != 0) && (exec_round_button->OwnerScreen == CurrentScreen)) {
 DrawRoundButton(exec_round_button);
 }
 break;
 }
 break;
 }

 case 6: {
 if (PressedObject != 0) {
 exec_box = (TBox*)PressedObject;
 if ((exec_box->PressColEnabled != 0) && (exec_box->OwnerScreen == CurrentScreen)) {
 DrawBox(exec_box);
 }
 break;
 }
 break;
 }

 case 7: {
 if (PressedObject != 0) {
 exec_round_box = (TBox_Round*)PressedObject;
 if ((exec_round_box->PressColEnabled != 0) && (exec_round_box->OwnerScreen == CurrentScreen)) {
 DrawRoundBox(exec_round_box);
 }
 break;
 }
 break;
 }
 }

 exec_label = 0;
 exec_image = 0;

 Get_Object(X, Y);


 if (_object_count != -1) {

 if (_object_count == round_button_order) {
 if (exec_round_button->Active != 0) {
 if (exec_round_button->OnUpPtr != 0)
 exec_round_button->OnUpPtr();
 if (PressedObject == (void *)exec_round_button)
 if (exec_round_button->OnClickPtr != 0)
 exec_round_button->OnClickPtr();
 PressedObject = 0;
 PressedObjectType = -1;
 return;
 }
 }


 if (_object_count == label_order) {
 if (exec_label->Active != 0) {
 if (exec_label->OnUpPtr != 0)
 exec_label->OnUpPtr();
 if (PressedObject == (void *)exec_label)
 if (exec_label->OnClickPtr != 0)
 exec_label->OnClickPtr();
 PressedObject = 0;
 PressedObjectType = -1;
 return;
 }
 }


 if (_object_count == image_order) {
 if (exec_image->Active != 0) {
 if (exec_image->OnUpPtr != 0)
 exec_image->OnUpPtr();
 if (PressedObject == (void *)exec_image)
 if (exec_image->OnClickPtr != 0)
 exec_image->OnClickPtr();
 PressedObject = 0;
 PressedObjectType = -1;
 return;
 }
 }


 if (_object_count == box_order) {
 if (exec_box->Active != 0) {
 if (exec_box->OnUpPtr != 0)
 exec_box->OnUpPtr();
 if (PressedObject == (void *)exec_box)
 if (exec_box->OnClickPtr != 0)
 exec_box->OnClickPtr();
 PressedObject = 0;
 PressedObjectType = -1;
 return;
 }
 }


 if (_object_count == box_round_order) {
 if (exec_round_box->Active != 0) {
 if (exec_round_box->OnUpPtr != 0)
 exec_round_box->OnUpPtr();
 if (PressedObject == (void *)exec_round_box)
 if (exec_round_box->OnClickPtr != 0)
 exec_round_box->OnClickPtr();
 PressedObject = 0;
 PressedObjectType = -1;
 return;
 }
 }

 }
 PressedObject = 0;
 PressedObjectType = -1;
}

void Process_TP_Down(unsigned int X, unsigned int Y) {

 object_pressed = 0;
 exec_round_button = 0;
 exec_label = 0;
 exec_image = 0;
 exec_box = 0;
 exec_round_box = 0;

 Get_Object(X, Y);

 if (_object_count != -1) {
 if (_object_count == round_button_order) {
 if (exec_round_button->Active != 0) {
 if (exec_round_button->PressColEnabled != 0) {
 object_pressed = 1;
 DrawRoundButton(exec_round_button);
 }
 PressedObject = (void *)exec_round_button;
 PressedObjectType = 1;
 if (exec_round_button->OnDownPtr != 0) {
 exec_round_button->OnDownPtr();
 return;
 }
 }
 }

 if (_object_count == label_order) {
 if (exec_label->Active != 0) {
 PressedObject = (void *)exec_label;
 PressedObjectType = 2;
 if (exec_label->OnDownPtr != 0) {
 exec_label->OnDownPtr();
 return;
 }
 }
 }

 if (_object_count == image_order) {
 if (exec_image->Active != 0) {
 PressedObject = (void *)exec_image;
 PressedObjectType = 3;
 if (exec_image->OnDownPtr != 0) {
 exec_image->OnDownPtr();
 return;
 }
 }
 }

 if (_object_count == box_order) {
 if (exec_box->Active != 0) {
 if (exec_box->PressColEnabled != 0) {
 object_pressed = 1;
 DrawBox(exec_box);
 }
 PressedObject = (void *)exec_box;
 PressedObjectType = 6;
 if (exec_box->OnDownPtr != 0) {
 exec_box->OnDownPtr();
 return;
 }
 }
 }

 if (_object_count == box_round_order) {
 if (exec_round_box->Active != 0) {
 if (exec_round_box->PressColEnabled != 0) {
 object_pressed = 1;
 DrawRoundBox(exec_round_box);
 }
 PressedObject = (void *)exec_round_box;
 PressedObjectType = 7;
 if (exec_round_box->OnDownPtr != 0) {
 exec_round_box->OnDownPtr();
 return;
 }
 }
 }

 }
}

void Check_TP() {
 if (FT5XX6_PressDetect()) {
 if (FT5XX6_GetCoordinates(&Xcoord, &Ycoord) == 0) {

 Process_TP_Press(Xcoord, Ycoord);
 if (PenDown == 0) {
 PenDown = 1;
 Process_TP_Down(Xcoord, Ycoord);
 }
 }
 }
 else if (PenDown == 1) {
 PenDown = 0;
 Process_TP_Up(Xcoord, Ycoord);
 }
}

void Init_MCU() {

 GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_1);
 GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_0);
 GPIOF_ODR.B1 = 1;
 while (GPIOF_IDR.B0 == 0) {
 GPIOF_ODR.B1 = 0;
 Delay_us(10);
 GPIOF_ODR.B1 = 1;
 Delay_us(10);
 }
 I2C2_Init_Advanced(400000, &_GPIO_MODULE_I2C2_PF10);
}

char FT5XX6_Config() {
 FT5XX6_SetI2CAddress(0x38);
 if (FT5XX6_IsOperational() != FT5XX6_OK)
 return FT5XX6_FAILURE;
 FT5XX6_SetDefaultMode();
 FT5XX6_SetController(_TC_FT5X26);
 FT5XX6_SetSizeAndRotation(800,480,2);
return FT5XX6_OK;
}

void Start_TP() {
 Init_MCU();

 InitializeTouchPanel();
 if (FT5XX6_Config() == FT5XX6_OK) {
 } else {
 while(1);
 }


 InitializeObjects();
 display_width = Screen1.Width;
 display_height = Screen1.Height;
 DrawScreen(&Screen1);
}
