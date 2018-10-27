#!/bin/bash


# ancien IPRO : property_interfaces

cp $BSKE/*.mk .
cp $BSKE/*.ml .
cp $BSKE/Makefile .
cp $BSKE/.depend .
cp -p $BSKE/configure* .

modify_strings_and_rename_files.sh skeleton property *ml *mk
modify_strings_and_rename_files.sh Skeleton Property *ml *mk
modify_strings_and_rename_files.sh nwchemdata localinput *ml *mk
modify_strings_and_rename_files.sh Nwchem Localinput *ml *mk

#cp $BSKE/Database_name_by_skeleton_context_databox_tag_provider_v.ml .
#cp $BSKE/Databox_name_n_database_name_by_skeleton_context_databox_tag_provider_v.ml .
#cp $BSKE/Databox_name_n_database_name_by_skeleton_context_databox_tag_register_v.ml .

modify_strings_and_rename_files.sh databox_name_n_database_name inputbox_name_n_inputbase_name *ml *mk
modify_strings_and_rename_files.sh Databox_name_n_database_name Inputbox_name_n_inputbase_name *ml *mk

modify_strings_and_rename_files.sh roperty_context_database roperty_context_inputbase  *ml *mk
modify_strings_and_rename_files.sh roperty_context_databox roperty_context_inputbox  *ml *mk

modify_strings_and_rename_files.sh databox     inputbox  *.ml *.mk
modify_strings_and_rename_files.sh database    inputbase *.ml *.mk

modify_strings_and_rename_files.sh Databox     Inputbox  *.ml *.mk
modify_strings_and_rename_files.sh Database    Inputbase *.ml *.mk

modify_word.pl   BSKE BPRO *ml
modify_string.pl SKELETONSET PROPERTYSET *mk
modify_string.pl NWCHEMDATA  LOCALINPUT *mk
modify_string.pl DATABOX     INPUTBOX files_mli.mk
modify_string.pl DATABASE    INPUTBASE files_mli.mk

modify_string.pl _ske _pro *ml
modify_string.pl _sbo _pbo *ml
modify_string.pl _sba _pba *ml
modify_string.pl _scd _pcd *ml
modify_string.pl _scs _pcs *ml

IPRO=${PROS}/propertyset_interfaces

cp $IPRO/Property_as_operand_target_symbol_subtree_by_input_body_handle_command_creation_define_tag_provider_v.ml .
cp $IPRO/Property_as_target_implicit_unit_symbol_subtree_by_input_body_handle_command_unit_tag_provider_v.ml .
cp $IPRO/Property_as_operand_target_symbol_subtree_by_input_body_handle_command_tag_provider_v.ml .
 \
cp $IPRO/Property_operator_tounit_symbol_by_input_fence_variable_name_entity_implicit_tag_provider_v.ml .
cp $IPRO/Property_as_operand_target_symbol_by_input_fence_variable_name_entity_target_tag_provider_v.ml .
cp $IPRO/Property_operand_target_symbol_by_input_fence_variable_name_entity_target_tag_provider_v.ml .
 
cp $IPRO/Property_symbol_subtree_by_input_fence_variable_name_operator_tag_provider_v.ml .
cp $IPRO/Property_symbol_subtree_by_input_fence_variable_name_entity_tag_provider_v.ml .

cp $BLOI/KEEP/Make_argument_by_input_body_box_type_tag_provider_v.ml .
cp $BLOI/KEEP/Make_argument_by_input_fence_variable_name_entity_string_off_provider_v.ml .
cp $BLOI/KEEP/Make_argument_by_input_fence_variable_name_entity_tag_provider_v.ml .
cp $BLOI/KEEP/Input_body_box_type_string_list_by_input_fence_variable_name_entity_tag_provider_v.ml .
cp $BLOI/KEEP/Input_body_box_type_string_list_by_input_body_box_type_tag_provider_v.ml .
cp $BLOI/KEEP/Input_body_box_type_string_list_by_input_body_box_type_tag_provider_v.ml .
cp $BLOI/KEEP/Input_body_box_type_string_list_by_input_fence_variable_name_entity_string_off_provider_v.ml .
cp $BLOI/KEEP/Input_body_box_type_string_list_by_input_fence_variable_name_entity_tag_provider_v.ml .
cp $BLOI/KEEP/Input_as_body_handle_command_creation_define_tag_subtree_by_input_fence_variable_name_entity_string_off_provider_v.ml .
cp $BLOI/KEEP/Input_as_body_handle_command_creation_define_tag_subtree_list_by_input_fullnameoffile_provider_v.ml .

modify_strings_and_rename_files.sh _input_fullnameoffile_  _inputbox_name_ *.ml *.mk
modify_strings_and_rename_files.sh _input_ _localinput_  *.ml *.mk
modify_strings_and_rename_files.sh Input_ Localinput_  *.ml *.mk
# 
# sed '/TRANSLATION_FROM_NWCHEMDATA_V_MLI/ {
#      a Skeleton_symbol_from_nwchem_tag_translations_v.mli \\
#    }' < files_mli.mk > f

# mv f files_mli.mk

# do_extractor.sh force 

# do_provider_register_translator_extractor_all.sh force > o

# generator/generate_from_skeleton_builder_trees_all.sh
