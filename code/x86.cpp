#include "x86.h"

unsigned char RAM[0x100000];
unsigned char IO[0x10000];

//////////////////////////////
//System Bus
///////////////////////////////
void Bus_Direction_IN()
{
    pinMode(BUS_0, INPUT);  
    pinMode(BUS_1, INPUT);
    pinMode(BUS_2, INPUT);
    pinMode(BUS_3, INPUT);
    pinMode(BUS_4, INPUT);
    pinMode(BUS_5, INPUT);
    pinMode(BUS_6, INPUT);
    pinMode(BUS_7, INPUT);
}
void Bus_Direction_OUT()
{
    pinMode(BUS_0, OUTPUT);  
    pinMode(BUS_1, OUTPUT);
    pinMode(BUS_2, OUTPUT);
    pinMode(BUS_3, OUTPUT);
    pinMode(BUS_4, OUTPUT);
    pinMode(BUS_5, OUTPUT);
    pinMode(BUS_6, OUTPUT);
    pinMode(BUS_7, OUTPUT);
}
int Read_Control()
{
   int Control;
   Bus_Direction_IN();
   digitalWrite(D0_D7_OUTPUT_E, HIGH);
   digitalWrite(S0_S2_OUTPUT_E, LOW);
   Control = digitalRead(BUS_0);
   Control = Control + (digitalRead(BUS_1) << 1);
   Control = Control + (digitalRead(BUS_2) << 2);
   Control = Control + (digitalRead(BUS_3) << 3);
   digitalWrite(S0_S2_OUTPUT_E, HIGH);
	return Control;
}
int Read_Address()
{
   int Address;
   Bus_Direction_IN();
   digitalWrite(D0_D7_OUTPUT_E, HIGH);
   digitalWrite(A0_A7_OUTPUT_E, LOW);
   Address = digitalRead(BUS_0);
   Address = Address + (digitalRead(BUS_1) << 1);
   Address = Address + (digitalRead(BUS_2) << 2);
   Address = Address + (digitalRead(BUS_3) << 3);
   Address = Address + (digitalRead(BUS_4) << 4);
   Address = Address + (digitalRead(BUS_5) << 5);
   Address = Address + (digitalRead(BUS_6) << 6);
   Address = Address + (digitalRead(BUS_7) << 7);
   digitalWrite(A0_A7_OUTPUT_E, HIGH);
   digitalWrite(A8_A15_OUTPUT_E, LOW);
   Address = Address + (digitalRead(BUS_0) << 8);
   Address = Address + (digitalRead(BUS_1) << 9);
   Address = Address + (digitalRead(BUS_2) << 10);
   Address = Address + (digitalRead(BUS_3) << 11);
   Address = Address + (digitalRead(BUS_4) << 12);
   Address = Address + (digitalRead(BUS_5) << 13);
   Address = Address + (digitalRead(BUS_6) << 14);
   Address = Address + (digitalRead(BUS_7) << 15);
   digitalWrite(A8_A15_OUTPUT_E, HIGH);
   digitalWrite(A16_A19_OUTPUT_E, LOW);
   Address = Address + (digitalRead(BUS_0) << 16);
   Address = Address + (digitalRead(BUS_1) << 17);
   Address = Address + (digitalRead(BUS_2) << 18);
   Address = Address + (digitalRead(BUS_3) << 19);
   digitalWrite(A16_A19_OUTPUT_E, HIGH);
   return Address;
}
void Write_Data(char Byte)
{
	Bus_Direction_OUT();
	digitalWrite(D0_D7_OUTPUT_E, LOW);
	digitalWrite(D0_D7_DIR, LOW);
	digitalWrite(BUS_0, Byte & 1); 
	digitalWrite(BUS_1,(Byte >> 1) & 1); 
	digitalWrite(BUS_2, (Byte >> 2) & 1); 
	digitalWrite(BUS_3, (Byte >> 3) & 1); 
	digitalWrite(BUS_4, (Byte >> 4) & 1); 
	digitalWrite(BUS_5, (Byte >> 5) & 1); 
	digitalWrite(BUS_6, (Byte >> 6) & 1); 
	digitalWrite(BUS_7, (Byte >> 7) & 1); 
}
char Read_Data()
{
	Bus_Direction_IN();
	digitalWrite(D0_D7_OUTPUT_E, LOW);
	digitalWrite(D0_D7_DIR, HIGH);
	char ret;
	ret = digitalRead(BUS_0);
	ret = ret + (digitalRead(BUS_1) << 1);
	ret = ret + (digitalRead(BUS_2) << 2);
	ret = ret + (digitalRead(BUS_3) << 3);
	ret = ret + (digitalRead(BUS_4) << 4);
	ret = ret + (digitalRead(BUS_5) << 5);
	ret = ret + (digitalRead(BUS_6) << 6);
	ret = ret + (digitalRead(BUS_7) << 7);
	digitalWrite(D0_D7_OUTPUT_E, HIGH);
	return ret;
}
//Sets up Raspberry PI pins in the begining 
void Setup()
{
   Stop_Flag = false;
   wiringPiSetup();
   pinMode(D0_D7_OUTPUT_E, OUTPUT);  
   pinMode(D0_D7_DIR, OUTPUT);  
   pinMode(PIN_A0, OUTPUT);  
   pinMode(PIN_A1, OUTPUT);  
   pinMode(PORT_20_CS, OUTPUT);  
   pinMode(PORT_40_CS, OUTPUT);  
   pinMode(PIN_A2, OUTPUT);  

   pinMode(A0_A7_OUTPUT_E, OUTPUT);  
   pinMode(A8_A15_OUTPUT_E, OUTPUT);  
   pinMode(A16_A19_OUTPUT_E, OUTPUT); 

   pinMode(READY, INPUT); 
   pinMode(BUS_READY, OUTPUT);  
   pinMode(RESET, OUTPUT);  

   pinMode(S0_S2_OUTPUT_E, OUTPUT);  
   pinMode(PORT_E0_CS, OUTPUT);  

   pinMode(IRQ1, OUTPUT);  
   pinMode(IRQ2, OUTPUT);  
   
   //Address Latched and Data bus
   digitalWrite(D0_D7_OUTPUT_E, HIGH);
   digitalWrite(A0_A7_OUTPUT_E, HIGH);
   digitalWrite(A8_A15_OUTPUT_E, HIGH);
   digitalWrite(A16_A19_OUTPUT_E, HIGH);
   //Control Bus
   digitalWrite(S0_S2_OUTPUT_E, HIGH);
   //Onboard IO's
   digitalWrite(PORT_20_CS, HIGH);
   digitalWrite(PORT_40_CS, HIGH);
   digitalWrite(PORT_E0_CS, HIGH);
   //IRQ's
   digitalWrite(IRQ1, LOW);
   digitalWrite(IRQ2, LOW);
   //Ready
   digitalWrite(BUS_READY, LOW);
   //Reset
   digitalWrite(RESET, LOW);
   sleep(.1);
   digitalWrite(RESET, HIGH);
}
void Ready()
{
   digitalWrite(BUS_READY, HIGH);
   digitalWrite(BUS_READY, HIGH);
   digitalWrite(BUS_READY, HIGH);
   digitalWrite(BUS_READY, HIGH);
   digitalWrite(BUS_READY, LOW);
   digitalWrite(BUS_READY, LOW);
   digitalWrite(BUS_READY, LOW);
   digitalWrite(BUS_READY, LOW);
	//usleep(.01);	
}

