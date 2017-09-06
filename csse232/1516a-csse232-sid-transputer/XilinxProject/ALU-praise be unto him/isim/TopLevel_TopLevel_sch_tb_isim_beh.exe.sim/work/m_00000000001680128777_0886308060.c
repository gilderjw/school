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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/suchyb/Desktop/CompArch1/final project stuff/XilinxProject/ALU-praise be unto him/ALU.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};
static unsigned int ng5[] = {4U, 0U};
static unsigned int ng6[] = {5U, 0U};
static int ng7[] = {0, 0};
static int ng8[] = {1, 0};
static unsigned int ng9[] = {6U, 0U};
static unsigned int ng10[] = {7U, 0U};
static unsigned int ng11[] = {8U, 0U};
static unsigned int ng12[] = {9U, 0U};
static unsigned int ng13[] = {10U, 0U};
static unsigned int ng14[] = {11U, 0U};
static unsigned int ng15[] = {12U, 0U};
static unsigned int ng16[] = {13U, 0U};
static unsigned int ng17[] = {14U, 0U};
static unsigned int ng18[] = {15U, 0U};
static const char *ng19 = "ERROR IN ALU(praise be unto him)";



static void Always_32_0(char *t0)
{
    char t10[8];
    char t40[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
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
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t41;
    int t42;
    int t43;
    int t44;
    int t45;
    int t46;
    int t47;
    int t48;
    char *t49;
    char *t50;

LAB0:    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 3808);
    *((int *)t2) = 1;
    t3 = (t0 + 3520);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(33, ng0);

LAB5:    xsi_set_current_line(34, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t4, 4);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB19;

LAB20:    t3 = ((char*)((ng10)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 4, t3, 4);
    if (t31 == 1)
        goto LAB21;

LAB22:    t4 = ((char*)((ng11)));
    t32 = xsi_vlog_unsigned_case_compare(t5, 4, t4, 4);
    if (t32 == 1)
        goto LAB23;

LAB24:    t7 = ((char*)((ng12)));
    t42 = xsi_vlog_unsigned_case_compare(t5, 4, t7, 4);
    if (t42 == 1)
        goto LAB25;

LAB26:    t8 = ((char*)((ng13)));
    t43 = xsi_vlog_unsigned_case_compare(t5, 4, t8, 4);
    if (t43 == 1)
        goto LAB27;

LAB28:    t9 = ((char*)((ng14)));
    t44 = xsi_vlog_unsigned_case_compare(t5, 4, t9, 4);
    if (t44 == 1)
        goto LAB29;

LAB30:    t11 = ((char*)((ng15)));
    t45 = xsi_vlog_unsigned_case_compare(t5, 4, t11, 4);
    if (t45 == 1)
        goto LAB31;

LAB32:    t22 = ((char*)((ng16)));
    t46 = xsi_vlog_unsigned_case_compare(t5, 4, t22, 4);
    if (t46 == 1)
        goto LAB33;

LAB34:    t39 = ((char*)((ng17)));
    t47 = xsi_vlog_unsigned_case_compare(t5, 4, t39, 4);
    if (t47 == 1)
        goto LAB35;

LAB36:    t41 = ((char*)((ng18)));
    t48 = xsi_vlog_unsigned_case_compare(t5, 4, t41, 4);
    if (t48 == 1)
        goto LAB37;

LAB38:
LAB40:
LAB39:    xsi_set_current_line(66, ng0);

LAB67:    xsi_set_current_line(66, ng0);
    t49 = ((char*)((ng8)));
    t50 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t50, t49, 0, 0, 1, 0LL);
    xsi_set_current_line(66, ng0);
    xsi_vlogfile_write(1, 0, 0, ng19, 1, t0);

LAB41:    goto LAB2;

LAB7:    xsi_set_current_line(35, ng0);
    t7 = (t0 + 1048U);
    t8 = *((char **)t7);
    t7 = (t0 + 1208U);
    t9 = *((char **)t7);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_add(t10, 17, t8, 16, t9, 16);
    t7 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t7, t10, 0, 0, 16, 0LL);
    t11 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t11, t10, 16, 0, 1, 0LL);
    goto LAB41;

LAB9:    xsi_set_current_line(36, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t7);
    t14 = (t12 & t13);
    *((unsigned int *)t10) = t14;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t9 = (t10 + 4);
    t15 = *((unsigned int *)t3);
    t16 = *((unsigned int *)t8);
    t17 = (t15 | t16);
    *((unsigned int *)t9) = t17;
    t18 = *((unsigned int *)t9);
    t19 = (t18 != 0);
    if (t19 == 1)
        goto LAB42;

LAB43:
LAB44:    t39 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t39, t10, 0, 0, 16, 0LL);
    goto LAB41;

LAB11:    xsi_set_current_line(37, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t7);
    t14 = (t12 | t13);
    *((unsigned int *)t10) = t14;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t9 = (t10 + 4);
    t15 = *((unsigned int *)t3);
    t16 = *((unsigned int *)t8);
    t17 = (t15 | t16);
    *((unsigned int *)t9) = t17;
    t18 = *((unsigned int *)t9);
    t19 = (t18 != 0);
    if (t19 == 1)
        goto LAB45;

LAB46:
LAB47:    t39 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t39, t10, 0, 0, 16, 0LL);
    goto LAB41;

