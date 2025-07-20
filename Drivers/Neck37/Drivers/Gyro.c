/*
 * Gyro.c
 *
 *  Created on: Jun 24, 2023
 *      Author: yahal
 */
#include "..\Application\StructDef.h"
#ifdef ON_BOARD_GYRO
volatile short unsigned gyroID , GJunk ;

short WriteGyroReg(short unsigned address, short unsigned data )
{
    short unsigned cnt, stat  ;

    // Clear RX / TX FIFO
    HWREGH(SPIB_BASE + SPI_O_FFRX) = 0x404f   ;
    HWREGH(SPIB_BASE + SPI_O_FFTX) = 0x4f  ;
    // 16 bit
    HWREGH(SPIB_BASE + SPI_O_CCR) = 0xcf ;

    // FIFO ready for RX
    HWREGH(SPIB_BASE + SPI_O_FFTX) = 0xe04f  ;
    HWREGH(SPIB_BASE + SPI_O_FFRX) = 0x604f   ;

    for ( cnt = 0 ; cnt < 3 ; cnt++ )
    {
        // Transmit
        HWREGH(SPIB_BASE + SPI_O_TXBUF) = ( address << 8 ) + ( data & 0xff)  ;
        do
        {
            stat = HWREGH(SPIB_BASE + SPI_O_FFRX) ;
        } while ( ( stat & 0x1f00 ) == 0 ) ;
        GJunk = HWREGH(SPIB_BASE + SPI_O_RXBUF)  ;

        // Verify
        HWREGH(SPIB_BASE + SPI_O_TXBUF) = 0x8000 + ( address << 8 ) + ( data & 0xff)  ;
        do
        {
            stat = HWREGH(SPIB_BASE + SPI_O_FFRX) ;
        } while ( ( stat & 0x1f00 ) == 0 ) ;
        GJunk = HWREGH(SPIB_BASE + SPI_O_RXBUF) & 0xff  ;
        if ( GJunk == data )
        {
            return 0 ;
        }
    }
    return -1 ;
}


void ReadGyro(short unsigned DataReady)
{
    short unsigned ReadStat , mask ;
    if ( DataReady  )
    {

        if ( SysState.Gyro.State==0)
        {
            mask = BlockInts() ;
            // Clear RX / TX FIFO
            HWREGH(SPIB_BASE + SPI_O_FFRX) = 0x404f   ;
            //HWREGH(SPIB_BASE + SPI_O_FFTX) = 0x4f  ;

            asm("  RPT #3 || NOP");
            // 16 bit
            //HWREGH(SPIB_BASE + SPI_O_CCR) = 0xcf ;

            // FIFO ready for RX
            //HWREGH(SPIB_BASE + SPI_O_FFTX) = 0xe04f  ;
            HWREGH(SPIB_BASE + SPI_O_FFRX) = 0x604f   ;

            HWREGH(SPIB_BASE + SPI_O_TXBUF) = 0xe500;  // Command and read junk (reference)

            HWREGH(SPIB_BASE + SPI_O_TXBUF) = 0x0 ; // Temp / stat
            HWREGH(SPIB_BASE + SPI_O_TXBUF) = 0x0 ; // XL - XH
            HWREGH(SPIB_BASE + SPI_O_TXBUF) = 0x0 ; // ZL - YH
            HWREGH(SPIB_BASE + SPI_O_TXBUF) = 0x0 ; // ZL - ZH
            SysState.Gyro.State = 1 ;
            RestoreInts(mask) ;
        }
        else
        { // Fail safe time out
            SysState.Gyro.StateCnt = (SysState.Gyro.StateCnt+1) & 0xff  ;
            if ( SysState.Gyro.StateCnt == 0 )
            {
                SysState.Gyro.State = 0 ;
            }
        }
    }
    else
    {
        SysState.Gyro.StateCnt = 0 ;
        ReadStat = 0 ;
        if ( SysState.Gyro.State > 0 )
        {
            ReadStat = ( HWREGH(SPIB_BASE + SPI_O_FFRX) >> 8 ) & 0x1f  ;
            if ( ReadStat < 5 )
            {
                return ;
            }
        }

        if ( ReadStat == 5 )
        {
            SysState.Gyro.Read[0] = HWREGH(SPIB_BASE + SPI_O_RXBUF);
            SysState.Gyro.Read[1] = HWREGH(SPIB_BASE + SPI_O_RXBUF);
            SysState.Gyro.Read[2] = HWREGH(SPIB_BASE + SPI_O_RXBUF);
            SysState.Gyro.Read[3] = HWREGH(SPIB_BASE + SPI_O_RXBUF);
            SysState.Gyro.Read[4] = HWREGH(SPIB_BASE + SPI_O_RXBUF);
            SysState.Gyro.Omega[0] = 1.5273e-04f * (short) (( ( SysState.Gyro.Read[2] & 0xff ) << 8 ) | (( SysState.Gyro.Read[2] & 0xff00 ) >> 8 ));
            SysState.Gyro.Omega[1] = 1.5273e-04f * (short) (( ( SysState.Gyro.Read[3] & 0xff ) << 8 ) | (( SysState.Gyro.Read[3] & 0xff00 ) >> 8 ));
            SysState.Gyro.Omega[2] = 1.5273e-04f * (short) (( ( SysState.Gyro.Read[4] & 0xff ) << 8 ) | (( SysState.Gyro.Read[4] & 0xff00 ) >> 8 ));
        }
        SysState.Gyro.State = 0 ;

    }

}


