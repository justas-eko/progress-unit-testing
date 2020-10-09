
/*------------------------------------------------------------------------
    File        : simpleCalculator.p
  ----------------------------------------------------------------------*/

block-level on error undo, throw.

function additionFunction returns dec(pFirstAmount as dec, pSecondAmount as dec):
    return pFirstAmount + pSecondAmount.
end.

procedure add:
    def input param pFirstAmount as dec no-undo.
    def input param pSecondAmount as dec no-undo.
    def output param pResult as dec no-undo.

    def var vOk as log no-undo.

    run validateAmountsInDB.p(input pFirstAmount, input pSecondAmount, output vOk).
    if not vOk
    then undo, throw new Progress.Lang.AppError("Amount was not found in DB", -1).

    pResult = pFirstAmount + pSecondAmount.
end procedure.

procedure subtract:
    def input param pAmount as dec no-undo.
    def input param pSubstractAmount as dec no-undo.
    def output param pResult as dec no-undo.

    pResult = pAmount - pSubstractAmount.
end procedure.

procedure divide:
    def input param pEnumerator as dec no-undo.
    def input param pDenumerator as dec no-undo.
    def output param pResult as dec no-undo.

    if pDenumerator = 0
    then undo, throw new Progress.Lang.AppError("Division by 0 is forbidden!", -1).

    pResult = pEnumerator / pDenumerator.
end procedure.
