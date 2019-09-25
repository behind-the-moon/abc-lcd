/*********************************************************************************
 * File Name     : tools.c
 * Created By    : Svetlana Linuxenko
 * Creation Date : [2019-09-21 13:33]
 * Last Modified : [2019-09-21 22:04]
 * Description   :  
 **********************************************************************************/

#include <avr/io.h>
#include <util/delay.h>
#include <stdio.h>

#include "tools.h"

void float_to_str (char *s, float val) {
  static int t0,t0d;

  t0 = (int) (val);

  if (t0 < 10) {
    t0d = (int) ((val * 100) - (t0 * 100));
  } else {
    t0d = (int) ((val * 10) - (t0 * 10));
  }

  sprintf (s, "%d.%02d", t0, t0d);
}
