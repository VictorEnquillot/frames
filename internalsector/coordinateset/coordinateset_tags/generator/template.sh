#!/bin/bash

this=$1
builder=$2
ttt=$3
bbb=$4
bu1=$5
bu2=$6
bu3=$7

category="???"
here="???"

This=`capitalize_first.sh ${this}`
Builder=`capitalize_first.sh ${builder}`

template="template_${category}_${here}_v.ml"
supplement="${This}_${category}_supplement_v.ml"

if [ ! -f ${template} ] 
then 
    echo "file ${template} is missing"
    exit
fi

sed -e ....

if [ -f ${supplement} ]
then
    cat w ${supplement} >> c
fi

dat=`date`

echo "" >> c
echo "(* Done by $0 ${this} ${builder} ${ttt} ${bbb} ${bu1} ${bu2} ${bu3} *)" >> c
echo "(* using ${template} *)" >> c
if [ -f ${supplement} ] 
then
    echo "(* adding ${supplement} *)" >> c 
fi
echo "(* on ${dat} *)" >> c

cp c ${This}_${category}_v.ml 

echo cat ${This}_${category}_v.ml
echo mv ${This}_${category}_v.ml ../
echo make ${This}_${category}_v.cmo
