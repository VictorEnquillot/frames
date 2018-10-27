#!/bin/bash

this=$1
sibling_1=$2
This=`capitalize_first.sh ${this}`
Sibling_1=`capitalize_first.sh ${sibling_1}`

dat=`date`
category="container"
suffix="t"

type="type ${this}_${category} = ${Sibling_1}_${category} of ${Sibling_1}_${category}_t.${sibling_1}_${category};;"
file="${This}_${category}_${suffix}.ml" 

echo "$type" > ${file}
echo "(* generate/$0 ${this} *)" >> $file
echo "(* using ${template} *)" >> $file
echo "(* done on ${dat} *)" >> $file

echo " less ${This}_${category}_${suffix}.ml"
echo " mv ${This}_${category}_${suffix}.ml ../"
echo " make ${This}_${category}_${suffix}.cmo"