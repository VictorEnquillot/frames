(** {6 Nwchemdata_any_category_by_sole_index_extractor_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BNWC:Nwchemdata_any_category_by_sole_index_extractor_v";
   "Register : BNWC:Nwchemdata_Entity_symbol_by_sole_index_register_v";
   "What-is-it : any information on any Entity ancestor is provided from a Sole_index and a predicate";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Registering} *)

let main_register = Nwchemdata_symbol_by_sole_index_register_v.register;;
let main_register_dump () = Nwchemdata_symbol_by_sole_index_register_v.dump ();;
let main_register_name = Nwchemdata_symbol_by_sole_index_register_v.nam_reg;;
let main_register_name_of_key = Nwchemdata_symbol_by_sole_index_register_v.name_of_key;;
let main_register_name_of_value = Nwchemdata_symbol_by_sole_index_register_v.name_of_value;;

(** {6 Predicates_for_symbol} *)

let predicate_of_string = function
  | "is_nwchemdata_comment_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_comment_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_context_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_context_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_directive_basis" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_directive_basis
  | "is_nwchemdata_set_body_directive_ecp" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_directive_ecp
  | "is_nwchemdata_set_body_directive_end" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_directive_end
  | "is_nwchemdata_set_body_directive_print" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_directive_print
  | "is_nwchemdata_set_body_keyword_cartesian" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_keyword_cartesian
  | "is_nwchemdata_set_body_keyword_colon" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_keyword_colon
  | "is_nwchemdata_set_body_keyword_comma" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_keyword_comma
  | "is_nwchemdata_set_body_keyword_end_of_file" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_keyword_end_of_file
  | "is_nwchemdata_set_body_keyword_hash_basis" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_keyword_hash_basis
  | "is_nwchemdata_set_body_keyword_left_arrow" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_keyword_left_arrow
  | "is_nwchemdata_set_body_keyword_left_bracket" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_keyword_left_bracket
  | "is_nwchemdata_set_body_keyword_left_parenthesis" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_keyword_left_parenthesis
  | "is_nwchemdata_set_body_keyword_nelec" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_keyword_nelec
  | "is_nwchemdata_set_body_keyword_nosegment" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_keyword_nosegment
  | "is_nwchemdata_set_body_keyword_rel" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_keyword_rel
  | "is_nwchemdata_set_body_keyword_right_arrow" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_keyword_right_arrow
  | "is_nwchemdata_set_body_keyword_right_bracket" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_keyword_right_bracket
  | "is_nwchemdata_set_body_keyword_right_parenthesis" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_keyword_right_parenthesis
  | "is_nwchemdata_set_body_keyword_segment" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_keyword_segment
  | "is_nwchemdata_set_body_keyword_set" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_keyword_set
  | "is_nwchemdata_set_body_keyword_spherical" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_keyword_spherical
  | "is_nwchemdata_comment_authorname_one_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_comment_authorname_one_constructor
  | "is_nwchemdata_comment_authorname_two_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_comment_authorname_two_constructor
  | "is_nwchemdata_comment_authorname_many_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_comment_authorname_many_constructor
  | "is_nwchemdata_comment_aoemsl_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_comment_aoemsl_constructor
  | "is_nwchemdata_comment_dashed_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_comment_dashed_constructor
  | "is_nwchemdata_comment_dashedline_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_comment_dashedline_constructor
  | "is_nwchemdata_comment_elementline_one_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_comment_elementline_one_constructor
  | "is_nwchemdata_comment_elementline_many_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_comment_elementline_many_constructor
  | "is_nwchemdata_comment_header_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_comment_header_constructor
  | "is_nwchemdata_comment_journalreference_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_comment_journalreference_constructor
  | "is_nwchemdata_comment_reference_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_comment_reference_constructor
  | "is_nwchemdata_context_databox_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_context_databox_constructor
  | "is_nwchemdata_context_database_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_context_database_constructor
  | "is_nwchemdata_context_domain_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_context_domain_constructor
  | "is_nwchemdata_context_sector_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_context_sector_constructor
  | "is_nwchemdata_set_body_node_aobasis_block_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aobasis_block_constructor
  | "is_nwchemdata_set_body_node_aocomment_block_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aocomment_block_constructor
  | "is_nwchemdata_set_body_node_aoset_anycenter_block_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_anycenter_block_constructor
  | "is_nwchemdata_set_body_node_aoset_anyshell_block_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_anyshell_block_constructor
  | "is_nwchemdata_set_body_node_aoset_block_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_block_constructor
  | "is_nwchemdata_set_body_node_aoset_center_contraction_image_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_center_contraction_image_constructor
  | "is_nwchemdata_set_body_node_aoset_center_contraction_scheme_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_center_contraction_scheme_constructor
  | "is_nwchemdata_set_body_node_aoset_definition_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_definition_constructor
  | "is_nwchemdata_set_body_node_aoset_numericalvalues_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_numericalvalues_constructor
  | "is_nwchemdata_set_body_node_aoset_numericalvalues_block_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_numericalvalues_block_constructor
  | "is_nwchemdata_set_body_node_aoset_onecenter_block_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_onecenter_block_constructor
  | "is_nwchemdata_set_body_node_aoset_oneshell_block_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_oneshell_block_constructor
  | "is_nwchemdata_set_body_node_center_n_shellname_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_center_n_shellname_constructor
  | "is_nwchemdata_set_body_node_comment_block_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_comment_block_constructor
  | "is_nwchemdata_set_body_node_comment_reference_block_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_comment_reference_block_constructor
  | "is_nwchemdata_set_body_node_datanamefile_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_datanamefile_constructor
  | "is_nwchemdata_set_body_node_ecpbasis_block_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_ecpbasis_block_constructor
  | "is_nwchemdata_set_body_node_ecpset_anycenter_block_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_ecpset_anycenter_block_constructor
  | "is_nwchemdata_set_body_node_ecpset_anyshell_block_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_ecpset_anyshell_block_constructor
  | "is_nwchemdata_set_body_node_ecpset_block_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_ecpset_block_constructor
  | "is_nwchemdata_set_body_node_ecpset_definition_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_ecpset_definition_constructor
  | "is_nwchemdata_set_body_node_ecpset_electronnumber_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_ecpset_electronnumber_constructor
  | "is_nwchemdata_set_body_node_ecpset_numericalvalues_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_ecpset_numericalvalues_constructor
  | "is_nwchemdata_set_body_node_ecpset_numericalvalues_block_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_ecpset_numericalvalues_block_constructor
  | "is_nwchemdata_set_body_node_ecpset_onecenter_block_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_ecpset_onecenter_block_constructor
  | "is_nwchemdata_set_body_node_ecpset_oneshell_block_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_ecpset_oneshell_block_constructor
  | "is_nwchemdata_set_body_node_hash_databox_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_hash_databox_constructor
  | "is_nwchemdata_set_body_node_positiveinteger_n_shellname_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_positiveinteger_n_shellname_constructor
  | "is_nwchemdata_set_body_node_shell_contraction_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_shell_contraction_constructor
  | "is_nwchemdata_set_body_node_shell_expansion_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_shell_expansion_constructor
  | "is_nwchemdata_set_body_variable_angularfunction_cartesian_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_angularfunction_cartesian_constructor
  | "is_nwchemdata_set_body_variable_angularfunction_spherical_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_angularfunction_spherical_constructor
  | "is_nwchemdata_set_body_variable_angularmomentum_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_angularmomentum_constructor
  | "is_nwchemdata_set_body_variable_ao_contracted_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_ao_contracted_constructor
  | "is_nwchemdata_set_body_variable_ao_single_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_ao_single_constructor
  | "is_nwchemdata_set_body_variable_aos_at_c_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_aos_at_c_constructor
  | "is_nwchemdata_set_body_variable_aos_at_c_n_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_aos_at_c_n_constructor
  | "is_nwchemdata_set_body_variable_centername_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_centername_constructor
  | "is_nwchemdata_set_body_variable_coefficient_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_coefficient_constructor
  | "is_nwchemdata_set_body_variable_databox_name_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_databox_name_constructor
  | "is_nwchemdata_set_body_variable_dummy_center_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_dummy_center_constructor
  | "is_nwchemdata_set_body_variable_exponent_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_exponent_constructor
  | "is_nwchemdata_set_body_variable_exponent_n_coefficient_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_exponent_n_coefficient_constructor
  | "is_nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_constructor
  | "is_nwchemdata_set_body_variable_generalcontraction_shellset_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_generalcontraction_shellset_constructor
  | "is_nwchemdata_set_body_variable_localname_dataname_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_localname_dataname_constructor
  | "is_nwchemdata_set_body_variable_localname_ecpset_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_localname_ecpset_constructor
  | "is_nwchemdata_set_body_variable_mendeleievsymbol_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_mendeleievsymbol_constructor
  | "is_nwchemdata_set_body_variable_name_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_name_constructor
  | "is_nwchemdata_set_body_variable_radialfunction_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_radialfunction_constructor
  | "is_nwchemdata_set_body_variable_shellname_extended_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_shellname_extended_constructor
  | "is_nwchemdata_set_body_variable_shellname_usual_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_shellname_usual_constructor
  | "is_nwchemdata_set_body_variable_shellname_relativistic_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_shellname_relativistic_constructor
  | "is_nwchemdata_set_body_variable_version_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_version_constructor
  | "is_nwchemdata_set_fence_float_positive_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_fence_float_positive_constructor
  | "is_nwchemdata_set_fence_float_negative_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_fence_float_negative_constructor
  | "is_nwchemdata_set_fence_float_nonnegative_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_fence_float_nonnegative_constructor
  | "is_nwchemdata_set_fence_integer_positive_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_fence_integer_positive_constructor
  | "is_nwchemdata_set_fence_integer_negative_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_fence_integer_negative_constructor
  | "is_nwchemdata_set_fence_integer_nonnegative_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_fence_integer_nonnegative_constructor
  | "is_nwchemdata_set_fence_string_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_fence_string_constructor
  | "is_nwchemdata_comment_authorname_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_comment_authorname_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_comment_authorname_one_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_comment_authorname_one_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_comment_authorname_two_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_comment_authorname_two_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_comment_authorname_many_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_comment_authorname_many_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_comment_aoemsl_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_comment_aoemsl_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_comment_dashed_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_comment_dashed_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_comment_dashedline_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_comment_dashedline_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_comment_elementline_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_comment_elementline_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_comment_elementline_one_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_comment_elementline_one_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_comment_elementline_many_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_comment_elementline_many_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_comment_header_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_comment_header_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_comment_journalreference_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_comment_journalreference_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_comment_reference_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_comment_reference_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_context_databox_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_context_databox_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_context_database_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_context_database_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_context_domain_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_context_domain_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_context_sector_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_context_sector_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_directive_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_directive_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_keyword_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_keyword_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_aobasis_block_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aobasis_block_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_aocomment_block_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aocomment_block_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_aoset_anycenter_block_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_anycenter_block_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_aoset_anyshell_block_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_anyshell_block_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_aoset_block_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_block_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_aoset_center_contraction_image_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_center_contraction_image_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_aoset_definition_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_definition_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_aoset_numericalvalues_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_numericalvalues_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_aoset_onecenter_block_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_onecenter_block_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_aoset_oneshell_block_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_oneshell_block_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_center_n_shellname_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_center_n_shellname_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_comment_block_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_comment_block_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_comment_reference_block_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_comment_reference_block_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_datanamefile_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_datanamefile_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_ecpbasis_block_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_ecpbasis_block_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_ecpset_anycenter_block_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_ecpset_anycenter_block_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_ecpset_anyshell_block_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_ecpset_anyshell_block_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_ecpset_block_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_ecpset_block_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_ecpset_definition_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_ecpset_definition_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_ecpset_electronnumber_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_ecpset_electronnumber_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_ecpset_numericalvalues_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_ecpset_numericalvalues_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_ecpset_onecenter_block_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_ecpset_onecenter_block_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_ecpset_oneshell_block_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_ecpset_oneshell_block_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_hash_databox_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_hash_databox_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_positiveinteger_n_shellname_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_positiveinteger_n_shellname_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_shell_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_shell_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_shell_contraction_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_shell_contraction_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_node_shell_expansion_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_node_shell_expansion_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_variable_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_variable_angularfunction_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_angularfunction_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_variable_angularfunction_cartesian_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_angularfunction_cartesian_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_variable_angularfunction_spherical_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_angularfunction_spherical_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_variable_angularmomentum_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_angularmomentum_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_variable_ao_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_ao_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_variable_ao_contracted_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_ao_contracted_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_variable_ao_single_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_ao_single_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_variable_aos_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_aos_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_variable_aos_at_c_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_aos_at_c_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_variable_aos_at_c_n_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_aos_at_c_n_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_variable_centername_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_centername_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_variable_coefficient_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_coefficient_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_variable_databox_name_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_databox_name_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_variable_dummy_center_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_dummy_center_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_variable_exponent_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_exponent_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_variable_exponent_n_coefficient_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_exponent_n_coefficient_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_variable_generalcontraction_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_generalcontraction_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_variable_generalcontraction_shellset_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_generalcontraction_shellset_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_variable_localname_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_localname_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_variable_localname_dataname_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_localname_dataname_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_variable_localname_ecpset_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_localname_ecpset_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_variable_mendeleievsymbol_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_mendeleievsymbol_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_variable_name_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_name_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_variable_radialfunction_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_radialfunction_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_variable_shellname_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_shellname_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_variable_shellname_extended_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_shellname_extended_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_variable_shellname_usual_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_shellname_usual_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_variable_shellname_relativistic_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_shellname_relativistic_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_body_variable_version_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_version_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_fence_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_fence_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_fence_float_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_fence_float_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_fence_float_positive_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_fence_float_positive_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_fence_float_negative_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_fence_float_negative_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_fence_float_nonnegative_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_fence_float_nonnegative_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_fence_integer_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_fence_integer_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_fence_integer_positive_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_fence_integer_positive_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_fence_integer_negative_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_fence_integer_negative_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_fence_integer_nonnegative_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_fence_integer_nonnegative_symbol_off_nwchemdata_symbol
  | "is_nwchemdata_set_fence_string_symbol_off_nwchemdata_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_fence_string_symbol_off_nwchemdata_symbol
  | str ->
      Error_messages_v.print_fatal_error __LOC__ "predicate_of_string"
	(Format.sprintf ">%s< were a kown predicate" str)
	"it is NOT"
	"Check"
