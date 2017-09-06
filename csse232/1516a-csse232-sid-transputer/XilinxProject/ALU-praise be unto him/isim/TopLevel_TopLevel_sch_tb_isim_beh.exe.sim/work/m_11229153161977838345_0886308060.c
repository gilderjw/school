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
static const char *ng0 = "/home/gilderjw/Documents/csse232/1516a-csse232-sid-transputer/XilinxProject/ALU-praise be unto him/ALU.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {4U, 0U};
static unsigned int ng7[] = {5U, 0U};
static int ng8[] = {1, 0};



static void Always_34_0(char *t0)
{
    char t8[8];
    char t42[8];
    char t43[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    int t32;
    unsigned int t33;
    int t34;
    int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t44;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;

LAB0:    t1 = (t0 + 3480U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 3800);
    *((int *)t2) = 1;
    t3 = (t0 + 3512);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(35, ng0);

LAB5:    xsi_set_current_line(37, ng0);
    t4 = (t0 + 1928);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    t9 = (t6 + 4);
    t10 = (t7 + 4);
    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t9);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t10);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB9;

LAB6:    if (t20 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t8) = 1;

LAB9:    t24 = (t8 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t8);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB10;

LAB11:
LAB12:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);

LAB14:    t2 = ((char*)((ng2)));
    t32 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t32 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng3)));
    t32 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t32 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng4)));
    t32 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t32 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng5)));
    t32 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t32 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng6)));
    t32 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t32 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng7)));
    t32 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t32 == 1)
        goto LAB25;

LAB26:
LAB28:
LAB27:    xsi_set_current_line(57, ng0);

LAB47:    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng8)));
    t4 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);

LAB29:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2568);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t42, 0, 8);
    t6 = (t42 + 4);
    t7 = (t5 + 4);
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 0);
    t13 = (t12 & 1);
    *((unsigned int *)t42) = t13;
    t14 = *((unsigned int *)t7);
    t15 = (t14 >> 0);
    t16 = (t15 & 1);
    *((unsigned int *)t6) = t16;
    memset(t8, 0, 8);
    t9 = (t42 + 4);
    t17 = *((unsigned int *)t9);
    t18 = (~(t17));
    t19 = *((unsigned int *)t42);
    t20 = (t19 & t18);
    t21 = (t20 & 1U);
    if (t21 != 0)
        goto LAB51;

LAB49:    if (*((unsigned int *)t9) == 0)
        goto LAB48;

LAB50:    t10 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t10) = 1;

LAB51:    t23 = ((char*)((ng3)));
    t22 = *((unsigned int *)t8);
    t25 = *((unsigned int *)t23);
    t26 = (t22 & t25);
    *((unsigned int *)t43) = t26;
    t24 = (t8 + 4);
    t30 = (t23 + 4);
    t31 = (t43 + 4);
    t27 = *((unsigned int *)t24);
    t28 = *((unsigned int *)t30);
    t29 = (t27 | t28);
    *((unsigned int *)t31) = t29;
    t33 = *((unsigned int *)t31);
    t36 = (t33 != 0);
    if (t36 == 1)
        goto LAB52;

LAB53:
LAB54:    t57 = (t0 + 2248);
    xsi_vlogvar_assign_value(t57, t43, 0, 0, 1);
    goto LAB2;

LAB8:    t23 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(37, ng0);

LAB13:    xsi_set_current_line(38, ng0);
    t30 = ((char*)((ng1)));
    t31 = (t0 + 2568);
    xsi_vlogvar_assign_value(t31, t30, 0, 0, 2);
    goto LAB12;

LAB15:    xsi_set_current_line(41, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t6 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 17, t5, 16, t6, 16);
    t4 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t4, t8, 0, 0, 16, 0LL);
    t7 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t7, t8, 16, 0, 1, 0LL);
    goto LAB29;

LAB17:    xsi_set_current_line(42, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t6 = *((char **)t4);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t6);
    t13 = (t11 & t12);
    *((unsigned int *)t8) = t13;
    t4 = (t5 + 4);
    t7 = (t6 + 4);
    t9 = (t8 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t7);
    t16 = (t14 | t15);
    *((unsigned int *)t9) = t16;
    t17 = *((unsigned int *)t9);
    t18 = (t17 != 0);
    if (t18 == 1)
        goto LAB30;

LAB31:
LAB32:    t24 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t24, t8, 0, 0, 16, 0LL);
    goto LAB29;

LAB19:    xsi_set_current_line(43, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t6 = *((char **)t4);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t6);
    t13 = (t11 | t12);
    *((unsigned int *)t8) = t13;
    t4 = (t5 + 4);
    t7 = (t6 + 4);
    t9 = (t8 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t7);
    t16 = (t14 | t15);
    *((unsigned int *)t9) = t16;
    t17 = *((unsigned int *)t9);
    t18 = (t17 != 0);
    if (t18 == 1)
        goto LAB33;