#define ADD_CTRL_REG1 0x20
#define ADD_CTRL_REG2 0x21
#define ADD_CTRL_REG3 0x22
#define ADD_CTRL_REG4 0x23
#define ADD_CTRL_REG5 0x24
#define ADD_REFERENCE 0x25
#define ADD_OUT_TMP   0x26
#define ADD_STATUS_REG   0x27
#define ADD_OUT_XL   0x28
#define ADD_OUT_XH   0x29
#define ADD_OUT_YL   0x2a
#define ADD_OUT_YH   0x2b
#define ADD_OUT_ZL   0x2c
#define ADD_OUT_ZH   0x2d
#define ADD_FIFO_CTRL_REG 0x2e
#define ADD_FIFO_SRC_REG 0x2f






void setupSpi(void)
{
    short unsigned stat , cnt  ;
    HWREGH(SPIB_BASE + SPI_O_CCR) = 0x4f ;
    HWREGH(SPIB_BASE + SPI_O_CTL) = 0x6  ;
    HWREGH(SPIB_BASE + SPI_O_STS) = 0xe0 ;
    HWREGH(SPIB_BASE + SPI_O_BRR) = 29   ;
    HWREGH(SPIB_BASE + SPI_O_PRI) = 0x30   ;

    HWREGH(SPIB_BASE + SPI_O_FFTX) = 0x4f  ;
    HWREGH(SPIB_BASE + SPI_O_FFRX) = 0x404f   ;
    HWREGH(SPIB_BASE + SPI_O_CCR) = 0xcf ;

    // Get the gyro ID
    HWREGH(SPIB_BASE + SPI_O_FFRX) = 0x404f   ;
    HWREGH(SPIB_BASE + SPI_O_FFTX) = 0xe04f  ;
    HWREGH(SPIB_BASE + SPI_O_FFRX) = 0x604f   ;


    for ( cnt = 0 ; cnt < 3 ; cnt++ )
    {
        HWREGH(SPIB_BASE + SPI_O_TXBUF) = 0x8f00 ;
        do
        {
            stat = HWREGH(SPIB_BASE + SPI_O_FFRX) ;
        } while ( ( stat & 0x1f00 ) == 0 ) ;
        gyroID = ( HWREGH(SPIB_BASE + SPI_O_RXBUF) ) & 0xff ;
        if (gyroID == 0xd3 )
        {
            SysState.Gyro.bExists = 1 ;
            break ;
        }
    }

    if ( SysState.Gyro.bExists  == 0 )
    {
//        SysState.Mot.GyroAbsent = 1 ;
        return ;
    }

    stat = WriteGyroReg( ADD_CTRL_REG1, 0xff ) ;
    stat += WriteGyroReg( ADD_CTRL_REG2, 0x9 ) ;
    stat += WriteGyroReg( ADD_CTRL_REG3, 0x8 ) ;
    stat += WriteGyroReg( ADD_CTRL_REG4, 0x0 ) ;
    stat += WriteGyroReg( ADD_CTRL_REG5, 0x2 ) ;
    stat += WriteGyroReg( ADD_FIFO_CTRL_REG, 0x0 ) ;

    if ( stat != 0 )
    {
        SysState.Gyro.bExists = 0 ;
        SysState.Mot.GyroNotReady = 1 ;
    }

}
#endif