;;

(** {6 Preparing} *)

let sole_index_n_nwchemdata_symbol_list_of_string_predicate_of_sole_index str_pre soi_any =
  Nwchemdata_symbol_by_sole_index_register_filler_v.fill soi_any;
  let des_pre = predicate_of_string str_pre in
  Register_v.entry_list_of_value_predicate_of_register des_pre main_register 
;;

let sole_index_n_nwchemdata_symbol_included_of_string_predicate_of_sole_index str_pre soi_any =
  let nam_fun = "sole_index_n_nwchemdata_symbol_included_of_string_predicate_of_sole_index" in
  let soi_n_des_dol = 
    sole_index_n_nwchemdata_symbol_list_of_string_predicate_of_sole_index 
      str_pre soi_any
  in
  
  if soi_n_des_dol = []
  then
    Error_messages_v.print_fatal_error nam_mod nam_fun
      (Format.sprintf "an element were stored in register >%s<@.      for Predicate >%s<@.      with a Sole_index included in path %s" 
	 main_register_name
	 str_pre 
	 (Sole_index_v.name soi_any)
      ) 
      (Format.sprintf "NONE@.    Here is a dump of main_register:\
       @. %s@.    Register length =%i" 
		(main_register_dump ()) 
		(Register_v.length main_register) 
      )
      (Format.sprintf "Check whether the Entity defined by Predicate:@.     >%s<@.      has been stored when created" str_pre)
  else
    begin  
      let inc_dol =
	try Doublet_list_v.filter_if_left       
	    (fun s -> List_v.are_tail_coinciding_of_list_of_list s soi_any) 
	    soi_n_des_dol
	    
	with
	| Failure "Empty_list:List_v.element_off_one_element_list"
	| Failure "Empty_doublet_list:Doublet_list_v.filter_if_left" ->
	    Error_messages_v.print_fatal_error nam_mod nam_fun
	      (Format.sprintf "an element existed for Predicate >%s<@.    with Sole_index inside path %s" 
		 str_pre 
		 (Sole_index_v.name soi_any)
	      ) 
	      (Format.sprintf "it is EMPTY@.    Here is a dump of main_register:\
               @. %s@.    Register length =%i" 
			(main_register_dump ()) 
			(Register_v.length main_register) 
	      )
              "Check that it has been already stored in Nwchemdata_symbol_by_sole_index_register"
      in
      
      try List_v.element_off_one_element_list inc_dol
      with
      | Failure "Empty_list:List_v.element_off_one_element_list"
      | Failure "Several_elements:List_v.element_off_one_element_list" ->
          let str_l = Register_v.string_list_of_register 
	      main_register_name_of_key
	      main_register_name_of_value 
	      main_register 
          in
          Error_messages_v.print_fatal_error nam_mod nam_fun
	    (Format.sprintf "At least One and ONLY ONE element existed for Predicate >%s<@.        and Sole_index %s" 
	       str_pre 
	       (Sole_index_v.name soi_any)
	    ) 
	    (Format.sprintf "Sole_index n Symbol Doublet_list is :@.   %s"
	       (Doublet_list_v.name_with_separator Sole_index_v.name Nwchemdata_symbol_v.fullname ";\n   "
		  soi_n_des_dol
	       )
	    )
	    (Format.sprintf "Check Register content :@.    %s"
	       (List_v.name_with_separator (fun s->s) ";\n   " str_l)
	    )
    end
