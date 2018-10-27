#!/bin/bash

this=$1
ttt=$2

if [ "${ttt}" == "" ] 
then 
    echo "$0 : ttt (2th argument) is missing"
    exit
fi

dat=`date`
category=`echo $0 |cut -d"_" -f2`

gresuf=`echo "$0"| grep -c _v.sh`
if [ "$gresuf" == "1" ]
then suffix="v" 
else suffix="t"
fi

mainb=`echo ${buldr_1} | cut -d"_" -f1` 
maint=`echo ${this} | cut -d"_" -f1` 

case ${maint} in
    chemical ) mmm="che";;
    database ) mmm="dba";;
    elementary ) mmm="ele";;
    figure ) mmm="fig";;
    input ) mmm="inp";;
    primitive ) mmm="pri";;
    prototype ) mmm="prt";;
    *) echo "";echo -n "Error: in script $0 : unknown maint >${maint}<";echo"";exit;;
esac
MMM=`echo $mmm | tr a-z A-Z`

Mainb=`capitalize_first.sh ${mainb}`
Maint=`capitalize_first.sh ${maint}`

This=`capitalize_first.sh ${this}`
Sibling_1=`capitalize_first.sh ${sibling_1}`
Sibling_2=`capitalize_first.sh ${sibling_2}`
Sibling_3=`capitalize_first.sh ${sibling_3}`
Buldr=`capitalize_first.sh ${buldr}`
Clsur=`capitalize_first.sh ${clsur}`
Datstr=`capitalize_first.sh ${datstr}`

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
    -e "s/mainb/${mainb}/g" -e "s/Mainb/${Mainb}/g" \
    -e "s/maint/${maint}/g" -e "s/Maint/${Maint}/g" -e "s/mmm/${mmm}/g" -e "s/MMM/${MMM}/g" \
    -e "s/ttt/$ttt/g" -e "s/bbb/$bbb/g" \
    -e "s/buldr/$buldr/g" -e "s/Buldr/$Buldr/g" -e "s/bbb/$bbb/g" \
    -e "s/clsur/$clsur/g" -e "s/Clsur/$Clsur/g" -e "s/ccc/$ccc/g" \
    -e "s/datstr/$datstr/g" -e "s/Datstr/$Datstr/g" \
    -e "s/dta/$dta/g" -e "s/Dta/$Dta/g" \
    -e "s/sibling_1/${sibling_1}/g" -e "s/Sibling_1/${Sibling_1}/g" -e "s/sib_1/${sib_1}/g" \
    -e "s/sibling_2/${sibling_2}/g" -e "s/Sibling_2/${Sibling_2}/g" -e "s/sib_2/${sib_2}/g" \
    -e "s/sibling_3/${sibling_3}/g" -e "s/Sibling_3/${Sibling_3}/g" -e "s/sib_3/${sib_3}/g" \
     ${template} > ${File}

if [ -s ${supplement} ] 
then 
    cat ${supplement} >> ${File}
else
    echo "supplement ${supplement} is empty"
fi

echo "" >> ${File}
echo "(* generated by $0 ${this} ${ttt} ${datstr} *)" >> ${File}
echo "(* using ${template} *)" >> ${File}

if [ -s ${supplement} ] 
then
    echo "(* adding ${supplement} *)" >> ${File} 
fi

echo "(* Done on ${dat} *)" >> ${File}

echo " cat ${File}"
echo " mv ${File} ../"
echo " make $Module.cmo"