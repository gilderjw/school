/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/gilderjw/Documents/csse232/1516a-csse232-sid-transputer/XilinxProject/ALU-praise be unto him/FORCEMSB0.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {15, 0};
static int ng3[] = {12, 0};
static int ng4[] = {11, 0};
static int ng5[] = {0, 0};



static void Always_25_0(char *t0)
{
    char t6[8];
    char t7[8];
    char t8[8];
    char t31[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    int t16;
    char *t17;
    unsigned int t18;
    int t19;
    int t20;
    char *t21;
    unsigned int t22;
    int t23;
    int t24;
    unsigned int t25;
    int t26;
    unsigned int t27;
    unsigned int t28;
    int t29;
    int t30;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;

LAB0:    t1 = (t0 + 2360U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 2680);
    *((int *)t2) = 1;
    t3 = (t0 + 2392);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(25, ng0);

LAB5:    xsi_set_current_line(26, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 1448);
    t9 = (t0 + 1448);
    t10 = (t9 + 72U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng2)));
    t13 = ((char*)((ng3)));
    xsi_vlog_convert_partindices(t6, t7, t8, ((int*)(t11)), 2, t12, 32, 1, t13, 32, 1);
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (!(t15));
    t17 = (t7 + 4);
    t18 = *((unsigned int *)t17);
    t19 = (!(t18));
    t20 = (t16 && t19);
    t21 = (t8 + 4);
    t22 = *((unsigned int *)t21);
    t23 = (!(t22));
    t24 = (t20 && t23);
    if (t24 == 1)
        goto LAB6;

LAB7:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t15 = *((unsigned int *)t3);
    t18 = (t15 >> 0);
    *((unsigned int *)t6) = t18;
    t22 = *((unsigned int *)t4);
    t25 = (t22 >> 0);
    *((unsigned int *)t2) = t25;
    t27 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t27 & 4095U);
    t28 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t28 & 4095U);
    t5 = (t0 + 1448);
    t9 = (t0 + 1448);
    t10 = (t9 + 72U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng4)));
    t13 = ((char*)((ng5)));
    xsi_vlog_convert_partindices(t7, t8, t31, ((int*)(t11)), 2, t12, 32, 1, t13, 32, 1);
    t14 = (t7 + 4);
    t32 = *((unsigned int *)t14);
    t16 = (!(t32));
    t17 = (t8 + 4);
    t33 = *((unsigned int *)t17);
    t19 = (!(t33));
    t20 = (t16 && t19);
    t21 = (t31 + 4);
    t34 = *((unsigned int *)t21);
    t23 = (!(t34));
    t24 = (t20 && t23);
    if (t24 == 1)
        goto LAB8;

LAB9:    goto LAB2;

LAB6:    t25 = *((unsigned int *)t8);
    t26 = (t25 + 0);
    t27 = *((unsigned int *)t6);
    t28 = *((unsigned int *)t7);
    t29 = (t27 - t28);
    t30 = (t29 + 1);
    xsi_vlogvar_wait_assign_value(t5, t4, t26, *((unsigned int *)t7), t30, 0LL);
    goto LAB7;

LAB8:    t35 = *((unsigned int *)t31);
    t26 = (t35 + 0);
    t36 = *((unsigned int *)t7);
    t37 = *((unsigned int *)t8);
    t29 = (t36 - t37);
    t30 = (t29 + 1);
    xsi_vlogvar_wait_assign_value(t5, t6, t26, *((unsigned int *)t8), t30, 0LL);
    goto LAB9;

}


extern void work_m_07162475545391502685_3205580496_init()
{
	static char *pe[] = {(void *)Always_25_0};
	xsi_register_didat("work_m_07162475545391502685_3205580496", "isim/TopLevel_TopLevel_sch_tb_isim_beh.exe.sim/work/m_07162475545391502685_3205580496.didat");
	xsi_register_executes(pe);
}
