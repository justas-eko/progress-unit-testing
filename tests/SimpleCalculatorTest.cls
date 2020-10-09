
/*------------------------------------------------------------------------
   File        : SimpleCalculatorTest
 ----------------------------------------------------------------------*/

block-level on error undo, throw.

using OpenEdge.Core.Assert.
using src.SimpleCalculator.

class SimpleCalculatorTest inherits SimpleCalculator:

    @Test.
    method public void testAdditionValidValues():
        Assert:Equals(12.345, addition(10, 2.345)).
    end method.

    @Test.
    method public void testAdditionInValidValues():
        Assert:NotEqual(2, addition(10, 2.345)).
    end method.

    @Test.
    method public void testSubtractionValidValues():
        Assert:Equals(23.456, subtract(30, 6.544)).
    end method.

    @Test(expected="Progress.Lang.AppError").
    method public void testDivisionByZero():
        divide(100, 0).
    end method.

    method protected override void validateAmountsInDB(pFirstAmount as dec, pSecondAmount as dec):
        /* Do nothing during validation */
    end method.

end class.
