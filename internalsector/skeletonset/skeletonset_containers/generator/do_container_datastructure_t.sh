#!/bin/bash

this=$1
buldr=$2
datastr=$3

This=`capitalize_first.sh ${this}`
Buldr=`capitalize_first.sh ${buldr}`
Datastr=`capitalize_first.sh ${datastr}`

dat=`date`
category="container"
suffix="t"

template=`echo "$0" | sed -e 's/do_/template_/' -e 's/\.sh/.ml/'`
supplement="${This}_${category}_supplement_${suffix}.ml"

sed -e "s/this/$this/g" -e "s/This/$This/g" \
    -e "s/buldr/$buldr/g" -e "s/Buldr/$Buldr/g" \
    -e "s/datastr/$datastr/g" -e "s/Datastr/$Datastr/g" \
    -e "s/List_t.//g" \
    ${template} > c

if [ -f ${supplement} ] 
then 
    cat ${supplement} >> c 
fi

echo "" >> c
echo "(* generate/$0 ${this} ${buldr} ${datastr} *)" >> c
echo "(* using ${template} *)" >> c

if [ -f ${supplement} ] 
then
    echo "(* adding ${supplement} *)" >> c 
fi

echo "(* done on ${dat} *)" >> c

cp c ${This}_${category}_${suffix}.ml 

echo  cat ${This}_${category}_${suffix}.ml
echo  mv ${This}_${category}_${suffix}.ml ../
echo  make ${This}_${category}_${suffix}.cmo