LAB34:
LAB35:    t24 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t24, t8, 0, 0, 16, 0LL);
    goto LAB29;

LAB21:    xsi_set_current_line(44, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t6 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_lshift(t8, 16, t5, 16, t6, 16);
    t4 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t4, t8, 0, 0, 16, 0LL);
    goto LAB29;

LAB23:    xsi_set_current_line(45, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t6 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_rshift(t8, 16, t5, 16, t6, 16);
    t4 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t4, t8, 0, 0, 16, 0LL);
    goto LAB29;

LAB25:    xsi_set_current_line(46, ng0);

LAB36:    xsi_set_current_line(47, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t6 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_minus(t8, 16, t5, 16, t6, 16);
    t4 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t4, t8, 0, 0, 16, 0LL);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    t2 = (t0 + 1208U);
    t5 = *((char **)t2);
    memset(t8, 0, 8);
    t2 = (t4 + 4);
    if (*((unsigned int *)t2) != 0)
        goto LAB38;

LAB37:    t6 = (t5 + 4);
    if (*((unsigned int *)t6) != 0)
        goto LAB38;

LAB41:    if (*((unsigned int *)t4) > *((unsigned int *)t5))
        goto LAB39;

LAB40:    t9 = (t8 + 4);
    t11 = *((unsigned int *)t9);
    t12 = (~(t11));
    t13 = *((unsigned int *)t8);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB42;

LAB43:    xsi_set_current_line(53, ng0);

LAB46:    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng8)));
    memset(t8, 0, 8);
    xsi_vlog_signed_unary_minus(t8, 32, t2, 32);
    t4 = (t0 + 2568);
    xsi_vlogvar_assign_value(t4, t8, 0, 0, 2);

LAB44:    goto LAB29;

LAB30:    t19 = *((unsigned int *)t8);
    t20 = *((unsigned int *)t9);
    *((unsigned int *)t8) = (t19 | t20);
    t10 = (t5 + 4);
    t23 = (t6 + 4);
    t21 = *((unsigned int *)t5);
    t22 = (~(t21));
    t25 = *((unsigned int *)t10);
    t26 = (~(t25));
    t27 = *((unsigned int *)t6);
    t28 = (~(t27));
    t29 = *((unsigned int *)t23);
    t33 = (~(t29));
    t34 = (t22 & t26);
    t35 = (t28 & t33);
    t36 = (~(t34));
    t37 = (~(t35));
    t38 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t38 & t36);
    t39 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t39 & t37);
    t40 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t40 & t36);
    t41 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t41 & t37);
    goto LAB32;

LAB33:    t19 = *((unsigned int *)t8);
    t20 = *((unsigned int *)t9);
    *((unsigned int *)t8) = (t19 | t20);
    t10 = (t5 + 4);
    t23 = (t6 + 4);
    t21 = *((unsigned int *)t10);
    t22 = (~(t21));
    t25 = *((unsigned int *)t5);
    t34 = (t25 & t22);
    t26 = *((unsigned int *)t23);
    t27 = (~(t26));
    t28 = *((unsigned int *)t6);
    t35 = (t28 & t27);
    t29 = (~(t34));
    t33 = (~(t35));
    t36 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t36 & t29);
    t37 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t37 & t33);
    goto LAB35;

LAB38:    t7 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB40;

LAB39:    *((unsigned int *)t8) = 1;
    goto LAB40;

LAB42:    xsi_set_current_line(49, ng0);

LAB45:    xsi_set_current_line(50, ng0);
    t10 = ((char*)((ng8)));
    t23 = (t0 + 2568);
    xsi_vlogvar_assign_value(t23, t10, 0, 0, 2);
    goto LAB44;

LAB48:    *((unsigned int *)t8) = 1;
    goto LAB51;

LAB52:    t37 = *((unsigned int *)t43);
    t38 = *((unsigned int *)t31);
    *((unsigned int *)t43) = (t37 | t38);
    t44 = (t8 + 4);
    t45 = (t23 + 4);
    t39 = *((unsigned int *)t8);
    t40 = (~(t39));
    t41 = *((unsigned int *)t44);
    t46 = (~(t41));
    t47 = *((unsigned int *)t23);
    t48 = (~(t47));
    t49 = *((unsigned int *)t45);
    t50 = (~(t49));
    t32 = (t40 & t46);
    t34 = (t48 & t50);
    t51 = (~(t32));
    t52 = (~(t34));
    t53 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t53 & t51);
    t54 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t54 & t52);
    t55 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t55 & t51);
    t56 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t56 & t52);
    goto LAB54;

}


extern void work_m_11229153161977838345_0886308060_init()
{
	static char *pe[] = {(void *)Always_34_0};
	xsi_register_didat("work_m_11229153161977838345_0886308060", "isim/TopLevel_TopLevel_sch_tb_isim_beh.exe.sim/work/m_11229153161977838345_0886308060.didat");
	xsi_register_executes(pe);
}
