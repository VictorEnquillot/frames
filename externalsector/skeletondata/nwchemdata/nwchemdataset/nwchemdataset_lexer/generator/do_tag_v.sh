#!/bin/bash

this=$1

This=`capitalize_first.sh ${this}`

template="template_tag_v.ml"
supplement="${This}_tag_supplement_v.ml"

category="tag"

sed -e "s/this/$this/g" -e "s/This/$This/g" \
        ${template} > c

if [ -f ${supplement} ] 
then 
    cat ${supplement} >> c 
fi

dat=`date`

echo "" >> c
echo "(* Done by generator/$0 ${this} *)" >> c
echo "(* using generator/${template} *)" >> c

if [ -f ${supplement} ] 
then
    echo "(* adding ${supplement} *)" >> c 
fi
echo "(* on ${dat} *)" >> c

cp c ${This}_${category}_v.ml 

echo cat ${This}_${category}_v.ml
echo mv ${This}_${category}_v.ml ../
echo make ${This}_${category}_v.cmo