
/*------------------------------------------------------------------------
   File        : SimpleCalculator
 ----------------------------------------------------------------------*/

block-level on error undo, throw.

class src.SimpleCalculator:

    method public dec addition(pFirstAmount as dec, pSecondAmount as dec):
        validateAmountsInDB(pFirstAmount, pSecondAmount).

        return pFirstAmount + pSecondAmount.
    end method.

    method public dec subtract(pAmount as dec, pSubstractAmount as dec):
        return pAmount - pSubstractAmount.
    end method.

    method public dec divide(pEnumerator as dec, pDenumerator as dec):
        if pDenumerator = 0
        then undo, throw new Progress.Lang.AppError("Division by 0 is forbidden!", -1).

        return pEnumerator / pDenumerator.
    end method.

    method protected void validateAmountsInDB(pFirstAmount as dec, pSecondAmount as dec):
        /* Do something with DB */
        /* some complex logic */

        undo, throw new Progress.Lang.AppError("Amount was not found in DB", -1).
    end method.

end class.
