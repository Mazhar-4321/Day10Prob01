echo "Welcome to Arithmetic Computation & Sorting "
read a
read b
read c
ans=$(($a+$b*$c))
ans1=$(($a*$b+$c))
ans2=$(($c+$a/$b))
ans3=$(($a%$b+$c))
declare -A dictionary
dictionary[0]=$ans
dictionary[1]=$ans1
dictionary[2]=$ans2
dictionary[3]=$ans3
declare -a array
keys=${!dictionary[@]}
index=${#array[@]}
for i in $keys
do
array[$index]=${dictionary[$i]}
index=$((index+1))
done
echo ${array[@]}
index=${#array[@]}
for((j=0;j<$index;j=$((j+1))))
do
minIndex=$j
minValue=${array[$j]}
	for((k=$j+1;k<$index;k=$((k+1))))
	do
	if [[ $minValue -gt ${array[$k]} ]]
	then
	minIndex=$k
	minValue=${array[$k]}
	fi
	done
temp=${array[$j]}
array[$j]=${array[$minIndex]}
array[$minIndex]=$temp
done
for((i=$index;i>=0;i=$((i-1))))
do
echo ${array[$i]}
done
##echo ${array[@]}
