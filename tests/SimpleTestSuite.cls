
 /*------------------------------------------------------------------------
    File        : SimpleTestSuite
    Notes       :
  ----------------------------------------------------------------------*/

block-level on error undo, throw.

// Comma separated list of test classes
@TestSuite(classes= "SimpleCalculatorTest").

// Comma separated list of test procedures
/*@TestSuite(procedures= "simpleCalculatorTest.p").*/

class SimpleTestSuite:

end class.
