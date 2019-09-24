/*********************************************************************************
 * File Name     : main.c
 * Created By    : Svetlana Linuxenko
 * Creation Date : [2019-09-20 23:23]
 * Last Modified : [2019-09-25 00:56]
 * Description   :  
 **********************************************************************************/

//#define DEBUG

#include <avr/io.h>
#include <avr/wdt.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <stdio.h>

#include "shiftout.h"
#include "lcdshift.h"
#include "tools.h"
#include "atmega-adc.h"

#ifdef DEBUG
#include "uart.h"
#define _BAUD_RATE   9600
#endif

#define LCD_UPDATE_INTERVAL 300000

const float factor[] = {
  1, // ADC0 factor
  1,
  11,
  1,
  11,
  1
};

ShiftIC icS;
ShiftLCD lcd;

#define ADC_PORTS 6
uint16_t voltages[ADC_PORTS];

void adc_update(uint8_t pin, uint16_t value) {
  voltages[pin] = value;
}

void lcd_update(void) {
  char text[16]; // Just a line
  char values[ADC_PORTS][6];
  uint8_t i = 0;

  // Full refresh
/*  shiftLCDClear(&lcd);*/
  shiftLCDSetCursor(&lcd, 0, 0);

  /*
   * Lets fill values depending on adc factors such
   * as voltage dividers and their leakage measured
   * individually because they're may vary
   */

  for (; i < ADC_PORTS; i++) {
    float_to_str(values[i], (((voltages[i] * 5.00) / 1023.00) * factor[i]));
  }

  sprintf(text, "V %s %s %s", values[0], values[2], values[4]);

  shiftLCDPuts(&lcd, text);
#ifdef DEBUG
  uart_puts(text);
  uart_puts("\r\n");
#endif

  sprintf(text, "A %s %s %s", values[1], values[3], values[5]);

  shiftLCDSetCursor(&lcd, 0, 1);
  shiftLCDPuts(&lcd, text);

#ifdef DEBUG
  uart_puts(text);
  uart_puts("\r\n");
  uart_flush();
#endif
}

uint8_t pwr_state = 0;

void pwr_toggle() {
  pwr_state = !pwr_state;

  if (pwr_state == 0) {
    PORTD &= ~(1 << PD4);
  } else {
    PORTD |= (1 << PD4);
  }
}

int main(void) {
  unsigned long lup_count = 0;
  uint8_t ispwr_pressed = 0;

#ifdef DEBUG
  uart_init(UART_BAUD_SELECT(_BAUD_RATE, F_CPU));
#endif

  DDRB &= ~(1 << PB4);
  PORTB = 0xff;
  DDRD |= (1 << PD4);

  /* ADC with updatable callback (awesome stuff) */
  adc_start(ADC_PRESCALER_128, ADC_VREF_AVCC, ADC_PORTS, adc_update);

  /* LCD initalization */
  createShift(&icS, &DDRD, &PORTD, PORTD5, PORTD6, PORTD7);
  icS.type = IC_TYPE_HC164;
  createShiftLCD(&lcd, &icS, 4, 5, 0, 1, 2, 3, 16, 2, 0);

  wdt_enable(WDTO_2S);
  sei();

  while(1) {
    wdt_reset();

    /* Kinda simpliest debounce */
    if ((PINB & (1 << PB4)) == 0 && lup_count < 100 && ispwr_pressed == 0) {
      ispwr_pressed = 1;
      pwr_toggle();
    }

    if (lup_count >= LCD_UPDATE_INTERVAL) {
      lup_count = 0;

      /* Anti monkey protection */
      if (ispwr_pressed > 0 && ispwr_pressed < 8) {
        ispwr_pressed++;
      } else {
        ispwr_pressed = 0;
      }

      lcd_update();
    }

    lup_count++;
  }

  return 0;
}