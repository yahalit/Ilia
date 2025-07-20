//*****************************************************************************
//
//! Returns the time base counter value.
//!
//! \param base is the base address of the ECAP module.
//!
//! This function returns the time base counter value.
//!
//! \return Returns the time base counter value.
//
//*****************************************************************************
/*
uint32_t ECAP_getTimeBaseCounter(uint32_t base)
{
    ASSERT(ECAP_isBaseValid(base));

    //
    // Read the Time base counter value
    //
    return(HWREG(base + ECAP_O_TSCTR));
}
*/



