#!/bin/bash

args=$*

this=$1
ttt=$2

conee_1=${this}
cnn_1=${ttt}

last=2

if [ $# -ne $last ] 
then 
    echo "number of arguments is $# instead of $last for $0 ${this}"
    exit
fi

dat=`date`
category=`echo $0 |cut -d"_" -f2`

gresuf=`echo "$0"| grep -c _v.sh`
if [ "$gresuf" == "1" ]
then suffix="v" 
else suffix="t"
fi

mainb=`echo ${conee} | cut -d"_" -f1` 
maint=`echo ${this} | cut -d"_" -f1` 

case ${maint} in
    chemical ) mmm="che";;
    database ) mmm="dba";;
    elementary ) mmm="ele";;
    figure ) mmm="fig";;
    input ) mmm="inp";;
    operator ) mmm="ope";;
    primitive ) mmm="pri";;
    prototype ) mmm="prt";;
    *) echo "";echo -n "Error: in script $0 : unknown maint >${maint}<";echo"";exit;;
esac

MMM=`echo $mmm | tr a-z A-Z`

Mainb=`capitalize_first.sh ${mainb}`
Maint=`capitalize_first.sh ${maint}`

This=`capitalize_first.sh ${this}`
Conee_1=`capitalize_first.sh ${conee_1}`

template=`echo "$0" | sed -e 's/do_/template_/' -e 's/\.sh/.ml/'`

module="${this}_${category}_${suffix}"
Module=`capitalize_first.sh ${module}`
file="${module}.ml"
File=`capitalize_first.sh ${file}`
supplement="supplement_${file}"

if [ ! -f ${template} ] 
then 
    echo "" 
    echo "file ${template} is missing"
    echo "" 
    exit
fi
if [ ! -f ${supplement} ] 
then 
    echo "" 
    echo " touch ${supplement}"
    echo "" 
    exit
fi

