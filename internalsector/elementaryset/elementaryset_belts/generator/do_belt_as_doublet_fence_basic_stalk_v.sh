#!/bin/bash

thup=$1
thty=$2
ttt=$3
this="${thup}_${thty}"

This=`capitalize_first.sh ${this}`
Thup=`capitalize_first.sh ${thup}`
Thty=`capitalize_first.sh ${thty}`

if [ "${ttt}" == "" ] 
then
    echo "" 
    echo "$0 : ttt (3th argument) is missing"
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

Bundr=`capitalize_first.sh ${bundr}`
Dta=`capitalize_first.sh ${dta}`
Fnc=`capitalize_first.sh ${fnc}`
Clsur=`capitalize_first.sh ${clsur}`
Datstr=`capitalize_first.sh ${datstr}`
Mainb=`capitalize_first.sh ${mainb}`
Sibling_1=`capitalize_first.sh ${sibling_1}`
Sibling_2=`capitalize_first.sh ${sibling_2}`

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

sed -e "s/this/$this/g" -e "s/ttt/$ttt/g" -e "s/This/$This/g" \
    -e "s/thup/$thup/g" -e "s/Thup/$Thup/g" \
    -e "s/thty/$thty/g" -e "s/Thty/$Thty/g" \
    -e "s/mainb/${mainb}/g" -e "s/Mainb/${Mainb}/g" \
    -e "s/maint/${maint}/g" -e "s/Maint/${Maint}/g" -e "s/mmm/${mmm}/g" -e "s/MMM/${MMM}/g" \
    -e "s/conee_1/$conee_1/g" -e "s/Conee_1/$Conee_1/g" -e "s/cnn/$cnn/g" \
    -e "s/bundr/$bundr/g" -e "s/Bundr/$Bundr/g" -e "s/bny/$bny/g" \
    -e "s/dta/$dta/g" -e "s/Dta/$Dta/g" -e "s/ddd/$ddd/g" \
    -e "s/fnc/$fnc/g" -e "s/Fnc/$Fnc/g" -e "s/fff/$fff/g" \
    -e "s/clsur/$clsur/g" -e "s/Clsur/$Clsur/g" -e "s/ccc/$ccc/g" \
    -e "s/datstr/$datstr/g" -e "s/Datstr/$Datstr/g" \
    -e "s/sibling_1/$sibling_1/g" -e "s/Sibling_1/$Sibling_1/g" -e "s/sib_1/$sib_1/g" \
    -e "s/sibling_2/$sibling_2/g" -e "s/Sibling_2/$Sibling_2/g" -e "s/sib_2/$sib_2/g" \
    -e "s/bui_1/$bui_1/g" -e "s/bui_2/$bui_2/g" -e "s/bui_3/$bui_3/g" \
     ${template} > ${File}


if [ -s ${supplement} ] 
then 
    cat ${supplement} >> ${File}
else
    echo "supplement ${supplement} is empty"
fi

echo "" >> ${File}
echo "(* generated by $0 ${1} ${2} *)" >> ${File}
echo "(* using ${template} *)" >> ${File}

if [ -s ${supplement} ] 
then
    echo "(* adding ${supplement} *)" >> ${File} 
fi

echo "(* Done on ${dat} *)" >> ${File}

echo " cat ${File}"
echo " mv ${File} ../"
echo " make $Module.cmo"