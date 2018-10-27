#!/bin/bash

args=$*

this=$1
ttt=$2
sibext_1=$3
sib_1=$4
sibext_2=$5
sib_2=$6
sibext_3=$7
sib_3=$8
sibext_4=$9
sib_4=${10}
conee_up=${11}
cnn_up=${12}
conee_1=${13}
cnn_1=${14}

last=14

sibling_1=${this}_${sibext_1}
sibling_2=${this}_${sibext_2}
sibling_3=${this}_${sibext_3}
sibling_4=${this}_${sibext_4}

This=`capitalize_first.sh ${this}`
Conee_up=`capitalize_first.sh ${conee_up}`
Conee_1=`capitalize_first.sh ${conee_1}`
Sibext_1=`capitalize_first.sh ${sibext_1}`
Sibext_2=`capitalize_first.sh ${sibext_2}`
Sibext_3=`capitalize_first.sh ${sibext_3}`
Sibext_4=`capitalize_first.sh ${sibext_4}`
Sibling_1=`capitalize_first.sh ${sibling_1}`
Sibling_2=`capitalize_first.sh ${sibling_2}`
Sibling_3=`capitalize_first.sh ${sibling_3}`
Sibling_4=`capitalize_first.sh ${sibling_4}`

if [ $# -ne $last ] 
then 
    echo "number of arguments is $# instead of $last for $0 ${this}"
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

Mainb=`capitalize_first.sh ${mainb}`
Maint=`capitalize_first.sh ${maint}`

Bundr=`capitalize_first.sh ${bundr}`
Dta=`capitalize_first.sh ${dta}`
Fnc=`capitalize_first.sh ${fnc}`
Clsur=`capitalize_first.sh ${clsur}`
Datstr=`capitalize_first.sh ${datstr}`

sed -e "s/this/$this/g"     -e "s/ttt/$ttt/g" -e "s/This/$This/g" \
    -e "s/maint/${maint}/g" -e "s/Maint/${Maint}/g" -e "s/mmm/${mmm}/g" -e "s/MMM/${MMM}/g" \
    -e "s/conee_up/${conee_up}/g"   -e "s/Conee_up/${Conee_up}/g"   -e "s/cnn_up/${cnn_up}/g" \
    -e "s/conee_1/$conee_1/g"       -e "s/Conee_1/$Conee_1/g"       -e "s/cnn_1/$cnn_1/g" \
    -e "s/sibling_1/${sibling_1}/g" -e "s/Sibling_1/${Sibling_1}/g" -e "s/sib_1/${sib_1}/g" \
    -e "s/sibling_2/${sibling_2}/g" -e "s/Sibling_2/${Sibling_2}/g" -e "s/sib_2/${sib_2}/g" \
    -e "s/sibling_3/${sibling_3}/g" -e "s/Sibling_3/${Sibling_3}/g" -e "s/sib_3/${sib_3}/g" \
    -e "s/sibling_4/${sibling_4}/g" -e "s/Sibling_4/${Sibling_4}/g" -e "s/sib_4/${sib_4}/g" \
    -e "s/sibext_1/${sibext_1}/g" -e "s/Sibext_1/${Sibext_1}/g" \
    -e "s/sibext_2/${sibext_2}/g" -e "s/Sibext_2/${Sibext_2}/g" \
    -e "s/sibext_3/${sibext_3}/g" -e "s/Sibext_3/${Sibext_3}/g" \
    -e "s/sibext_4/${sibext_4}/g" -e "s/Sibext_4/${Sibext_4}/g" \
    -e "s/clsur/$clsur/g"   -e "s/Clsur/$Clsur/g" -e "s/ccc/$ccc/g" \
    -e "s/datstr/$datstr/g" -e "s/Datstr/$Datstr/g" \
    -e "s/fnc/$fnc/g"       -e "s/Fnc/$Fnc/g" \
    -e "s/deepfn/$deepfn/g" -e "s/Deepfn/$Deepfn/g" \
    -e "s/dta/$dta/g"       -e "s/Dta/$Dta/g" \
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


