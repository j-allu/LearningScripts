#!/bin/sh
date
echo "Hello world!"
echo "===================="
echo "Variables:"

a=123
echo "a:" ${a}
a=`expr ${a} + 1`
echo ${a}

echo "===================="
echo "Loops:"

echo "====================="
echo "For Loop on ls"
for muuttuja in `ls`
do
    echo $muuttuja
done
echo "====================="



PassingArguments(){
first=$1
second=$2
echo "first:${first}"
echo "second:${second}"
}

DoubleLoopNumbers(){
number=$1
a=0
while [ "$a" -lt ${number} ]    # this is loop1
do
   b="$a"
   while [ "$b" -ge 0 ]  # this is loop2
   do
      echo -n "$b "
      b=`expr $b - 1`
   done
   echo
   a=`expr $a + 1`
done

while [ "$a" -ge 0 ]    # this is loop1
do
   b="$a"
   while [ "$b" -ge 0 ]  # this is loop2
   do
      echo -n "$b "
      b=`expr $b - 1`
   done
   echo
   a=`expr $a - 1`
done
}

PassingArguments eka toka
DoubleLoopNumbers 12

while [ 1 -ge 1 ]
do
    DoubleLoopNumbers 20
    sleep 1
done