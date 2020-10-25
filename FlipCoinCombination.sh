#!/bin/bash -x

echo "WELCOME TO FLIP COIN COMBINATION"
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
	doublet=$(( RANDOM%4 ));
	case $doublet in
		0) headhead=$(($headhead+1));;
		1) headtail=$(($headtail+1));;
		2) tailhead=$(($tailhead+1));;
		3) tailtail=$(($tailtail+1));;
		*) echo "Invalid Combination";;	
	esac
	triplet=$(( RANDOM%7 ));
        case $triplet in
              0) headheadhead=$(($headheadhead+1));;
                1) headheadtail=$(($headheadtail+1));;
                2) headtailhead=$(($headtailhead+1));;
                3) headtailtail=$(($headtailtail+1)) ;;
	4) tailheadhead=$(($headtailhead+1));;
                5) tailheadtail=$(($tailheadtail+1));;
                6) tailtailhead=$(($tailtailhead+1));;
                7) tailtailtail=$(($tailtailtail+1));;
	*) echo "Invalid combination";;
	esac
done
}
flipcoincombination
echo "Number of head win" $head
echo "Number of tail win" $tail
echo "Number of headhead combination " $headhead
echo "Number of headtail combination " $headtail
echo "Number of tailhead combination " $tailhead
echo "Number of tailtail combination " $tailtail
echo "Number of headheadhead combination " $headheadhead
echo "Number of headheadtail combination " $headheadtail
echo "Number of headtailhead combination " $headtailhead
echo "Number of headtailtail combination " $headtailtail
echo "Number of tailheadhead combination " $tailheadhead
echo "Number of tailheadtail combination " $tailheadtail
echo "Number of tailtailhead combination " $tailtailhead
echo "Number of tailtailtail combination " $tailtailtail