;;

let sole_index_of_string_predicate_off_sole_index str_pre soi_any =
  let soi_n_fss =
    sole_index_n_nwchemdata_symbol_included_of_string_predicate_of_sole_index 
      str_pre
      soi_any
  in
  Doublet_v.left_off_doublet soi_n_fss
;;

let nwchemdata_symbol_of_string_predicate_off_sole_index fss_pre soi_any =
  let soi_n_fss =
    sole_index_n_nwchemdata_symbol_included_of_string_predicate_of_sole_index 
      fss_pre
      soi_any
  in
  Doublet_v.right_off_doublet soi_n_fss
;;

(** {9 Nwchemdata_context_context_database} *)

let nwchemdata_context_database_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_context_database_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_context_database_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_context_database_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_context_database_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_context_database_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_context_database_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_context_database_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_context_database_symbol_off_sole_index soi_ldb in
  Nwchemdata_context_database_symbol_v.name sym_ldb
;;

let nwchemdata_context_database_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_context_database_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_context_database_symbol_off_sole_index soi_ldb in
  Nwchemdata_context_database_symbol_v.string_off sym_ldb
;;

let nwchemdata_context_database_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_context_database_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_context_database_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_context_databox} *)

let nwchemdata_context_databox_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_context_databox_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_context_databox_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_context_databox_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_context_databox_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_context_databox_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_context_databox_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_context_databox_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_context_databox_symbol_off_sole_index soi_ldb in
  Nwchemdata_context_databox_symbol_v.name sym_ldb
;;

let nwchemdata_context_databox_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_context_databox_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_context_databox_symbol_off_sole_index soi_ldb in
  Nwchemdata_context_databox_symbol_v.string_off sym_ldb
;;

let nwchemdata_context_databox_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_context_databox_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_context_databox_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_context_domain} *)

let nwchemdata_context_domain_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_context_domain_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_context_domain_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_context_domain_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_context_domain_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_context_domain_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_basicname_domainoff_sole_index soi_any =
  let soi_ldb = nwchemdata_context_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_context_domain_symbol_off_sole_index soi_ldb in
  Nwchemdata_context_domain_symbol_v.name sym_ldb
;;

let nwchemdata_context_domain_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_context_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_context_domain_symbol_off_sole_index soi_ldb in
  Nwchemdata_context_domain_symbol_v.string_off sym_ldb
;;

let nwchemdata_context_domain_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_context_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_context_domain_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_context_sector} *)

let nwchemdata_context_sector_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_context_sector_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_context_sector_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_context_sector_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_context_sector_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_context_sector_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_basicname_sector_off_sole_index soi_any =
  let soi_ldb = nwchemdata_context_sector_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_context_sector_symbol_off_sole_index soi_ldb in
  Nwchemdata_context_sector_symbol_v.name sym_ldb
;;

let nwchemdata_context_sector_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_context_sector_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_context_sector_symbol_off_sole_index soi_ldb in
  Nwchemdata_context_sector_symbol_v.string_off sym_ldb
;;

let nwchemdata_context_sector_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_context_sector_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_context_sector_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_context} *)

let nwchemdata_context_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_context_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_context_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_context_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_context_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_context_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_context_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_context_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_context_symbol_off_sole_index soi_ldb in
  Nwchemdata_context_symbol_v.name sym_ldb
;;

let nwchemdata_context_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_context_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_context_symbol_off_sole_index soi_ldb in
  Nwchemdata_context_symbol_v.string_off sym_ldb
;;

let nwchemdata_context_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_context_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_context_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_comment_aoemsl} *)

let nwchemdata_comment_aoemsl_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_comment_aoemsl_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_comment_aoemsl_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_aoemsl_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_comment_aoemsl_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_comment_aoemsl_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_comment_aoemsl_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_aoemsl_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_aoemsl_symbol_off_sole_index soi_ldb in
  Nwchemdata_comment_aoemsl_symbol_v.name sym_ldb
;;

let nwchemdata_comment_aoemsl_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_aoemsl_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_aoemsl_symbol_off_sole_index soi_ldb in
  Nwchemdata_comment_aoemsl_symbol_v.string_off sym_ldb
;;

let nwchemdata_comment_aoemsl_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_aoemsl_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_aoemsl_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_comment_authorname_many} *)

let nwchemdata_comment_authorname_many_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_comment_authorname_many_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_comment_authorname_many_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_authorname_many_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_comment_authorname_many_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_comment_authorname_many_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_comment_authorname_many_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_authorname_many_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_authorname_many_symbol_off_sole_index soi_ldb in
  Nwchemdata_comment_authorname_many_symbol_v.name sym_ldb
;;

let nwchemdata_comment_authorname_many_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_authorname_many_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_authorname_many_symbol_off_sole_index soi_ldb in
  Nwchemdata_comment_authorname_many_symbol_v.string_off sym_ldb
;;

let nwchemdata_comment_authorname_many_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_authorname_many_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_authorname_many_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_comment_authorname_one} *)

let nwchemdata_comment_authorname_one_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_comment_authorname_one_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_comment_authorname_one_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_authorname_one_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_comment_authorname_one_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_comment_authorname_one_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_comment_authorname_one_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_authorname_one_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_authorname_one_symbol_off_sole_index soi_ldb in
  Nwchemdata_comment_authorname_one_symbol_v.name sym_ldb
;;

let nwchemdata_comment_authorname_one_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_authorname_one_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_authorname_one_symbol_off_sole_index soi_ldb in
  Nwchemdata_comment_authorname_one_symbol_v.string_off sym_ldb
;;

let nwchemdata_comment_authorname_one_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_authorname_one_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_authorname_one_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_comment_authorname} *)

let nwchemdata_comment_authorname_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_comment_authorname_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_comment_authorname_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_authorname_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_comment_authorname_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_comment_authorname_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_comment_authorname_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_authorname_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_authorname_symbol_off_sole_index soi_ldb in
  Nwchemdata_comment_authorname_symbol_v.name sym_ldb
;;

let nwchemdata_comment_authorname_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_authorname_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_authorname_symbol_off_sole_index soi_ldb in
  Nwchemdata_comment_authorname_symbol_v.string_off sym_ldb
;;

let nwchemdata_comment_authorname_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_authorname_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_authorname_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_comment_authorname_two} *)

let nwchemdata_comment_authorname_two_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_comment_authorname_two_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_comment_authorname_two_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_authorname_two_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_comment_authorname_two_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_comment_authorname_two_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_comment_authorname_two_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_authorname_two_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_authorname_two_symbol_off_sole_index soi_ldb in
  Nwchemdata_comment_authorname_two_symbol_v.name sym_ldb
;;

let nwchemdata_comment_authorname_two_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_authorname_two_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_authorname_two_symbol_off_sole_index soi_ldb in
  Nwchemdata_comment_authorname_two_symbol_v.string_off sym_ldb
;;

