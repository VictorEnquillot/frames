#!/bin/bash

args=$*
argnumber=$#

script=`basename $0`

this=$1
shift;ttt=$1
shift;conee_up=$1
shift;cnn_1=$1

last=4

if [ $# -ne $last ] 
then 
    echo "number of arguments is $# instead of $last for $0 ${this}"
    exit
fi

This=`capitalize_first.sh ${this}`
Conee_1=`capitalize_first.sh ${conee_1}`
Conee_2=`capitalize_first.sh ${conee_2}`
Conee_up=`capitalize_first.sh ${conee_up}`

dat=`date`
category=`echo $0 |cut -d"_" -f2`

gresuf=`echo "$0"| grep -c _v.sh`
if [ "$gresuf" == "1" ]
then suffix="v" 
else suffix="t"
fi

template=`echo "$0" | sed -e 's/do_/template_/' -e 's/\.sh/.ml/'`

if [ ! -f ${template} ] 
then 
    echo ""
    echo "file ${template} is missing"
    echo ""
    exit
fi

module="${this}_${category}_${suffix}"
Module=`capitalize_first.sh ${module}`
file="${module}.ml"
File=`capitalize_first.sh ${file}`
supplement="supplement_${file}"

maint=`echo ${this} | cut -d"_" -f1` 
source $UTI/case_domain_mmm

if [ ! -f ${supplement} ] 
then 
    echo ""
    echo " touch ${supplement}"
    echo ""
    exit
fi

Mainb=`capitalize_first.sh ${mainb}`
Maint=`capitalize_first.sh ${maint}`

Bundr=`capitalize_first.sh ${bundr}`
Dta=`capitalize_first.sh ${dta}`
Fnc=`capitalize_first.sh ${fnc}`
Clsur=`capitalize_first.sh ${clsur}`
Datstr=`capitalize_first.sh ${datstr}`

source sed_template_substitute.sh

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

echo "(* done on ${dat} *)" >> ${File}

echo " less ${File}"
echo " mv ${File} ../"
echo " make $Module.cmo"
echo "" >> ${File}
