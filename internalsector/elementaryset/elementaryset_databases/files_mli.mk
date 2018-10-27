REGISTERS_V_MLI := \
Databox_name_n_database_name_by_elementary_context_databox_tag_register_v.mli \
Databox_name_n_database_name_by_elementary_tag_register_v.mli \
Elementary_body_parameter_tuple_tag_border_by_elementary_tag_register_v.mli \
Elementary_border_by_elementary_tag_register_v.mli \
Elementary_context_databox_tag_by_elementary_tag_register_v.mli \
Elementary_creation_module_name_by_sole_index_register_v.mli \
Elementary_fence_by_elementary_tag_register_v.mli \
Elementary_son_tag_list_by_elementary_father_tag_register_v.mli \
Elementary_symbol_by_sole_index_register_v.mli \
Elementary_tag_all_list_by_databox_name_n_database_name_register_v.mli \
Elementary_tag_all_list_by_elementary_context_databox_figuredata_tag_register_v.mli \
Elementary_tag_all_list_by_elementary_context_databox_skeletondata_tag_register_v.mli \
Elementary_tag_all_list_by_elementary_context_databox_tag_register_v.mli \
Elementary_tag_all_list_by_elementary_context_domain_tag_register_v.mli \
Elementary_tag_subtree_by_elementary_tag_register_v.mli \
Elementary_tag_tree_by_elementary_context_databox_tag_register_v.mli \
Measure_actual_by_elementary_fence_units_actual_tag_register_v.mli \
Measure_by_elementary_fence_units_actual_tag_register_v.mli \
Measure_canonical_by_elementary_fence_units_canonical_tag_register_v.mli \
Readee_basic_by_elementary_fence_basic_tag_register_v.mli \
Readee_by_elementary_fence_tag_register_v.mli \
  
MEASURES_T_MLI := \
Measure_canonical_quantum_t.mli \
Measure_canonical_classical_t.mli \
Measure_canonical_t.mli \
 \
Measure_actual_none_t.mli \
Measure_actual_time_t.mli \
Measure_actual_temperature_t.mli \
Measure_actual_mass_t.mli \
Measure_actual_length_t.mli \
Measure_actual_energy_t.mli \
Measure_actual_charge_t.mli \
Measure_actual_angle_t.mli \
Measure_actual_action_t.mli \
Measure_actual_t.mli \
 \
Measure_t.mli \
 
MEASURES_V_MLI := $(subst _t.mli,_v.mli,$(MEASURES_T_MLI)) 
MEASURES_TV_MLI := $(MEASURES_T_MLI) $(MEASURES_V_MLI)
 
READEES_T_MLI := \
Readee_basic_string_t.mli \
Readee_basic_float_t.mli \
Readee_basic_integer_t.mli \
Readee_basic_boolean_t.mli \
Readee_basic_t.mli \
Readee_t.mli \
 
READEES_V_MLI := $(subst _t,_v,$(READEES_T_MLI)) 
READEES_TV_MLI := $(READEES_T_MLI) $(READEES_V_MLI)
 
CLOSURES_T_MLI := \
Closure_color_t.mli \
Closure_basic_t.mli \
Closure_units_t.mli \
Closure_t.mli \
 
CLOSURES_V_MLI := $(subst _t,_v,$(CLOSURES_T_MLI)) 
CLOSURES_TV_MLI := $(CLOSURES_T_MLI) $(CLOSURES_V_MLI)
 
CONTEXT_SKELETON_V_MLI := \
Elementary_context_databox_skeletondata_tag_by_databox_name_n_database_name_provider_v.mli \
Elementary_as_context_databox_skeletondata_tag_by_databox_name_n_database_name_provider_v.mli \
  
CONTEXT_FIGURE_V_MLI := \
Elementary_context_databox_figuredata_tag_by_databox_name_n_database_name_provider_v.mli \
Elementary_as_context_databox_figuredata_tag_by_databox_name_n_database_name_provider_v.mli \
 
CONTEXT_TAGS_V_MLI := \
Elementary_context_domain_sole_index_by_unit_provider_v.mli \
Elementary_as_context_domain_tag_by_unit_provider_v.mli \
Elementary_context_domain_tag_by_unit_provider_v.mli \
 \
Elementary_as_context_database_tag_by_database_name_provider_v.mli \
Elementary_context_database_tag_by_database_name_provider_v.mli \
 \
Elementary_as_context_databox_tag_by_databox_name_n_database_name_provider_v.mli \
Elementary_context_databox_tag_by_databox_name_n_database_name_provider_v.mli \
Databox_name_n_database_name_by_elementary_context_databox_tag_provider_v.mli \
  
TRANSLATORS_FROM_DB1POINTSDATASET_V_MLI := \
Elementary_symbol_from_db1pointsdata_tag_translations_v.mli \
Elementary_as_body_coordinate_tuple_symbol_subtree_from_db1pointsdata_as_body_sequence_float_tag_subtree_translator_v.mli \
 
TRANSLATORS_FROM_NWCHEMDATASET_V_MLI := \
Elementary_string_off_list_by_nwchem_body_node_aoset_numerical_values_string_off_list_translator_v.mli \
Elementary_aopef_name_n_nwchem_aopef_name_list_by_nwchem_body_node_as_aoset_onecenter_block_tag_translator_v.mli \
Elementary_aopef_name_n_nwchem_aopef_name_list_by_center_name_provider_v.mli \
 