let nwchemdata_comment_authorname_two_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_authorname_two_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_authorname_two_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_comment_dashedline} *)

let nwchemdata_comment_dashedline_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_comment_dashedline_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_comment_dashedline_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_dashedline_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_comment_dashedline_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_comment_dashedline_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_comment_dashedline_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_dashedline_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_dashedline_symbol_off_sole_index soi_ldb in
  Nwchemdata_comment_dashedline_symbol_v.name sym_ldb
;;

let nwchemdata_comment_dashedline_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_dashedline_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_dashedline_symbol_off_sole_index soi_ldb in
  Nwchemdata_comment_dashedline_symbol_v.string_off sym_ldb
;;

let nwchemdata_comment_dashedline_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_dashedline_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_dashedline_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_comment_dashed} *)

let nwchemdata_comment_dashed_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_comment_dashed_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_comment_dashed_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_dashed_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_comment_dashed_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_comment_dashed_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_comment_dashed_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_dashed_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_dashed_symbol_off_sole_index soi_ldb in
  Nwchemdata_comment_dashed_symbol_v.name sym_ldb
;;

let nwchemdata_comment_dashed_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_dashed_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_dashed_symbol_off_sole_index soi_ldb in
  Nwchemdata_comment_dashed_symbol_v.string_off sym_ldb
;;

let nwchemdata_comment_dashed_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_dashed_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_dashed_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_comment_elementline_many} *)

let nwchemdata_comment_elementline_many_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_comment_elementline_many_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_comment_elementline_many_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_elementline_many_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_comment_elementline_many_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_comment_elementline_many_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_comment_elementline_many_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_elementline_many_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_elementline_many_symbol_off_sole_index soi_ldb in
  Nwchemdata_comment_elementline_many_symbol_v.name sym_ldb
;;

let nwchemdata_comment_elementline_many_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_elementline_many_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_elementline_many_symbol_off_sole_index soi_ldb in
  Nwchemdata_comment_elementline_many_symbol_v.string_off sym_ldb
;;

let nwchemdata_comment_elementline_many_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_elementline_many_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_elementline_many_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_comment_elementline_one} *)

let nwchemdata_comment_elementline_one_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_comment_elementline_one_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_comment_elementline_one_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_elementline_one_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_comment_elementline_one_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_comment_elementline_one_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_comment_elementline_one_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_elementline_one_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_elementline_one_symbol_off_sole_index soi_ldb in
  Nwchemdata_comment_elementline_one_symbol_v.name sym_ldb
;;

let nwchemdata_comment_elementline_one_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_elementline_one_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_elementline_one_symbol_off_sole_index soi_ldb in
  Nwchemdata_comment_elementline_one_symbol_v.string_off sym_ldb
;;

let nwchemdata_comment_elementline_one_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_elementline_one_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_elementline_one_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_comment_elementline} *)

let nwchemdata_comment_elementline_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_comment_elementline_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_comment_elementline_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_elementline_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_comment_elementline_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_comment_elementline_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_comment_elementline_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_elementline_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_elementline_symbol_off_sole_index soi_ldb in
  Nwchemdata_comment_elementline_symbol_v.name sym_ldb
;;

let nwchemdata_comment_elementline_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_elementline_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_elementline_symbol_off_sole_index soi_ldb in
  Nwchemdata_comment_elementline_symbol_v.string_off sym_ldb
;;

let nwchemdata_comment_elementline_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_elementline_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_elementline_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_comment_header} *)

let nwchemdata_comment_header_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_comment_header_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_comment_header_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_header_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_comment_header_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_comment_header_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_comment_header_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_header_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_header_symbol_off_sole_index soi_ldb in
  Nwchemdata_comment_header_symbol_v.name sym_ldb
;;

let nwchemdata_comment_header_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_header_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_header_symbol_off_sole_index soi_ldb in
  Nwchemdata_comment_header_symbol_v.string_off sym_ldb
;;

let nwchemdata_comment_header_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_header_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_header_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_comment_journalreference} *)

let nwchemdata_comment_journalreference_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_comment_journalreference_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_comment_journalreference_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_journalreference_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_comment_journalreference_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_comment_journalreference_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_comment_journalreference_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_journalreference_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_journalreference_symbol_off_sole_index soi_ldb in
  Nwchemdata_comment_journalreference_symbol_v.name sym_ldb
;;

let nwchemdata_comment_journalreference_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_journalreference_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_journalreference_symbol_off_sole_index soi_ldb in
  Nwchemdata_comment_journalreference_symbol_v.string_off sym_ldb
;;

let nwchemdata_comment_journalreference_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_journalreference_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_journalreference_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_comment_reference} *)

let nwchemdata_comment_reference_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_comment_reference_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_comment_reference_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_reference_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_comment_reference_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_comment_reference_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_comment_reference_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_reference_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_reference_symbol_off_sole_index soi_ldb in
  Nwchemdata_comment_reference_symbol_v.name sym_ldb
;;

let nwchemdata_comment_reference_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_reference_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_reference_symbol_off_sole_index soi_ldb in
  Nwchemdata_comment_reference_symbol_v.string_off sym_ldb
;;

let nwchemdata_comment_reference_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_reference_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_reference_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_comment} *)

let nwchemdata_comment_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_comment_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_comment_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_comment_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_comment_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_comment_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_symbol_off_sole_index soi_ldb in
  Nwchemdata_comment_symbol_v.name sym_ldb
;;

let nwchemdata_comment_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_symbol_off_sole_index soi_ldb in
  Nwchemdata_comment_symbol_v.string_off sym_ldb
;;

let nwchemdata_comment_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_comment_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_comment_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_directive} *)

let nwchemdata_set_body_directive_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_directive_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_directive_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_directive_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_directive_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_directive_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_directive_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_directive_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_directive_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_directive_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_directive_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_directive_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_directive_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_directive_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_directive_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_directive_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_directive_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_keyword} *)

let nwchemdata_set_body_keyword_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_keyword_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_keyword_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_keyword_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_keyword_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_keyword_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_keyword_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_keyword_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_keyword_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_keyword_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_keyword_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_keyword_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_keyword_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_keyword_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_keyword_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_keyword_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_keyword_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_aobasis_block} *)

let nwchemdata_set_body_node_aobasis_block_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_aobasis_block_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_aobasis_block_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aobasis_block_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_aobasis_block_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_aobasis_block_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_aobasis_block_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aobasis_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aobasis_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_aobasis_block_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_aobasis_block_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aobasis_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aobasis_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_aobasis_block_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_aobasis_block_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aobasis_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aobasis_block_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_aocomment_block} *)

let nwchemdata_set_body_node_aocomment_block_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_aocomment_block_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_aocomment_block_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aocomment_block_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_aocomment_block_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_aocomment_block_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_aocomment_block_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aocomment_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aocomment_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_aocomment_block_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_aocomment_block_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aocomment_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aocomment_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_aocomment_block_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_aocomment_block_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aocomment_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aocomment_block_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_aoset_anycenter_block} *)

let nwchemdata_set_body_node_aoset_anycenter_block_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_aoset_anycenter_block_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_aoset_anycenter_block_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_anycenter_block_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_aoset_anycenter_block_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_aoset_anycenter_block_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_aoset_anycenter_block_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_anycenter_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_anycenter_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_aoset_anycenter_block_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_aoset_anycenter_block_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_anycenter_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_anycenter_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_aoset_anycenter_block_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_aoset_anycenter_block_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_anycenter_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_anycenter_block_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_aoset_anyshell_block} *)

let nwchemdata_set_body_node_aoset_anyshell_block_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_aoset_anyshell_block_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_aoset_anyshell_block_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_anyshell_block_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_aoset_anyshell_block_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_aoset_anyshell_block_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_aoset_anyshell_block_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_anyshell_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_anyshell_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_aoset_anyshell_block_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_aoset_anyshell_block_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_anyshell_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_anyshell_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_aoset_anyshell_block_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_aoset_anyshell_block_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_anyshell_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_anyshell_block_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_aoset_block} *)

let nwchemdata_set_body_node_aoset_block_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_aoset_block_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_aoset_block_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_block_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_aoset_block_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_aoset_block_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_aoset_block_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_aoset_block_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_aoset_block_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_aoset_block_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_aoset_block_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_block_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_aoset_center_contraction_image} *)

