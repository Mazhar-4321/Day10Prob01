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
