(** {3 Nwchemdata_set_body_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Nwchemdata_set_body_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_directive_symbol sym_nbd ->
    Nwchemdata_set_body_directive_symbol_v.name sym_nbd
  | Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_keyword_symbol sym_nbk ->
    Nwchemdata_set_body_keyword_symbol_v.name sym_nbk
  | Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol sym_nbn ->
    Nwchemdata_set_body_node_symbol_v.name sym_nbn
  | Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_variable_symbol sym_nbv ->
    Nwchemdata_set_body_variable_symbol_v.name sym_nbv
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_directive_symbol sym_nbd ->
  Nwchemdata_set_body_directive_symbol_v.string_off sym_nbd
  | Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_keyword_symbol sym_nbk ->
  Nwchemdata_set_body_keyword_symbol_v.string_off sym_nbk
  | Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol sym_nbn ->
  Nwchemdata_set_body_node_symbol_v.string_off sym_nbn
  | Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_variable_symbol sym_nbv ->
  Nwchemdata_set_body_variable_symbol_v.string_off sym_nbv
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_nsb =
  Format.sprintf "Nwchemdata_set_body_symbol_t.%s" (String.capitalize (name sym_nsb))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_nsb =
  Format.sprintf "%s \"%s\"" (longname sym_nsb) (string_off sym_nsb)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let nwchemdata_set_body_directive_symbol_off_nwchemdata_set_body_symbol = function
  | Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_directive_symbol sym_nbd -> sym_nbd
  | sym_nsb -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_directive_symbol_off_nwchemdata_set_body_symbol"
      "Nwchemdata_set_body_directive_symbol"
      (name sym_nsb) "check"
;;

let nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol = function
  | Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_keyword_symbol sym_nbk -> sym_nbk
  | sym_nsb -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol"
      "Nwchemdata_set_body_keyword_symbol"
      (name sym_nsb) "check"
;;

let nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol = function
  | Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol sym_nbn -> sym_nbn
  | sym_nsb -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol"
      "Nwchemdata_set_body_node_symbol"
      (name sym_nsb) "check"
;;

let nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol = function
  | Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_variable_symbol sym_nbv -> sym_nbv
  | sym_nsb -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol"
      "Nwchemdata_set_body_variable_symbol"
      (name sym_nsb) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let nwchemdata_set_body_node_aobasis_block_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_aobasis_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_aocomment_block_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_aocomment_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_aoset_anycenter_block_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_aoset_anycenter_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_aoset_anyshell_block_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_aoset_anyshell_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_aoset_block_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_aoset_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_aoset_center_contraction_image_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_aoset_center_contraction_image_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_aoset_definition_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_aoset_definition_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_aoset_numericalvalues_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_aoset_numericalvalues_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_aoset_onecenter_block_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_aoset_onecenter_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_aoset_oneshell_block_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_aoset_oneshell_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_center_n_shellname_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_center_n_shellname_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_comment_block_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_comment_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_comment_reference_block_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_comment_reference_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_datanamefile_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_datanamefile_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_ecpbasis_block_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_ecpbasis_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_ecpset_anycenter_block_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_ecpset_anycenter_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_ecpset_anyshell_block_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_ecpset_anyshell_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_ecpset_block_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_ecpset_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_ecpset_definition_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_ecpset_definition_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_ecpset_electronnumber_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_ecpset_electronnumber_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_ecpset_numericalvalues_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_ecpset_numericalvalues_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_ecpset_onecenter_block_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_ecpset_onecenter_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_ecpset_oneshell_block_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_ecpset_oneshell_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_hash_databox_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_hash_databox_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_positiveinteger_n_shellname_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_positiveinteger_n_shellname_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_shell_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_shell_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_shell_contraction_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_shell_contraction_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_node_shell_expansion_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_shell_expansion_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_variable_angularfunction_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_angularfunction_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_variable_angularfunction_cartesian_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_angularfunction_cartesian_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_variable_angularfunction_spherical_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_angularfunction_spherical_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_variable_angularmomentum_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_angularmomentum_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_variable_ao_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_ao_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_variable_ao_contracted_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_ao_contracted_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_variable_ao_single_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_ao_single_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_variable_aos_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_aos_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_variable_aos_at_c_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_aos_at_c_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_variable_aos_at_c_n_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_aos_at_c_n_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_variable_centername_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_centername_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_variable_coefficient_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_coefficient_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_variable_databox_name_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_databox_name_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_variable_dummy_center_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_dummy_center_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_variable_exponent_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_exponent_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_variable_exponent_n_coefficient_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_exponent_n_coefficient_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_variable_generalcontraction_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_generalcontraction_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_variable_generalcontraction_shellset_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_generalcontraction_shellset_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_variable_localname_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_localname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_variable_localname_dataname_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_localname_dataname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_variable_localname_ecpset_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_localname_ecpset_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_variable_mendeleievsymbol_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_mendeleievsymbol_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_variable_name_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_name_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_variable_radialfunction_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_radialfunction_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_variable_shellname_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_shellname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_variable_shellname_extended_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_shellname_extended_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_variable_shellname_usual_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_shellname_usual_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_variable_shellname_relativistic_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_shellname_relativistic_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_variable_version_symbol_off_nwchemdata_set_body_symbol sym_nsb = 
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
    Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_version_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_nwchemdata_set_body_directive_symbol_off_nwchemdata_set_body_symbol = function
  | Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_directive_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol = function
  | Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_keyword_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol = function
  | Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol = function
  | Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_variable_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_nwchemdata_set_body_directive_basis sym_nsb =
  if not (is_nwchemdata_set_body_directive_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbd = nwchemdata_set_body_directive_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_directive_symbol_v.is_nwchemdata_set_body_directive_basis sym_nbd
    end
;;

let is_nwchemdata_set_body_directive_ecp sym_nsb =
  if not (is_nwchemdata_set_body_directive_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbd = nwchemdata_set_body_directive_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_directive_symbol_v.is_nwchemdata_set_body_directive_ecp sym_nbd
    end
;;

let is_nwchemdata_set_body_directive_end sym_nsb =
  if not (is_nwchemdata_set_body_directive_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbd = nwchemdata_set_body_directive_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_directive_symbol_v.is_nwchemdata_set_body_directive_end sym_nbd
    end
;;

let is_nwchemdata_set_body_directive_print sym_nsb =
  if not (is_nwchemdata_set_body_directive_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbd = nwchemdata_set_body_directive_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_directive_symbol_v.is_nwchemdata_set_body_directive_print sym_nbd
    end
;;

let is_nwchemdata_set_body_keyword_cartesian sym_nsb =
  if not (is_nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbk = nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_keyword_symbol_v.is_nwchemdata_set_body_keyword_cartesian sym_nbk
    end
;;

let is_nwchemdata_set_body_keyword_colon sym_nsb =
  if not (is_nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbk = nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_keyword_symbol_v.is_nwchemdata_set_body_keyword_colon sym_nbk
    end
;;

let is_nwchemdata_set_body_keyword_comma sym_nsb =
  if not (is_nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbk = nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_keyword_symbol_v.is_nwchemdata_set_body_keyword_comma sym_nbk
    end
;;

let is_nwchemdata_set_body_keyword_end_of_file sym_nsb =
  if not (is_nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbk = nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_keyword_symbol_v.is_nwchemdata_set_body_keyword_end_of_file sym_nbk
    end
;;

let is_nwchemdata_set_body_keyword_hash_basis sym_nsb =
  if not (is_nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbk = nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_keyword_symbol_v.is_nwchemdata_set_body_keyword_hash_basis sym_nbk
    end
;;

let is_nwchemdata_set_body_keyword_left_arrow sym_nsb =
  if not (is_nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbk = nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_keyword_symbol_v.is_nwchemdata_set_body_keyword_left_arrow sym_nbk
    end
;;

let is_nwchemdata_set_body_keyword_left_bracket sym_nsb =
  if not (is_nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbk = nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_keyword_symbol_v.is_nwchemdata_set_body_keyword_left_bracket sym_nbk
    end
;;

let is_nwchemdata_set_body_keyword_left_parenthesis sym_nsb =
  if not (is_nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbk = nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_keyword_symbol_v.is_nwchemdata_set_body_keyword_left_parenthesis sym_nbk
    end
;;

let is_nwchemdata_set_body_keyword_nelec sym_nsb =
  if not (is_nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbk = nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_keyword_symbol_v.is_nwchemdata_set_body_keyword_nelec sym_nbk
    end
;;

let is_nwchemdata_set_body_keyword_nosegment sym_nsb =
  if not (is_nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbk = nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_keyword_symbol_v.is_nwchemdata_set_body_keyword_nosegment sym_nbk
    end
;;

let is_nwchemdata_set_body_keyword_rel sym_nsb =
  if not (is_nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbk = nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_keyword_symbol_v.is_nwchemdata_set_body_keyword_rel sym_nbk
    end
;;

let is_nwchemdata_set_body_keyword_right_arrow sym_nsb =
  if not (is_nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbk = nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_keyword_symbol_v.is_nwchemdata_set_body_keyword_right_arrow sym_nbk
    end
;;

let is_nwchemdata_set_body_keyword_right_bracket sym_nsb =
  if not (is_nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbk = nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_keyword_symbol_v.is_nwchemdata_set_body_keyword_right_bracket sym_nbk
    end
;;

let is_nwchemdata_set_body_keyword_right_parenthesis sym_nsb =
  if not (is_nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbk = nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_keyword_symbol_v.is_nwchemdata_set_body_keyword_right_parenthesis sym_nbk
    end
;;

let is_nwchemdata_set_body_keyword_segment sym_nsb =
  if not (is_nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbk = nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_keyword_symbol_v.is_nwchemdata_set_body_keyword_segment sym_nbk
    end
;;

let is_nwchemdata_set_body_keyword_set sym_nsb =
  if not (is_nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbk = nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_keyword_symbol_v.is_nwchemdata_set_body_keyword_set sym_nbk
    end
;;

let is_nwchemdata_set_body_keyword_spherical sym_nsb =
  if not (is_nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbk = nwchemdata_set_body_keyword_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_keyword_symbol_v.is_nwchemdata_set_body_keyword_spherical sym_nbk
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_nwchemdata_set_body_node_aobasis_block_constructor sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_aobasis_block_constructor sym_nbn
    end
;;

let is_nwchemdata_set_body_node_aocomment_block_constructor sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_aocomment_block_constructor sym_nbn
    end
;;

let is_nwchemdata_set_body_node_aoset_anycenter_block_constructor sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_aoset_anycenter_block_constructor sym_nbn
    end
;;

let is_nwchemdata_set_body_node_aoset_anyshell_block_constructor sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_aoset_anyshell_block_constructor sym_nbn
    end
;;

let is_nwchemdata_set_body_node_aoset_block_constructor sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_aoset_block_constructor sym_nbn
    end
;;

let is_nwchemdata_set_body_node_aoset_center_contraction_image_constructor sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_aoset_center_contraction_image_constructor sym_nbn
    end
;;

let is_nwchemdata_set_body_node_aoset_center_contraction_scheme_constructor sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_aoset_center_contraction_scheme_constructor sym_nbn
    end
;;

let is_nwchemdata_set_body_node_aoset_definition_constructor sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_aoset_definition_constructor sym_nbn
    end
;;

let is_nwchemdata_set_body_node_aoset_numericalvalues_constructor sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_aoset_numericalvalues_constructor sym_nbn
    end
;;

let is_nwchemdata_set_body_node_aoset_numericalvalues_block_constructor sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_aoset_numericalvalues_block_constructor sym_nbn
    end
;;

let is_nwchemdata_set_body_node_aoset_onecenter_block_constructor sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_aoset_onecenter_block_constructor sym_nbn
    end
;;

let is_nwchemdata_set_body_node_aoset_oneshell_block_constructor sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_aoset_oneshell_block_constructor sym_nbn
    end
;;

let is_nwchemdata_set_body_node_center_n_shellname_constructor sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_center_n_shellname_constructor sym_nbn
    end
;;

let is_nwchemdata_set_body_node_comment_block_constructor sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_comment_block_constructor sym_nbn
    end
;;

let is_nwchemdata_set_body_node_comment_reference_block_constructor sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_comment_reference_block_constructor sym_nbn
    end
;;

let is_nwchemdata_set_body_node_datanamefile_constructor sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_datanamefile_constructor sym_nbn
    end
;;

let is_nwchemdata_set_body_node_ecpbasis_block_constructor sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_ecpbasis_block_constructor sym_nbn
    end
;;

let is_nwchemdata_set_body_node_ecpset_anycenter_block_constructor sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_ecpset_anycenter_block_constructor sym_nbn
    end
;;

let is_nwchemdata_set_body_node_ecpset_anyshell_block_constructor sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_ecpset_anyshell_block_constructor sym_nbn
    end
;;

let is_nwchemdata_set_body_node_ecpset_block_constructor sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_ecpset_block_constructor sym_nbn
    end
;;

let is_nwchemdata_set_body_node_ecpset_definition_constructor sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_ecpset_definition_constructor sym_nbn
    end
;;

let is_nwchemdata_set_body_node_ecpset_electronnumber_constructor sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_ecpset_electronnumber_constructor sym_nbn
    end
;;

let is_nwchemdata_set_body_node_ecpset_numericalvalues_constructor sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_ecpset_numericalvalues_constructor sym_nbn
    end
;;

let is_nwchemdata_set_body_node_ecpset_numericalvalues_block_constructor sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_ecpset_numericalvalues_block_constructor sym_nbn
    end
;;

let is_nwchemdata_set_body_node_ecpset_onecenter_block_constructor sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_ecpset_onecenter_block_constructor sym_nbn
    end
;;

let is_nwchemdata_set_body_node_ecpset_oneshell_block_constructor sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_ecpset_oneshell_block_constructor sym_nbn
    end
;;

let is_nwchemdata_set_body_node_hash_databox_constructor sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_hash_databox_constructor sym_nbn
    end
;;

let is_nwchemdata_set_body_node_positiveinteger_n_shellname_constructor sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_positiveinteger_n_shellname_constructor sym_nbn
    end
;;

let is_nwchemdata_set_body_node_shell_contraction_constructor sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_shell_contraction_constructor sym_nbn
    end
;;

let is_nwchemdata_set_body_node_shell_expansion_constructor sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_shell_expansion_constructor sym_nbn
    end
;;

let is_nwchemdata_set_body_variable_angularfunction_cartesian_constructor sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_angularfunction_cartesian_constructor sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_angularfunction_spherical_constructor sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_angularfunction_spherical_constructor sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_angularmomentum_constructor sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_angularmomentum_constructor sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_ao_contracted_constructor sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_ao_contracted_constructor sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_ao_single_constructor sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_ao_single_constructor sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_aos_at_c_constructor sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_aos_at_c_constructor sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_aos_at_c_n_constructor sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_aos_at_c_n_constructor sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_centername_constructor sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_centername_constructor sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_coefficient_constructor sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_coefficient_constructor sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_databox_name_constructor sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_databox_name_constructor sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_dummy_center_constructor sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_dummy_center_constructor sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_exponent_constructor sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_exponent_constructor sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_exponent_n_coefficient_constructor sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_exponent_n_coefficient_constructor sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_constructor sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_constructor sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_generalcontraction_shellset_constructor sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_generalcontraction_shellset_constructor sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_localname_dataname_constructor sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_localname_dataname_constructor sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_localname_ecpset_constructor sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_localname_ecpset_constructor sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_mendeleievsymbol_constructor sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_mendeleievsymbol_constructor sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_name_constructor sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_name_constructor sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_radialfunction_constructor sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_radialfunction_constructor sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_shellname_extended_constructor sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_shellname_extended_constructor sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_shellname_usual_constructor sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_shellname_usual_constructor sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_shellname_relativistic_constructor sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_shellname_relativistic_constructor sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_version_constructor sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
      let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
      Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_version_constructor sym_nbv
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_nwchemdata_set_body_node_aobasis_block_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_aobasis_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_aocomment_block_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_aocomment_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_aoset_anycenter_block_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_aoset_anycenter_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_aoset_anyshell_block_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_aoset_anyshell_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_aoset_block_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_aoset_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_aoset_center_contraction_image_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_aoset_center_contraction_image_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_aoset_definition_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_aoset_definition_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_aoset_numericalvalues_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_aoset_numericalvalues_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_aoset_onecenter_block_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_aoset_onecenter_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_aoset_oneshell_block_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_aoset_oneshell_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_center_n_shellname_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_center_n_shellname_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_comment_block_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_comment_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_comment_reference_block_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_comment_reference_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_datanamefile_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_datanamefile_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_ecpbasis_block_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_ecpbasis_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_ecpset_anycenter_block_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_ecpset_anycenter_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_ecpset_anyshell_block_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_ecpset_anyshell_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_ecpset_block_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_ecpset_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_ecpset_definition_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_ecpset_definition_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_ecpset_electronnumber_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_ecpset_electronnumber_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_ecpset_numericalvalues_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_ecpset_numericalvalues_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_ecpset_onecenter_block_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_ecpset_onecenter_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_ecpset_oneshell_block_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_ecpset_oneshell_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_hash_databox_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_hash_databox_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_positiveinteger_n_shellname_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_positiveinteger_n_shellname_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_shell_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_shell_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_shell_contraction_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_shell_contraction_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_node_shell_expansion_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbn = nwchemdata_set_body_node_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_node_symbol_v.is_nwchemdata_set_body_node_shell_expansion_symbol_off_nwchemdata_set_body_node_symbol sym_nbn
    end
;;

let is_nwchemdata_set_body_variable_angularfunction_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_angularfunction_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_angularfunction_cartesian_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_angularfunction_cartesian_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_angularfunction_spherical_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_angularfunction_spherical_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_angularmomentum_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_angularmomentum_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_ao_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_ao_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_ao_contracted_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_ao_contracted_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_ao_single_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_ao_single_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_aos_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_aos_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_aos_at_c_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_aos_at_c_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_aos_at_c_n_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_aos_at_c_n_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_centername_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_centername_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_coefficient_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_coefficient_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_databox_name_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_databox_name_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_dummy_center_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_dummy_center_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_exponent_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_exponent_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_exponent_n_coefficient_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_exponent_n_coefficient_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_generalcontraction_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_generalcontraction_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_generalcontraction_shellset_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_generalcontraction_shellset_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_localname_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_localname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_localname_dataname_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_localname_dataname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_localname_ecpset_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_localname_ecpset_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_mendeleievsymbol_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_mendeleievsymbol_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_name_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_name_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_radialfunction_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_radialfunction_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_shellname_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_shellname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_shellname_extended_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_shellname_extended_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_shellname_usual_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_shellname_usual_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_shellname_relativistic_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_shellname_relativistic_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
    end
;;

let is_nwchemdata_set_body_variable_version_symbol_off_nwchemdata_set_body_symbol sym_nsb =
  if not (is_nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb)
  then false
  else
    begin
  let sym_nbv = nwchemdata_set_body_variable_symbol_off_nwchemdata_set_body_symbol sym_nsb in
  Nwchemdata_set_body_variable_symbol_v.is_nwchemdata_set_body_variable_version_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_directive_symbol sym_nbd = 
  Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_directive_symbol sym_nbd
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_keyword_symbol sym_nbk = 
  Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_keyword_symbol sym_nbk
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn = 
  Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol sym_nbv = 
  Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_variable_symbol sym_nbv
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_aobasis_block_symbol sym_nab = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aobasis_block_symbol sym_nab in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_aocomment_block_symbol sym_nab = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aocomment_block_symbol sym_nab in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_aoset_symbol sym_nna = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_symbol sym_nna in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_aoset_anycenter_block_symbol sym_nab = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_anycenter_block_symbol sym_nab in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_aoset_anyshell_block_symbol sym_nab = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_anyshell_block_symbol sym_nab in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_aoset_block_symbol sym_nab = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_block_symbol sym_nab in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_aoset_center_contraction_image_symbol sym_nci = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_center_contraction_image_symbol sym_nci in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol sym_ncs = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol sym_ncs in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_aoset_definition_symbol sym_nad = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_definition_symbol sym_nad in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_aoset_numericalvalues_symbol sym_nan = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_numericalvalues_symbol sym_nan in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_aoset_numericalvalues_block_symbol sym_nnb = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_numericalvalues_block_symbol sym_nnb in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_aoset_onecenter_block_symbol sym_n1b = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_onecenter_block_symbol sym_n1b in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_aoset_oneshell_block_symbol sym_n1b = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_oneshell_block_symbol sym_n1b in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_center_n_shellname_symbol sym_nns = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_center_n_shellname_symbol sym_nns in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_comment_block_symbol sym_ncb = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_comment_block_symbol sym_ncb in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_comment_reference_block_symbol sym_nrb = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_comment_reference_block_symbol sym_nrb in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_datanamefile_symbol sym_nnd = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_datanamefile_symbol sym_nnd in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_ecpbasis_block_symbol sym_neb = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpbasis_block_symbol sym_neb in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_ecpset_symbol sym_nne = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_symbol sym_nne in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_ecpset_anycenter_block_symbol sym_nab = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_anycenter_block_symbol sym_nab in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_ecpset_anyshell_block_symbol sym_nab = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_anyshell_block_symbol sym_nab in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_ecpset_block_symbol sym_neb = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_block_symbol sym_neb in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_ecpset_definition_symbol sym_ned = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_definition_symbol sym_ned in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_ecpset_electronnumber_symbol sym_nee = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_electronnumber_symbol sym_nee in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_ecpset_numericalvalues_symbol sym_nen = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_numericalvalues_symbol sym_nen in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol sym_nnb = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol sym_nnb in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_ecpset_onecenter_block_symbol sym_n1b = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_onecenter_block_symbol sym_n1b in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_ecpset_oneshell_block_symbol sym_n1b = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_oneshell_block_symbol sym_n1b in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_hash_databox_symbol sym_nhd = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_hash_databox_symbol sym_nhd in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_positiveinteger_n_shellname_symbol sym_nns = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_positiveinteger_n_shellname_symbol sym_nns in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_shell_symbol sym_nns = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_shell_symbol sym_nns in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_shell_contraction_symbol sym_nsc = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_shell_contraction_symbol sym_nsc in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_shell_expansion_symbol sym_nse = 
  let sym_nbn = Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_shell_expansion_symbol sym_nse in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol sym_nbn
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_angularfunction_symbol sym_nva = 
  let sym_nbv = Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_angularfunction_symbol sym_nva in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_angularfunction_cartesian_symbol sym_nac = 
  let sym_nbv = Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_angularfunction_cartesian_symbol sym_nac in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_angularfunction_spherical_symbol sym_nas = 
  let sym_nbv = Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_angularfunction_spherical_symbol sym_nas in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_angularmomentum_symbol sym_nva = 
  let sym_nbv = Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_angularmomentum_symbol sym_nva in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_ao_symbol sym_nva = 
  let sym_nbv = Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_ao_symbol sym_nva in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_ao_contracted_symbol sym_nac = 
  let sym_nbv = Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_ao_contracted_symbol sym_nac in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_ao_single_symbol sym_nas = 
  let sym_nbv = Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_ao_single_symbol sym_nas in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_aos_symbol sym_nva = 
  let sym_nbv = Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_aos_symbol sym_nva in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_aos_at_c_symbol sym_nac = 
  let sym_nbv = Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_aos_at_c_symbol sym_nac in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_aos_at_c_n_symbol sym_ncn = 
  let sym_nbv = Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_aos_at_c_n_symbol sym_ncn in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_centername_symbol sym_nvc = 
  let sym_nbv = Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_centername_symbol sym_nvc in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_coefficient_symbol sym_nvc = 
  let sym_nbv = Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_coefficient_symbol sym_nvc in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_databox_name_symbol sym_ndn = 
  let sym_nbv = Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_databox_name_symbol sym_ndn in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_dummy_center_symbol sym_ndc = 
  let sym_nbv = Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_dummy_center_symbol sym_ndc in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_exponent_symbol sym_nve = 
  let sym_nbv = Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_exponent_symbol sym_nve in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_exponent_n_coefficient_symbol sym_nnc = 
  let sym_nbv = Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_exponent_n_coefficient_symbol sym_nnc in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_generalcontraction_symbol sym_nvg = 
  let sym_nbv = Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_generalcontraction_symbol sym_nvg in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_symbol sym_ngc = 
  let sym_nbv = Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_symbol sym_ngc in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_generalcontraction_shellset_symbol sym_ngs = 
  let sym_nbv = Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_generalcontraction_shellset_symbol sym_ngs in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_localname_symbol sym_nvl = 
  let sym_nbv = Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_localname_symbol sym_nvl in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_localname_dataname_symbol sym_nld = 
  let sym_nbv = Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_localname_dataname_symbol sym_nld in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_localname_ecpset_symbol sym_nle = 
  let sym_nbv = Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_localname_ecpset_symbol sym_nle in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_mendeleievsymbol_symbol sym_nvm = 
  let sym_nbv = Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_mendeleievsymbol_symbol sym_nvm in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_name_symbol sym_nvn = 
  let sym_nbv = Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_name_symbol sym_nvn in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_radialfunction_symbol sym_nvr = 
  let sym_nbv = Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_radialfunction_symbol sym_nvr in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_shellname_symbol sym_nvs = 
  let sym_nbv = Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_shellname_symbol sym_nvs in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_shellname_extended_symbol sym_nse = 
  let sym_nbv = Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_shellname_extended_symbol sym_nse in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_shellname_usual_symbol sym_nsu = 
  let sym_nbv = Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_shellname_usual_symbol sym_nsu in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_shellname_relativistic_symbol sym_nsr = 
  let sym_nbv = Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_shellname_relativistic_symbol sym_nsr in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol sym_nbv
;;

let nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_version_symbol sym_nvv = 
  let sym_nbv = Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_version_symbol sym_nvv in
    nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol sym_nbv
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let nwchemdata_set_body_directive_basis = nwchemdata_set_body_symbol_of_nwchemdata_set_body_directive_symbol Nwchemdata_set_body_directive_symbol_v.nwchemdata_set_body_directive_basis;;

let nwchemdata_set_body_directive_ecp = nwchemdata_set_body_symbol_of_nwchemdata_set_body_directive_symbol Nwchemdata_set_body_directive_symbol_v.nwchemdata_set_body_directive_ecp;;

let nwchemdata_set_body_directive_end = nwchemdata_set_body_symbol_of_nwchemdata_set_body_directive_symbol Nwchemdata_set_body_directive_symbol_v.nwchemdata_set_body_directive_end;;

let nwchemdata_set_body_directive_print = nwchemdata_set_body_symbol_of_nwchemdata_set_body_directive_symbol Nwchemdata_set_body_directive_symbol_v.nwchemdata_set_body_directive_print;;

let nwchemdata_set_body_keyword_cartesian = nwchemdata_set_body_symbol_of_nwchemdata_set_body_keyword_symbol Nwchemdata_set_body_keyword_symbol_v.nwchemdata_set_body_keyword_cartesian;;

let nwchemdata_set_body_keyword_colon = nwchemdata_set_body_symbol_of_nwchemdata_set_body_keyword_symbol Nwchemdata_set_body_keyword_symbol_v.nwchemdata_set_body_keyword_colon;;

let nwchemdata_set_body_keyword_comma = nwchemdata_set_body_symbol_of_nwchemdata_set_body_keyword_symbol Nwchemdata_set_body_keyword_symbol_v.nwchemdata_set_body_keyword_comma;;

let nwchemdata_set_body_keyword_end_of_file = nwchemdata_set_body_symbol_of_nwchemdata_set_body_keyword_symbol Nwchemdata_set_body_keyword_symbol_v.nwchemdata_set_body_keyword_end_of_file;;

let nwchemdata_set_body_keyword_hash_basis = nwchemdata_set_body_symbol_of_nwchemdata_set_body_keyword_symbol Nwchemdata_set_body_keyword_symbol_v.nwchemdata_set_body_keyword_hash_basis;;

let nwchemdata_set_body_keyword_left_arrow = nwchemdata_set_body_symbol_of_nwchemdata_set_body_keyword_symbol Nwchemdata_set_body_keyword_symbol_v.nwchemdata_set_body_keyword_left_arrow;;

let nwchemdata_set_body_keyword_left_bracket = nwchemdata_set_body_symbol_of_nwchemdata_set_body_keyword_symbol Nwchemdata_set_body_keyword_symbol_v.nwchemdata_set_body_keyword_left_bracket;;

let nwchemdata_set_body_keyword_left_parenthesis = nwchemdata_set_body_symbol_of_nwchemdata_set_body_keyword_symbol Nwchemdata_set_body_keyword_symbol_v.nwchemdata_set_body_keyword_left_parenthesis;;

let nwchemdata_set_body_keyword_nelec = nwchemdata_set_body_symbol_of_nwchemdata_set_body_keyword_symbol Nwchemdata_set_body_keyword_symbol_v.nwchemdata_set_body_keyword_nelec;;

let nwchemdata_set_body_keyword_nosegment = nwchemdata_set_body_symbol_of_nwchemdata_set_body_keyword_symbol Nwchemdata_set_body_keyword_symbol_v.nwchemdata_set_body_keyword_nosegment;;

let nwchemdata_set_body_keyword_rel = nwchemdata_set_body_symbol_of_nwchemdata_set_body_keyword_symbol Nwchemdata_set_body_keyword_symbol_v.nwchemdata_set_body_keyword_rel;;

let nwchemdata_set_body_keyword_right_arrow = nwchemdata_set_body_symbol_of_nwchemdata_set_body_keyword_symbol Nwchemdata_set_body_keyword_symbol_v.nwchemdata_set_body_keyword_right_arrow;;

let nwchemdata_set_body_keyword_right_bracket = nwchemdata_set_body_symbol_of_nwchemdata_set_body_keyword_symbol Nwchemdata_set_body_keyword_symbol_v.nwchemdata_set_body_keyword_right_bracket;;

let nwchemdata_set_body_keyword_right_parenthesis = nwchemdata_set_body_symbol_of_nwchemdata_set_body_keyword_symbol Nwchemdata_set_body_keyword_symbol_v.nwchemdata_set_body_keyword_right_parenthesis;;

let nwchemdata_set_body_keyword_segment = nwchemdata_set_body_symbol_of_nwchemdata_set_body_keyword_symbol Nwchemdata_set_body_keyword_symbol_v.nwchemdata_set_body_keyword_segment;;

let nwchemdata_set_body_keyword_set = nwchemdata_set_body_symbol_of_nwchemdata_set_body_keyword_symbol Nwchemdata_set_body_keyword_symbol_v.nwchemdata_set_body_keyword_set;;

let nwchemdata_set_body_keyword_spherical = nwchemdata_set_body_symbol_of_nwchemdata_set_body_keyword_symbol Nwchemdata_set_body_keyword_symbol_v.nwchemdata_set_body_keyword_spherical;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let nwchemdata_set_body_node_aobasis_block_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol (Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_aobasis_block_constructor s);;

let nwchemdata_set_body_node_aocomment_block_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol (Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_aocomment_block_constructor s);;

let nwchemdata_set_body_node_aoset_anycenter_block_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol (Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_aoset_anycenter_block_constructor s);;

let nwchemdata_set_body_node_aoset_anyshell_block_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol (Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_aoset_anyshell_block_constructor s);;

let nwchemdata_set_body_node_aoset_block_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol (Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_aoset_block_constructor s);;

let nwchemdata_set_body_node_aoset_center_contraction_image_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol (Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_aoset_center_contraction_image_constructor s);;

let nwchemdata_set_body_node_aoset_center_contraction_scheme_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol (Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_aoset_center_contraction_scheme_constructor s);;

let nwchemdata_set_body_node_aoset_definition_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol (Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_aoset_definition_constructor s);;

let nwchemdata_set_body_node_aoset_numericalvalues_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol (Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_aoset_numericalvalues_constructor s);;

let nwchemdata_set_body_node_aoset_numericalvalues_block_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol (Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_aoset_numericalvalues_block_constructor s);;

let nwchemdata_set_body_node_aoset_onecenter_block_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol (Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_aoset_onecenter_block_constructor s);;

let nwchemdata_set_body_node_aoset_oneshell_block_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol (Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_aoset_oneshell_block_constructor s);;

let nwchemdata_set_body_node_center_n_shellname_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol (Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_center_n_shellname_constructor s);;

let nwchemdata_set_body_node_comment_block_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol (Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_comment_block_constructor s);;

let nwchemdata_set_body_node_comment_reference_block_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol (Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_comment_reference_block_constructor s);;

let nwchemdata_set_body_node_datanamefile_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol (Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_datanamefile_constructor s);;

let nwchemdata_set_body_node_ecpbasis_block_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol (Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_ecpbasis_block_constructor s);;

let nwchemdata_set_body_node_ecpset_anycenter_block_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol (Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_ecpset_anycenter_block_constructor s);;

let nwchemdata_set_body_node_ecpset_anyshell_block_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol (Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_ecpset_anyshell_block_constructor s);;

let nwchemdata_set_body_node_ecpset_block_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol (Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_ecpset_block_constructor s);;

let nwchemdata_set_body_node_ecpset_definition_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol (Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_ecpset_definition_constructor s);;

let nwchemdata_set_body_node_ecpset_electronnumber_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol (Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_ecpset_electronnumber_constructor s);;

let nwchemdata_set_body_node_ecpset_numericalvalues_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol (Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_ecpset_numericalvalues_constructor s);;

let nwchemdata_set_body_node_ecpset_numericalvalues_block_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol (Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_ecpset_numericalvalues_block_constructor s);;

let nwchemdata_set_body_node_ecpset_onecenter_block_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol (Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_ecpset_onecenter_block_constructor s);;

let nwchemdata_set_body_node_ecpset_oneshell_block_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol (Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_ecpset_oneshell_block_constructor s);;

let nwchemdata_set_body_node_hash_databox_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol (Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_hash_databox_constructor s);;

let nwchemdata_set_body_node_positiveinteger_n_shellname_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol (Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_positiveinteger_n_shellname_constructor s);;

let nwchemdata_set_body_node_shell_contraction_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol (Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_shell_contraction_constructor s);;

let nwchemdata_set_body_node_shell_expansion_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol (Nwchemdata_set_body_node_symbol_v.nwchemdata_set_body_node_shell_expansion_constructor s);;

let nwchemdata_set_body_variable_angularfunction_cartesian_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol (Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_angularfunction_cartesian_constructor s);;

let nwchemdata_set_body_variable_angularfunction_spherical_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol (Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_angularfunction_spherical_constructor s);;

let nwchemdata_set_body_variable_angularmomentum_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol (Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_angularmomentum_constructor s);;

let nwchemdata_set_body_variable_ao_contracted_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol (Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_ao_contracted_constructor s);;

let nwchemdata_set_body_variable_ao_single_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol (Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_ao_single_constructor s);;

let nwchemdata_set_body_variable_aos_at_c_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol (Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_aos_at_c_constructor s);;

let nwchemdata_set_body_variable_aos_at_c_n_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol (Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_aos_at_c_n_constructor s);;

let nwchemdata_set_body_variable_centername_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol (Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_centername_constructor s);;

let nwchemdata_set_body_variable_coefficient_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol (Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_coefficient_constructor s);;

let nwchemdata_set_body_variable_databox_name_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol (Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_databox_name_constructor s);;

let nwchemdata_set_body_variable_dummy_center_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol (Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_dummy_center_constructor s);;

let nwchemdata_set_body_variable_exponent_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol (Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_exponent_constructor s);;

let nwchemdata_set_body_variable_exponent_n_coefficient_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol (Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_exponent_n_coefficient_constructor s);;

let nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol (Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_constructor s);;

let nwchemdata_set_body_variable_generalcontraction_shellset_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol (Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_generalcontraction_shellset_constructor s);;

let nwchemdata_set_body_variable_localname_dataname_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol (Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_localname_dataname_constructor s);;

let nwchemdata_set_body_variable_localname_ecpset_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol (Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_localname_ecpset_constructor s);;

let nwchemdata_set_body_variable_mendeleievsymbol_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol (Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_mendeleievsymbol_constructor s);;

let nwchemdata_set_body_variable_name_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol (Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_name_constructor s);;

let nwchemdata_set_body_variable_radialfunction_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol (Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_radialfunction_constructor s);;

let nwchemdata_set_body_variable_shellname_extended_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol (Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_shellname_extended_constructor s);;

let nwchemdata_set_body_variable_shellname_usual_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol (Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_shellname_usual_constructor s);;

let nwchemdata_set_body_variable_shellname_relativistic_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol (Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_shellname_relativistic_constructor s);;

let nwchemdata_set_body_variable_version_constructor s = nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol (Nwchemdata_set_body_variable_symbol_v.nwchemdata_set_body_variable_version_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Nwchemdata_set_body_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Nwchemdata_set_body_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try nwchemdata_set_body_symbol_of_nwchemdata_set_body_directive_symbol
      (Nwchemdata_set_body_directive_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_directive_symbol:Nwchemdata_set_body_directive_symbol_v.ml:make" ->
  try nwchemdata_set_body_symbol_of_nwchemdata_set_body_keyword_symbol
      (Nwchemdata_set_body_keyword_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_keyword_symbol:Nwchemdata_set_body_keyword_symbol_v.ml:make" ->
  try nwchemdata_set_body_symbol_of_nwchemdata_set_body_node_symbol
      (Nwchemdata_set_body_node_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_symbol:Nwchemdata_set_body_node_symbol_v.ml:make" ->
  try nwchemdata_set_body_symbol_of_nwchemdata_set_body_variable_symbol
      (Nwchemdata_set_body_variable_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_variable_symbol:Nwchemdata_set_body_variable_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Nwchemdata_set_body_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Nwchemdata_set_body_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Nwchemdata_set_body_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Nwchemdata_set_body_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Nwchemdata_set_body subtype" nam s)
      "it does not exists"
      "Check file Nwchemdata_set_body_symbol_v.ml"
    in
    failwith "Not_a_nwchemdata_set_body_symbol:Nwchemdata_set_body_symbol_v.ml:make"
;;


(** Nwchemdata_set_body_symbol_v at 17:57:19 on 4 Dec 2016. created by version v2.4 of generator *)



