/// \file F28x_DeviceConfig.h
///         Include device specific description for F2837xD dual-CPU platform
#ifndef _F28x_DeviceConfig_h_
#define _F28x_DeviceConfig_h_

#define DEV_CPU_MODEL  283882

// Also don't forget DEVICE_SYSCLK_FREQ
#define CPU_CLK_MHZ 180  // CPU frequency MHz
#define CPU_CLK_HZ (CPU_CLK_MHZ * 1000000L)


#define CPU2    1

#include "../F2838x_utils/f2838x_device.h"
#include "..\F2838x_utils\F2838x_Gpio_defines.h"
#include "..\F2838x_driverlib\driverlib\device.h"

#undef ARCHITECTURE_D


#endif
