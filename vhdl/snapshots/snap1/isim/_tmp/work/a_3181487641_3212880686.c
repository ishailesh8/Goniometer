/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2007 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

/* This file is designed for use with ISim build 0xef153c89 */

#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/DELL/Desktop/FPGA_Motor/clk_divider.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_2592010699(char *, char *, unsigned int , unsigned int );


static void work_a_3181487641_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    int t12;

LAB0:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 528U);
    t2 = ieee_p_2592010699_sub_1744673427_2592010699(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 1488);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(43, ng0);
    t3 = (t0 + 2612);
    *((int *)t3) = 1;
    t4 = (t0 + 2616);
    *((int *)t4) = 5;
    t5 = 1;
    t6 = 5;

LAB5:    if (t5 <= t6)
        goto LAB6;

LAB8:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 2620);
    *((int *)t1) = 6;
    t3 = (t0 + 2624);
    *((int *)t3) = 10;
    t5 = 6;
    t6 = 10;

LAB9:    if (t5 <= t6)
        goto LAB10;

LAB12:    goto LAB3;

LAB6:    xsi_set_current_line(44, ng0);
    t7 = (t0 + 1532);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);

LAB7:    t1 = (t0 + 2612);
    t5 = *((int *)t1);
    t3 = (t0 + 2616);
    t6 = *((int *)t3);
    t12 = (t5 + 1);
    t5 = t12;
    t4 = (t0 + 2612);
    *((int *)t4) = t5;
    goto LAB5;

LAB10:    xsi_set_current_line(47, ng0);
    t4 = (t0 + 1532);
    t7 = (t4 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t4);

LAB11:    t1 = (t0 + 2620);
    t5 = *((int *)t1);
    t3 = (t0 + 2624);
    t6 = *((int *)t3);
    t12 = (t5 + 1);
    t5 = t12;
    t4 = (t0 + 2620);
    *((int *)t4) = t5;
    goto LAB9;

}


extern void work_a_3181487641_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3181487641_3212880686_p_0};
	xsi_register_didat("work_a_3181487641_3212880686", "isim/_tmp/work/a_3181487641_3212880686.didat");
	xsi_register_executes(pe);
}
