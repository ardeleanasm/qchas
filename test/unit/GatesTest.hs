module GatesTest where

import Test.Tasty
import Test.Tasty.HUnit

--Library imports
import Numeric.LinearAlgebra



import Qubits
import Gates

testGateX::TestTree
testGateX=testCase "Test X-Gate correct values"
    (assertEqual "X-Gate values," ((2><2)[0,1,1,0]::Matrix C) (xGate))


testGateY::TestTree
testGateY=testCase "Test Y-Gate correct values"
    (assertEqual "Y-Gate values," ((2><2) [0.0,0.0:+(-1.0),0.0:+1.0,0.0]::Matrix C)  (yGate))



testGateZ::TestTree
testGateZ=testCase "Test Z-Gate correct values"
    (assertEqual "Z-Gate values," ((2><2) [1,0,0,-1]::Matrix C) (zGate))



testGateH::TestTree
testGateH=testCase "Test H-Gate correct values"
    (assertEqual "H-Gate values," ((2><2) [1/sqrt 2,1/sqrt 2,1/sqrt 2,(-1)/sqrt 2]::Matrix C) (hGate))



--rGate::Double->Matrix(Complex Double)
--rGate t=complexMatrix [[cos t,-sin t],[sin t, cos t]]   

testGateControlledPhaseShift::TestTree
testGateControlledPhaseShift=testCase "Test Controlled Phase Shift correct values"
    (assertEqual "Controlled Phase Shift Gate values," ((4><4)[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,-1]::Matrix C)
     (cPhaseShifGate))



testGateControlledNot::TestTree
testGateControlledNot=testCase "Test Controlled Not Shift correct values"
    (assertEqual "Controlled Phase Not Gate values," ((4><4)[1,0,0,0,0,1,0,0,0,0,0,1,0,0,1,0]::Matrix C)
        (cNotGate))

