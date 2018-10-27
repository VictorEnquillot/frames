#!/bin/bash

this=$1
buldr=$2
ttt=$3
bbb=$4

if [ "${bbb}" == "" ] 
then 
    echo "$0 : bbb (4th argument) is missing"
    exit
fi

dat=`date`
category="container"
suffix="v"

This=`capitalize_first.sh ${this}`
Buldr=`capitalize_first.sh ${buldr}`
Mainb=`capitalize_first.sh ${mainb}`

template=`echo "$0" | sed -e 's/do_/template_/' -e 's/\.sh/.ml/'`
supplement="${This}_${category}_supplement_${suffix}.ml"

if [ ! -f ${template} ] 
then 
    echo "file ${template} is missing"
    exit
fi

sed -e "s/this/$this/g" -e "s/This/$This/g" \
    -e "s/buldr/$buldr/g" -e "s/Buldr/$Buldr/g" \
    -e "s/ttt/$ttt/g"   -e "s/bbb/$bbb/g" -e "s/mbu/$mbu/g" \
    ${template} > c

if [ -f ${supplement} ]
then
    cat ${supplement} >> c
fi

echo "" >> c
echo "(* generate/$0 ${this} ${buldr} ${ttt} ${bbb} *)" >> c
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
