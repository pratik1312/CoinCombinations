##!/bin/bash -x

declare -A dict1

echo "Enter number of times to flip coin : "
read n
count1=0
count2=0
echo "Enter the choice as 1"
echo "1.Singlet"
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
*)
	echo "Bye"
esac

