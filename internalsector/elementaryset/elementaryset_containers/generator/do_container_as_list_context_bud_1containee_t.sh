#!/bin/bash

this=$1
conee_1=$2

This=`capitalize_first.sh ${this}`
Conee_1=`capitalize_first.sh ${conee_1}`

if [ "${Conee_1}" == "" ] 
then 
    echo "$0 : Conee_1 (2nd argument) is missing"
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

sed -e "s/this/$this/g" -e "s/This/$This/g" \
    -e "s/conee_1/$conee_1/g" -e "s/Conee_1/$Conee_1/g" \
    -e "s/datstr/$datstr/g" -e "s/Datstr/$Datstr/g" \
    -e "s/List_t.//g" \
    ${template} > ${File}

if [ -s ${supplement} ] 
then 
    cat ${supplement} >> ${File}
else
    echo "supplement ${supplement} is empty"
fi

echo "" >> ${File}
echo "(* generated by $0 ${1} *)" >> ${File}
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
