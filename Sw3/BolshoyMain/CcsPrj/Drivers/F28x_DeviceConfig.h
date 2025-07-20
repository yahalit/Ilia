/// \file F28x_DeviceConfig.h for CPU1
///         Include device specific description for F2837xD dual-CPU platform
#ifndef _F28x_DeviceConfig_h_
#define _F28x_DeviceConfig_h_

#define CPU_TYPE            283882

#define XTAL_FRQ_MHZ 20

// Also don't forget DEVICE_SYSCLK_FREQ

#define CPU_CLK_MHZ 180  // CPU frequency MHz
#define CPU_CLK_HZ  (CPU_CLK_MHZ*1000000L)
#define PWM_CLK_MHZ (CPU_CLK_MHZ/2)  // PWM frequency MHz


#define CPU1    1 // selector: this firmware is hosted on  CPU1

#include "..\F2838x_utils\f2838x_device.h"
#include "..\F2838x_utils\F2838x_Gpio_defines.h"
#include "..\F2838x_driverlib\driverlib\device.h"



#endif