SUBTREES_NWCHEMDATASET_V_MLI := \
Elementary_as_context_tag_trio_by_nwchem_context_databox_tag_provider_v.mli \
Elementary_symbol_subtree_by_nwchem_context_databox_tag_provider_v.mli \
  
TREES_NWCHEMDATASET_V_MLI := \
Elementary_tag_tree_by_nwchem_context_databox_tag_provider_v.mli \
 
SUBTREES_DB1POINTSDATASET_V_MLI := \
Elementary_as_context_tag_trio_by_db1pointsdata_context_databox_tag_provider_v.mli \
Elementary_symbol_subtree_by_db1pointsdata_context_databox_tag_provider_v.mli \
  
TREES_DB1POINTSDATASET_V_MLI := \
Elementary_tag_tree_by_db1pointsdata_context_databox_tag_provider_v.mli \
 
TREES_V_MLI := \
Elementary_tag_tree_by_elementary_context_databox_figuredata_tag_provider_v.mli \
Elementary_tag_tree_by_elementary_context_databox_skeletondata_tag_provider_v.mli \
Elementary_tag_tree_by_elementary_context_databox_tag_provider_v.mli \
Elementary_tag_tree_by_databox_name_n_database_name_provider_v.mli \
 
INTERFACES_V_MLI := \
Elementary_tag_all_list_by_elementary_context_databox_figuredata_tag_provider_v.mli \
Elementary_tag_all_list_by_elementary_context_databox_skeletondata_tag_provider_v.mli \
Elementary_tag_all_list_by_databox_name_n_database_name_provider_v.mli \
Elementary_tag_all_list_by_elementary_context_databox_tag_provider_v.mli \
 
EXTRACTORS_V_MLI := \
Databox_name_n_database_name_by_sole_index_provider_v.mli \
Elementary_symbol_by_sole_index_register_filler_v.mli \
Elementary_symbol_by_sole_index_provider_v.mli \
Elementary_any_category_by_sole_index_extractor_v.mli \
Elementary_context_databox_tag_by_elementary_tag_provider_v.mli \
Elementary_as_context_databox_tag_by_elementary_tag_provider_v.mli \
Databox_name_n_database_name_by_elementary_tag_provider_v.mli \
Elementary_tag_subtree_by_elementary_tag_provider_v.mli \
Elementary_son_tag_list_by_elementary_father_tag_provider_v.mli \
 
FENCE_V_MLI := \
Elementary_fence_by_elementary_tag_provider_v.mli \
 
BORDER_V_MLI := \
Elementary_border_by_elementary_tag_provider_v.mli \
 
PROVIDERS_EXTRA_V_MLI := \
Measure_actual_by_elementary_fence_units_actual_tag_provider_v.mli \
Measure_by_elementary_fence_units_actual_tag_provider_v.mli \
Measure_canonical_by_calculation_name_n_elementary_fence_units_actual_tag_provider_v.mli \
Measure_by_elementary_fence_units_canonical_tag_provider_v.mli \
Measure_canonical_by_elementary_fence_units_canonical_tag_provider_v.mli \
Measure_canonical_list_by_calculation_name_n_elementary_fence_units_actual_tag_provider_v.mli \
Measure_by_elementary_fence_units_tag_provider_v.mli \
Measure_actual_by_elementary_fence_units_tag_provider_v.mli \
 \
Readee_basic_by_elementary_fence_basic_tag_provider_v.mli \
Readee_by_elementary_fence_tag_provider_v.mli \
 
BORDER_COORDINATES_V_MLI := \
Elementary_border_coordinate_tag_border_by_elementary_tag_provider_v.mli \
Elementary_body_coordinate_tuple_tag_border_by_elementary_tag_provider_v.mli \
 
BORDER_PARAMETERS_V_MLI := \
Elementary_border_parameter_tag_border_by_elementary_tag_provider_v.mli \
Elementary_body_parameter_tuple_tag_border_by_elementary_tag_provider_v.mli \
Elementary_border_parameter_aopef_coefficient_n_elementary_border_parameter_aopef_exponent_tag_doublet_by_skeleton_field_border_centered_aopef_single_scaled_tag_provider_v.mli \

FILES_MLI := \
$(REGISTERS_V_MLI) \
 \
$(MEASURES_TV_MLI) \
$(READEES_TV_MLI) \
$(CLOSURES_TV_MLI) \
#  \
# $(CONTEXT_SKELETON_V_MLI) \
# $(CONTEXT_FIGURE_V_MLI) \
# $(CONTEXT_TAGS_V_MLI) \
# $(TRANSLATORS_FROM_NWCHEMDATASET_V_MLI) \
# $(SUBTREES_NWCHEMDATASET_V_MLI) \
# $(TREES_NWCHEMDATASET_V_MLI) \
# $(TRANSLATORS_FROM_DB1POINTSDATASET_V_MLI) \
# $(SUBTREES_DB1POINTSDATASET_V_MLI) \
# $(TREES_DB1POINTSDATASET_V_MLI) \
# $(TREES_V_MLI) \
# $(INTERFACES_V_MLI) \
# $(EXTRACTORS_V_MLI) \
# $(FENCE_V_MLI) \
# $(BORDER_V_MLI) \
# $(PROVIDERS_EXTRA_V_MLI) \

# $(BORDER_COORDINATES_V_MLI) \
# $(BORDER_PARAMETERS_V_MLI) \

# done with do_dddd_symbol_by_sole_index_provider_register_files_mli.sh on samedi 21 mai 2016, 19:33:13 (UTC+0200)
