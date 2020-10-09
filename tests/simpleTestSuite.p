
 /*------------------------------------------------------------------------
    File        : simpleTestSuite.p
  ----------------------------------------------------------------------*/

block-level on error undo, throw.

// Comma separated list of test procedures
@TestSuite(procedures= "simpleCalculatorTest.p").

// Comma separated list of test classes
/*@TestSuite(classes= "SimpleCalculatorTest").*/
