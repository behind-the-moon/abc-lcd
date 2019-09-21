/*********************************************************************************
 * File Name     : main.c
 * Created By    : Svetlana Linuxenko
 * Creation Date : [2019-09-20 23:23]
 * Last Modified : [2019-09-21 19:37]
 * Description   :  
 **********************************************************************************/

#define DEBUG

#include <avr/io.h>
#include <avr/wdt.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <stdio.h>
#include "tools.h"
#include "atmega-adc.h"

#ifdef DEBUG
#include "uart.h"
#define _BAUD_RATE   9600
#endif

#define ADC_PORTS 4
float voltages[ADC_PORTS];

void adc_update(uint8_t pin, uint16_t value) {
  voltages[pin] = (float)(value * 5.00) / 1023.00;
}

int main(void) {
  char out[64];

#ifdef DEBUG
  uart_init(UART_BAUD_SELECT(_BAUD_RATE, F_CPU));
#endif

  adc_start(ADC_PRESCALER_128, ADC_VREF_AVCC, ADC_PORTS, adc_update);
  wdt_enable(WDTO_2S);
  sei();

  while(1) {
    wdt_reset();

    sprintf(out, "V = %d %d %d %d\r\n", voltages[0], voltages[1], voltages[2], voltages[3]);

    uart_puts(out);
    uart_flush();

    _delay_ms(1000);

  }

  return 0;
}