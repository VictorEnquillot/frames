#!/bin/bash

this=$1

This=`capitalize_first.sh ${this}`

template="template_tag_t.ml"
supplement="${This}_tag_supplement_t.ml"

category="tag"

sed -e "s/this/$this/g" -e "s/This/$This/g" ${template} > c

if [ -f ${supplement} ] 
then 
    cat ${supplement} >> c 
fi

dat=`date`

echo "" >> c
echo "(* Done by $0 ${this} *)" >> c
echo "(* using ${template} *)" >> c

if [ -f ${supplement} ] 
then
    echo "(* adding ${supplement} *)" >> c 
fi
echo "(* on ${dat} *)" >> c

cp c ${This}_${category}_t.ml 

echo cat ${This}_${category}_t.ml
echo mv ${This}_${category}_t.ml ../
echo make ${This}_${category}_t.cmo