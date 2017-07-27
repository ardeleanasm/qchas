module QubitsTest where


import Test.Tasty
import Test.Tasty.HUnit

--Library imports

import Numeric.LinearAlgebra


import Qubits




testQubitZero::TestTree
testQubitZero=testCase "Test |0> correct values"
    (assertEqual "|0> values," ((2><1) [1.0 :+ 0.0,0.0 :+ 0.0]::Matrix C) (qZero))
    

testQubitOne::TestTree
testQubitOne=testCase "Test |1> correct values"
    (assertEqual "|1> values," ((2><1) [0.0 :+ 0.0,1.0 :+ 0.0]::Matrix C) (qOne))


testQubitPlus::TestTree
testQubitPlus=testCase "Test |+> correct values"
    (assertEqual "|+> values," ((2><1) [0.7071067811865475 :+ 0.0,0.7071067811865475 :+ 0.0]::Matrix C) (qPlus))    


testQubitMinus::TestTree
testQubitMinus=testCase "Test |-> correct values"
    (assertEqual "|-> values," ((2><1) [0.7071067811865475 :+ 0.0,(-0.7071067811865475) :+ 0.0]::Matrix C) (qMinus))    

