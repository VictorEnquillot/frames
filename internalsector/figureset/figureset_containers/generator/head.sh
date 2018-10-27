#!/bin/bash

args=$*

this=$1
ttt=$2
sibling_1=$3
sib_1=$4
conee_up=$5
cnn=${6}

last=6

if [ $# -ne $last ] 
then 
    echo "number of arguments is $# instead of $last for $0 ${this}"
    exit
fi
