#!/bin/bash

# fence bud 
./do_container_as_uno_fence_bud_1containee_t.sh parameter_set_fence_aopef_coefficient
./do_container_as_uno_fence_bud_1containee_t.sh parameter_set_fence_aopef_exponent
./do_container_as_uno_fence_bud_1containee_t.sh parameter_set_fence_ecppef_coefficient
./do_container_as_uno_fence_bud_1containee_t.sh parameter_set_fence_ecppef_exponent

# body bud 

./do_container_as_doublet_body_bud_2containee_t.sh parameter_set_body_tuple_aopef \
parameter_set_fence_aopef_exponent \
parameter_set_fence_aopef_coefficient

./do_container_as_triplet_body_bud_3containee_t.sh parameter_set_body_tuple_ecppef \
parameter_set_fence_ecppef_exponent \
parameter_set_fence_ecppef_coefficient \
parameter_set_fence_ecppef_coefficient 

# context bud 

./do_container_as_list_context_bud_1containee_t.sh parameter_context_sector parameter_context_domain
./do_container_as_list_context_bud_1containee_t.sh parameter_context_domain parameter_context_database
./do_container_as_list_context_bud_1containee_t.sh parameter_context_database parameter_context_databox
./do_container_as_list_context_bud_1containee_t.sh parameter_context_databox parameter_set_body_tuple

# all trunk

for i in `ls $SPAR/Parameter_*t.ml`
do
    f=`basename $i`
    a=`echo $f | sed 's/_symbol_t.ml//' |  tr A-Z a-z `
    s="supplement_${a}_container_t.ml"
    touch $s
    if [ `grep -c " of string" $i` == 0 ]
    then
	do_container_from_symbol_this_t.sh $a
    fi
done

