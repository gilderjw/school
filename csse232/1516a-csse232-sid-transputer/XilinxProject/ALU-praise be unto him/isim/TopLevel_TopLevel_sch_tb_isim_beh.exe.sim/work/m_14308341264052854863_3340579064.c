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
static const char *ng0 = "/home/gilderjw/Documents/csse232/1516a-csse232-sid-transputer/XilinxProject/ALU-praise be unto him/ZE44.v";
static unsigned int ng1[] = {0U, 0U};



static void Always_25_0(char *t0)
{
    char t7[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;

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
LAB4:    xsi_set_current_line(26, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 1048U);
    t6 = *((char **)t5);
    memset(t7, 0, 8);
    xsi_vlog_unsigned_add(t7, 16, t4, 16, t6, 12);
    t5 = (t0 + 1448);
    xsi_vlogvar_assign_value(t5, t7, 0, 0, 16);
    goto LAB2;

}


extern void work_m_14308341264052854863_3340579064_init()
{
	static char *pe[] = {(void *)Always_25_0};
	xsi_register_didat("work_m_14308341264052854863_3340579064", "isim/TopLevel_TopLevel_sch_tb_isim_beh.exe.sim/work/m_14308341264052854863_3340579064.didat");
	xsi_register_executes(pe);
}
