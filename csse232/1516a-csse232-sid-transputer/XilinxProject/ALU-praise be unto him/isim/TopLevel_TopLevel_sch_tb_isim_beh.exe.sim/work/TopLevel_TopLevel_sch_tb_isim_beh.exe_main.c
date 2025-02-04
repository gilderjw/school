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
    unisims_ver_m_12026317184123736351_2607553651_init();
    work_m_01793780620593230693_3081811108_init();
    unisims_ver_m_06312903236042698045_1759035934_init();
    work_m_09032283207816626789_0058029152_init();
    work_m_14413510805171782730_3083995004_init();
    work_m_17238245956644110520_3480416734_init();
    work_m_08042160736887026964_2124437686_init();
    work_m_02406849961835931893_0494851901_init();
    work_m_08076745090970056085_2693229063_init();
    work_m_01048260474528369143_2770260970_init();
    work_m_15562610847871770948_3466483543_init();
    work_m_14308341264052854863_3340579064_init();
    work_m_08642060097367970403_0833183191_init();
    work_m_07162475545391502685_3205580496_init();
    work_m_09544760100532140914_3674772129_init();
    xilinxcorelib_ver_m_04284627112054182733_1760671502_init();
    xilinxcorelib_ver_m_04284627112054182733_3608291821_init();
    xilinxcorelib_ver_m_18166792875774041790_3412580636_init();
    xilinxcorelib_ver_m_17738287534884592592_0674031292_init();
    xilinxcorelib_ver_m_10066368518302646626_4113550910_init();
    work_m_10431123694831851113_2381739659_init();
    work_m_01818384884441258024_3176638276_init();
    unisims_ver_m_15469197826776211918_2316096324_init();
    unisims_ver_m_16176787317968387356_0970595058_init();
    unisims_ver_m_06182246103934498000_3367321443_init();
    work_m_16178480396172948278_1984859049_init();
    work_m_11229153161977838345_0886308060_init();
    unisims_ver_m_11509967902446100633_1108579578_init();
    unisims_ver_m_06313320939402315622_1593237687_init();
    work_m_03969451038672044458_0881987840_init();
    work_m_02918970492083635771_2201100583_init();
    work_m_09403067576852400375_3915170638_init();
    work_m_06889838415159127741_1806105878_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_06889838415159127741_1806105878");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
