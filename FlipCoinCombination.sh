#!/bin/bash -x

echo "WELCOME TO FLIP COIN COMBINATION PROGRAM ON MASTER BRANCH"

function flipcoincombination() {
head=0;
tail=0;
read -p "Enter number of flip required " n
for (( i=0; i<n; i++ ))
do
	singlet=$(( RANDOM%2 ));
	if [ $singlet == 1 ];
	then
         		head=$(($head+1))
	else
        		tail=$(($tail+1))
	fi
	
	
done
}
flipcoincombination
echo "Number of head win" $head
echo "Number of tail win" $tail
