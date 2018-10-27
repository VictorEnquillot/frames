#!/bin/bash

#cp $BLOI/unitary_tests/Localinput_context_*name_by_unit_provider_u_any.ml .
#cp $BLOI/unitary_tests/Localinput_context_*tag_by_unit_provider_u_any.ml .
#cp $BLOI/unitary_tests/Localinput_as_context_*tag_by_unit_provider_u_any.ml .
#cp $BPRO/unitary_tests/Check_consistency_by_inputbox_name_n_inputbase_name_provider_u_any.ml .


cp $BLOI/unitary_tests/Localinput_context_name_trio_by_unit_provider_u_any.ml .
cp $BLOI/unitary_tests/Localinput_context_inputbox_sole_index_by_any_sole_index_provider_u_any.ml .
cp $BLOI/unitary_tests/Localinput_context_inputbox_name_by_any_sole_index_provider_u_any.ml .
cp $BLOI/unitary_tests/Localinput_context_inputbox_symbol_by_any_sole_index_provider_u_any.ml .
cp $BLOI/unitary_tests/Localinput_context_inputbox_tag_by_any_sole_index_provider_u_any.ml .


modify_strings_and_rename_files.sh localinput property Local*ml 
modify_strings_and_rename_files.sh Localinput Property Local*ml 

modify_strings_and_rename_files.sh Property_tag_tree_by_inputbox_name_provider Property_tag_tree_by_inputbox_name_n_inputbase_name_provider *ml

modify_strings_and_rename_files.sh Property_tag_all_list_by_inputbox_name_provider Property_tag_all_list_by_inputbox_name_n_inputbase_name_provider *ml

modify_string.pl  "by_inputbox_name_n_inputbase_name_provider_v.provide nam_ibo" "by_inputbox_name_n_inputbase_name_provider_v.provide (nam_ibo, nam_iba)" *ml

for i in Property*u_any.ml
do
    generator/insert_let_nam_iba.sh $i
done