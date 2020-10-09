
/*------------------------------------------------------------------------
   File        : simpleCalculatorTest.p
 ----------------------------------------------------------------------*/

block-level on error undo, throw.

using OpenEdge.Core.Assert.
using Progress.Lang.AppError.

{src/functions.i}

define variable hProcHandle as handle no-undo.

function additionFunction returns dec(pFirstAmount as dec, pSecondAmount as dec) in hProcHandle.

@Setup.
procedure setup:
    run src/simpleCalculator.p persistent set hProcHandle.
end procedure.

@TearDown.
procedure tearDown:
    if valid-handle(hProcHandle) then delete object hProcHandle.
end procedure.

@Test.
procedure testAdditionValidValues:
    def var vResult as dec no-undo.

    run add in hProcHandle(1.5, 20, output vResult).
    Assert:Equals(21.5, vResult).
end procedure.

@Test.
procedure testSubtractionValidValues:
    def var vResult as dec no-undo.

    run subtract in hProcHandle(100, 40, output vResult).
    Assert:Equals(60,vResult).
end procedure.

@Test.
procedure testAdditionFunctionValidValuesInPersistent:
    Assert:Equals(60, additionFunction(20, 40)).
end procedure.

@Test.
procedure testAdditionFunctionInValidValuesInPersistent:
    Assert:NotEqual(61, additionFunction(20, 40)).
end procedure.

@Test.
procedure testSubtractionFunctionValidValuesInInclude:
    Assert:Equals(60, subtractionFunction(100, 40)).
end procedure.

@Test(expected="Progress.Lang.AppError").
procedure testDivisionByZero:
    def var vResult as dec no-undo.

    run divide in hProcHandle(100, 0, output vResult).
end procedure.
