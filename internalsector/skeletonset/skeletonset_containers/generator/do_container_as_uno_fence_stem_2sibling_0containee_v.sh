#!/bin/bash

args=$*
argnumber=$#

script=`basename $0`

this=$1
shift;ttt=$1

shift;sibling_1=$1
shift;sib_1=$1
shift;sibling_2=$1
shift;sib_2=$1

maint=`echo ${this} | cut -d"_" -f1` 

buldr=$maint
bbb=$mmm

conee=$this
cnn=$ttt

last=6
if [ $argnumber -ne $last ] 
then 
    echo "number of arguments is $argnumber instead of $last for $script ${this}"
    exit
fi

template=`echo "$0" | sed -e 's/do_/template_/' -e 's/\.sh/.ml/'`

if [ ! -f ${template} ] 
then 
    echo "" 
    echo "file ${template} is missing"
    echo "" 
    exit
fi

dat=`date`
category=`echo $0 |cut -d"_" -f2`

gresuf=`echo "$0"| grep -c _v.sh`
if [ "$gresuf" == "1" ]
then suffix="v" 
else suffix="t"
fi

source $UTI/case_domain_mmm

Maint=`capitalize_first.sh ${maint}`

This=`capitalize_first.sh ${this}`
Conee=`capitalize_first.sh ${conee}`
Dta=`capitalize_first.sh ${dta}`
Fnc=`capitalize_first.sh ${fnc}`
Clsur=`capitalize_first.sh ${clsur}`
Datstr=`capitalize_first.sh ${datstr}`
Sibling_1=`capitalize_first.sh ${sibling_1}`
Sibling_2=`capitalize_first.sh ${sibling_2}`

module="${this}_${category}_${suffix}"
Module=`capitalize_first.sh ${module}`
file="${module}.ml"
File=`capitalize_first.sh ${file}`

source $UTI/sed_template_substitute.sh

# source $UTI/supplement_addition.sh

source $UTI/end_of_do_script.sh
 