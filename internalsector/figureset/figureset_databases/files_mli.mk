REGISTERS_V_MLI := \
Database_name_n_databox_name_by_figure_context_databox_tag_register_v.mli \
Database_name_n_databox_name_by_figure_tag_register_v.mli \
Figure_creation_module_name_by_sole_index_register_v.mli \
Figure_fence_by_figure_tag_register_v.mli \
Figure_symbol_by_sole_index_register_v.mli \
Figure_tag_all_list_by_database_name_n_databox_name_register_v.mli \
Figure_tag_all_list_by_figure_context_databox_tag_register_v.mli \
Figure_tag_subtree_by_figure_tag_register_v.mli \
Figure_tag_tree_by_database_name_n_databox_name_register_v.mli \
Figure_son_tag_list_by_figure_father_tag_register_v.mli \

CONTEXT_NAMES_V_MLI := \
Figure_domain_name_by_unit_provider_v.mli \

CONTEXT_TAGS_V_MLI := \
Figure_context_domain_tag_by_unit_provider_v.mli \
Figure_as_context_domain_tag_by_unit_provider_v.mli \
 \
Figure_as_context_database_tag_by_database_name_provider_v.mli \
Figure_context_database_tag_by_database_name_provider_v.mli \
 \
Figure_as_context_databox_tag_by_database_name_n_databox_name_provider_v.mli \
Figure_context_databox_tag_by_database_name_n_databox_name_provider_v.mli \
 \
Database_name_n_databox_name_by_figure_context_databox_tag_provider_v.mli \
 
CONTEXT_TAGS_TUPLE_V_MLI := \
Figure_as_context_tag_trio_by_database_name_n_databox_name_provider_v.mli \
Figure_context_tag_triplet_by_database_name_n_databox_name_provider_v.mli \
 
TRANSLATORS_FROM_DATABASESET_V_MLI := \
Figure_symbol_from_db1figure_tag_translations_v.mli \
Figure_as_field_symbol_subtree_by_database_name_n_databox_name_provider_v.mli \
 
SUBTREES_V_MLI := \
Figure_symbol_subtree_root_databox_by_database_name_n_databox_name_provider_v.mli \
Figure_symbol_subtree_by_figure_context_databox_tag_provider_v.mli \
 
TREES_V_MLI := \
Figure_tag_tree_by_database_name_n_databox_name_provider_v.mli \
Figure_tag_tree_by_figure_context_databox_tag_provider_v.mli \
 
INTERFACES_V_MLI := \
Figure_tag_all_list_by_database_name_n_databox_name_provider_v.mli \
Figure_tag_all_list_by_figure_context_databox_tag_provider_v.mli \
  
EXTRACTORS_V_MLI := \
Figure_symbol_by_sole_index_register_filler_v.mli \
Figure_symbol_by_sole_index_provider_v.mli \
Figure_any_category_by_sole_index_extractor_v.mli \
Figure_son_tag_list_by_figure_father_tag_provider_v.mli \
Figure_tag_subtree_by_figure_tag_provider_v.mli \
Database_name_n_databox_name_by_figure_tag_provider_v.mli \
 
FENCE_V_MLI := \
Figure_fence_by_figure_tag_provider_v.mli \
Figure_field_fence_point_tag_list_by_figure_tag_provider_v.mli \
 
FILES_MLI := \
$(REGISTERS_V_MLI) \
$(CONTEXT_NAMES_V_MLI) \
$(CONTEXT_TAGS_V_MLI) \
$(CONTEXT_TAGS_TUPLE_V_MLI) \
$(TRANSLATORS_FROM_DATABASESET_V_MLI) \
$(SUBTREES_V_MLI) \
$(TREES_V_MLI) \
$(INTERFACES_V_MLI) \
$(EXTRACTORS_V_MLI) \
$(FENCE_V_MLI) \
 
# done with do_dddd_symbol_by_sole_index_provider_register_files_mli.sh on jeudi 19 mai 2016, 18:35:59 (UTC+0200)