let nwchemdata_set_body_node_aoset_center_contraction_image_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_aoset_center_contraction_image_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_aoset_center_contraction_image_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_center_contraction_image_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_aoset_center_contraction_image_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_aoset_center_contraction_image_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_aoset_center_contraction_image_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_center_contraction_image_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_center_contraction_image_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_aoset_center_contraction_image_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_aoset_center_contraction_image_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_center_contraction_image_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_center_contraction_image_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_aoset_center_contraction_image_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_aoset_center_contraction_image_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_center_contraction_image_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_center_contraction_image_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_aoset_center_contraction_scheme} *)

let nwchemdata_set_body_node_aoset_center_contraction_scheme_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_center_contraction_scheme_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_aoset_center_contraction_scheme_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_center_contraction_scheme_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_aoset_center_contraction_scheme_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_center_contraction_scheme_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_aoset_center_contraction_scheme_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_center_contraction_scheme_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_aoset_definition} *)

let nwchemdata_set_body_node_aoset_definition_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_aoset_definition_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_aoset_definition_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_definition_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_aoset_definition_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_aoset_definition_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_aoset_definition_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_definition_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_definition_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_aoset_definition_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_aoset_definition_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_definition_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_definition_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_aoset_definition_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_aoset_definition_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_definition_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_definition_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_aoset_numericalvalues_block} *)

let nwchemdata_set_body_node_aoset_numericalvalues_block_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_numericalvalues_block_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_aoset_numericalvalues_block_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_numericalvalues_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_aoset_numericalvalues_block_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_numericalvalues_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_aoset_numericalvalues_block_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_numericalvalues_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_aoset_numericalvalues} *)

let nwchemdata_set_body_node_aoset_numericalvalues_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_aoset_numericalvalues_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_aoset_numericalvalues_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_numericalvalues_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_aoset_numericalvalues_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_aoset_numericalvalues_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_aoset_numericalvalues_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_numericalvalues_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_numericalvalues_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_aoset_numericalvalues_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_aoset_numericalvalues_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_numericalvalues_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_numericalvalues_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_aoset_numericalvalues_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_aoset_numericalvalues_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_numericalvalues_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_numericalvalues_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_aoset_onecenter_block} *)

let nwchemdata_set_body_node_aoset_onecenter_block_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_aoset_onecenter_block_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_aoset_onecenter_block_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_onecenter_block_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_aoset_onecenter_block_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_aoset_onecenter_block_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_aoset_onecenter_block_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_onecenter_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_onecenter_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_aoset_onecenter_block_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_aoset_onecenter_block_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_onecenter_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_onecenter_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_aoset_onecenter_block_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_aoset_onecenter_block_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_onecenter_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_onecenter_block_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_aoset_oneshell_block} *)

let nwchemdata_set_body_node_aoset_oneshell_block_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_aoset_oneshell_block_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_aoset_oneshell_block_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_oneshell_block_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_aoset_oneshell_block_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_aoset_oneshell_block_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_aoset_oneshell_block_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_oneshell_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_oneshell_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_aoset_oneshell_block_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_aoset_oneshell_block_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_oneshell_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_oneshell_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_aoset_oneshell_block_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_aoset_oneshell_block_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_oneshell_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_oneshell_block_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_aoset} *)

let nwchemdata_set_body_node_aoset_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_aoset_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_aoset_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_aoset_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_aoset_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_aoset_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_aoset_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_aoset_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_aoset_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_center_n_shellname} *)

let nwchemdata_set_body_node_center_n_shellname_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_center_n_shellname_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_center_n_shellname_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_center_n_shellname_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_center_n_shellname_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_center_n_shellname_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_center_n_shellname_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_center_n_shellname_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_center_n_shellname_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_center_n_shellname_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_center_n_shellname_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_center_n_shellname_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_center_n_shellname_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_center_n_shellname_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_center_n_shellname_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_center_n_shellname_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_center_n_shellname_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_comment_block} *)

let nwchemdata_set_body_node_comment_block_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_comment_block_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_comment_block_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_comment_block_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_comment_block_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_comment_block_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_comment_block_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_comment_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_comment_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_comment_block_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_comment_block_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_comment_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_comment_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_comment_block_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_comment_block_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_comment_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_comment_block_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_comment_reference_block} *)

let nwchemdata_set_body_node_comment_reference_block_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_comment_reference_block_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_comment_reference_block_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_comment_reference_block_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_comment_reference_block_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_comment_reference_block_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_comment_reference_block_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_comment_reference_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_comment_reference_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_comment_reference_block_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_comment_reference_block_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_comment_reference_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_comment_reference_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_comment_reference_block_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_comment_reference_block_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_comment_reference_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_comment_reference_block_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_datanamefile} *)

let nwchemdata_set_body_node_datanamefile_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_datanamefile_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_datanamefile_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_datanamefile_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_datanamefile_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_datanamefile_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_datanamefile_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_datanamefile_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_datanamefile_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_datanamefile_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_datanamefile_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_datanamefile_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_datanamefile_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_datanamefile_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_datanamefile_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_datanamefile_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_datanamefile_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_ecpbasis_block} *)

let nwchemdata_set_body_node_ecpbasis_block_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_ecpbasis_block_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_ecpbasis_block_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpbasis_block_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_ecpbasis_block_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_ecpbasis_block_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_ecpbasis_block_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpbasis_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpbasis_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_ecpbasis_block_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_ecpbasis_block_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpbasis_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpbasis_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_ecpbasis_block_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_ecpbasis_block_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpbasis_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpbasis_block_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_ecpset_anycenter_block} *)

let nwchemdata_set_body_node_ecpset_anycenter_block_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_ecpset_anycenter_block_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_ecpset_anycenter_block_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_anycenter_block_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_ecpset_anycenter_block_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_ecpset_anycenter_block_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_ecpset_anycenter_block_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_anycenter_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpset_anycenter_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_ecpset_anycenter_block_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_ecpset_anycenter_block_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_anycenter_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpset_anycenter_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_ecpset_anycenter_block_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_ecpset_anycenter_block_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_anycenter_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpset_anycenter_block_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_ecpset_anyshell_block} *)

let nwchemdata_set_body_node_ecpset_anyshell_block_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_ecpset_anyshell_block_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_ecpset_anyshell_block_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_anyshell_block_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_ecpset_anyshell_block_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_ecpset_anyshell_block_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_ecpset_anyshell_block_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_anyshell_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpset_anyshell_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_ecpset_anyshell_block_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_ecpset_anyshell_block_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_anyshell_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpset_anyshell_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_ecpset_anyshell_block_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_ecpset_anyshell_block_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_anyshell_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpset_anyshell_block_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_ecpset_block} *)

let nwchemdata_set_body_node_ecpset_block_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_ecpset_block_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_ecpset_block_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_block_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_ecpset_block_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_ecpset_block_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_ecpset_block_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpset_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_ecpset_block_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_ecpset_block_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpset_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_ecpset_block_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_ecpset_block_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpset_block_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_ecpset_definition} *)

let nwchemdata_set_body_node_ecpset_definition_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_ecpset_definition_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_ecpset_definition_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_definition_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_ecpset_definition_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_ecpset_definition_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_ecpset_definition_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_definition_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpset_definition_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_ecpset_definition_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_ecpset_definition_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_definition_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpset_definition_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_ecpset_definition_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_ecpset_definition_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_definition_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpset_definition_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_ecpset_electronnumber} *)

let nwchemdata_set_body_node_ecpset_electronnumber_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_ecpset_electronnumber_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_ecpset_electronnumber_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_electronnumber_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_ecpset_electronnumber_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_ecpset_electronnumber_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_ecpset_electronnumber_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_electronnumber_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpset_electronnumber_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_ecpset_electronnumber_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_ecpset_electronnumber_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_electronnumber_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpset_electronnumber_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_ecpset_electronnumber_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_ecpset_electronnumber_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_electronnumber_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpset_electronnumber_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_ecpset_numericalvalues_block} *)

let nwchemdata_set_body_node_ecpset_numericalvalues_block_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_numericalvalues_block_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_ecpset_numericalvalues_block_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_numericalvalues_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_ecpset_numericalvalues_block_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_numericalvalues_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_ecpset_numericalvalues_block_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_numericalvalues_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_ecpset_numericalvalues} *)

