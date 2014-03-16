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
static const char *ng0 = "C:/Users/DELL/Desktop/motor.vhd";



static void work_a_0673181748_3610286675_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    static char *nl0[] = {&&LAB14, &&LAB15, &&LAB16, &&LAB17};

LAB0:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 548U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2080);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 812U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1144U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB10;

LAB11:    t3 = (unsigned char)0;

LAB12:    if (t3 != 0)
        goto LAB8;

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 2132);
    t8 = (t1 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 988U);
    t8 = *((char **)t2);
    t12 = *((unsigned char *)t8);
    t2 = (char *)((nl0) + t12);
    goto **((char **)t2);

LAB10:    t2 = (t0 + 1164U);
    t5 = *((char **)t2);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t3 = t7;
    goto LAB12;

LAB13:    goto LAB6;

LAB14:    xsi_set_current_line(73, ng0);
    t9 = (t0 + 724U);
    t10 = *((char **)t9);
    t13 = *((unsigned char *)t10);
    t14 = (t13 == (unsigned char)3);
    if (t14 != 0)
        goto LAB18;

LAB20:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 2132);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t8 = (t5 + 40U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);

LAB19:    goto LAB13;

LAB15:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 724U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB21;

LAB23:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 2132);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t8 = (t5 + 40U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB22:    goto LAB13;

LAB16:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 724U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB24;

LAB26:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 2132);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t8 = (t5 + 40U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);

LAB25:    goto LAB13;

LAB17:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 724U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB27;

LAB29:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 2132);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t8 = (t5 + 40U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB28:    goto LAB13;

LAB18:    xsi_set_current_line(74, ng0);
    t9 = (t0 + 2132);
    t11 = (t9 + 32U);
    t15 = *((char **)t11);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)1;
    xsi_driver_first_trans_fast(t9);
    goto LAB19;

LAB21:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 2132);
    t5 = (t1 + 32U);
    t8 = *((char **)t5);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB22;

LAB24:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 2132);
    t5 = (t1 + 32U);
    t8 = *((char **)t5);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB25;

LAB27:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 2132);
    t5 = (t1 + 32U);
    t8 = *((char **)t5);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB28;

}

static void work_a_0673181748_3610286675_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    static char *nl0[] = {&&LAB6, &&LAB7, &&LAB8, &&LAB9};

LAB0:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 548U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2088);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(107, ng0);
    t1 = (t0 + 988U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t1 = (char *)((nl0) + t6);
    goto **((char **)t1);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(109, ng0);
    t7 = (t0 + 3563);
    t9 = (t0 + 2168);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t7, 4U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB5;

LAB7:    xsi_set_current_line(111, ng0);
    t1 = (t0 + 3567);
    t5 = (t0 + 2168);
    t7 = (t5 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB5;

LAB8:    xsi_set_current_line(113, ng0);
    t1 = (t0 + 3571);
    t5 = (t0 + 2168);
    t7 = (t5 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB5;

LAB9:    xsi_set_current_line(115, ng0);
    t1 = (t0 + 3575);
    t5 = (t0 + 2168);
    t7 = (t5 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB5;

}


extern void work_a_0673181748_3610286675_init()
{
	static char *pe[] = {(void *)work_a_0673181748_3610286675_p_0,(void *)work_a_0673181748_3610286675_p_1};
	xsi_register_didat("work_a_0673181748_3610286675", "isim/_tmp/work/a_0673181748_3610286675.didat");
	xsi_register_executes(pe);
}
