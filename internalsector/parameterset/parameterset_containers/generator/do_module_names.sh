#!/bin/bash

for i in `ls $SPAR/Parameter_fence_*t.ml`
do
    f=`basename $i`
    a=`echo $f | sed 's/_symbol_t.ml//' |  tr A-Z a-z `
    if [ `grep -c " of string" $i` == 0 ]
    then
	echo $a
    fi
done

