REGISTERS_V_MLI := \
Basicname_databox_n_basicname_database_by_nwchemdata_context_databox_tag_register_v.mli \
Nwchemdata_creation_module_name_by_sole_index_register_v.mli \
Nwchemdata_set_fence_by_nwchemdata_tag_register_v.mli \
Nwchemdata_son_tag_list_by_nwchemdata_father_tag_register_v.mli \
Nwchemdata_symbol_by_sole_index_register_v.mli \
Nwchemdata_symbol_subtree_by_basicname_databox_register_v.mli \
Nwchemdata_tag_all_list_by_basicname_databox_register_v.mli \
Nwchemdata_tag_all_list_by_nwchemdata_context_databox_tag_register_v.mli \
Nwchemdata_tag_subtree_by_nwchemdata_tag_register_v.mli \
Nwchemdata_tag_tree_by_basicname_databox_register_v.mli \
  
CONTEXT_NAME_V_MLI := \
Nwchemdata_basicname_trio_by_unit_provider_v.mli \
Nwchemdata_basicname_sector_by_unit_provider_v.mli \
Nwchemdata_basicname_domainby_unit_provider_v.mli \
Nwchemdata_basicname_database_by_unit_provider_v.mli \
 
CONTEXT_TAG_V_MLI := \
Nwchemdata_context_sector_tag_by_unit_provider_v.mli \
Nwchemdata_as_context_sector_tag_by_unit_provider_v.mli \
 \
Nwchemdata_context_domain_tag_by_unit_provider_v.mli \
Nwchemdata_as_context_domain_tag_by_unit_provider_v.mli \
 \
Nwchemdata_context_database_tag_by_unit_provider_v.mli \
Nwchemdata_as_context_database_tag_by_unit_provider_v.mli \
 \
Nwchemdata_context_databox_tag_by_basicname_databox_provider_v.mli \
Nwchemdata_as_context_databox_tag_by_basicname_databox_provider_v.mli \
 \
Nwchemdata_context_databox_sole_index_by_any_sole_index_provider_v.mli \
Nwchemdata_context_databox_symbol_by_any_sole_index_provider_v.mli \
Nwchemdata_context_databox_tag_by_any_sole_index_provider_v.mli \
 \
Basicname_databox_by_nwchemdata_context_databox_tag_provider_v.mli \
Basicname_databox_n_basicname_database_by_nwchemdata_context_databox_tag_provider_v.mli \
 
CONTEXT_TAG_QUATUOR_V_MLI := \
Nwchemdata_as_context_tag_quatuor_by_basicname_databox_provider_v.mli \
Nwchemdata_context_tag_quadruplet_by_basicname_databox_provider_v.mli \

SYMBOL_SUBTREE_FROM_PARSER_V_MLI := \
Nwchemdata_symbol_subtree_by_basicname_databox_provider_v.mli \
Nwchemdata_symbol_subtree_by_nwchemdata_context_databox_tag_provider_v.mli \

TAG_TREE_V_MLI := \
Nwchemdata_tag_tree_by_basicname_databox_provider_v.mli \
Nwchemdata_tag_tree_by_nwchemdata_context_databox_tag_provider_v.mli \
 
INTERFACES_V_MLI := \
Nwchemdata_tag_all_list_by_basicname_databox_provider_v.mli \
Nwchemdata_tag_all_list_by_nwchemdata_context_databox_tag_provider_v.mli \
 
EXTRACTORS_V_MLI := \
Nwchemdata_symbol_by_sole_index_register_filler_v.mli \
Nwchemdata_symbol_by_sole_index_provider_v.mli \
Nwchemdata_any_category_by_sole_index_extractor_v.mli \
Nwchemdata_son_tag_list_by_nwchemdata_father_tag_provider_v.mli \
Nwchemdata_tag_subtree_by_nwchemdata_tag_provider_v.mli \
 
FENCE_V_MLI := \
Nwchemdata_as_set_body_node_aoset_numericalvalues_tag_list_by_nwchemdata_context_databox_tag_provider_v.mli \
Nwchemdata_as_set_body_node_aoset_numericalvalues_tag_list_by_basicname_databox_provider_v.mli \
Nwchemdata_set_body_node_aoset_numericalvalues_string_off_list_by_nwchemdata_context_databox_tag_provider_v.mli \
Nwchemdata_set_body_node_aoset_numericalvalues_string_off_list_by_basicname_databox_provider_v.mli \
Nwchemdata_set_fence_by_nwchemdata_tag_provider_v.mli \
Nwchemdata_as_set_body_node_aoset_numericalvalues_tag_subtree_list_by_basicname_databox_provider_v.mli \

MEASURE_V_MLI := \
Float_list_by_nwchemdata_set_body_node_aoset_numericalvalues_tag_provider_v.mli \
Units_tuple_by_nwchemdata_set_body_node_aoset_numericalvalues_tag_provider_v.mli \
Measure_list_by_nwchemdata_set_body_node_aoset_numericalvalues_tag_provider_v.mli \

FILES_MLI := \
$(REGISTERS_V_MLI) \
$(SYMBOL_SUBTREE_FROM_PARSER_V_MLI) \
$(CONTEXT_NAME_V_MLI) \
$(CONTEXT_TAG_V_MLI) \
$(CONTEXT_TAG_QUATUOR_V_MLI) \
$(TAG_TREE_V_MLI) \
$(INTERFACES_V_MLI) \
$(EXTRACTORS_V_MLI) \
$(FENCE_V_MLI) \
$(MEASURE_V_MLI) \
