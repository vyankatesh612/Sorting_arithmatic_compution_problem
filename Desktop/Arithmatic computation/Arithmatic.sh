#!/bin/bash -x
 echo "Welcome to Arithmatic computation"

 read -p "Enter first number :" first_num
 read -p "Enter second number :" second_num
 read -p "Enter third number :" third_num

 result=$((third_num+first_num/second_num))
