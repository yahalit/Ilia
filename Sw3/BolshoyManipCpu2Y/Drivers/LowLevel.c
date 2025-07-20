#include "..\Application\StructDef2.h"



/**
 * \brief Test if air pumps are commanded to On
 *
 * \return 1: On, 0: At least one is off
 */
short unsigned ArePumpsOn (void)
{
    return M2S.Items.ActCmd.cmd.PumpsOn  ;
}

