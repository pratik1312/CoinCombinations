##!/bin/bash -x

declare -A dict1
declare -A dict2

echo "Welcome to flip coin combination Problem"
echo "Enter number of times to flip coin : "
read n
count1=0
count2=0
countHH=0
countTT=0
countHT=0
countTH=0
echo "Enter the choice as 1 or 2"
echo "1.Singlet"
echo "2.Doublet"
read option

case "$option" in

"1")
for (( i=1;i<=$n;i++ ))
do
	num=$(( $RANDOM % 2 ))
	if [ $num -eq 0 ]
	then
		echo "H"
		((count1++))
	else
		echo "T"
		((count2++))
	fi
done
echo "Head count in Singlet Dictionary : "$count1 
echo "Tail Count in Singlet Dictionary : "$count2
dict1[Head]="$count1"
dict1[Tail]="$count2"
echo ${dict1[Head]}
echo ${dict1[Tail]}
echo percentage_of_head=$(( $count1 * 5 ))
echo percentage_of_tail=$(( $count2 * 5 ))
;;
"2")
for (( i=1;i<$n;i++ ))
do
        num=$(( $RANDOM % 4 ))
        if [ $num -eq 1 ]
        then
                echo "HH"
                ((countHH++))
        elif [ $num -eq 2 ]
	then
                echo "HT"
                ((countHT++))
	elif [ $num -eq 3 ]
	then
		echo "TH"
		((countTH++))
	else [ $num -eq 4 ]
		echo "TT"
		((countTT++))
        fi
done

dict2[HH]="$countHH"
dict2[HT]="$countHT"
dict2[TH]="$countTH"
dict2[TT]="$countTT"
echo ${dict2[HH]}
echo ${dict2[HT]}
echo ${dict2[TH]}
echo ${dict2[TT]}
echo percentage_of_HH=$(( $countHH * 5 ))
echo percentage_of_HT=$(( $countHT * 5 ))
echo percentage_of_TH=$(( $countTH * 5 ))
echo percentage_of_TT=$(( $countTT * 5 ))
;;
*)
	echo "Bye"
esac

