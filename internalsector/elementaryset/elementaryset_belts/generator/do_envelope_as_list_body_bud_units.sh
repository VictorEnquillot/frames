#!/bin/bash

this=$1
ttt=$2
envee_1=$3
vvv_1=4
sibenv_1=$5
sbv_1=$6
sibenv_2=$7
sbv_2=$8
untup=$9
uuu=${10}
unts_1=${11}
uut_1=${12}

This=`capitalize_first.sh ${this}`
Envee_1=`capitalize_first.sh ${envee_1}`
Sibenv_1=`capitalize_first.sh ${sibenv_1}`
Sibenv_2=`capitalize_first.sh ${sibenv_2}`

if [ "${uut_1}" == "" ] 
then 
    echo "$0 : uut_1 (12th argument) is missing"
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

sed -e "s/this/$this/g"     -e "s/ttt/$ttt/g" -e "s/This/$This/g" \
    -e "s/maint/${maint}/g" -e "s/Maint/${Maint}/g" -e "s/mmm/${mmm}/g" -e "s/MMM/${MMM}/g" \
    -e "s/thup/$thup/g" -e "s/Thup/$Thup/g" \
    -e "s/thpl/$thpl/g" -e "s/Thpl/$Thpl/g" \
    -e "s/envee_1/$envee_1/g" -e "s/Envee_1/$Envee_1/g" -e "s/cnn_1/$cnn_1/g" \
    -e "s/envee_2/$envee_2/g" -e "s/Envee_2/$Envee_2/g" -e "s/cnn_2/$cnn_2/g" \
    -e "s/envee_3/$envee_3/g" -e "s/Envee_3/$Envee_3/g" -e "s/cnn_3/$cnn_3/g" \
    -e "s/sibenv_1/${sibenv_1}/g" -e "s/Sibenv_1/${Sibenv_1}/g" -e "s/sbv_1/${sbv_1}/g" \
    -e "s/sibenv_2/${sibenv_2}/g" -e "s/Sibenv_2/${Sibenv_2}/g" -e "s/sbv_2/${sbv_2}/g" \
    -e "s/sibling_3/${sibling_3}/g" -e "s/Sibling_3/${Sibling_3}/g" -e "s/sib_3/${sib_3}/g" \
    -e "s/sibling_4/${sibling_4}/g" -e "s/Sibling_4/${Sibling_4}/g" -e "s/sib_4/${sib_4}/g" \
    -e "s/clsur/$clsur/g"   -e "s/Clsur/$Clsur/g" -e "s/ccc/$ccc/g" \
    -e "s/datstr/$datstr/g" -e "s/Datstr/$Datstr/g" \
    -e "s/fnc/$fnc/g"       -e "s/Fnc/$Fnc/g" \
    -e "s/deepfn/$deepfn/g" -e "s/Deepfn/$Deepfn/g" \
    -e "s/dta/$dta/g"       -e "s/Dta/$Dta/g" \
    -e "s/untup/${untup}/g" -e "s/Untup/${Untup}/g" -e "s/uuu/${uuu}/g" \
    -e "s/unts_1/${unts_1}/g" -e "s/Unts_1/${Unts_1}/g" -e "s/uut_1/${uut_1}/g" \
    -e "s/bui_1/${bui_1}/g" \
    -e "s/bui_2/${bui_2}/g" \
    -e "s/bui_3/${bui_3}/g" \
    -e "s/iii_1/${iii_1}/g" \
    -e "s/iii_2/${iii_2}/g" \
    -e "s/iii_3/${iii_3}/g" \
     ${template} > ${File}

if [ -s ${supplement} ] 
then 
    cat ${supplement} >> ${File}
else
    echo "supplement ${supplement} is empty"
fi

echo "" >> ${File}
echo "(* generated by $0 ${1} ${2} ${3} ${4} ${5} ${6} ${7} ${8} ${9} ${10} ${11} ${12} *)" >> ${File}
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

