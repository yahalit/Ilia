/*
 * DynamixelProgTables.h
 *
 *  Created on: Apr 22, 2022
 *      Author: User
 */

#ifndef APPLICATION_DYNAMIXELPROGTABLES_H_
#define APPLICATION_DYNAMIXELPROGTABLES_H_






// {170,2,63,1,1}  , // Shutdown cant be mapped cause its eeprom area





// offset 562 and higher are in RAM

//Parameters should be equivalent to those configured in StructDef2.h
// offset 64 and higher are in RAM
const struct CDynControlTableLine Dyn12SetupSCARA[] =
{
        {64,1,0,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Torque enable
        {64,1,0,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Torque enable

        {0,2,1020,0,AXIS_ID_LSTOP,TARGET_TYPE_XM430} , // Model number
        {9,1,250,0,AXIS_ID_LSTOP,TARGET_TYPE_XM430} ,  // Return time delay
        {10,1,0,0,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Drive mode, Positive is CCW
        {11,1,3,0,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Operation mode, should be 3 (position)
        {20,4,0,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Home position
        {24,4,25,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Moving threshold
        {38,2,1193,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Current limit
        {40,4,10000,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Acceleration limit
        {44,4,700,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Speed limit
        {48,4,3000,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Max position limit
        {52,4,0,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Min position limit
        {108,4,10000,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Profile Acceleration
        {112,4,500,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Profile Speed
        {168,2,64,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Torque enabled (indirect address 1)
        {170,2,132,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Position byte 0
        {172,2,133,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Position byte 1
        {174,2,134,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Position byte 2
        {176,2,135,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Position byte 3
        {178,2,128,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Speed byte 0
        {180,2,129,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Speed byte 1
        {182,2,130,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Speed byte 2
        {184,2,131,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Speed byte 3
        {186,2,126,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Current byte 0
        {188,2,127,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Current byte 1 (indirect address 12)
        {190,2,122,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Moving
        {192,2,70,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Moving status

        {0,2,1020,0,AXIS_ID_RSTOP,TARGET_TYPE_XM430} , // Model number
        {9,1,250,0,AXIS_ID_RSTOP,TARGET_TYPE_XM430} ,  // Return time delay
        {10,1,0,0,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Drive mode, Positive is CCW
        {11,1,3,0,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Operation mode, should be 3 (position)
        {20,4,0,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Home position
        {24,4,25,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Moving threshold
        {38,2,1193,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Current limit
        {40,4,20000,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Acceleration limit
        {44,4,1000,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Speed limit
        {48,4,3000,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Max position limit
        {52,4,0,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Min position limit
        {108,4,10000,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Profile Acceleration
        {112,4,500,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Profile Speed
        {168,2,64,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Torque enabled (indirect address 1)
        {170,2,132,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Position byte 0
        {172,2,133,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Position byte 1
        {174,2,134,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Position byte 2
        {176,2,135,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Position byte 3
        {178,2,128,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Speed byte 0
        {180,2,129,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Speed byte 1
        {182,2,130,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Speed byte 2
        {184,2,131,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Speed byte 3
        {186,2,126,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Current byte 0
        {188,2,127,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Current byte 1 (indirect address 12)
        {190,2,122,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Moving
        {192,2,70,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}   , // Error status
};

const short unsigned nDyn12SetupSCARA = sizeof(Dyn12SetupSCARA) / sizeof( struct CDynControlTableLine ) ;

///        {0xFFFF,0xffff,0xffff,0xffff,0,0}     // Torque enable (indirect address 25)




const struct CDynControlTableLine Dyn24SetupSCARA[] =
{
         {0,2,0,0,AXIS_ID_SHOULDER,TARGET_TYPE_ANY}  , // GET ID
         {0,2,0,0,AXIS_ID_ELBOW,TARGET_TYPE_ANY}  , // GET ID
         {0,2,0,0,AXIS_ID_WRIST,TARGET_TYPE_ANY}  , // GET ID

         {562,1,0,1,AXIS_ID_SHOULDER,TARGET_TYPE_LP}  , // Torque enable
         {562,1,0,1,AXIS_ID_ELBOW,TARGET_TYPE_LP}  , // Torque enable
         {562,1,0,1,AXIS_ID_WRIST,TARGET_TYPE_LP}  , // Torque enable
        {9,1,250,0,AXIS_ID_SHOULDER,TARGET_TYPE_LP} ,  // Return time delay
        {11,1,1,0,AXIS_ID_SHOULDER,TARGET_TYPE_LP}  , // Operation mode,  (1=speed, 3 = position,speed,and torque)
        {17,4,25,1,AXIS_ID_SHOULDER,TARGET_TYPE_LP}  , // Moving threshold
        {26,4,80000,1,AXIS_ID_SHOULDER,TARGET_TYPE_LP}  , // Acceleration limit
        {30,2,250,1,AXIS_ID_SHOULDER,TARGET_TYPE_LP}  , // Torque limit
        {32,4,20000,1,AXIS_ID_SHOULDER,TARGET_TYPE_LP}  , // Speed limit
        {36,4,250000,1,AXIS_ID_SHOULDER,TARGET_TYPE_LP}  , // Max position limit
        {40,4,-250000,1,AXIS_ID_SHOULDER,TARGET_TYPE_LP}  , // Min position limit
        {49,2,562,1,AXIS_ID_SHOULDER,TARGET_TYPE_LP}  , // Torque enabled (indirect address 1)
        {51,2,611,1,AXIS_ID_SHOULDER,TARGET_TYPE_LP}  , // Position byte 0
        {53,2,612,1,AXIS_ID_SHOULDER,TARGET_TYPE_LP}  , // Position byte 1
        {55,2,613,1,AXIS_ID_SHOULDER,TARGET_TYPE_LP}  , // Position byte 2
        {57,2,614,1,AXIS_ID_SHOULDER,TARGET_TYPE_LP}  , // Position byte 3
        {59,2,615,1,AXIS_ID_SHOULDER,TARGET_TYPE_LP}  , // Speed byte 0
        {61,2,616,1,AXIS_ID_SHOULDER,TARGET_TYPE_LP}  , // Speed byte 1
        {63,2,617,1,AXIS_ID_SHOULDER,TARGET_TYPE_LP}  , // Speed byte 2
        {65,2,618,1,AXIS_ID_SHOULDER,TARGET_TYPE_LP}  , // Speed byte 3
        {67,2,621,1,AXIS_ID_SHOULDER,TARGET_TYPE_LP}  , // Current byte 0
        {69,2,622,1,AXIS_ID_SHOULDER,TARGET_TYPE_LP}  , // Current byte 1
        {71,2,610,1,AXIS_ID_SHOULDER,TARGET_TYPE_LP}  , // Moving
        {73,2,892,1,AXIS_ID_SHOULDER,TARGET_TYPE_LP}  , // Error  (indirect address 13 )

        {512,1,0,1,AXIS_ID_SHOULDER,TARGET_TYPE_HP}  , // Torque enable
        {9,1,250,0,AXIS_ID_SHOULDER,TARGET_TYPE_HP} ,  // Return time delay
        {10,1,0,1,AXIS_ID_SHOULDER,TARGET_TYPE_HP} ,  // Drive mode
        {11,1,1,1,AXIS_ID_SHOULDER,TARGET_TYPE_HP} ,  // Operating mode = speed
        {20,4,0,1,AXIS_ID_SHOULDER,TARGET_TYPE_HP}  , // Home position
        {24,4,25,1,AXIS_ID_SHOULDER,TARGET_TYPE_HP}  , // Moving threshold
        {48,4,250000,1,AXIS_ID_SHOULDER,TARGET_TYPE_HP}  , // Max position limit
        {52,4,-250000,1,AXIS_ID_SHOULDER,TARGET_TYPE_HP}  , // Min position limit

        {38,2,(long)(5.0f/MAN_CUR_SCALE_HP),1,AXIS_ID_SHOULDER,TARGET_TYPE_HP}  , // Current limit
        {40,4,(long)(15.0f/MAN_ACC_SCALE_HP),1,AXIS_ID_SHOULDER,TARGET_TYPE_HP} ,  // Acceleration limit
        {44,4,(long)(2.5f/MAN_SPEED_SCALE_HP) ,1,AXIS_ID_SHOULDER,TARGET_TYPE_HP} ,  // Speed limit

        {168,2,512,1,AXIS_ID_SHOULDER,TARGET_TYPE_HP}  , // Torque enabled (indirect address 1)
        {170,2,580,1,AXIS_ID_SHOULDER,TARGET_TYPE_HP}  , // Position byte 0
        {172,2,581,1,AXIS_ID_SHOULDER,TARGET_TYPE_HP}  , // Position byte 1
        {174,2,582,1,AXIS_ID_SHOULDER,TARGET_TYPE_HP}  , // Position byte 2
        {176,2,583,1,AXIS_ID_SHOULDER,TARGET_TYPE_HP}  , // Position byte 3
        {178,2,576,1,AXIS_ID_SHOULDER,TARGET_TYPE_HP}  , // Speed byte 0
        {180,2,577,1,AXIS_ID_SHOULDER,TARGET_TYPE_HP}  , // Speed byte 1
        {182,2,578,1,AXIS_ID_SHOULDER,TARGET_TYPE_HP}  , // Speed byte 2
        {184,2,579,1,AXIS_ID_SHOULDER,TARGET_TYPE_HP}  , // Speed byte 3
        {186,2,574,1,AXIS_ID_SHOULDER,TARGET_TYPE_HP}  , // Current byte 0
        {188,2,575,1,AXIS_ID_SHOULDER,TARGET_TYPE_HP}  , // Current byte 1
        {190,2,571,1,AXIS_ID_SHOULDER,TARGET_TYPE_HP}  , // Moving
        {192,2,518,1,AXIS_ID_SHOULDER,TARGET_TYPE_HP}  , // Error  (indirect address 13 )


        {9,1,250,0,AXIS_ID_ELBOW,TARGET_TYPE_LP} ,  // Return time delay
        {11,1,1,0,AXIS_ID_ELBOW,TARGET_TYPE_LP}  , // Operation mode, should be 3 (speed)
        {17,4,25,1,AXIS_ID_ELBOW,TARGET_TYPE_LP}  , // Moving threshold
        {26,4,80000,1,AXIS_ID_ELBOW,TARGET_TYPE_LP}  , // Acceleration limit
        {30,2,250,1,AXIS_ID_ELBOW,TARGET_TYPE_LP}  , // Torque limit
        {32,4,20000,1,AXIS_ID_ELBOW,TARGET_TYPE_LP}  , // Speed limit
        {36,4,250000,1,AXIS_ID_ELBOW,TARGET_TYPE_LP}  , // Max position limit
        {40,4,-250000,1,AXIS_ID_ELBOW,TARGET_TYPE_LP}  , // Min position limit
        {49,2,562,1,AXIS_ID_ELBOW,TARGET_TYPE_LP}  , // Torque enabled
        {51,2,611,1,AXIS_ID_ELBOW,TARGET_TYPE_LP}  , // Position byte 0
        {53,2,612,1,AXIS_ID_ELBOW,TARGET_TYPE_LP}  , // Position byte 1
        {55,2,613,1,AXIS_ID_ELBOW,TARGET_TYPE_LP}  , // Position byte 2
        {57,2,614,1,AXIS_ID_ELBOW,TARGET_TYPE_LP}  , // Position byte 3
        {59,2,615,1,AXIS_ID_ELBOW,TARGET_TYPE_LP}  , // Speed byte 0
        {61,2,616,1,AXIS_ID_ELBOW,TARGET_TYPE_LP}  , // Speed byte 1
        {63,2,617,1,AXIS_ID_ELBOW,TARGET_TYPE_LP}  , // Speed byte 2
        {65,2,618,1,AXIS_ID_ELBOW,TARGET_TYPE_LP}  , // Speed byte 3
        {67,2,621,1,AXIS_ID_ELBOW,TARGET_TYPE_LP}  , // Current byte 0
        {69,2,622,1,AXIS_ID_ELBOW,TARGET_TYPE_LP}  , // Current byte 1
        {71,2,610,1,AXIS_ID_ELBOW,TARGET_TYPE_LP}  , // Moving
        {73,2,892,1,AXIS_ID_ELBOW,TARGET_TYPE_LP}  , // Error

        {512,1,0,1,AXIS_ID_ELBOW,TARGET_TYPE_HP}  , // Torque enable
        {9,1,250,0,AXIS_ID_ELBOW,TARGET_TYPE_HP} ,  // Return time delay
        {10,1,0,1,AXIS_ID_ELBOW,TARGET_TYPE_HP} ,  // Drive mode
        {11,1,1,1,AXIS_ID_ELBOW,TARGET_TYPE_HP} ,  // Operating mode = speed
        {20,4,0,1,AXIS_ID_ELBOW,TARGET_TYPE_HP}  , // Home position
        {24,4,25,1,AXIS_ID_ELBOW,TARGET_TYPE_HP}  , // Moving threshold
        {48,4,250000,1,AXIS_ID_ELBOW,TARGET_TYPE_HP}  , // Max position limit
        {52,4,-250000,1,AXIS_ID_ELBOW,TARGET_TYPE_HP}  , // Min position limit

        {38,2,(long)(5.0f/MAN_CUR_SCALE_HP),1,AXIS_ID_ELBOW,TARGET_TYPE_HP}  , // Current limit
        {40,4,(long)(15.0f/MAN_ACC_SCALE_HP),1,AXIS_ID_ELBOW,TARGET_TYPE_HP} ,  // Acceleration limit
        {44,4,(long)(2.5f/MAN_SPEED_SCALE_HP) ,1,AXIS_ID_ELBOW,TARGET_TYPE_HP} ,  // Speed limit

        {168,2,512,1,AXIS_ID_ELBOW,TARGET_TYPE_HP}  , // Torque enabled (indirect address 1)
        {170,2,580,1,AXIS_ID_ELBOW,TARGET_TYPE_HP}  , // Position byte 0
        {172,2,581,1,AXIS_ID_ELBOW,TARGET_TYPE_HP}  , // Position byte 1
        {174,2,582,1,AXIS_ID_ELBOW,TARGET_TYPE_HP}  , // Position byte 2
        {176,2,583,1,AXIS_ID_ELBOW,TARGET_TYPE_HP}  , // Position byte 3
        {178,2,576,1,AXIS_ID_ELBOW,TARGET_TYPE_HP}  , // Speed byte 0
        {180,2,577,1,AXIS_ID_ELBOW,TARGET_TYPE_HP}  , // Speed byte 1
        {182,2,578,1,AXIS_ID_ELBOW,TARGET_TYPE_HP}  , // Speed byte 2
        {184,2,579,1,AXIS_ID_ELBOW,TARGET_TYPE_HP}  , // Speed byte 3
        {186,2,574,1,AXIS_ID_ELBOW,TARGET_TYPE_HP}  , // Current byte 0
        {188,2,575,1,AXIS_ID_ELBOW,TARGET_TYPE_HP}  , // Current byte 1
        {190,2,571,1,AXIS_ID_ELBOW,TARGET_TYPE_HP}  , // Moving
        {192,2,518,1,AXIS_ID_ELBOW,TARGET_TYPE_HP}  , // Error  (indirect address 13 )


        {9,1,250,0,AXIS_ID_WRIST,TARGET_TYPE_LP} ,  // Return time delay
        {11,1,1,0,AXIS_ID_WRIST,TARGET_TYPE_LP}  , // Operation mode, should be 1(speed)
        {17,4,25,1,AXIS_ID_WRIST,TARGET_TYPE_LP}  , // Moving threshold
        {26,4,80000,1,AXIS_ID_WRIST,TARGET_TYPE_LP}  , // Acceleration limit
        {30,2,250,1,AXIS_ID_WRIST,TARGET_TYPE_LP}  , // Torque limit
        {32,4,42000,1,AXIS_ID_WRIST,TARGET_TYPE_LP}  , // Speed limit
        {36,4,250000,1,AXIS_ID_WRIST,TARGET_TYPE_LP}  , // Max position limit
        {40,4,-250000,1,AXIS_ID_WRIST,TARGET_TYPE_LP}  , // Min position limit
        {49,2,562,1,AXIS_ID_WRIST,TARGET_TYPE_LP}  , // Torque enabled
        {51,2,611,1,AXIS_ID_WRIST,TARGET_TYPE_LP}  , // Position byte 0
        {53,2,612,1,AXIS_ID_WRIST,TARGET_TYPE_LP}  , // Position byte 1
        {55,2,613,1,AXIS_ID_WRIST,TARGET_TYPE_LP}  , // Position byte 2
        {57,2,614,1,AXIS_ID_WRIST,TARGET_TYPE_LP}  , // Position byte 3
        {59,2,615,1,AXIS_ID_WRIST,TARGET_TYPE_LP}  , // Speed byte 0
        {61,2,616,1,AXIS_ID_WRIST,TARGET_TYPE_LP}  , // Speed byte 1
        {63,2,617,1,AXIS_ID_WRIST,TARGET_TYPE_LP}  , // Speed byte 2
        {65,2,618,1,AXIS_ID_WRIST,TARGET_TYPE_LP}  , // Speed byte 3
        {67,2,621,1,AXIS_ID_WRIST,TARGET_TYPE_LP}  , // Current byte 0
        {69,2,622,1,AXIS_ID_WRIST,TARGET_TYPE_LP}  , // Current byte 1
        {71,2,610,1,AXIS_ID_WRIST,TARGET_TYPE_LP}  , // Moving
        {73,2,892,1,AXIS_ID_WRIST,TARGET_TYPE_LP}  , // Error

        {512,1,0,1,AXIS_ID_WRIST,TARGET_TYPE_HP}  , // Torque enable
        {9,1,250,0,AXIS_ID_WRIST,TARGET_TYPE_HP} ,  // Return time delay
        {10,1,0,1,AXIS_ID_WRIST,TARGET_TYPE_HP} ,  // Drive mode
        {11,1,1,1,AXIS_ID_WRIST,TARGET_TYPE_HP} ,  // Operating mode = speed
        {20,4,0,1,AXIS_ID_WRIST,TARGET_TYPE_HP}  , // Home position
        {24,4,25,1,AXIS_ID_WRIST,TARGET_TYPE_HP}  , // Moving threshold
        {48,4,250000,1,AXIS_ID_WRIST,TARGET_TYPE_HP}  , // Max position limit
        {52,4,-250000,1,AXIS_ID_WRIST,TARGET_TYPE_HP}  , // Min position limit

        {38,2,(long)(5.0f/MAN_CUR_SCALE_HP),1,AXIS_ID_WRIST,TARGET_TYPE_HP}  , // Current limit
        {40,4,(long)(15.0f/MAN_ACC_SCALE_HP),1,AXIS_ID_WRIST,TARGET_TYPE_HP} ,  // Acceleration limit
        {44,4,(long)(2.5f/MAN_SPEED_SCALE_HP) ,1,AXIS_ID_WRIST,TARGET_TYPE_HP} ,  // Speed limit

        {168,2,512,1,AXIS_ID_WRIST,TARGET_TYPE_HP}  , // Torque enabled (indirect address 1)
        {170,2,580,1,AXIS_ID_WRIST,TARGET_TYPE_HP}  , // Position byte 0
        {172,2,581,1,AXIS_ID_WRIST,TARGET_TYPE_HP}  , // Position byte 1
        {174,2,582,1,AXIS_ID_WRIST,TARGET_TYPE_HP}  , // Position byte 2
        {176,2,583,1,AXIS_ID_WRIST,TARGET_TYPE_HP}  , // Position byte 3
        {178,2,576,1,AXIS_ID_WRIST,TARGET_TYPE_HP}  , // Speed byte 0
        {180,2,577,1,AXIS_ID_WRIST,TARGET_TYPE_HP}  , // Speed byte 1
        {182,2,578,1,AXIS_ID_WRIST,TARGET_TYPE_HP}  , // Speed byte 2
        {184,2,579,1,AXIS_ID_WRIST,TARGET_TYPE_HP}  , // Speed byte 3
        {186,2,574,1,AXIS_ID_WRIST,TARGET_TYPE_HP}  , // Current byte 0
        {188,2,575,1,AXIS_ID_WRIST,TARGET_TYPE_HP}  , // Current byte 1
        {190,2,571,1,AXIS_ID_WRIST,TARGET_TYPE_HP}  , // Moving
        {192,2,518,1,AXIS_ID_WRIST,TARGET_TYPE_HP}  , // Error  (indirect address 13 )

        {0xFFFF,0xffff,0xffff,0xffff,0,0}     // Torque enable (indirect address 25)
};



//Parameters should be equivalent to those configured in StructDef2.h
// offset 64 and higher are in RAM
const struct CDynControlTableLine Dyn12SetupFlex[] =
{
 {64,1,0,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Torque enable
 {64,1,0,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Torque enable

 {0,2,1020,0,AXIS_ID_LSTOP,TARGET_TYPE_XM430} , // Model number
 {9,1,250,0,AXIS_ID_LSTOP,TARGET_TYPE_XM430} ,  // Return time delay
 {10,1,0,0,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Drive mode, Positive is CCW
 {11,1,3,0,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Operation mode, should be 3 (position)
 {20,4,0,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Home position
 {24,4,25,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Moving threshold
 {38,2,1193,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Current limit
 {40,4,10000,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Acceleration limit
 {44,4,700,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Speed limit
 {48,4,3000,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Max position limit
 {52,4,0,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Min position limit
 {108,4,10000,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Profile Acceleration
 {112,4,500,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Profile Speed
 {168,2,64,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Torque enabled (indirect address 1)
 {170,2,132,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Position byte 0
 {172,2,133,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Position byte 1
 {174,2,134,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Position byte 2
 {176,2,135,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Position byte 3
 {178,2,128,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Speed byte 0
 {180,2,129,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Speed byte 1
 {182,2,130,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Speed byte 2
 {184,2,131,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Speed byte 3
 {186,2,126,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Current byte 0
 {188,2,127,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Current byte 1 (indirect address 12)
 {190,2,122,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Moving
 {192,2,70,1,AXIS_ID_LSTOP,TARGET_TYPE_XM430}  , // Moving status

 {0,2,1020,0,AXIS_ID_RSTOP,TARGET_TYPE_XM430} , // Model number
 {9,1,250,0,AXIS_ID_RSTOP,TARGET_TYPE_XM430} ,  // Return time delay
 {10,1,0,0,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Drive mode, Positive is CCW
 {11,1,3,0,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Operation mode, should be 3 (position)
 {20,4,0,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Home position
 {24,4,25,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Moving threshold
 {38,2,1193,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Current limit
 {40,4,20000,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Acceleration limit
 {44,4,1000,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Speed limit
 {48,4,3000,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Max position limit
 {52,4,0,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Min position limit
 {108,4,10000,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Profile Acceleration
 {112,4,500,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Profile Speed
 {168,2,64,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Torque enabled (indirect address 1)
 {170,2,132,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Position byte 0
 {172,2,133,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Position byte 1
 {174,2,134,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Position byte 2
 {176,2,135,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Position byte 3
 {178,2,128,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Speed byte 0
 {180,2,129,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Speed byte 1
 {182,2,130,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Speed byte 2
 {184,2,131,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Speed byte 3
 {186,2,126,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Current byte 0
 {188,2,127,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Current byte 1 (indirect address 12)
 {190,2,122,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}  , // Moving
 {192,2,70,1,AXIS_ID_RSTOP,TARGET_TYPE_XM430}   , // Error status
};
const short unsigned nDyn12SetupFlex = sizeof(Dyn12SetupFlex) / sizeof( struct CDynControlTableLine ) ;

//      {0xFFFF,0xffff,0xffff,0xffff,0,0}     // Torque enable (indirect address 25)

const struct CDynControlTableLine Dyn24SetupNone[] =
{
 {0xFFFF,0xffff,0xffff,0xffff,0,0}     // Torque enable (indirect address 25)
};


const struct CDynControlTableLine Dyn24SetupFlex[] =
{
        {0xFFFF,0xffff,0xffff,0xffff,0,0}     // Torque enable (indirect address 25)
};


//const struct CDynControlTableLine Dyn12SetupDoorPos[] =
//{
//    {64,1,0,1,AXIS_ID_DOOR,TARGET_TYPE_XM430}  , // Torque enable
//    {0,2,1020,0,AXIS_ID_DOOR,TARGET_TYPE_XM430} , // Model number
//    {10,1,0,0,AXIS_ID_DOOR,TARGET_TYPE_XM430}  , // Drive mode, Positive is CCW
//    {11,1,3,0,AXIS_ID_DOOR,TARGET_TYPE_XM430}  , // Operation mode, should be 3 (position)
//    {0xFFFF,0xffff,0xffff,0xffff,0,0}     // List terminator
//};
//const short unsigned nDyn12SetupDoorPos = sizeof(Dyn12SetupDoorPos) / sizeof( struct CDynControlTableLine ) ;

///////////////////////////////////////////////////////////////////////////////////////////

const struct CDynControlTableLine Dyn12SetupWheelArm[] =
{
        {64,1,0,1,AXIS_ID_ELBOWPIN_L,TARGET_TYPE_XM430}  , // Torque enable
        {64,1,0,1,AXIS_ID_ELBOWPIN_R,TARGET_TYPE_XM430}  , // Torque enable

        {0,2,1020,0,AXIS_ID_ELBOWPIN_L,TARGET_TYPE_XM430} , // Model number
        {9,1,250,0,AXIS_ID_ELBOWPIN_L,TARGET_TYPE_XM430} ,  // Return time delay
        {10,1,0,0,AXIS_ID_ELBOWPIN_L,TARGET_TYPE_XM430}  , // Drive mode, Positive is CCW
        {11,1,0,0,AXIS_ID_ELBOWPIN_L,TARGET_TYPE_XM430}  , // operation mode, should be 0 (torque)
        {20,4,0,1,AXIS_ID_ELBOWPIN_L,TARGET_TYPE_XM430}  , // Home position
        {24,4,25,1,AXIS_ID_ELBOWPIN_L,TARGET_TYPE_XM430}  , // Moving threshold
        {38,2,1193,1,AXIS_ID_ELBOWPIN_L,TARGET_TYPE_XM430}  , // Current limit
        //{40,4,10000,1,AXIS_ID_ELBOWPIN_L,TARGET_TYPE_XM430}  , // Acceleration limit
        //{44,4,700,1,AXIS_ID_ELBOWPIN_L,TARGET_TYPE_XM430}  , // Speed limit
        //{48,4,3000,1,AXIS_ID_ELBOWPIN_L,TARGET_TYPE_XM430}  , // Max position limit
        //{52,4,0,1,AXIS_ID_ELBOWPIN_L,TARGET_TYPE_XM430}  , // Min position limit
        {63,1,DYN12_PIN_ERROR_MASK,1,AXIS_ID_ELBOWPIN_L,TARGET_TYPE_XM430}  , // Shutdown
        {102,2,0,1,AXIS_ID_ELBOWPIN_L,TARGET_TYPE_XM430}  , // Current goal, now set to zero
        //{108,4,10000,1,AXIS_ID_ELBOWPIN_L,TARGET_TYPE_XM430}  , // Profile Acceleration
        //{112,4,500,1,AXIS_ID_ELBOWPIN_L,TARGET_TYPE_XM430}  , // Profile Speed
        {168,2,64,1,AXIS_ID_ELBOWPIN_L,TARGET_TYPE_XM430}  , // Torque enabled (indirect address 1)
        {170,2,132,1,AXIS_ID_ELBOWPIN_L,TARGET_TYPE_XM430}  , // Position byte 0
        {172,2,133,1,AXIS_ID_ELBOWPIN_L,TARGET_TYPE_XM430}  , // Position byte 1
        {174,2,134,1,AXIS_ID_ELBOWPIN_L,TARGET_TYPE_XM430}  , // Position byte 2
        {176,2,135,1,AXIS_ID_ELBOWPIN_L,TARGET_TYPE_XM430}  , // Position byte 3
        {178,2,128,1,AXIS_ID_ELBOWPIN_L,TARGET_TYPE_XM430}  , // Speed byte 0
        {180,2,129,1,AXIS_ID_ELBOWPIN_L,TARGET_TYPE_XM430}  , // Speed byte 1
        {182,2,130,1,AXIS_ID_ELBOWPIN_L,TARGET_TYPE_XM430}  , // Speed byte 2
        {184,2,131,1,AXIS_ID_ELBOWPIN_L,TARGET_TYPE_XM430}  , // Speed byte 3
        {186,2,126,1,AXIS_ID_ELBOWPIN_L,TARGET_TYPE_XM430}  , // Current byte 0
        {188,2,127,1,AXIS_ID_ELBOWPIN_L,TARGET_TYPE_XM430}  , // Current byte 1 (indirect address 12)
        {190,2,122,1,AXIS_ID_ELBOWPIN_L,TARGET_TYPE_XM430}  , // Moving
        {192,2,70,1,AXIS_ID_ELBOWPIN_L,TARGET_TYPE_XM430}  , // Moving status

        {0,2,1020,0,AXIS_ID_ELBOWPIN_R,TARGET_TYPE_XM430} , // Model number
        {9,1,250,0,AXIS_ID_ELBOWPIN_R,TARGET_TYPE_XM430} ,  // Return time delay
        {10,1,0,0,AXIS_ID_ELBOWPIN_R,TARGET_TYPE_XM430}  , // Drive mode, Positive is CCW
        {11,1,0,0,AXIS_ID_ELBOWPIN_R,TARGET_TYPE_XM430}  , // Operation mode, should be 1 (torque)
        {20,4,0,1,AXIS_ID_ELBOWPIN_R,TARGET_TYPE_XM430}  , // Home position
        {24,4,25,1,AXIS_ID_ELBOWPIN_R,TARGET_TYPE_XM430}  , // Moving threshold
        {38,2,1193,1,AXIS_ID_ELBOWPIN_R,TARGET_TYPE_XM430}  , // Current limit
        //{40,4,20000,1,AXIS_ID_ELBOWPIN_R,TARGET_TYPE_XM430}  , // Acceleration limit
        //{44,4,1000,1,AXIS_ID_ELBOWPIN_R,TARGET_TYPE_XM430}  , // Speed limit
        //{48,4,3000,1,AXIS_ID_ELBOWPIN_R,TARGET_TYPE_XM430}  , // Max position limit
        //{52,4,0,1,AXIS_ID_ELBOWPIN_R,TARGET_TYPE_XM430}  , // Min position limit
        {63,1,DYN12_PIN_ERROR_MASK,1,AXIS_ID_ELBOWPIN_R,TARGET_TYPE_XM430}  , // Shutdown
        {102,2,0,1,AXIS_ID_ELBOWPIN_R,TARGET_TYPE_XM430}  , // Current goal, now set to zero
        //{108,4,10000,1,AXIS_ID_ELBOWPIN_R,TARGET_TYPE_XM430}  , // Profile Acceleration
        //{112,4,500,1,AXIS_ID_ELBOWPIN_R,TARGET_TYPE_XM430}  , // Profile Speed
        {168,2,64,1,AXIS_ID_ELBOWPIN_R,TARGET_TYPE_XM430}  , // Torque enabled (indirect address 1)
        {170,2,132,1,AXIS_ID_ELBOWPIN_R,TARGET_TYPE_XM430}  , // Position byte 0
        {172,2,133,1,AXIS_ID_ELBOWPIN_R,TARGET_TYPE_XM430}  , // Position byte 1
        {174,2,134,1,AXIS_ID_ELBOWPIN_R,TARGET_TYPE_XM430}  , // Position byte 2
        {176,2,135,1,AXIS_ID_ELBOWPIN_R,TARGET_TYPE_XM430}  , // Position byte 3
        {178,2,128,1,AXIS_ID_ELBOWPIN_R,TARGET_TYPE_XM430}  , // Speed byte 0
        {180,2,129,1,AXIS_ID_ELBOWPIN_R,TARGET_TYPE_XM430}  , // Speed byte 1
        {182,2,130,1,AXIS_ID_ELBOWPIN_R,TARGET_TYPE_XM430}  , // Speed byte 2
        {184,2,131,1,AXIS_ID_ELBOWPIN_R,TARGET_TYPE_XM430}  , // Speed byte 3
        {186,2,126,1,AXIS_ID_ELBOWPIN_R,TARGET_TYPE_XM430}  , // Current byte 0
        {188,2,127,1,AXIS_ID_ELBOWPIN_R,TARGET_TYPE_XM430}  , // Current byte 1 (indirect address 12)
        {190,2,122,1,AXIS_ID_ELBOWPIN_R,TARGET_TYPE_XM430}  , // Moving
        {192,2,70,1,AXIS_ID_ELBOWPIN_R,TARGET_TYPE_XM430}   , // Error status

};
const short unsigned nDyn12SetupWheelArm = sizeof(Dyn12SetupWheelArm) / sizeof( struct CDynControlTableLine ) ;

const struct CDynControlTableLine DynTabTerminal = {0xFFFF,0xffff,0xffff,0xffff,0,0} ;

//        {0xFFFF,0xffff,0xffff,0xffff,0,0}     // Torque enable (indirect address 25)

#define MAX_DYN12_LINES 128
struct CDynControlTableLine Dyn12SetupTotal[MAX_DYN12_LINES] ;
short unsigned nDyn12SetupTotal ;

void ComposeDyn12Tab( short unsigned ManipType ,  short unsigned IsWheelArm )
{
    short unsigned cnt ;

    switch ( ManipType )
    {
    case SCARA_Manipulator:
        nDyn12SetupTotal = nDyn12SetupSCARA ;
        break ;

    case Flex_Manipulator :
        nDyn12SetupTotal = nDyn12SetupFlex  ;
        break ;

    default:
        nDyn12SetupTotal = 0 ;
        break ;
    }


    if ( nDyn12SetupTotal + ( IsWheelArm ? nDyn12SetupWheelArm : 0 ) + 2 >= MAX_DYN12_LINES )
    {
        for(;; ) ; // Stuck it
    }

    switch ( ManipType )
    {
    case SCARA_Manipulator:
        for ( cnt = 0 ; cnt < nDyn12SetupSCARA ; cnt++ )
        {
            Dyn12SetupTotal[cnt] = Dyn12SetupSCARA[cnt] ;
        }
        break ;

    case Flex_Manipulator :
        for ( cnt = 0 ; cnt < nDyn12SetupFlex ; cnt++ )
        {
            Dyn12SetupTotal[cnt] = Dyn12SetupFlex[cnt] ;
        }
        break ;

    default:
         break ;
    }

    if (  IsWheelArm )
    {
        for ( cnt = 0 ; cnt < nDyn12SetupWheelArm ; cnt++ )
        {
            Dyn12SetupTotal[cnt+nDyn12SetupTotal] = Dyn12SetupWheelArm[cnt] ;
        }
        nDyn12SetupTotal += nDyn12SetupWheelArm ;
    }
    Dyn12SetupTotal[nDyn12SetupTotal] = DynTabTerminal ;
}



#endif /* APPLICATION_DYNAMIXELPROGTABLES_H_ */
