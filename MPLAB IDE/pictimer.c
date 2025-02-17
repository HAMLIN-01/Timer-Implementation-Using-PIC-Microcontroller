#include<pic.h>


char value=0;
#define SBIT_PS2 2

void interrupt timer_isr()
{
	if(TMR0IF==1)
	{
		value=~value;
		TMR0=101;

		TMR0IF=0;
		}
		}

		void main()
		{
			TRISD=0x00;

			OPTION_REG=(1<<SBIT_PS2);
			TMR0=100;	
		    TMR0IE=1;       
		    GIE=1;          
		    PEIE=1;   
     
		    while(1)
		    {
		        PORTD = value;
		    }
			}