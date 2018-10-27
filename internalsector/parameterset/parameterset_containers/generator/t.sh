#!/bin/bash

for i in `ls $SPAR/Parameter_fence*t.ml`
do
    f=`basename $i`
    a=`echo $f | sed 's/_symbol_t.ml//' |  tr A-Z a-z `
    s="supplement_${a}_container_t.ml"
    touch $s
    if [ `grep -c " of string" $i` == 0 ]
    then
	echo "NOT DONE $a "
    else
	do_container_as_uno_bud_1containee_v.sh $a 
    fi
done

