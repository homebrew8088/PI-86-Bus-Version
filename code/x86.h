#ifndef X86_H
#define X86_H


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


#include <wiringPi.h>
#include <string>
#include <thread>
#include <unistd.h>
#include <fstream> 

using namespace std;

static bool Stop_Flag;


void Reset();	
void Start();
void Load_Bios(string Bios_file);
//Memory
void Write_Memory_Array(unsigned long long int Address, char code_for_8088[], int Length);
void Read_Memory_Array(unsigned long long int Address, char* char_Array, int Length);
void Write_Memory_Byte(unsigned long long int Address, char byte_for_8088);
char Read_Memory_Byte(unsigned long long int Address);		
void Write_Memory_Word(unsigned long long int Address, unsigned short int word_for_8088);
//IO

void Write_IO_Byte(unsigned long long int Address, char byte_for_8088);
char Read_IO_Byte(unsigned long long int Address);
void Write_IO_Word(unsigned long long int Address, unsigned short int word_for_8088);

//INT


#endif
