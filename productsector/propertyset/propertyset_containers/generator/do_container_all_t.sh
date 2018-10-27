#!/bin/bash

# fence bud 
./do_container_as_uno_fence_bud_0containee_t.sh property_operand_fence_external
./do_container_as_uno_fence_bud_0containee_t.sh property_operator_fence_creation_tobasic
./do_container_as_uno_fence_bud_0containee_t.sh property_operator_fence_creation_toentity
./do_container_as_uno_fence_bud_0containee_t.sh property_operator_fence_creation_tomeasure
./do_container_as_uno_fence_bud_0containee_t.sh property_operator_fence_tounit_print
./do_container_as_uno_fence_bud_0containee_t.sh property_operator_fence_tounit_write

# context bud 

./do_container_as_list_context_bud_1containee_t.sh property_context_sector property_context_domain
./do_container_as_list_context_bud_1containee_t.sh property_context_domain property_context_inputbase
./do_container_as_list_context_bud_1containee_t.sh property_context_inputbase property_context_inputbox
./do_container_as_list_context_bud_1containee_t.sh property_context_inputbox property_target_body_implicit_tounit

# body bud 

./do_container_as_duo_body_bud_1containee_t.sh \
property_command_body_debug \
property_operand_fence_external

./do_container_as_singlet_body_bud_1containee_t.sh \
property_command_body_set \
property_command_body 

./do_container_as_singlet_body_bud_1containee_t.sh \
property_command_body_title \
property_operand_fence_external

./do_container_as_singlet_body_bud_1containee_t.sh \
property_command_body_trace \
property_operand_fence_external

# Operand_body

./do_container_as_doublet_body_bud_2containee_t.sh \
property_operand_body_target_calculated \
property_operator_fence_creation_tobasic \
property_operand

./do_container_as_doublet_body_bud_2containee_t.sh \
property_operand_body_target_created \
property_operator_fence_creation_toentity \
property_operand

./do_container_as_doublet_body_bud_2containee_t.sh \
property_operand_body_target_measured \
property_operator_fence_creation_tomeasure \
property_operand

# Target_body

./do_container_as_doublet_body_bud_2containee_t.sh \
property_target_body_implicit_tounit  \
property_operator_fence_tounit \
property_operand

# Specific Containers

# Coerced Containers
# all trunk

for i in `ls $SPRO/Property*symbol_t.ml`
do
    f=`basename $i`
    a=`echo $f | sed 's/_symbol_t.ml//' |  tr A-Z a-z `
    if [ `grep -c " of string" $i` == 0 ]
    then
	./do_container_from_symbol_this_t.sh $a
    fi
done

echo ""
echo " mv Property_*t.ml ../"
echo ""

exit
