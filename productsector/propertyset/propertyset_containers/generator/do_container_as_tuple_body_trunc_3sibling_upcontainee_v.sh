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
shift;sibling_3=$1
shift;sib_3=$1
shift;conee_up=$1
shift;cnn_up=$1

last=10

if [ $argnumber -ne $last ] 
then 
    echo "number of arguments is $argnumber instead of $last for $script ${this}"
    exit
fi

template=`echo "$script" | sed -e 's/do_/template_/' -e 's/\.sh/.ml/'`

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

module="${this}_${category}_${suffix}"
file="${module}.ml"

maint=`echo ${this} | cut -d"_" -f1` 

source $UTI/case_domain_mmm
source $UTI/capitalize_first_template.sh
source $UTI/sed_template_substitute.sh
source $UTI/end_of_do_script.sh
