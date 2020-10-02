##!/bin/bash -x

declare -A dict1
declare -A dict2
declare -A dict3

echo "Welcome to flip coin combination Problem"
echo "Enter number of times to flip coin : "
read n
count1=0
count2=0

countHH=0
countTT=0
countHT=0
countTH=0

countHHH=0
countHHT=0
countHTH=0
countTHH=0
countTTT=0
countTTH=0
countTHT=0
countHTT=0


echo "Enter the choice between 1 to 3"
echo "1.Singlet"
echo "2.Doublet"
echo "3.Triplet"
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
        num=$(( 1 + $RANDOM % 4 ))
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
"3")
for (( i=1;i<$n;i++ ))
do
        num=$(( 1 + $RANDOM % 8 ))
        if [ $num -eq 1 ]
        then
                echo "HHH"
                ((countHHH++))
        elif [ $num -eq 2 ]
        then
                echo "HHT"
                ((countHHT++))
        elif [ $num -eq 3 ]
        then
                echo "HTH"
                ((countHTH++))
        elif [ $num -eq 4 ]
	then
                echo "THH"
                ((countTHH++))
        elif [ $num -eq 5 ]
        then
                echo "TTT"
                ((countTTT++))
        elif [ $num -eq 6 ]
        then
                echo "TTH"
                ((countTTH++))
        elif [ $num -eq 7 ]
        then
                echo "THT"
                ((countTHT++))
        else [ $num -eq 8 ]
                echo "HHT"
                ((countHHT++))

        fi
done

dict3[HHH]="$countHHH"
dict3[HHT]="$countHHT"
dict3[HTH]="$countHTH"
dict3[THH]="$countTHH"
dict3[TTT]="$countTTT"
dict3[TTH]="$countTTH"
dict3[THT]="$countTHT"
dict3[HTT]="$countHTT"

echo ${dict3[HHH]}
echo ${dict3[HHT]}
echo ${dict3[HTH]}
echo ${dict3[THH]}
echo ${dict3[TTT]}
echo ${dict3[TTH]}
echo ${dict3[THT]}
echo ${dict3[HTT]}

echo percentage_of_HHH=$(( $countHHH * 5 ))
echo percentage_of_HHT=$(( $countHHT * 5 ))
echo percentage_of_HTH=$(( $countHTH * 5 ))
echo percentage_of_THH=$(( $countTHH * 5 ))

echo percentage_of_TTT=$(( $countTTT * 5 ))
echo percentage_of_TTH=$(( $countTTH * 5 ))
echo percentage_of_THT=$(( $countTHT * 5 ))
echo percentage_of_HTT=$(( $countHTT * 5 ))
;;
*)
	echo "Bye"
esac
