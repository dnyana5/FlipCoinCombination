#!/bin/bash -x

echo "WELCOME TO FLIP COIN COMBINATION PROGRAM ON MASTER BRANCH"

function flipcoincombination() {
head=0;
tail=0;
read -p "Enter number of flip required " n
for (( i=0; i<n; i++ ))
do
doublet=$(( RANDOM%4 ));
	case $doublet in
		0) headhead=$(($headhead+1));;
		1) headtail=$(($headtail+1));;
		2) tailhead=$(($tailhead+1));;
		3) tailtail=$(($tailtail+1));;
		*) echo "Invalid Combination";;
	esac
done
}
flipcoincombination
echo "Number of headhead combination " $headhead
echo "Number of headtail combination " $headtail
echo "Number of tailhead combination " $tailhead
echo "Number of tailtail combination " $tailtail
