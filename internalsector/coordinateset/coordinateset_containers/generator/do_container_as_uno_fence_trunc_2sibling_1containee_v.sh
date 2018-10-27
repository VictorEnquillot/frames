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

conee_1=$this
cnn=$ttt

last=6

if [ $argnumber -ne $last ] 
then 
    echo "number of arguments is $arguments instead of $last for $script ${this}"
    exit
fi

dat=`date`
category=`echo $script |cut -d"_" -f2`

gresuf=`echo "$script"| grep -c _v.sh`
if [ "$gresuf" == "1" ]
then suffix="v" 
else suffix="t"
fi

template=`echo "$script" | sed -e 's/do_/template_/' -e 's/\.sh/.ml/'`

module="${this}_${category}_${suffix}"
Module=`capitalize_first.sh ${module}`
file="${module}.ml"
File=`capitalize_first.sh ${file}`
supplement="supplement_${file}"

maint=`echo ${this} | cut -d"_" -f1` 
source $UTI/case_domain_mmm

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

source $UTI/capitalize_first_template.sh
source $UTI/sed_template_substitute.sh

if [ -s ${supplement} ] 
then 
    cat ${supplement} >> ${File}
else
    echo "supplement ${supplement} is empty"
fi

echo "" >> ${File}
echo "(* generated by $0 ${args} *)" >> ${File}
echo "(* using ${template} *)" >> ${File}

if [ -s ${supplement} ] 
then
    echo "(* adding ${supplement} *)" >> ${File} 
fi

echo "(* Done on ${dat} *)" >> ${File}

echo " cat ${File}"
echo " mv ${File} ../"
echo " make $Module.cmo"
echo "" >> ${File}


