#!/bin/bash -x
 declare -A dictionary
 echo "Welcome to Arithmatic computation"

 read -p "Enter first number :" first_num
 read -p "Enter second number :" second_num
 read -p "Enter third number :" third_num
 
 result1=$((first-num+second_num*third_num))
 result2=$((first-num*second_num+third_num))
 result3=$((third_num+first_num/second_num))
 result4=$((first_num%second_num+third_num))

 dictionary[1]=$result1
 dictionary[2]=$result2
 dictionary[3]=$result3
 dictionary[4]=$result4

