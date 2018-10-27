SYMBOLS_T_MLI := \
   Frames_db1_domain_symbol_t.mli \
   Frames_db1_database_symbol_t.mli \
  Frames_db1_context_symbol_t.mli \
   Frames_db1_float_symbol_t.mli \
  Frames_db1_closure_symbol_t.mli \
    Frames_db1_element_vertex_symbol_t.mli \
    Frames_db1_element_label_symbol_t.mli \
    Frames_db1_element_coordinates_units_length_symbol_t.mli \
    Frames_db1_element_coordinates_units_angle_symbol_t.mli \
    Frames_db1_element_coordinates_kind_symbol_t.mli \
   Frames_db1_element_symbol_t.mli \
    Frames_db1_component_vertex_symbol_t.mli \
    Frames_db1_component_segment_symbol_t.mli \
    Frames_db1_component_triangle_symbol_t.mli \
   Frames_db1_component_symbol_t.mli \
  Frames_db1_body_symbol_t.mli \
 Frames_db1_symbol_t.mli \
 
SYMBOLS_V_MLI := $(subst symbol_t,symbol_v,$(SYMBOLS_T_MLI))
SYMBOLS_TV_MLI := $(SYMBOLS_T_MLI) $(SYMBOLS_V_MLI) 

TAGS_TV_MLI := $(subst symbol_,tag_,$(SYMBOLS_TV_MLI))

MAIN_LOCAL_REGISTER_V_MLI := \
Frames_db1_creation_module_name_by_sole_index_register_v.mli \
Frames_db1_symbol_by_sole_index_register_v.mli \
Son_frames_db1_tag_list_by_father_frames_db1_tag_register_v.mli \
 
REGISTERS_V_MLI := \
Frames_db1_database_tag_by_domain_tag_register_v.mli \
Filename_by_frames_db1_component_tag_register_v.mli \
Filename_by_frames_db1_tag_register_v.mli \
Float_by_frames_db1_float_tag_register_v.mli \
Frames_db1_float_tag_list_by_frames_db1_domain_tag_register_v.mli \
Component_filename_list_by_frames_db1_database_tag_register_v.mli \
String_by_frames_db1_tag_register_v.mli \
String_by_frames_db1_database_tag_register_v.mli \
String_by_frames_db1_component_tag_register_v.mli \
String_list_by_frames_db1_component_tag_register_v.mli \
String_list_by_frames_db1_element_tag_register_v.mli \
String_list_by_frames_db1_tag_register_v.mli \
Frames_db1_database_tag_list_by_domain_tag_register_v.mli \
Frames_db1_content_list_list_by_frames_db1_database_tag_register_v.mli \
Frames_db1_tag_tree_by_frames_db1_tag_register_v.mli \
Frames_db1_symbol_tree_by_frames_db1_tag_register_v.mli \
Frames_db1_tag_tree_by_frames_db1_database_tag_register_v.mli \
Frames_db1_tag_all_list_by_frames_db1_domain_tag_register_v.mli \
Frames_db1_float_tag_list_list_by_frames_db1_component_tag_register_v.mli \
Frames_db1_tag_closure_by_frames_db1_tag_register_v.mli \
Frames_db1_tag_n_value_float_closure_by_frames_db1_tag_register_v.mli \
  
PARSER_TV_MLI := \
Frames_db1_content_t.mli \
Db1_lexeme_coordinates_data_t.mli \
Db1_lexeme_figure_t.mli \
Db1_lexeme_t.mli \
Frames_db1_content_v.mli \
Db1_lexeme_coordinates_data_v.mli \
Db1_lexeme_figure_v.mli \
Db1_lexeme_v.mli \
Db1_parser_v.mli \
  
TRANSLATORS_V_MLI := \
Frames_db1_as_domain_tag_from_domain_tag_translator_v.mli \
Frames_db1_domain_tag_from_domain_tag_translator_v.mli \
Domain_tag_from_frames_db1_domain_tag_translator_v.mli \
  
CONTEXT_V_MLI := \
Frames_db1_as_domain_tag_by_unit_provider_v.mli \
Frames_db1_as_database_tag_by_unit_provider_v.mli \
Frames_db1_domain_tag_by_unit_provider_v.mli \
Frames_db1_database_tag_by_unit_provider_v.mli \

TREES_V_MLI := \
Frames_db1_symbol_subtree_by_frames_db1_database_tag_provider_v.mli \
Frames_db1_tag_tree_by_frames_db1_database_tag_provider_v.mli \
Frames_db1_tag_tree_by_frames_db1_domain_tag_provider_v.mli \
Frames_db1_tag_subtree_by_frames_db1_database_tag_provider_v.mli \
Frames_db1_tag_all_list_by_frames_db1_domain_tag_provider_v.mli \
Frames_db1_any_category_by_sole_index_extractor_v.mli \
Frames_db1_symbol_by_sole_index_provider_v.mli \
Son_frames_db1_tag_list_by_father_frames_db1_tag_provider_v.mli \
Frames_db1_tag_subtree_by_frames_db1_component_tag_provider_v.mli \
Cartesian_float_list_list_by_frames_db1_component_tag_provider_v.mli \
Component_what_by_frames_db1_component_tag_provider_v.mli \
 \
Frames_db1_tag_subtree_by_frames_db1_tag_provider_v.mli \
Frames_db1_tag_closure_by_frames_db1_tag_provider_v.mli \
Frames_db1_tag_float_closure_by_frames_db1_tag_provider_v.mli \
Frames_db1_tag_n_value_float_closure_by_frames_db1_tag_provider_v.mli \
Float_by_frames_db1_float_tag_provider_v.mli \
  
FILES_MLI := \
$(SYMBOLS_TV_MLI) \
$(TAGS_TV_MLI) \
$(MAIN_LOCAL_REGISTER_V_MLI) \
$(REGISTERS_V_MLI) \
$(PARSER_TV_MLI) \
Database_fullnameofdirectory_by_frames_db1_database_tag_provider_v.mli \
Nameoffile_list_by_frames_db1_database_tag_provider_v.mli \
Component_filename_list_by_frames_db1_database_tag_provider_v.mli \
Frames_db1_content_list_list_by_frames_db1_database_tag_provider_v.mli \
$(TRANSLATORS_V_MLI) \
$(CONTEXT_V_MLI) \
$(TREES_V_MLI) \
 

# Frames_db1_database_tag_by_domain_tag_provider_v.mli \
# Frames_db1_tag_tree_by_frames_db1_domain_tag_provider_v.mli \
# Frames_db1_tag_tree_by_domain_tag_provider_v.mli \
