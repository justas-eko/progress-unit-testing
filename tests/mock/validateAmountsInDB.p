
/*------------------------------------------------------------------------
    File        : mock/validateAmountsInDB.p
    Purpose     : To mock src/validateAmountsInDB.p
    Notes       : Always returns true.
  ----------------------------------------------------------------------*/

def input param pFirstAmount as dec no-undo.
def input param pSecondAmount as dec no-undo.
def output param pOk as log no-undo.

/* Cut off all the unnecessary calls and make sure to always get expected value */

pOk = true.