let nwchemdata_set_body_node_ecpset_numericalvalues_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_ecpset_numericalvalues_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_ecpset_numericalvalues_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_numericalvalues_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_ecpset_numericalvalues_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_ecpset_numericalvalues_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_ecpset_numericalvalues_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_numericalvalues_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpset_numericalvalues_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_ecpset_numericalvalues_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_ecpset_numericalvalues_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_numericalvalues_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpset_numericalvalues_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_ecpset_numericalvalues_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_ecpset_numericalvalues_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_numericalvalues_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpset_numericalvalues_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_ecpset_onecenter_block} *)

let nwchemdata_set_body_node_ecpset_onecenter_block_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_ecpset_onecenter_block_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_ecpset_onecenter_block_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_onecenter_block_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_ecpset_onecenter_block_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_ecpset_onecenter_block_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_ecpset_onecenter_block_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_onecenter_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpset_onecenter_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_ecpset_onecenter_block_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_ecpset_onecenter_block_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_onecenter_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpset_onecenter_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_ecpset_onecenter_block_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_ecpset_onecenter_block_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_onecenter_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpset_onecenter_block_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_ecpset_oneshell_block} *)

let nwchemdata_set_body_node_ecpset_oneshell_block_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_ecpset_oneshell_block_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_ecpset_oneshell_block_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_oneshell_block_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_ecpset_oneshell_block_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_ecpset_oneshell_block_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_ecpset_oneshell_block_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_oneshell_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpset_oneshell_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_ecpset_oneshell_block_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_ecpset_oneshell_block_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_oneshell_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpset_oneshell_block_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_ecpset_oneshell_block_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_ecpset_oneshell_block_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_oneshell_block_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpset_oneshell_block_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_ecpset} *)

let nwchemdata_set_body_node_ecpset_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_ecpset_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_ecpset_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpset_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_ecpset_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_ecpset_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpset_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_ecpset_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_ecpset_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_ecpset_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_ecpset_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_hash_databox} *)

let nwchemdata_set_body_node_hash_databox_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_hash_databox_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_hash_databox_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_hash_databox_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_hash_databox_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_hash_databox_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_hash_databox_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_hash_databox_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_hash_databox_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_hash_databox_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_hash_databox_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_hash_databox_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_hash_databox_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_hash_databox_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_hash_databox_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_hash_databox_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_hash_databox_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_positiveinteger_n_shellname} *)

let nwchemdata_set_body_node_positiveinteger_n_shellname_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_positiveinteger_n_shellname_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_positiveinteger_n_shellname_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_positiveinteger_n_shellname_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_positiveinteger_n_shellname_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_positiveinteger_n_shellname_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_positiveinteger_n_shellname_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_positiveinteger_n_shellname_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_positiveinteger_n_shellname_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_positiveinteger_n_shellname_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_positiveinteger_n_shellname_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_positiveinteger_n_shellname_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_positiveinteger_n_shellname_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_positiveinteger_n_shellname_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_positiveinteger_n_shellname_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_positiveinteger_n_shellname_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_positiveinteger_n_shellname_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_shell_contraction} *)

let nwchemdata_set_body_node_shell_contraction_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_shell_contraction_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_shell_contraction_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_shell_contraction_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_shell_contraction_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_shell_contraction_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_shell_contraction_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_shell_contraction_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_shell_contraction_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_shell_contraction_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_shell_contraction_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_shell_contraction_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_shell_contraction_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_shell_contraction_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_shell_contraction_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_shell_contraction_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_shell_contraction_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_shell_expansion} *)

let nwchemdata_set_body_node_shell_expansion_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_shell_expansion_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_shell_expansion_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_shell_expansion_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_shell_expansion_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_shell_expansion_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_shell_expansion_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_shell_expansion_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_shell_expansion_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_shell_expansion_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_shell_expansion_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_shell_expansion_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_shell_expansion_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_shell_expansion_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_shell_expansion_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_shell_expansion_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_shell_expansion_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node_shell} *)

let nwchemdata_set_body_node_shell_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_shell_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_shell_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_shell_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_shell_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_shell_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_shell_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_shell_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_shell_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_shell_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_shell_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_shell_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_shell_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_shell_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_shell_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_shell_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_shell_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_node} *)

let nwchemdata_set_body_node_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_node_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_node_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_node_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_node_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_node_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_node_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_node_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_node_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_node_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_node_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body} *)

let nwchemdata_set_body_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_variable_angularfunction_cartesian} *)

let nwchemdata_set_body_variable_angularfunction_cartesian_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_variable_angularfunction_cartesian_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_variable_angularfunction_cartesian_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_angularfunction_cartesian_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_variable_angularfunction_cartesian_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_variable_angularfunction_cartesian_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_variable_angularfunction_cartesian_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_angularfunction_cartesian_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_angularfunction_cartesian_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_angularfunction_cartesian_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_variable_angularfunction_cartesian_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_angularfunction_cartesian_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_angularfunction_cartesian_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_angularfunction_cartesian_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_variable_angularfunction_cartesian_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_angularfunction_cartesian_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_angularfunction_cartesian_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_variable_angularfunction_spherical} *)

let nwchemdata_set_body_variable_angularfunction_spherical_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_variable_angularfunction_spherical_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_variable_angularfunction_spherical_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_angularfunction_spherical_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_variable_angularfunction_spherical_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_variable_angularfunction_spherical_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_variable_angularfunction_spherical_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_angularfunction_spherical_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_angularfunction_spherical_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_angularfunction_spherical_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_variable_angularfunction_spherical_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_angularfunction_spherical_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_angularfunction_spherical_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_angularfunction_spherical_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_variable_angularfunction_spherical_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_angularfunction_spherical_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_angularfunction_spherical_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_variable_angularfunction} *)

let nwchemdata_set_body_variable_angularfunction_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_variable_angularfunction_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_variable_angularfunction_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_angularfunction_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_variable_angularfunction_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_variable_angularfunction_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_variable_angularfunction_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_angularfunction_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_angularfunction_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_angularfunction_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_variable_angularfunction_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_angularfunction_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_angularfunction_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_angularfunction_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_variable_angularfunction_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_angularfunction_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_angularfunction_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_variable_angularmomentum} *)

let nwchemdata_set_body_variable_angularmomentum_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_variable_angularmomentum_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_variable_angularmomentum_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_angularmomentum_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_variable_angularmomentum_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_variable_angularmomentum_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_variable_angularmomentum_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_angularmomentum_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_angularmomentum_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_angularmomentum_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_variable_angularmomentum_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_angularmomentum_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_angularmomentum_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_angularmomentum_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_variable_angularmomentum_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_angularmomentum_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_angularmomentum_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_variable_ao_contracted} *)

let nwchemdata_set_body_variable_ao_contracted_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_variable_ao_contracted_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_variable_ao_contracted_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_ao_contracted_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_variable_ao_contracted_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_variable_ao_contracted_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_variable_ao_contracted_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_ao_contracted_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_ao_contracted_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_ao_contracted_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_variable_ao_contracted_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_ao_contracted_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_ao_contracted_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_ao_contracted_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_variable_ao_contracted_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_ao_contracted_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_ao_contracted_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_variable_aos_at_c_n} *)

let nwchemdata_set_body_variable_aos_at_c_n_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_variable_aos_at_c_n_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_variable_aos_at_c_n_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_aos_at_c_n_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_variable_aos_at_c_n_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_variable_aos_at_c_n_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_variable_aos_at_c_n_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_aos_at_c_n_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_aos_at_c_n_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_aos_at_c_n_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_variable_aos_at_c_n_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_aos_at_c_n_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_aos_at_c_n_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_aos_at_c_n_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_variable_aos_at_c_n_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_aos_at_c_n_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_aos_at_c_n_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_variable_aos_at_c} *)

let nwchemdata_set_body_variable_aos_at_c_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_variable_aos_at_c_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_variable_aos_at_c_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_aos_at_c_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_variable_aos_at_c_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_variable_aos_at_c_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_variable_aos_at_c_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_aos_at_c_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_aos_at_c_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_aos_at_c_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_variable_aos_at_c_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_aos_at_c_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_aos_at_c_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_aos_at_c_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_variable_aos_at_c_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_aos_at_c_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_aos_at_c_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_variable_ao_single} *)

