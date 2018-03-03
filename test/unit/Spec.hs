module Main where

import Test.Tasty
import Test.Tasty.HUnit

--Library imports




import QC


import QubitsTest
import GatesTest
import MeasurementPerformerTest
import QuantumOperations


main = do
  defaultMain (testGroup "Unit tests" [
    testQubitZero,testQubitOne,testQubitMinus,testQubitPlus,
    testGateX, testGateY,testGateZ,testGateH,testGateControlledPhaseShift,testGateControlledNot,testGateI,
    testEntangle,testApplyGateOperator,testMultiplyGateOperator,testMultiplyWithConstant,
    testMeasure,testOuterProduct
    ])
