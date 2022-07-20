//g++ test.cpp -o test `sdl2-config --cflags --libs` -lwiringPi
#include <unistd.h>
#include <stdio.h>
#include <wiringPi.h>

#define BUS_0   8
#define BUS_1   9
#define BUS_2   7
#define BUS_3   0
#define BUS_4   2
#define BUS_5   3
#define BUS_6   12
#define BUS_7   13

#define D0_D7_OUTPUT_E 	14
#define D0_D7_DIR 		30
#define PIN_A0			21
#define PIN_A1			22
#define PORT_20_CS		23	
#define PORT_40_CS		24
#define PIN_A2			25

#define A0_A7_OUTPUT_E	15
#define A8_A15_OUTPUT_E	16
#define A16_A19_OUTPUT_E 1

#define READY			4
#define BUS_READY		5
#define RESET			6

#define S0_S2_OUTPUT_E	10
#define PORT_E0_CS		11

#define IRQ1			28
#define IRQ2			29

unsigned char RAM[0x100000];
unsigned char IO[0x10000];

void Start_up()
{
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
void Ready()
{
	digitalWrite(BUS_READY, HIGH);
	digitalWrite(BUS_READY, LOW);
	digitalWrite(BUS_READY, LOW);
	//usleep(.001);	
}
int main(int argc, char* argv[]) 
{
	Start_up();
	RAM[0xFFFF0] = 0xEA;
	RAM[0xFFFF1] = 0x00;
	RAM[0xFFFF2] = 0x00;
	RAM[0xFFFF3] = 0x00;
	RAM[0xFFFF4] = 0x70;

	RAM[0x70000] = 0xEA;
	RAM[0x70001] = 0x00;
	RAM[0x70002] = 0x00;
	RAM[0x70003] = 0x00;
	RAM[0x70004] = 0x20;

	RAM[0x20000] = 0xB0;
	RAM[0x20001] = 0x77;
	RAM[0x20002] = 0xE6;
	RAM[0x20003] = 0x08;
	RAM[0x20004] = 0xEA;
	RAM[0x20005] = 0x00;
	RAM[0x20006] = 0x00;
	RAM[0x20007] = 0xFF;
	RAM[0x20008] = 0xFF;
	int count = 0;
	while(true)
	{
		count = count+1;
		printf("count %#X \n", count);
		while(digitalRead(READY) == 1)
		{
		}
		
		if(Read_Control() == 0x00)
		{
			int Address = Read_Address();
			printf("Address %#X ", Address);
			printf("Data %#X ", RAM[Address]);
			printf("Control %#X \n", Read_Control());
			//sleep(1);
			Write_Data(RAM[Address]);
			Ready();
		}
		else
		{
			int Address = Read_Address();
			printf("Address %#X ", Address);
			printf("Data %#X ", Read_Data());
			printf("Control %#X \n", Read_Control());
			sleep(1);
			Ready();
		}		
	}
}