let nwchemdata_set_body_variable_ao_single_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_variable_ao_single_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_variable_ao_single_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_ao_single_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_variable_ao_single_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_variable_ao_single_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_variable_ao_single_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_ao_single_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_ao_single_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_ao_single_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_variable_ao_single_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_ao_single_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_ao_single_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_ao_single_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_variable_ao_single_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_ao_single_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_ao_single_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_variable_aos} *)

let nwchemdata_set_body_variable_aos_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_variable_aos_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_variable_aos_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_aos_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_variable_aos_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_variable_aos_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_variable_aos_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_aos_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_aos_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_aos_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_variable_aos_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_aos_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_aos_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_aos_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_variable_aos_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_aos_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_aos_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_variable_ao} *)

let nwchemdata_set_body_variable_ao_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_variable_ao_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_variable_ao_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_ao_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_variable_ao_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_variable_ao_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_variable_ao_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_ao_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_ao_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_ao_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_variable_ao_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_ao_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_ao_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_ao_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_variable_ao_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_ao_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_ao_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_variable_centername} *)

let nwchemdata_set_body_variable_centername_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_variable_centername_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_variable_centername_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_centername_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_variable_centername_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_variable_centername_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_variable_centername_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_centername_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_centername_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_centername_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_variable_centername_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_centername_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_centername_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_centername_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_variable_centername_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_centername_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_centername_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_variable_coefficient} *)

let nwchemdata_set_body_variable_coefficient_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_variable_coefficient_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_variable_coefficient_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_coefficient_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_variable_coefficient_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_variable_coefficient_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_variable_coefficient_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_coefficient_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_coefficient_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_coefficient_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_variable_coefficient_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_coefficient_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_coefficient_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_coefficient_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_variable_coefficient_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_coefficient_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_coefficient_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_variable_databox_name} *)

let nwchemdata_set_body_variable_databox_name_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_variable_databox_name_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_variable_databox_name_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_databox_name_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_variable_databox_name_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_variable_databox_name_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_variable_databox_name_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_databox_name_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_databox_name_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_databox_name_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_variable_databox_name_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_databox_name_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_databox_name_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_databox_name_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_variable_databox_name_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_databox_name_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_databox_name_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_variable_dummy_center} *)

let nwchemdata_set_body_variable_dummy_center_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_variable_dummy_center_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_variable_dummy_center_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_dummy_center_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_variable_dummy_center_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_variable_dummy_center_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_variable_dummy_center_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_dummy_center_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_dummy_center_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_dummy_center_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_variable_dummy_center_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_dummy_center_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_dummy_center_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_dummy_center_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_variable_dummy_center_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_dummy_center_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_dummy_center_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_variable_exponent_n_coefficient} *)

let nwchemdata_set_body_variable_exponent_n_coefficient_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_variable_exponent_n_coefficient_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_variable_exponent_n_coefficient_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_exponent_n_coefficient_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_variable_exponent_n_coefficient_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_variable_exponent_n_coefficient_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_variable_exponent_n_coefficient_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_exponent_n_coefficient_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_exponent_n_coefficient_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_exponent_n_coefficient_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_variable_exponent_n_coefficient_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_exponent_n_coefficient_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_exponent_n_coefficient_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_exponent_n_coefficient_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_variable_exponent_n_coefficient_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_exponent_n_coefficient_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_exponent_n_coefficient_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_variable_exponent} *)

let nwchemdata_set_body_variable_exponent_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_variable_exponent_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_variable_exponent_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_exponent_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_variable_exponent_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_variable_exponent_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_variable_exponent_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_exponent_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_exponent_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_exponent_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_variable_exponent_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_exponent_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_exponent_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_exponent_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_variable_exponent_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_exponent_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_exponent_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_variable_generalcontraction_coefficientcolumn} *)

let nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_variable_generalcontraction_shellset} *)

let nwchemdata_set_body_variable_generalcontraction_shellset_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_variable_generalcontraction_shellset_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_variable_generalcontraction_shellset_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_generalcontraction_shellset_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_variable_generalcontraction_shellset_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_variable_generalcontraction_shellset_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_variable_generalcontraction_shellset_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_generalcontraction_shellset_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_generalcontraction_shellset_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_generalcontraction_shellset_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_variable_generalcontraction_shellset_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_generalcontraction_shellset_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_generalcontraction_shellset_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_generalcontraction_shellset_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_variable_generalcontraction_shellset_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_generalcontraction_shellset_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_generalcontraction_shellset_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_variable_generalcontraction} *)

let nwchemdata_set_body_variable_generalcontraction_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_variable_generalcontraction_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_variable_generalcontraction_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_generalcontraction_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_variable_generalcontraction_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_variable_generalcontraction_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_variable_generalcontraction_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_generalcontraction_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_generalcontraction_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_generalcontraction_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_variable_generalcontraction_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_generalcontraction_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_generalcontraction_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_generalcontraction_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_variable_generalcontraction_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_generalcontraction_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_generalcontraction_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_variable_localname_dataname} *)

let nwchemdata_set_body_variable_localname_dataname_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_variable_localname_dataname_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_variable_localname_dataname_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_localname_dataname_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_variable_localname_dataname_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_variable_localname_dataname_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_variable_localname_dataname_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_localname_dataname_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_localname_dataname_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_localname_dataname_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_variable_localname_dataname_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_localname_dataname_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_localname_dataname_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_localname_dataname_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_variable_localname_dataname_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_localname_dataname_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_localname_dataname_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_variable_localname_ecpset} *)

let nwchemdata_set_body_variable_localname_ecpset_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_variable_localname_ecpset_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_variable_localname_ecpset_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_localname_ecpset_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_variable_localname_ecpset_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_variable_localname_ecpset_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_variable_localname_ecpset_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_localname_ecpset_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_localname_ecpset_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_localname_ecpset_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_variable_localname_ecpset_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_localname_ecpset_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_localname_ecpset_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_localname_ecpset_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_variable_localname_ecpset_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_localname_ecpset_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_localname_ecpset_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_variable_localname} *)

let nwchemdata_set_body_variable_localname_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_variable_localname_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_variable_localname_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_localname_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_variable_localname_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_variable_localname_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_variable_localname_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_localname_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_localname_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_localname_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_variable_localname_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_localname_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_localname_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_localname_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_variable_localname_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_localname_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_localname_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_variable_mendeleievsymbol} *)

let nwchemdata_set_body_variable_mendeleievsymbol_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_variable_mendeleievsymbol_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_variable_mendeleievsymbol_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_mendeleievsymbol_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_variable_mendeleievsymbol_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_variable_mendeleievsymbol_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_variable_mendeleievsymbol_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_mendeleievsymbol_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_mendeleievsymbol_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_mendeleievsymbol_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_variable_mendeleievsymbol_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_mendeleievsymbol_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_mendeleievsymbol_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_mendeleievsymbol_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_variable_mendeleievsymbol_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_mendeleievsymbol_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_mendeleievsymbol_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_variable_name} *)

let nwchemdata_set_body_variable_name_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_variable_name_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_variable_name_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_name_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_variable_name_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_variable_name_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_variable_name_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_name_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_name_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_name_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_variable_name_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_name_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_name_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_name_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_variable_name_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_name_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_name_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_variable_radialfunction} *)

let nwchemdata_set_body_variable_radialfunction_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_variable_radialfunction_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_variable_radialfunction_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_radialfunction_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_variable_radialfunction_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_variable_radialfunction_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_variable_radialfunction_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_radialfunction_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_radialfunction_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_radialfunction_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_variable_radialfunction_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_radialfunction_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_radialfunction_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_radialfunction_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_variable_radialfunction_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_radialfunction_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_radialfunction_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_variable_shellname_extended} *)

let nwchemdata_set_body_variable_shellname_extended_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_variable_shellname_extended_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_variable_shellname_extended_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_shellname_extended_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_variable_shellname_extended_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_variable_shellname_extended_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_variable_shellname_extended_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_shellname_extended_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_shellname_extended_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_shellname_extended_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_variable_shellname_extended_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_shellname_extended_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_shellname_extended_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_shellname_extended_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_variable_shellname_extended_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_shellname_extended_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_shellname_extended_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_variable_shellname_relativistic} *)

