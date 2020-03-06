#!/bin/bash -x
 
 function descendingsort()
	{
 		for ((i=0;i<10;i++))
 		do
   		for ((j=0;j<10;j++))
   		do
     			if [ ${array[i]%.*} -gt ${array[j]%.*} ]
     			then
      			temp=${array[i]}
       			array[i]=${array[j]}
       			array[j]=$temp
     			fi
   		done
 		done
    echo ${array[@]}
   }

 declare -A dictionary
 declare -a array

 echo "Welcome to Arithmatic computation"

 read -p "Enter first number :" first_num
 read -p "Enter second number :" second_num
 read -p "Enter third number :" third_num
 
 result1=$((first_num+second_num*third_num))
 result2=$((first_num*second_num+third_num))
 result3=$( echo "scale=2; $third_num+$first_num/$second_num" | bc )
 result4=$((first_num%second_num+third_num))

 dictionary[1]=$result1
 dictionary[2]=$result2
 dictionary[3]=$result3
 dictionary[4]=$result4
 
 for ((i=1;i<=4;i++))
 do
   array[$i]=${dictionary[${i}]}
 done
 
 descendingsort

