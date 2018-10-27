#!/bin/bash

args=$*
argnumber=$#

script=`basename $0`

this=$1
shift;ttt=$1

shift;sibext_1=$1
shift;sib_1=$1
shift;sibext_2=$1
shift;sib_2=$1
shift;conee=$1
shift;cnn=$1

sibling_1=${this}_${sibext_1}
sibling_2=${this}_${sibext_2}

maint=`echo ${this} | cut -d"_" -f1` 
Maint=`capitalize_first.sh ${maint}`

last=8

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
category=`echo $script |cut -d"_" -f2`

gresuf=`echo "$script"| grep -c _v.sh`
if [ "$gresuf" == "1" ]
then suffix="v" 
else suffix="t"
fi

source $UTI/case_domain_mmm

This=`capitalize_first.sh ${this}`
Conee=`capitalize_first.sh ${conee}`
Sibext_1=`capitalize_first.sh ${sibext_1}`
Sibext_2=`capitalize_first.sh ${sibext_2}`
Sibext_3=`capitalize_first.sh ${sibext_3}`
Sibling_1=`capitalize_first.sh ${sibling_1}`
Sibling_2=`capitalize_first.sh ${sibling_2}`
Sibling_3=`capitalize_first.sh ${sibling_3}`

module="${this}_${category}_${suffix}"
Module=`capitalize_first.sh ${module}`
file="${module}.ml"
File=`capitalize_first.sh ${file}`

source $UTI/sed_template_substitute.sh

# source $UTI/supplement_addition.sh

source $UTI/end_of_do_script.sh