let nwchemdata_set_body_variable_shellname_relativistic_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_variable_shellname_relativistic_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_variable_shellname_relativistic_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_shellname_relativistic_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_variable_shellname_relativistic_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_variable_shellname_relativistic_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_variable_shellname_relativistic_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_shellname_relativistic_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_shellname_relativistic_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_shellname_relativistic_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_variable_shellname_relativistic_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_shellname_relativistic_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_shellname_relativistic_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_shellname_relativistic_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_variable_shellname_relativistic_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_shellname_relativistic_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_shellname_relativistic_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_variable_shellname} *)

let nwchemdata_set_body_variable_shellname_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_variable_shellname_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_variable_shellname_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_shellname_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_variable_shellname_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_variable_shellname_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_variable_shellname_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_shellname_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_shellname_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_shellname_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_variable_shellname_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_shellname_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_shellname_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_shellname_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_variable_shellname_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_shellname_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_shellname_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_variable_shellname_usual} *)

let nwchemdata_set_body_variable_shellname_usual_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_variable_shellname_usual_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_variable_shellname_usual_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_shellname_usual_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_variable_shellname_usual_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_variable_shellname_usual_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_variable_shellname_usual_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_shellname_usual_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_shellname_usual_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_shellname_usual_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_variable_shellname_usual_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_shellname_usual_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_shellname_usual_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_shellname_usual_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_variable_shellname_usual_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_shellname_usual_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_shellname_usual_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_variable} *)

let nwchemdata_set_body_variable_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_variable_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_variable_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_variable_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_variable_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_variable_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_variable_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_variable_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_body_variable_version} *)

let nwchemdata_set_body_variable_version_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_body_variable_version_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_body_variable_version_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_version_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_body_variable_version_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_body_variable_version_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_body_variable_version_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_version_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_version_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_version_symbol_v.name sym_ldb
;;

let nwchemdata_set_body_variable_version_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_version_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_version_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_body_variable_version_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_body_variable_version_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_body_variable_version_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_body_variable_version_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_fence_float_negative} *)

let nwchemdata_set_fence_float_negative_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_fence_float_negative_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_fence_float_negative_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_float_negative_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_fence_float_negative_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_fence_float_negative_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_fence_float_negative_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_float_negative_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_fence_float_negative_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_fence_float_negative_symbol_v.name sym_ldb
;;

let nwchemdata_set_fence_float_negative_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_float_negative_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_fence_float_negative_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_fence_float_negative_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_fence_float_negative_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_float_negative_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_fence_float_negative_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_fence_float_nonnegative} *)

let nwchemdata_set_fence_float_nonnegative_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_fence_float_nonnegative_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_fence_float_nonnegative_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_float_nonnegative_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_fence_float_nonnegative_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_fence_float_nonnegative_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_fence_float_nonnegative_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_float_nonnegative_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_fence_float_nonnegative_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_fence_float_nonnegative_symbol_v.name sym_ldb
;;

let nwchemdata_set_fence_float_nonnegative_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_float_nonnegative_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_fence_float_nonnegative_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_fence_float_nonnegative_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_fence_float_nonnegative_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_float_nonnegative_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_fence_float_nonnegative_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_fence_float_positive} *)

let nwchemdata_set_fence_float_positive_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_fence_float_positive_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_fence_float_positive_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_float_positive_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_fence_float_positive_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_fence_float_positive_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_fence_float_positive_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_float_positive_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_fence_float_positive_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_fence_float_positive_symbol_v.name sym_ldb
;;

let nwchemdata_set_fence_float_positive_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_float_positive_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_fence_float_positive_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_fence_float_positive_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_fence_float_positive_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_float_positive_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_fence_float_positive_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_fence_float} *)

let nwchemdata_set_fence_float_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_fence_float_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_fence_float_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_float_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_fence_float_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_fence_float_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_fence_float_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_float_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_fence_float_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_fence_float_symbol_v.name sym_ldb
;;

let nwchemdata_set_fence_float_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_float_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_fence_float_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_fence_float_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_fence_float_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_float_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_fence_float_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_fence_integer_negative} *)

let nwchemdata_set_fence_integer_negative_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_fence_integer_negative_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_fence_integer_negative_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_integer_negative_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_fence_integer_negative_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_fence_integer_negative_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_fence_integer_negative_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_integer_negative_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_fence_integer_negative_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_fence_integer_negative_symbol_v.name sym_ldb
;;

let nwchemdata_set_fence_integer_negative_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_integer_negative_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_fence_integer_negative_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_fence_integer_negative_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_fence_integer_negative_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_integer_negative_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_fence_integer_negative_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_fence_integer_nonnegative} *)

let nwchemdata_set_fence_integer_nonnegative_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_fence_integer_nonnegative_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_fence_integer_nonnegative_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_integer_nonnegative_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_fence_integer_nonnegative_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_fence_integer_nonnegative_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_fence_integer_nonnegative_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_integer_nonnegative_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_fence_integer_nonnegative_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_fence_integer_nonnegative_symbol_v.name sym_ldb
;;

let nwchemdata_set_fence_integer_nonnegative_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_integer_nonnegative_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_fence_integer_nonnegative_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_fence_integer_nonnegative_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_fence_integer_nonnegative_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_integer_nonnegative_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_fence_integer_nonnegative_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_fence_integer_positive} *)

let nwchemdata_set_fence_integer_positive_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_fence_integer_positive_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_fence_integer_positive_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_integer_positive_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_fence_integer_positive_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_fence_integer_positive_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_fence_integer_positive_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_integer_positive_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_fence_integer_positive_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_fence_integer_positive_symbol_v.name sym_ldb
;;

let nwchemdata_set_fence_integer_positive_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_integer_positive_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_fence_integer_positive_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_fence_integer_positive_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_fence_integer_positive_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_integer_positive_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_fence_integer_positive_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_fence_integer} *)

let nwchemdata_set_fence_integer_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_fence_integer_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_fence_integer_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_integer_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_fence_integer_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_fence_integer_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_fence_integer_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_integer_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_fence_integer_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_fence_integer_symbol_v.name sym_ldb
;;

let nwchemdata_set_fence_integer_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_integer_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_fence_integer_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_fence_integer_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_fence_integer_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_integer_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_fence_integer_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_fence_string} *)

let nwchemdata_set_fence_string_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_fence_string_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_fence_string_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_string_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_fence_string_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_fence_string_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_fence_string_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_string_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_fence_string_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_fence_string_symbol_v.name sym_ldb
;;

let nwchemdata_set_fence_string_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_string_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_fence_string_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_fence_string_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_fence_string_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_string_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_fence_string_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set_fence} *)

let nwchemdata_set_fence_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_fence_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_fence_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_fence_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_fence_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_fence_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_fence_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_fence_symbol_v.name sym_ldb
;;

let nwchemdata_set_fence_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_fence_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_fence_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_fence_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_fence_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_fence_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Nwchemdata_context_set} *)

let nwchemdata_set_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_nwchemdata_set_symbol_off_nwchemdata_symbol"
    soi_any
;;

let nwchemdata_set_symbol_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_sole_index_off_sole_index soi_any in
  let des_pre = 
    nwchemdata_symbol_of_string_predicate_off_sole_index 
      "is_nwchemdata_set_symbol_off_nwchemdata_symbol"
      soi_ldb
  in
  Nwchemdata_symbol_v.nwchemdata_set_symbol_off_nwchemdata_symbol des_pre
;;

let nwchemdata_set_name_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_symbol_v.name sym_ldb
;;

let nwchemdata_set_string_off_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_symbol_off_sole_index soi_ldb in
  Nwchemdata_set_symbol_v.string_off sym_ldb
;;

let nwchemdata_set_tag_off_sole_index soi_any =
  let soi_ldb = nwchemdata_set_sole_index_off_sole_index soi_any in
  let sym_ldb = nwchemdata_set_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(* Using do_extractor_header.sh *)
(*       do_extractor_predicate_of_string.sh *)
(*       template_extractor_preparing_v.ml *)
(*       do_extractor_entity_extracted_list.sh > generator/entity_extracted.lis *)
(*       template_extractor_extracting_v.ml *)
(* done with do_extractor.sh force on dimanche 4 décembre 2016, 19:11:39 (UTC+0100) *)
