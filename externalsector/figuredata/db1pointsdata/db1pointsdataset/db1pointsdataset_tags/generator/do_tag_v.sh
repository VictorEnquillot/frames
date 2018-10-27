#!/bin/bash

this=$1
This=`capitalize_first.sh ${this}`

dat=`date`
category=`echo $0 |cut -d"_" -f2`

gresuf=`echo "$0"| grep -c _v.sh`
if [ "$gresuf" == "1" ]
then suffix="v" 
else suffix="t"
fi

module="${this}_${category}_${suffix}"
Module=`capitalize_first.sh ${module}`
file="${module}.ml"
File=`capitalize_first.sh ${file}`

maint=`echo ${this} | cut -d"_" -f1` 
Maint=`capitalize_first.sh ${maint}`

case ${maint} in
    chemical ) mmm="che";;
    database ) mmm="dba";;
    elementary ) mmm="ele";;
    figure ) mmm="fig";;
    input ) mmm="inp";;
    primitive ) mmm="pri";;
    skeleton ) mmm="ske";;
    nwchemdata ) mmm="nwc";;
    db1pointsdata ) mmm="db1";;
    *) echo "";echo -n "Error: in script $0 : unknown maint >${maint}<";echo"";exit;;
esac
MMM=`echo $mmm | tr a-z A-Z`

template="template_tag_v.ml"
supplement="${This}_tag_supplement_v.ml"

category="tag"

sed -e "s/this/$this/g" -e "s/This/$This/g"  \
    -e "s/maint/${maint}/g" -e "s/Maint/${Maint}/g" -e "s/mmm/${mmm}/g" -e "s/MMM/${MMM}/g" \
        ${template} > ${File}

if [ -f ${supplement} ] 
then 
    cat ${supplement} >> ${File} 
fi

dat=`date`

echo "" >> ${File}
echo "(* Done by generator/$0 ${this} *)" >> ${File}
echo "(* using generator/${template} *)" >> ${File}

if [ -f ${supplement} ] 
then
    echo "(* adding ${supplement} *)" >> ${File} 
fi

echo "(* Done on ${dat} *)" >> ${File}

echo " cat ${File}"
echo " mv ${File} ../"
echo " make $Module.cmo"
echo "" >> ${File}

