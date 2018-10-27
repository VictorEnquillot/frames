#!/bin/bash

# all 

for i in `ls $SPRO/Property*symbol_t.ml`
do
    f=`basename $i`
    a=`echo $f | sed 's/_symbol_t.ml//' |  tr A-Z a-z `
    echo " "
    ./do_envelope_as_list_t.sh $a
done
