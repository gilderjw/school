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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    xilinxcorelib_ver_m_04284627112054182733_3923349882_init();
    xilinxcorelib_ver_m_18166792875774041790_3040874866_init();
    xilinxcorelib_ver_m_17738287534884592592_0336598185_init();
    xilinxcorelib_ver_m_03112275034362415534_1981147728_init();
    work_m_14056882636803624207_2343928734_init();
    work_m_09691409806825816698_1886472792_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_09691409806825816698_1886472792");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
