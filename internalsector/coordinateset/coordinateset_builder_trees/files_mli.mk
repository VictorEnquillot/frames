REGISTERS_V_MLI := \
Basicname_databox_n_basicname_database_by_coordinate_context_databox_tag_register_v.mli \
Coordinate_creation_module_name_by_sole_index_register_v.mli \
Coordinate_father_tag_by_coordinate_son_tag_register_v.mli \
Coordinate_set_fence_by_coordinate_tag_register_v.mli \
Coordinate_son_tag_list_by_coordinate_father_tag_register_v.mli \
Coordinate_symbol_by_sole_index_register_v.mli \
Coordinate_tag_all_list_by_basicname_databox_n_basicname_database_register_v.mli \
Coordinate_tag_all_list_by_coordinate_context_databox_tag_register_v.mli \
Coordinate_tag_subtree_by_coordinate_tag_register_v.mli \
Coordinate_tag_tree_by_basicname_databox_n_basicname_database_register_v.mli \
Coordinate_tag_tree_by_coordinate_context_databox_tag_register_v.mli \
  
CONTEXT_NAME_BY_UNIT_V_MLI := \
Coordinate_basicname_sector_by_unit_provider_v.mli \
Coordinate_basicname_domain_by_unit_provider_v.mli \
 
CONTEXT_TAG_BY_UNIT_V_MLI := \
Coordinate_context_sector_tag_by_unit_provider_v.mli \
Coordinate_as_context_sector_tag_by_unit_provider_v.mli \
 \
Coordinate_context_domain_tag_by_unit_provider_v.mli \
Coordinate_as_context_domain_tag_by_unit_provider_v.mli \
 
CHECK_CONTEXT_NAME_CONSISTENCY_V_MLI := \
Check_consistency_by_coordinate_basicname_quatuor_provider_v.mli \
 \
Coordinate_basicname_quatuor_by_basicname_databox_n_basicname_database_provider_v.mli \
 
CONTEXT_TAG_BY_DATABOX_NAME_N_DATABASE_NAME_V_MLI := \
Coordinate_context_database_tag_by_basicname_database_provider_v.mli \
Coordinate_as_context_database_tag_by_basicname_database_provider_v.mli \
 \
Coordinate_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v.mli \
Coordinate_as_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v.mli \
 \
Coordinate_context_tag_quadruplet_by_basicname_databox_n_basicname_database_provider_v.mli \
Coordinate_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v.mli \
 \
Basicname_databox_by_coordinate_context_databox_tag_provider_v.mli \
Basicname_database_by_coordinate_context_databox_tag_provider_v.mli \
 \
Coordinate_context_databox_sole_index_by_any_sole_index_provider_v.mli \
Basicname_databox_n_basicname_database_by_coordinate_context_databox_tag_provider_v.mli \
Coordinate_context_databox_symbol_by_any_sole_index_provider_v.mli \
Coordinate_context_databox_tag_by_any_sole_index_provider_v.mli \
 
TRANSLATION_FROM_DB1POINTSDATA_V_MLI := \
Db1pointsdata_as_set_body_sequence_float_tag_by_coordinate_set_body_tuple_tag_provider_v.mli \
Db1pointsdata_set_body_sequence_float_tag_by_coordinate_set_body_tuple_tag_provider_v.mli \
 \
Coordinate_as_set_body_tuple_symbol_subtree_by_basicname_vertex_n_basicname_databox_provider_v.mli \
Coordinate_as_set_body_tuple_symbol_subtree_list_by_db1pointsdata_context_databox_tag_provider_v.mli \
 
SYMBOL_SUBTREE_BY_CONTEXT_NAME_V_MLI := \
Coordinate_symbol_subtree_by_db1points_context_databox_tag_provider_v.mli \
Coordinate_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v.mli \
  
TAG_TREE_V_MLI := \
Coordinate_tag_tree_by_basicname_databox_n_basicname_database_provider_v.mli \
Coordinate_tag_tree_by_coordinate_context_databox_tag_provider_v.mli \
 
INTERFACES_V_MLI := \
Coordinate_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.mli \
Coordinate_tag_all_list_by_coordinate_context_databox_tag_provider_v.mli \
 
EXTRACTORS_V_MLI := \
Coordinate_symbol_by_sole_index_register_filler_v.mli \
Coordinate_symbol_by_sole_index_provider_v.mli \
Coordinate_any_category_by_sole_index_extractor_v.mli \
Coordinate_son_tag_list_by_coordinate_father_tag_provider_v.mli \
Coordinate_father_tag_by_coordinate_son_tag_provider_v.mli \
Coordinate_tag_subtree_by_coordinate_tag_provider_v.mli \
 
FENCE_V_MLI := \
Coordinate_fence_by_coordinate_tag_provider_v.mli \
 
FILES_MLI := \
$(REGISTERS_V_MLI) \
$(CONTEXT_NAME_BY_UNIT_V_MLI) \
$(CONTEXT_TAG_BY_UNIT_V_MLI) \
$(CHECK_CONTEXT_NAME_CONSISTENCY_V_MLI) \
$(CONTEXT_TAG_BY_DATABOX_NAME_N_DATABASE_NAME_V_MLI) \
$(TRANSLATION_FROM_DB1POINTSDATA_V_MLI) \
$(SYMBOL_SUBTREE_BY_CONTEXT_NAME_V_MLI) \
$(TAG_TREE_V_MLI) \
$(INTERFACES_V_MLI) \
$(EXTRACTORS_V_MLI) \
$(FENCE_V_MLI) \
