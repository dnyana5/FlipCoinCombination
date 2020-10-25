#!/bin/bash -x

echo "WELCOME TO FLIP COIN COMBINATION PROGRAM ON MASTER BRANCH"


coinToss=$((RANDOM%2))
if [ $coinToss == 0 ]
then
   echo "Heads win"
else
   echo "Tails win"
fi
