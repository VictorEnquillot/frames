REGISTERS_V_MLI := \
Basicname_inputbox_n_basicname_inputbase_by_localinput_set_tag_register_v.mli \
Localinput_creation_module_name_by_sole_index_register_v.mli \
Localinput_set_fence_by_localinput_tag_register_v.mli \
Localinput_son_tag_list_by_localinput_father_tag_register_v.mli \
Localinput_symbol_by_sole_index_register_v.mli \
Localinput_symbol_subtree_by_basicname_inputbox_register_v.mli \
Localinput_tag_all_list_by_basicname_inputbox_register_v.mli \
Localinput_tag_all_list_by_localinput_context_inputbox_tag_register_v.mli \
Localinput_tag_subtree_by_localinput_tag_register_v.mli \
Localinput_tag_tree_by_basicname_inputbox_register_v.mli \
  
CONTEXT_NAME_V_MLI := \
Localinput_basicname_trio_by_unit_provider_v.mli \
Localinput_basicname_sector_by_unit_provider_v.mli \
Localinput_basicname_domain_by_unit_provider_v.mli \
Localinput_basicname_inputbase_by_unit_provider_v.mli \
 
CONTEXT_TAG_V_MLI := \
Localinput_context_sector_tag_by_unit_provider_v.mli \
Localinput_as_context_sector_tag_by_unit_provider_v.mli \
 \
Localinput_context_domain_tag_by_unit_provider_v.mli \
Localinput_as_context_domain_tag_by_unit_provider_v.mli \
 \
Localinput_context_inputbase_tag_by_unit_provider_v.mli \
Localinput_as_context_database_tag_by_unit_provider_v.mli \
 \
Localinput_context_inputbox_tag_by_basicname_inputbox_provider_v.mli \
Localinput_as_context_databox_tag_by_basicname_inputbox_provider_v.mli \
 \
Localinput_context_inputbox_sole_index_by_any_sole_index_provider_v.mli \
Localinput_basicname_inputbox_by_any_sole_index_provider_v.mli \
Localinput_context_inputbox_symbol_by_any_sole_index_provider_v.mli \
Localinput_context_inputbox_tag_by_any_sole_index_provider_v.mli \
 \
Basicname_inputbox_n_basicname_inputbase_by_localinput_set_tag_provider_v.mli \
Inputbox_fullnameoffile_by_localinput_tag_provider_v.mli \
  
CONTEXT_TAG_QUATUOR_V_MLI := \
Localinput_as_context_tag_quatuor_by_basicname_inputbox_provider_v.mli \
Localinput_context_tag_quadruplet_by_basicname_inputbox_provider_v.mli \

SYMBOL_SUBTREE_FROM_PARSER_V_MLI := \
Localinput_symbol_subtree_by_basicname_inputbox_provider_v.mli \
Localinput_symbol_subtree_by_localinput_context_inputbox_tag_provider_v.mli \

TAG_TREE_V_MLI := \
Localinput_tag_tree_by_basicname_inputbox_provider_v.mli \
Localinput_tag_tree_by_localinput_context_inputbox_tag_provider_v.mli \
 
INTERFACES_V_MLI := \
Localinput_tag_all_list_by_basicname_inputbox_provider_v.mli \
Localinput_tag_all_list_by_localinput_context_inputbox_tag_provider_v.mli \
 
EXTRACTORS_V_MLI := \
Localinput_symbol_by_sole_index_register_filler_v.mli \
Localinput_symbol_by_sole_index_provider_v.mli \
Localinput_any_category_by_sole_index_extractor_v.mli \
Localinput_son_tag_list_by_localinput_father_tag_provider_v.mli \
 
SUBTREES_LIST_V_MLI := \
Localinput_tag_subtree_by_localinput_tag_provider_v.mli \
#Localinput_as_set_body_handle_command_creation_define_tag_subtree_list_by_localinput_tag_provider_v.mli \
 
FENCE_V_MLI := \
Localinput_set_fence_by_localinput_tag_provider_v.mli \
 
FILES_MLI := \
$(REGISTERS_V_MLI) \
$(CONTEXT_NAME_V_MLI) \
$(CONTEXT_TAG_V_MLI) \
$(CONTEXT_TAG_QUATUOR_V_MLI) \
$(SYMBOL_SUBTREE_FROM_PARSER_V_MLI) \
$(TAG_TREE_V_MLI) \
$(INTERFACES_V_MLI) \
$(EXTRACTORS_V_MLI) \
$(SUBTREES_LIST_V_MLI) \
$(FENCE_V_MLI) \

