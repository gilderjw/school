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

/* This file is designed for use with ISim build 0x8ddf5b5d */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/gilderjw/Documents/csse232/1516a-csse232-sid-transputer/XilinxLabs/memory/testdrup.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};



static void Initial_44_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;

LAB0:    t1 = (t0 + 4280U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);

LAB4:    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 10);
    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 4088);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(53, ng0);
    t3 = (t0 + 3048);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t7) == 0)
        goto LAB6;

LAB8:    t13 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t13) = 1;

LAB9:    t14 = (t0 + 3048);
    xsi_vlogvar_assign_value(t14, t4, 0, 0, 1);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 4088);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(57, ng0);
    t3 = (t0 + 3048);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB14;

LAB12:    if (*((unsigned int *)t7) == 0)
        goto LAB11;

LAB13:    t13 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t13) = 1;

LAB14:    t14 = (t0 + 3048);
    xsi_vlogvar_assign_value(t14, t4, 0, 0, 1);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t5, 10, t6, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 10);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 4088);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB11:    *((unsigned int *)t4) = 1;
    goto LAB14;

LAB15:    xsi_set_current_line(61, ng0);
    t3 = (t0 + 3048);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB19;

LAB17:    if (*((unsigned int *)t7) == 0)
        goto LAB16;

LAB18:    t13 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t13) = 1;

LAB19:    t14 = (t0 + 3048);
    xsi_vlogvar_assign_value(t14, t4, 0, 0, 1);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 4088);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB20;
    goto LAB1;

LAB16:    *((unsigned int *)t4) = 1;
    goto LAB19;

LAB20:    xsi_set_current_line(65, ng0);
    t3 = (t0 + 3048);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB24;

LAB22:    if (*((unsigned int *)t7) == 0)
        goto LAB21;

LAB23:    t13 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t13) = 1;

LAB24:    t14 = (t0 + 3048);
    xsi_vlogvar_assign_value(t14, t4, 0, 0, 1);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t5, 10, t6, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 10);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 4088);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB21:    *((unsigned int *)t4) = 1;
    goto LAB24;

LAB25:    xsi_set_current_line(69, ng0);
    t3 = (t0 + 3048);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB29;

LAB27:    if (*((unsigned int *)t7) == 0)
        goto LAB26;

LAB28:    t13 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t13) = 1;

LAB29:    t14 = (t0 + 3048);
    xsi_vlogvar_assign_value(t14, t4, 0, 0, 1);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 4088);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB30;
    goto LAB1;

LAB26:    *((unsigned int *)t4) = 1;
    goto LAB29;

LAB30:    xsi_set_current_line(73, ng0);
    t3 = (t0 + 3048);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB34;

LAB32:    if (*((unsigned int *)t7) == 0)
        goto LAB31;

LAB33:    t13 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t13) = 1;

LAB34:    t14 = (t0 + 3048);
    xsi_vlogvar_assign_value(t14, t4, 0, 0, 1);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t5, 10, t6, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 10);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 4088);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB31:    *((unsigned int *)t4) = 1;
    goto LAB34;

LAB35:    xsi_set_current_line(77, ng0);
    t3 = (t0 + 3048);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB39;

LAB37:    if (*((unsigned int *)t7) == 0)
        goto LAB36;

LAB38:    t13 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t13) = 1;

LAB39:    t14 = (t0 + 3048);
    xsi_vlogvar_assign_value(t14, t4, 0, 0, 1);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 4088);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB40;
    goto LAB1;

LAB36:    *((unsigned int *)t4) = 1;
    goto LAB39;

LAB40:    xsi_set_current_line(81, ng0);
    t3 = (t0 + 3048);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB44;

LAB42:    if (*((unsigned int *)t7) == 0)
        goto LAB41;

LAB43:    t13 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t13) = 1;

LAB44:    t14 = (t0 + 3048);
    xsi_vlogvar_assign_value(t14, t4, 0, 0, 1);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t5, 10, t6, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 10);
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 4088);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB45;
    goto LAB1;

LAB41:    *((unsigned int *)t4) = 1;
    goto LAB44;

LAB45:    xsi_set_current_line(85, ng0);
    t3 = (t0 + 3048);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB49;

LAB47:    if (*((unsigned int *)t7) == 0)
        goto LAB46;

LAB48:    t13 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t13) = 1;

LAB49:    t14 = (t0 + 3048);
    xsi_vlogvar_assign_value(t14, t4, 0, 0, 1);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 4088);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB50;
    goto LAB1;

LAB46:    *((unsigned int *)t4) = 1;
    goto LAB49;

LAB50:    xsi_set_current_line(89, ng0);
    t3 = (t0 + 3048);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB54;

LAB52:    if (*((unsigned int *)t7) == 0)
        goto LAB51;

LAB53:    t13 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t13) = 1;

LAB54:    t14 = (t0 + 3048);
    xsi_vlogvar_assign_value(t14, t4, 0, 0, 1);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t5, 10, t6, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 10);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 4088);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB55;
    goto LAB1;

LAB51:    *((unsigned int *)t4) = 1;
    goto LAB54;

LAB55:    xsi_set_current_line(93, ng0);
    t3 = (t0 + 3048);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB59;

LAB57:    if (*((unsigned int *)t7) == 0)
        goto LAB56;

LAB58:    t13 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t13) = 1;

LAB59:    t14 = (t0 + 3048);
    xsi_vlogvar_assign_value(t14, t4, 0, 0, 1);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 4088);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB60;
    goto LAB1;

LAB56:    *((unsigned int *)t4) = 1;
    goto LAB59;

LAB60:    xsi_set_current_line(97, ng0);
    t3 = (t0 + 3048);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB64;

LAB62:    if (*((unsigned int *)t7) == 0)
        goto LAB61;

LAB63:    t13 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t13) = 1;

LAB64:    t14 = (t0 + 3048);
    xsi_vlogvar_assign_value(t14, t4, 0, 0, 1);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t5, 10, t6, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 10);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 4088);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB65;
    goto LAB1;

LAB61:    *((unsigned int *)t4) = 1;
    goto LAB64;

LAB65:    xsi_set_current_line(101, ng0);
    t3 = (t0 + 3048);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB69;

LAB67:    if (*((unsigned int *)t7) == 0)
        goto LAB66;

LAB68:    t13 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t13) = 1;

LAB69:    t14 = (t0 + 3048);
    xsi_vlogvar_assign_value(t14, t4, 0, 0, 1);
    goto LAB1;

LAB66:    *((unsigned int *)t4) = 1;
    goto LAB69;

}


extern void work_m_05543406058851719206_1146331481_init()
{
	static char *pe[] = {(void *)Initial_44_0};
	xsi_register_didat("work_m_05543406058851719206_1146331481", "isim/whatever_whatever_sch_tb_isim_beh.exe.sim/work/m_05543406058851719206_1146331481.didat");
	xsi_register_executes(pe);
}