LAB13:    xsi_set_current_line(38, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_lshift(t10, 16, t4, 16, t7, 16);
    t3 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t3, t10, 0, 0, 16, 0LL);
    goto LAB41;

LAB15:    xsi_set_current_line(39, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_rshift(t10, 16, t4, 16, t7, 16);
    t3 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t3, t10, 0, 0, 16, 0LL);
    goto LAB41;

LAB17:    xsi_set_current_line(40, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_minus(t10, 32, t4, 16, t7, 16);
    t3 = ((char*)((ng7)));
    memset(t40, 0, 8);
    t8 = (t10 + 4);
    t9 = (t3 + 4);
    t12 = *((unsigned int *)t10);
    t13 = *((unsigned int *)t3);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t8);
    t16 = *((unsigned int *)t9);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t8);
    t20 = *((unsigned int *)t9);
    t21 = (t19 | t20);
    t23 = (~(t21));
    t24 = (t18 & t23);
    if (t24 != 0)
        goto LAB51;

LAB48:    if (t21 != 0)
        goto LAB50;

LAB49:    *((unsigned int *)t40) = 1;

LAB51:    t22 = (t40 + 4);
    t25 = *((unsigned int *)t22);
    t26 = (~(t25));
    t27 = *((unsigned int *)t40);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB52;

LAB53:    xsi_set_current_line(45, ng0);

LAB56:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_minus(t10, 16, t3, 16, t4, 16);
    t2 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t2, t10, 0, 0, 16, 0LL);
    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    memset(t10, 0, 8);
    t2 = (t3 + 4);
    if (*((unsigned int *)t2) != 0)
        goto LAB58;

LAB57:    t7 = (t4 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB58;

LAB61:    if (*((unsigned int *)t3) > *((unsigned int *)t4))
        goto LAB59;

LAB60:    t9 = (t10 + 4);
    t12 = *((unsigned int *)t9);
    t13 = (~(t12));
    t14 = *((unsigned int *)t10);
    t15 = (t14 & t13);
    t16 = (t15 != 0);
    if (t16 > 0)
        goto LAB62;

LAB63:    xsi_set_current_line(52, ng0);

LAB66:    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng8)));
    memset(t10, 0, 8);
    xsi_vlog_signed_unary_minus(t10, 32, t2, 32);
    t3 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t3, t10, 0, 0, 2, 0LL);

LAB64:
LAB54:    goto LAB41;

LAB19:    goto LAB41;

LAB21:    goto LAB41;

LAB23:    goto LAB41;

LAB25:    goto LAB41;

LAB27:    goto LAB41;

LAB29:    goto LAB41;

LAB31:    goto LAB41;

LAB33:    goto LAB41;

LAB35:    goto LAB41;

LAB37:    goto LAB41;

LAB42:    t20 = *((unsigned int *)t10);
    t21 = *((unsigned int *)t9);
    *((unsigned int *)t10) = (t20 | t21);
    t11 = (t4 + 4);
    t22 = (t7 + 4);
    t23 = *((unsigned int *)t4);
    t24 = (~(t23));
    t25 = *((unsigned int *)t11);
    t26 = (~(t25));
    t27 = *((unsigned int *)t7);
    t28 = (~(t27));
    t29 = *((unsigned int *)t22);
    t30 = (~(t29));
    t31 = (t24 & t26);
    t32 = (t28 & t30);
    t33 = (~(t31));
    t34 = (~(t32));
    t35 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t35 & t33);
    t36 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t36 & t34);
    t37 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t37 & t33);
    t38 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t38 & t34);
    goto LAB44;

LAB45:    t20 = *((unsigned int *)t10);
    t21 = *((unsigned int *)t9);
    *((unsigned int *)t10) = (t20 | t21);
    t11 = (t4 + 4);
    t22 = (t7 + 4);
    t23 = *((unsigned int *)t11);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t31 = (t25 & t24);
    t26 = *((unsigned int *)t22);
    t27 = (~(t26));
    t28 = *((unsigned int *)t7);
    t32 = (t28 & t27);
    t29 = (~(t31));
    t30 = (~(t32));
    t33 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t33 & t29);
    t34 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t34 & t30);
    goto LAB47;

LAB50:    t11 = (t40 + 4);
    *((unsigned int *)t40) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB51;

LAB52:    xsi_set_current_line(41, ng0);

LAB55:    xsi_set_current_line(42, ng0);
    t39 = ((char*)((ng1)));
    t41 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t41, t39, 0, 0, 16, 0LL);
    xsi_set_current_line(42, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(42, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB54;

LAB58:    t8 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB60;

LAB59:    *((unsigned int *)t10) = 1;
    goto LAB60;

LAB62:    xsi_set_current_line(48, ng0);

LAB65:    xsi_set_current_line(49, ng0);
    t11 = ((char*)((ng8)));
    t22 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t22, t11, 0, 0, 2, 0LL);
    goto LAB64;

}


extern void work_m_00000000001680128777_0886308060_init()
{
	static char *pe[] = {(void *)Always_32_0};
	xsi_register_didat("work_m_00000000001680128777_0886308060", "isim/TopLevel_TopLevel_sch_tb_isim_beh.exe.sim/work/m_00000000001680128777_0886308060.didat");
	xsi_register_executes(pe);
}
