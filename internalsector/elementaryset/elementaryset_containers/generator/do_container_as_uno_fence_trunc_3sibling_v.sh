#!/bin/bash

this=$1
ttt=$2
sibling_1=$3
sib_1=$4
sibling_2=$5
sib_2=$6
sibling_3=$7
sib_3=$8

This=`capitalize_first.sh ${this}`
Sibling_1=`capitalize_first.sh ${sibling_1}`
Sibling_2=`capitalize_first.sh ${sibling_2}`
Sibling_3=`capitalize_first.sh ${sibling_3}`
Sibling_4=`capitalize_first.sh ${sibling_4}`
cnn=$ttt
conee_1=$this
Conee_1=`capitalize_first.sh ${conee_1}`

if [ "${Sibling_3}" == "" ] 
then 
    echo "$0 : Sibling_3 (8th argument) is missing"
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

mainb=`echo ${buldr_1} | cut -d"_" -f1` 
maint=`echo ${this} | cut -d"_" -f1` 
Mainb=`capitalize_first.sh ${mainb}`
Maint=`capitalize_first.sh ${maint}`

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

Deepfn=`capitalize_first.sh ${deepfn}`
Fnc=`capitalize_first.sh ${fnc}`
Clsur=`capitalize_first.sh ${clsur}`
Datstr=`capitalize_first.sh ${datstr}`
Dta=`capitalize_first.sh ${dta}`

sed -e "s/this/$this/g" -e "s/This/$This/g" -e "s/ttt/$ttt/g" \
    -e "s/mainb/${mainb}/g" -e "s/Mainb/${Mainb}/g" \
    -e "s/maint/${maint}/g" -e "s/Maint/${Maint}/g" -e "s/mmm/${mmm}/g" -e "s/MMM/${MMM}/g" \
    -e "s/conee_1/$conee_1/g" -e "s/Conee_1/$Conee_1/g" -e "s/cnn/$cnn/g" \
    -e "s/clsur/$clsur/g" -e "s/Clsur/$Clsur/g" -e "s/ccc/$ccc/g" \
    -e "s/sibling_1/${sibling_1}/g" -e "s/Sibling_1/${Sibling_1}/g" -e "s/sib_1/${sib_1}/g" \
    -e "s/sibling_2/${sibling_2}/g" -e "s/Sibling_2/${Sibling_2}/g" -e "s/sib_2/${sib_2}/g" \
    -e "s/sibling_3/${sibling_3}/g" -e "s/Sibling_3/${Sibling_3}/g" -e "s/sib_3/${sib_3}/g" \
    -e "s/sibling_4/${sibling_4}/g" -e "s/Sibling_4/${Sibling_4}/g" -e "s/sib_4/${sib_4}/g" \
    -e "s/datstr/$datstr/g" -e "s/Datstr/$Datstr/g" \
    -e "s/fnc/$fnc/g" -e "s/Fnc/$Fnc/g" \
    -e "s/deepfn/$deepfn/g" -e "s/Deepfn/$Deepfn/g" \
    -e "s/dta/$dta/g" -e "s/Dta/$Dta/g" \
    -e "s/bui_1/${bui_1}/g" \
    -e "s/bui_2/${bui_2}/g" \
    -e "s/bui_3/${bui_3}/g" \
    -e "s/bui_4/${bui_4}/g" \
    -e "s/iii_1/${iii_1}/g" \
    -e "s/iii_2/${iii_2}/g" \
    -e "s/iii_3/${iii_3}/g" \
    -e "s/iii_4/${iii_4}/g" \
     ${template} > ${File}

if [ -s ${supplement} ] 
then 
    cat ${supplement} >> ${File}
else
    echo "supplement ${supplement} is empty"
fi

echo "" >> ${File}
echo "(* generated by $0 ${1} ${2} ${3} ${4} ${5} ${6} ${7} ${8} ${9} ${10} *)" >> ${File}
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