//System Bus decoder
void Start_System_Bus()
{
   char Control_Bus;
   int Address;
   char Memory_IO_Bank;

   while(Stop_Flag != true)
   {
      while(digitalRead(READY) == 1)
      {
	 //Wait for Ready to go low. This may not be needed
	 //printf("Wait for Ready to go low. \n");
      }
      Address = Read_Address();
      switch(Read_Control())
      {
	 //Code Access
	 case 0x00:
	    Write_Data(RAM[Address]);
	    Ready();
	    break;
	 //Read Memory
	 case 0x01:
	    Write_Data(RAM[Address]);
	    Ready();
	    break;
	 //Write Memory
	 case 0x02:
	    RAM[Address] = Read_Data();
	    Ready();
	    break;
	 //Passive
	 case 0x03:
	    printf("Passive Control Bus \n");
	    break;
	 //Interrupt Acknowledge
	 case 0x04:
	    usleep(100);
	    printf("Interrupt Acknowledge \n");
	    Write_Data(0X08);
	    //digitalWrite(D0_D7_OUTPUT_E, HIGH);
	    Ready();
	    
	    break;
	 //Read IO Port
	 case 0x05:
	    Write_Data(RAM[Address]);
	    Ready();
	    break;
	 //Write IO Port
	 case 0x06:
	    if(Address == 0x20)
	    {
	       digitalWrite(PIN_A0, LOW);
	       digitalWrite(PORT_20_CS, LOW);
	       usleep(1000);
	       digitalWrite(PORT_20_CS, HIGH);
	       IO[Address] = Read_Data();
	       Ready();
	    }
	    else if(Address == 0x21)
	    {
	       digitalWrite(PIN_A0, HIGH);
	       digitalWrite(PORT_20_CS, LOW);
	       usleep(1000);
	       digitalWrite(PORT_20_CS, HIGH);
	       IO[Address] = Read_Data();
	       Ready();
	    }
	    else if(Address == 0x40)
	    {
	       digitalWrite(PIN_A0, LOW);
	       digitalWrite(PIN_A1, LOW);
	       digitalWrite(PORT_40_CS, LOW);
	       usleep(1000);
	       digitalWrite(PORT_40_CS, HIGH);
	       IO[Address] = Read_Data();
	       Ready();
	    }
	    else if(Address == 0x41)
	    {
	       digitalWrite(PIN_A0, HIGH);
	       digitalWrite(PIN_A1, LOW);
	       digitalWrite(PORT_40_CS, LOW);
	       usleep(1000);
	       digitalWrite(PORT_40_CS, HIGH);
	       IO[Address] = Read_Data();
	       Ready();
	    }
	    else if(Address == 0x42)
	    {
	       digitalWrite(PIN_A0, LOW);
	       digitalWrite(PIN_A1, HIGH);
	       digitalWrite(PORT_40_CS, LOW);
	       usleep(1000);
	       digitalWrite(PORT_40_CS, HIGH);
	       IO[Address] = Read_Data();
	       Ready();
	    }
	    else if(Address == 0x43)
	    {
	       digitalWrite(PIN_A0, HIGH);
	       digitalWrite(PIN_A1, HIGH);
	       digitalWrite(PORT_40_CS, LOW);
	       usleep(1000);
	       digitalWrite(PORT_40_CS, HIGH);
	       IO[Address] = Read_Data();
	       Ready();
	    }
	    else
	    {
	       IO[Address] = Read_Data();
	       Ready();
	    }
	    break;
	 //Halt
	 case 0x07:
	    printf("Halt \n");
	    break;
	 //Catch all else
	 default:
	    printf("Default Read Control Bus \n");
	    break;
      }
   }
   
}
void Write_Memory_Array(unsigned long long int Address, char code_for_8088[], int Length)
{  
    for(int i = 0; i < Length; i++) 
    {
         RAM[Address] = code_for_8088[i];   
         Address++;
    } 
}
void Read_Memory_Array(unsigned long long int Address, char* char_Array, int Length)
{
   for(int i=0; i < Length; ++i)
   {
      char_Array[i] = RAM[Address];
      Address++;
   }
}
void Write_Memory_Byte(unsigned long long int Address, char byte_for_8088)
{
   RAM[Address] = byte_for_8088; 
}
char Read_Memory_Byte(unsigned long long int Address)
{
   return RAM[Address];
}

