#!/bin/bash

args=$*
argnumber=$#

script=`basename $0`

this=$1
ttt=$2
sibext_1=$3
sib_1=$4
sibext_2=$5
sib_2=$6
conee_up=$7
cnn_up=${8}
conee_1=${9}
cnn_1=${10}

last=10

sibling_1=${this}_${sibext_1}
sibling_2=${this}_${sibext_2}
sibling_3=${this}_${sibext_3}

This=`capitalize_first.sh ${this}`
Conee_up=`capitalize_first.sh ${conee_up}`
Conee_1=`capitalize_first.sh ${conee_1}`
Sibext_1=`capitalize_first.sh ${sibext_1}`
Sibext_2=`capitalize_first.sh ${sibext_2}`
Sibext_3=`capitalize_first.sh ${sibext_3}`
Sibling_1=`capitalize_first.sh ${sibling_1}`
Sibling_2=`capitalize_first.sh ${sibling_2}`
Sibling_3=`capitalize_first.sh ${sibling_3}`

if [ $argnumber -ne $last ] 
then 
    echo "number of arguments is $argnumber instead of $last for $0 ${this}"
    exit
fi

dat=`date`
category=`echo $0 |cut -d"_" -f2`

gresuf=`echo "$0"| grep -c _v.sh`
if [ "$gresuf" == "1" ]
then suffix="v" 
else suffix="t"
fi

template=`echo "$0" | sed -e 's/do_/template_/' -e 's/\.sh/.ml/'`

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

Mainb=`capitalize_first.sh ${mainb}`
Maint=`capitalize_first.sh ${maint}`

Bundr=`capitalize_first.sh ${bundr}`
Dta=`capitalize_first.sh ${dta}`
Fnc=`capitalize_first.sh ${fnc}`
Clsur=`capitalize_first.sh ${clsur}`
Datstr=`capitalize_first.sh ${datstr}`

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

echo "(* done on ${dat} *)" >> ${File}

echo " less ${File}"
echo " mv ${File} ../"
echo " make $Module.cmo"
echo "" >> ${File}