void Write_Memory_Word(unsigned long long int Address, unsigned short int word_for_8088) 
{
   RAM[Address] = word_for_8088; 
   RAM[Address + 1] = word_for_8088 >> 8; 
}

void Write_IO_Byte(unsigned long long int Address, char byte_for_8088)
{
   IO[Address] = byte_for_8088; 
}
char Read_IO_Byte(unsigned long long int Address)
{
   return IO[Address];
}
void Write_IO_Word(unsigned long long int Address, unsigned short int word_for_8088) 
{
   IO[Address] = word_for_8088; 
   IO[Address + 1] = word_for_8088 >> 8; 
}

//Resest the x86
void Reset()
{
   //Reset
   digitalWrite(RESET, LOW);
   sleep(.1);
   digitalWrite(RESET, HIGH);
}
void Start()
{
   //Sets up Ports 
   Setup();	
   //Resets the x86
   Reset();
   //Starts the x86 system bus in a thread
   thread System_Bus(Start_System_Bus);
   //Detach the thread to continue in the program
   System_Bus.detach();
}

void Load_Bios(string Bios_file)
{
	std::ifstream MemoryFile;                 //New ifstream
	MemoryFile.open(Bios_file);              //Open Rom.bin
	MemoryFile.seekg (0, ios::end);           //Find the end of the file
	int FileSize = MemoryFile.tellg();        //Get the size of the file
	MemoryFile.seekg (0, MemoryFile.beg);     //Start reading at the begining
	char Rom[FileSize];                       //New char array the size of the rom file
	MemoryFile.read(Rom, FileSize);           //Read the file
	MemoryFile.close();                       //Close the file

	//Jump code to be written to 0xFFFFF, =JMP FAR 0xF000:0X0100
	char FFFF0[] = {0XEA, 0X00, 0X01, 0X00, 0XF8, 'E', 'M', ' ', '0', '4', '/', '1', '0', '/', '2', '0'};
	Write_Memory_Array(0xFFFF0, FFFF0, sizeof(FFFF0)); //Jump Code
	Write_Memory_Array(0xF8000, Rom, sizeof(Rom));     //The Rom file
	Write_Memory_Byte(0xF80FF, 0xFF);                  //Make sure STOP byte is not zero 0x00 = Stop
	Write_Memory_Byte(0xF8000, 0xFF);                  //Make sure int13 command port is 0xFF
	Write_Memory_Byte(0xF80F0, 0x03);                  //Video mode
	
	 //Video port something...?? makes it work 
	Write_IO_Byte(0X3DA, 0xFF); 
	
}

