(** {3 Nwchemdata_set_body_node_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Nwchemdata_set_body_node_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aobasis_block_symbol sym_nab ->
    Nwchemdata_set_body_node_aobasis_block_symbol_v.name sym_nab
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aocomment_block_symbol sym_nab ->
    Nwchemdata_set_body_node_aocomment_block_symbol_v.name sym_nab
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_symbol sym_nna ->
    Nwchemdata_set_body_node_aoset_symbol_v.name sym_nna
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_center_n_shellname_symbol sym_nns ->
    Nwchemdata_set_body_node_center_n_shellname_symbol_v.name sym_nns
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_comment_block_symbol sym_ncb ->
    Nwchemdata_set_body_node_comment_block_symbol_v.name sym_ncb
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_comment_reference_block_symbol sym_nrb ->
    Nwchemdata_set_body_node_comment_reference_block_symbol_v.name sym_nrb
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_datanamefile_symbol sym_nnd ->
    Nwchemdata_set_body_node_datanamefile_symbol_v.name sym_nnd
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_ecpbasis_block_symbol sym_neb ->
    Nwchemdata_set_body_node_ecpbasis_block_symbol_v.name sym_neb
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_ecpset_symbol sym_nne ->
    Nwchemdata_set_body_node_ecpset_symbol_v.name sym_nne
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_hash_databox_symbol sym_nhd ->
    Nwchemdata_set_body_node_hash_databox_symbol_v.name sym_nhd
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_positiveinteger_n_shellname_symbol sym_nns ->
    Nwchemdata_set_body_node_positiveinteger_n_shellname_symbol_v.name sym_nns
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_shell_symbol sym_nns ->
    Nwchemdata_set_body_node_shell_symbol_v.name sym_nns
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aobasis_block_symbol sym_nab ->
  Nwchemdata_set_body_node_aobasis_block_symbol_v.string_off sym_nab
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aocomment_block_symbol sym_nab ->
  Nwchemdata_set_body_node_aocomment_block_symbol_v.string_off sym_nab
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_symbol sym_nna ->
  Nwchemdata_set_body_node_aoset_symbol_v.string_off sym_nna
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_center_n_shellname_symbol sym_nns ->
  Nwchemdata_set_body_node_center_n_shellname_symbol_v.string_off sym_nns
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_comment_block_symbol sym_ncb ->
  Nwchemdata_set_body_node_comment_block_symbol_v.string_off sym_ncb
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_comment_reference_block_symbol sym_nrb ->
  Nwchemdata_set_body_node_comment_reference_block_symbol_v.string_off sym_nrb
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_datanamefile_symbol sym_nnd ->
  Nwchemdata_set_body_node_datanamefile_symbol_v.string_off sym_nnd
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_ecpbasis_block_symbol sym_neb ->
  Nwchemdata_set_body_node_ecpbasis_block_symbol_v.string_off sym_neb
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_ecpset_symbol sym_nne ->
  Nwchemdata_set_body_node_ecpset_symbol_v.string_off sym_nne
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_hash_databox_symbol sym_nhd ->
  Nwchemdata_set_body_node_hash_databox_symbol_v.string_off sym_nhd
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_positiveinteger_n_shellname_symbol sym_nns ->
  Nwchemdata_set_body_node_positiveinteger_n_shellname_symbol_v.string_off sym_nns
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_shell_symbol sym_nns ->
  Nwchemdata_set_body_node_shell_symbol_v.string_off sym_nns
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_nbn =
  Format.sprintf "Nwchemdata_set_body_node_symbol_t.%s" (String.capitalize (name sym_nbn))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_nbn =
  Format.sprintf "%s \"%s\"" (longname sym_nbn) (string_off sym_nbn)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let nwchemdata_set_body_node_aobasis_block_symbol_off_nwchemdata_set_body_node_symbol = function
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aobasis_block_symbol sym_nab -> sym_nab
  | sym_nbn -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_aobasis_block_symbol_off_nwchemdata_set_body_node_symbol"
      "Nwchemdata_set_body_node_aobasis_block_symbol"
      (name sym_nbn) "check"
;;

let nwchemdata_set_body_node_aocomment_block_symbol_off_nwchemdata_set_body_node_symbol = function
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aocomment_block_symbol sym_nab -> sym_nab
  | sym_nbn -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_aocomment_block_symbol_off_nwchemdata_set_body_node_symbol"
      "Nwchemdata_set_body_node_aocomment_block_symbol"
      (name sym_nbn) "check"
;;

let nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol = function
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_symbol sym_nna -> sym_nna
  | sym_nbn -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol"
      "Nwchemdata_set_body_node_aoset_symbol"
      (name sym_nbn) "check"
;;

let nwchemdata_set_body_node_center_n_shellname_symbol_off_nwchemdata_set_body_node_symbol = function
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_center_n_shellname_symbol sym_nns -> sym_nns
  | sym_nbn -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_center_n_shellname_symbol_off_nwchemdata_set_body_node_symbol"
      "Nwchemdata_set_body_node_center_n_shellname_symbol"
      (name sym_nbn) "check"
;;

let nwchemdata_set_body_node_comment_block_symbol_off_nwchemdata_set_body_node_symbol = function
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_comment_block_symbol sym_ncb -> sym_ncb
  | sym_nbn -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_comment_block_symbol_off_nwchemdata_set_body_node_symbol"
      "Nwchemdata_set_body_node_comment_block_symbol"
      (name sym_nbn) "check"
;;

let nwchemdata_set_body_node_comment_reference_block_symbol_off_nwchemdata_set_body_node_symbol = function
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_comment_reference_block_symbol sym_nrb -> sym_nrb
  | sym_nbn -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_comment_reference_block_symbol_off_nwchemdata_set_body_node_symbol"
      "Nwchemdata_set_body_node_comment_reference_block_symbol"
      (name sym_nbn) "check"
;;

let nwchemdata_set_body_node_datanamefile_symbol_off_nwchemdata_set_body_node_symbol = function
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_datanamefile_symbol sym_nnd -> sym_nnd
  | sym_nbn -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_datanamefile_symbol_off_nwchemdata_set_body_node_symbol"
      "Nwchemdata_set_body_node_datanamefile_symbol"
      (name sym_nbn) "check"
;;

let nwchemdata_set_body_node_ecpbasis_block_symbol_off_nwchemdata_set_body_node_symbol = function
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_ecpbasis_block_symbol sym_neb -> sym_neb
  | sym_nbn -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_ecpbasis_block_symbol_off_nwchemdata_set_body_node_symbol"
      "Nwchemdata_set_body_node_ecpbasis_block_symbol"
      (name sym_nbn) "check"
;;

let nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol = function
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_ecpset_symbol sym_nne -> sym_nne
  | sym_nbn -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol"
      "Nwchemdata_set_body_node_ecpset_symbol"
      (name sym_nbn) "check"
;;

let nwchemdata_set_body_node_hash_databox_symbol_off_nwchemdata_set_body_node_symbol = function
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_hash_databox_symbol sym_nhd -> sym_nhd
  | sym_nbn -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_hash_databox_symbol_off_nwchemdata_set_body_node_symbol"
      "Nwchemdata_set_body_node_hash_databox_symbol"
      (name sym_nbn) "check"
;;

let nwchemdata_set_body_node_positiveinteger_n_shellname_symbol_off_nwchemdata_set_body_node_symbol = function
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_positiveinteger_n_shellname_symbol sym_nns -> sym_nns
  | sym_nbn -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_positiveinteger_n_shellname_symbol_off_nwchemdata_set_body_node_symbol"
      "Nwchemdata_set_body_node_positiveinteger_n_shellname_symbol"
      (name sym_nbn) "check"
;;

let nwchemdata_set_body_node_shell_symbol_off_nwchemdata_set_body_node_symbol = function
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_shell_symbol sym_nns -> sym_nns
  | sym_nbn -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_shell_symbol_off_nwchemdata_set_body_node_symbol"
      "Nwchemdata_set_body_node_shell_symbol"
      (name sym_nbn) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let nwchemdata_set_body_node_aoset_anycenter_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn = 
  let sym_nna = nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
    Nwchemdata_set_body_node_aoset_symbol_v.nwchemdata_set_body_node_aoset_anycenter_block_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna
;;

let nwchemdata_set_body_node_aoset_anyshell_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn = 
  let sym_nna = nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
    Nwchemdata_set_body_node_aoset_symbol_v.nwchemdata_set_body_node_aoset_anyshell_block_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna
;;

let nwchemdata_set_body_node_aoset_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn = 
  let sym_nna = nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
    Nwchemdata_set_body_node_aoset_symbol_v.nwchemdata_set_body_node_aoset_block_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna
;;

let nwchemdata_set_body_node_aoset_center_contraction_image_symbol_off_nwchemdata_set_body_node_symbol sym_nbn = 
  let sym_nna = nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
    Nwchemdata_set_body_node_aoset_symbol_v.nwchemdata_set_body_node_aoset_center_contraction_image_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna
;;

let nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol_off_nwchemdata_set_body_node_symbol sym_nbn = 
  let sym_nna = nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
    Nwchemdata_set_body_node_aoset_symbol_v.nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna
;;

let nwchemdata_set_body_node_aoset_definition_symbol_off_nwchemdata_set_body_node_symbol sym_nbn = 
  let sym_nna = nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
    Nwchemdata_set_body_node_aoset_symbol_v.nwchemdata_set_body_node_aoset_definition_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna
;;

let nwchemdata_set_body_node_aoset_numericalvalues_symbol_off_nwchemdata_set_body_node_symbol sym_nbn = 
  let sym_nna = nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
    Nwchemdata_set_body_node_aoset_symbol_v.nwchemdata_set_body_node_aoset_numericalvalues_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna
;;

let nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn = 
  let sym_nna = nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
    Nwchemdata_set_body_node_aoset_symbol_v.nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna
;;

let nwchemdata_set_body_node_aoset_onecenter_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn = 
  let sym_nna = nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
    Nwchemdata_set_body_node_aoset_symbol_v.nwchemdata_set_body_node_aoset_onecenter_block_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna
;;

let nwchemdata_set_body_node_aoset_oneshell_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn = 
  let sym_nna = nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
    Nwchemdata_set_body_node_aoset_symbol_v.nwchemdata_set_body_node_aoset_oneshell_block_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna
;;

let nwchemdata_set_body_node_ecpset_anycenter_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn = 
  let sym_nne = nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
    Nwchemdata_set_body_node_ecpset_symbol_v.nwchemdata_set_body_node_ecpset_anycenter_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne
;;

let nwchemdata_set_body_node_ecpset_anyshell_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn = 
  let sym_nne = nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
    Nwchemdata_set_body_node_ecpset_symbol_v.nwchemdata_set_body_node_ecpset_anyshell_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne
;;

let nwchemdata_set_body_node_ecpset_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn = 
  let sym_nne = nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
    Nwchemdata_set_body_node_ecpset_symbol_v.nwchemdata_set_body_node_ecpset_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne
;;

let nwchemdata_set_body_node_ecpset_definition_symbol_off_nwchemdata_set_body_node_symbol sym_nbn = 
  let sym_nne = nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
    Nwchemdata_set_body_node_ecpset_symbol_v.nwchemdata_set_body_node_ecpset_definition_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne
;;

let nwchemdata_set_body_node_ecpset_electronnumber_symbol_off_nwchemdata_set_body_node_symbol sym_nbn = 
  let sym_nne = nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
    Nwchemdata_set_body_node_ecpset_symbol_v.nwchemdata_set_body_node_ecpset_electronnumber_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne
;;

let nwchemdata_set_body_node_ecpset_numericalvalues_symbol_off_nwchemdata_set_body_node_symbol sym_nbn = 
  let sym_nne = nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
    Nwchemdata_set_body_node_ecpset_symbol_v.nwchemdata_set_body_node_ecpset_numericalvalues_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne
;;

let nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn = 
  let sym_nne = nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
    Nwchemdata_set_body_node_ecpset_symbol_v.nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne
;;

let nwchemdata_set_body_node_ecpset_onecenter_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn = 
  let sym_nne = nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
    Nwchemdata_set_body_node_ecpset_symbol_v.nwchemdata_set_body_node_ecpset_onecenter_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne
;;

let nwchemdata_set_body_node_ecpset_oneshell_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn = 
  let sym_nne = nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
    Nwchemdata_set_body_node_ecpset_symbol_v.nwchemdata_set_body_node_ecpset_oneshell_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne
;;

let nwchemdata_set_body_node_shell_contraction_symbol_off_nwchemdata_set_body_node_symbol sym_nbn = 
  let sym_nns = nwchemdata_set_body_node_shell_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
    Nwchemdata_set_body_node_shell_symbol_v.nwchemdata_set_body_node_shell_contraction_symbol_off_nwchemdata_set_body_node_shell_symbol sym_nns
;;

let nwchemdata_set_body_node_shell_expansion_symbol_off_nwchemdata_set_body_node_symbol sym_nbn = 
  let sym_nns = nwchemdata_set_body_node_shell_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
    Nwchemdata_set_body_node_shell_symbol_v.nwchemdata_set_body_node_shell_expansion_symbol_off_nwchemdata_set_body_node_shell_symbol sym_nns
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_nwchemdata_set_body_node_aobasis_block_symbol_off_nwchemdata_set_body_node_symbol = function
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aobasis_block_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_node_aocomment_block_symbol_off_nwchemdata_set_body_node_symbol = function
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aocomment_block_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol = function
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_node_center_n_shellname_symbol_off_nwchemdata_set_body_node_symbol = function
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_center_n_shellname_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_node_comment_block_symbol_off_nwchemdata_set_body_node_symbol = function
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_comment_block_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_node_comment_reference_block_symbol_off_nwchemdata_set_body_node_symbol = function
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_comment_reference_block_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_node_datanamefile_symbol_off_nwchemdata_set_body_node_symbol = function
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_datanamefile_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_node_ecpbasis_block_symbol_off_nwchemdata_set_body_node_symbol = function
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_ecpbasis_block_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol = function
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_ecpset_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_node_hash_databox_symbol_off_nwchemdata_set_body_node_symbol = function
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_hash_databox_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_node_positiveinteger_n_shellname_symbol_off_nwchemdata_set_body_node_symbol = function
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_positiveinteger_n_shellname_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_node_shell_symbol_off_nwchemdata_set_body_node_symbol = function
  | Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_shell_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_nwchemdata_set_body_node_aobasis_block_constructor sym_nbn =
  if not (is_nwchemdata_set_body_node_aobasis_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
      let sym_nab = nwchemdata_set_body_node_aobasis_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
      Nwchemdata_set_body_node_aobasis_block_symbol_v.is_nwchemdata_set_body_node_aobasis_block_constructor sym_nab
    end
;;

let is_nwchemdata_set_body_node_aocomment_block_constructor sym_nbn =
  if not (is_nwchemdata_set_body_node_aocomment_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
      let sym_nab = nwchemdata_set_body_node_aocomment_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
      Nwchemdata_set_body_node_aocomment_block_symbol_v.is_nwchemdata_set_body_node_aocomment_block_constructor sym_nab
    end
;;

let is_nwchemdata_set_body_node_aoset_anycenter_block_constructor sym_nbn =
  if not (is_nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
      let sym_nna = nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
      Nwchemdata_set_body_node_aoset_symbol_v.is_nwchemdata_set_body_node_aoset_anycenter_block_constructor sym_nna
    end
;;

let is_nwchemdata_set_body_node_aoset_anyshell_block_constructor sym_nbn =
  if not (is_nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
      let sym_nna = nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
      Nwchemdata_set_body_node_aoset_symbol_v.is_nwchemdata_set_body_node_aoset_anyshell_block_constructor sym_nna
    end
;;

let is_nwchemdata_set_body_node_aoset_block_constructor sym_nbn =
  if not (is_nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
      let sym_nna = nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
      Nwchemdata_set_body_node_aoset_symbol_v.is_nwchemdata_set_body_node_aoset_block_constructor sym_nna
    end
;;

let is_nwchemdata_set_body_node_aoset_center_contraction_image_constructor sym_nbn =
  if not (is_nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
      let sym_nna = nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
      Nwchemdata_set_body_node_aoset_symbol_v.is_nwchemdata_set_body_node_aoset_center_contraction_image_constructor sym_nna
    end
;;

let is_nwchemdata_set_body_node_aoset_center_contraction_scheme_constructor sym_nbn =
  if not (is_nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
      let sym_nna = nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
      Nwchemdata_set_body_node_aoset_symbol_v.is_nwchemdata_set_body_node_aoset_center_contraction_scheme_constructor sym_nna
    end
;;

let is_nwchemdata_set_body_node_aoset_definition_constructor sym_nbn =
  if not (is_nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
      let sym_nna = nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
      Nwchemdata_set_body_node_aoset_symbol_v.is_nwchemdata_set_body_node_aoset_definition_constructor sym_nna
    end
;;

let is_nwchemdata_set_body_node_aoset_numericalvalues_constructor sym_nbn =
  if not (is_nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
      let sym_nna = nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
      Nwchemdata_set_body_node_aoset_symbol_v.is_nwchemdata_set_body_node_aoset_numericalvalues_constructor sym_nna
    end
;;

let is_nwchemdata_set_body_node_aoset_numericalvalues_block_constructor sym_nbn =
  if not (is_nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
      let sym_nna = nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
      Nwchemdata_set_body_node_aoset_symbol_v.is_nwchemdata_set_body_node_aoset_numericalvalues_block_constructor sym_nna
    end
;;

let is_nwchemdata_set_body_node_aoset_onecenter_block_constructor sym_nbn =
  if not (is_nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
      let sym_nna = nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
      Nwchemdata_set_body_node_aoset_symbol_v.is_nwchemdata_set_body_node_aoset_onecenter_block_constructor sym_nna
    end
;;

let is_nwchemdata_set_body_node_aoset_oneshell_block_constructor sym_nbn =
  if not (is_nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
      let sym_nna = nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
      Nwchemdata_set_body_node_aoset_symbol_v.is_nwchemdata_set_body_node_aoset_oneshell_block_constructor sym_nna
    end
;;

let is_nwchemdata_set_body_node_center_n_shellname_constructor sym_nbn =
  if not (is_nwchemdata_set_body_node_center_n_shellname_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
      let sym_nns = nwchemdata_set_body_node_center_n_shellname_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
      Nwchemdata_set_body_node_center_n_shellname_symbol_v.is_nwchemdata_set_body_node_center_n_shellname_constructor sym_nns
    end
;;

let is_nwchemdata_set_body_node_comment_block_constructor sym_nbn =
  if not (is_nwchemdata_set_body_node_comment_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
      let sym_ncb = nwchemdata_set_body_node_comment_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
      Nwchemdata_set_body_node_comment_block_symbol_v.is_nwchemdata_set_body_node_comment_block_constructor sym_ncb
    end
;;

let is_nwchemdata_set_body_node_comment_reference_block_constructor sym_nbn =
  if not (is_nwchemdata_set_body_node_comment_reference_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
      let sym_nrb = nwchemdata_set_body_node_comment_reference_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
      Nwchemdata_set_body_node_comment_reference_block_symbol_v.is_nwchemdata_set_body_node_comment_reference_block_constructor sym_nrb
    end
;;

let is_nwchemdata_set_body_node_datanamefile_constructor sym_nbn =
  if not (is_nwchemdata_set_body_node_datanamefile_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
      let sym_nnd = nwchemdata_set_body_node_datanamefile_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
      Nwchemdata_set_body_node_datanamefile_symbol_v.is_nwchemdata_set_body_node_datanamefile_constructor sym_nnd
    end
;;

let is_nwchemdata_set_body_node_ecpbasis_block_constructor sym_nbn =
  if not (is_nwchemdata_set_body_node_ecpbasis_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
      let sym_neb = nwchemdata_set_body_node_ecpbasis_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
      Nwchemdata_set_body_node_ecpbasis_block_symbol_v.is_nwchemdata_set_body_node_ecpbasis_block_constructor sym_neb
    end
;;

let is_nwchemdata_set_body_node_ecpset_anycenter_block_constructor sym_nbn =
  if not (is_nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
      let sym_nne = nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
      Nwchemdata_set_body_node_ecpset_symbol_v.is_nwchemdata_set_body_node_ecpset_anycenter_block_constructor sym_nne
    end
;;

let is_nwchemdata_set_body_node_ecpset_anyshell_block_constructor sym_nbn =
  if not (is_nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
      let sym_nne = nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
      Nwchemdata_set_body_node_ecpset_symbol_v.is_nwchemdata_set_body_node_ecpset_anyshell_block_constructor sym_nne
    end
;;

let is_nwchemdata_set_body_node_ecpset_block_constructor sym_nbn =
  if not (is_nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
      let sym_nne = nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
      Nwchemdata_set_body_node_ecpset_symbol_v.is_nwchemdata_set_body_node_ecpset_block_constructor sym_nne
    end
;;

let is_nwchemdata_set_body_node_ecpset_definition_constructor sym_nbn =
  if not (is_nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
      let sym_nne = nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
      Nwchemdata_set_body_node_ecpset_symbol_v.is_nwchemdata_set_body_node_ecpset_definition_constructor sym_nne
    end
;;

let is_nwchemdata_set_body_node_ecpset_electronnumber_constructor sym_nbn =
  if not (is_nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
      let sym_nne = nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
      Nwchemdata_set_body_node_ecpset_symbol_v.is_nwchemdata_set_body_node_ecpset_electronnumber_constructor sym_nne
    end
;;

let is_nwchemdata_set_body_node_ecpset_numericalvalues_constructor sym_nbn =
  if not (is_nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
      let sym_nne = nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
      Nwchemdata_set_body_node_ecpset_symbol_v.is_nwchemdata_set_body_node_ecpset_numericalvalues_constructor sym_nne
    end
;;

let is_nwchemdata_set_body_node_ecpset_numericalvalues_block_constructor sym_nbn =
  if not (is_nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
      let sym_nne = nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
      Nwchemdata_set_body_node_ecpset_symbol_v.is_nwchemdata_set_body_node_ecpset_numericalvalues_block_constructor sym_nne
    end
;;

let is_nwchemdata_set_body_node_ecpset_onecenter_block_constructor sym_nbn =
  if not (is_nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
      let sym_nne = nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
      Nwchemdata_set_body_node_ecpset_symbol_v.is_nwchemdata_set_body_node_ecpset_onecenter_block_constructor sym_nne
    end
;;

let is_nwchemdata_set_body_node_ecpset_oneshell_block_constructor sym_nbn =
  if not (is_nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
      let sym_nne = nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
      Nwchemdata_set_body_node_ecpset_symbol_v.is_nwchemdata_set_body_node_ecpset_oneshell_block_constructor sym_nne
    end
;;

let is_nwchemdata_set_body_node_hash_databox_constructor sym_nbn =
  if not (is_nwchemdata_set_body_node_hash_databox_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
      let sym_nhd = nwchemdata_set_body_node_hash_databox_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
      Nwchemdata_set_body_node_hash_databox_symbol_v.is_nwchemdata_set_body_node_hash_databox_constructor sym_nhd
    end
;;

let is_nwchemdata_set_body_node_positiveinteger_n_shellname_constructor sym_nbn =
  if not (is_nwchemdata_set_body_node_positiveinteger_n_shellname_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
      let sym_nns = nwchemdata_set_body_node_positiveinteger_n_shellname_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
      Nwchemdata_set_body_node_positiveinteger_n_shellname_symbol_v.is_nwchemdata_set_body_node_positiveinteger_n_shellname_constructor sym_nns
    end
;;

let is_nwchemdata_set_body_node_shell_contraction_constructor sym_nbn =
  if not (is_nwchemdata_set_body_node_shell_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
      let sym_nns = nwchemdata_set_body_node_shell_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
      Nwchemdata_set_body_node_shell_symbol_v.is_nwchemdata_set_body_node_shell_contraction_constructor sym_nns
    end
;;

let is_nwchemdata_set_body_node_shell_expansion_constructor sym_nbn =
  if not (is_nwchemdata_set_body_node_shell_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
      let sym_nns = nwchemdata_set_body_node_shell_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
      Nwchemdata_set_body_node_shell_symbol_v.is_nwchemdata_set_body_node_shell_expansion_constructor sym_nns
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_nwchemdata_set_body_node_aoset_anycenter_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn =
  if not (is_nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
  let sym_nna = nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
  Nwchemdata_set_body_node_aoset_symbol_v.is_nwchemdata_set_body_node_aoset_anycenter_block_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna
    end
;;

let is_nwchemdata_set_body_node_aoset_anyshell_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn =
  if not (is_nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
  let sym_nna = nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
  Nwchemdata_set_body_node_aoset_symbol_v.is_nwchemdata_set_body_node_aoset_anyshell_block_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna
    end
;;

let is_nwchemdata_set_body_node_aoset_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn =
  if not (is_nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
  let sym_nna = nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
  Nwchemdata_set_body_node_aoset_symbol_v.is_nwchemdata_set_body_node_aoset_block_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna
    end
;;

let is_nwchemdata_set_body_node_aoset_center_contraction_image_symbol_off_nwchemdata_set_body_node_symbol sym_nbn =
  if not (is_nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
  let sym_nna = nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
  Nwchemdata_set_body_node_aoset_symbol_v.is_nwchemdata_set_body_node_aoset_center_contraction_image_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna
    end
;;

let is_nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol_off_nwchemdata_set_body_node_symbol sym_nbn =
  if not (is_nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
  let sym_nna = nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
  Nwchemdata_set_body_node_aoset_symbol_v.is_nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna
    end
;;

let is_nwchemdata_set_body_node_aoset_definition_symbol_off_nwchemdata_set_body_node_symbol sym_nbn =
  if not (is_nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
  let sym_nna = nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
  Nwchemdata_set_body_node_aoset_symbol_v.is_nwchemdata_set_body_node_aoset_definition_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna
    end
;;

let is_nwchemdata_set_body_node_aoset_numericalvalues_symbol_off_nwchemdata_set_body_node_symbol sym_nbn =
  if not (is_nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
  let sym_nna = nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
  Nwchemdata_set_body_node_aoset_symbol_v.is_nwchemdata_set_body_node_aoset_numericalvalues_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna
    end
;;

let is_nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn =
  if not (is_nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
  let sym_nna = nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
  Nwchemdata_set_body_node_aoset_symbol_v.is_nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna
    end
;;

let is_nwchemdata_set_body_node_aoset_onecenter_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn =
  if not (is_nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
  let sym_nna = nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
  Nwchemdata_set_body_node_aoset_symbol_v.is_nwchemdata_set_body_node_aoset_onecenter_block_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna
    end
;;

let is_nwchemdata_set_body_node_aoset_oneshell_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn =
  if not (is_nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
  let sym_nna = nwchemdata_set_body_node_aoset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
  Nwchemdata_set_body_node_aoset_symbol_v.is_nwchemdata_set_body_node_aoset_oneshell_block_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna
    end
;;

let is_nwchemdata_set_body_node_ecpset_anycenter_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn =
  if not (is_nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
  let sym_nne = nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
  Nwchemdata_set_body_node_ecpset_symbol_v.is_nwchemdata_set_body_node_ecpset_anycenter_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne
    end
;;

let is_nwchemdata_set_body_node_ecpset_anyshell_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn =
  if not (is_nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
  let sym_nne = nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
  Nwchemdata_set_body_node_ecpset_symbol_v.is_nwchemdata_set_body_node_ecpset_anyshell_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne
    end
;;

let is_nwchemdata_set_body_node_ecpset_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn =
  if not (is_nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
  let sym_nne = nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
  Nwchemdata_set_body_node_ecpset_symbol_v.is_nwchemdata_set_body_node_ecpset_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne
    end
;;

let is_nwchemdata_set_body_node_ecpset_definition_symbol_off_nwchemdata_set_body_node_symbol sym_nbn =
  if not (is_nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
  let sym_nne = nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
  Nwchemdata_set_body_node_ecpset_symbol_v.is_nwchemdata_set_body_node_ecpset_definition_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne
    end
;;

let is_nwchemdata_set_body_node_ecpset_electronnumber_symbol_off_nwchemdata_set_body_node_symbol sym_nbn =
  if not (is_nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
  let sym_nne = nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
  Nwchemdata_set_body_node_ecpset_symbol_v.is_nwchemdata_set_body_node_ecpset_electronnumber_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne
    end
;;

let is_nwchemdata_set_body_node_ecpset_numericalvalues_symbol_off_nwchemdata_set_body_node_symbol sym_nbn =
  if not (is_nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
  let sym_nne = nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
  Nwchemdata_set_body_node_ecpset_symbol_v.is_nwchemdata_set_body_node_ecpset_numericalvalues_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne
    end
;;

let is_nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn =
  if not (is_nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
  let sym_nne = nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
  Nwchemdata_set_body_node_ecpset_symbol_v.is_nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne
    end
;;

let is_nwchemdata_set_body_node_ecpset_onecenter_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn =
  if not (is_nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
  let sym_nne = nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
  Nwchemdata_set_body_node_ecpset_symbol_v.is_nwchemdata_set_body_node_ecpset_onecenter_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne
    end
;;

let is_nwchemdata_set_body_node_ecpset_oneshell_block_symbol_off_nwchemdata_set_body_node_symbol sym_nbn =
  if not (is_nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
  let sym_nne = nwchemdata_set_body_node_ecpset_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
  Nwchemdata_set_body_node_ecpset_symbol_v.is_nwchemdata_set_body_node_ecpset_oneshell_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne
    end
;;

let is_nwchemdata_set_body_node_shell_contraction_symbol_off_nwchemdata_set_body_node_symbol sym_nbn =
  if not (is_nwchemdata_set_body_node_shell_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
  let sym_nns = nwchemdata_set_body_node_shell_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
  Nwchemdata_set_body_node_shell_symbol_v.is_nwchemdata_set_body_node_shell_contraction_symbol_off_nwchemdata_set_body_node_shell_symbol sym_nns
    end
;;

let is_nwchemdata_set_body_node_shell_expansion_symbol_off_nwchemdata_set_body_node_symbol sym_nbn =
  if not (is_nwchemdata_set_body_node_shell_symbol_off_nwchemdata_set_body_node_symbol sym_nbn)
  then false
  else
    begin
  let sym_nns = nwchemdata_set_body_node_shell_symbol_off_nwchemdata_set_body_node_symbol sym_nbn in
  Nwchemdata_set_body_node_shell_symbol_v.is_nwchemdata_set_body_node_shell_expansion_symbol_off_nwchemdata_set_body_node_shell_symbol sym_nns
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aobasis_block_symbol sym_nab = 
  Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aobasis_block_symbol sym_nab
;;

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aocomment_block_symbol sym_nab = 
  Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aocomment_block_symbol sym_nab
;;

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_symbol sym_nna = 
  Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_symbol sym_nna
;;

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_center_n_shellname_symbol sym_nns = 
  Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_center_n_shellname_symbol sym_nns
;;

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_comment_block_symbol sym_ncb = 
  Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_comment_block_symbol sym_ncb
;;

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_comment_reference_block_symbol sym_nrb = 
  Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_comment_reference_block_symbol sym_nrb
;;

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_datanamefile_symbol sym_nnd = 
  Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_datanamefile_symbol sym_nnd
;;

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpbasis_block_symbol sym_neb = 
  Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_ecpbasis_block_symbol sym_neb
;;

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_symbol sym_nne = 
  Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_ecpset_symbol sym_nne
;;

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_hash_databox_symbol sym_nhd = 
  Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_hash_databox_symbol sym_nhd
;;

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_positiveinteger_n_shellname_symbol sym_nns = 
  Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_positiveinteger_n_shellname_symbol sym_nns
;;

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_shell_symbol sym_nns = 
  Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_shell_symbol sym_nns
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_anycenter_block_symbol sym_nab = 
  let sym_nna = Nwchemdata_set_body_node_aoset_symbol_v.nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_anycenter_block_symbol sym_nab in
    nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_symbol sym_nna
;;

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_anyshell_block_symbol sym_nab = 
  let sym_nna = Nwchemdata_set_body_node_aoset_symbol_v.nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_anyshell_block_symbol sym_nab in
    nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_symbol sym_nna
;;

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_block_symbol sym_nab = 
  let sym_nna = Nwchemdata_set_body_node_aoset_symbol_v.nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_block_symbol sym_nab in
    nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_symbol sym_nna
;;

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_center_contraction_image_symbol sym_nci = 
  let sym_nna = Nwchemdata_set_body_node_aoset_symbol_v.nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_center_contraction_image_symbol sym_nci in
    nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_symbol sym_nna
;;

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol sym_ncs = 
  let sym_nna = Nwchemdata_set_body_node_aoset_symbol_v.nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol sym_ncs in
    nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_symbol sym_nna
;;

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_definition_symbol sym_nad = 
  let sym_nna = Nwchemdata_set_body_node_aoset_symbol_v.nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_definition_symbol sym_nad in
    nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_symbol sym_nna
;;

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_numericalvalues_symbol sym_nan = 
  let sym_nna = Nwchemdata_set_body_node_aoset_symbol_v.nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_numericalvalues_symbol sym_nan in
    nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_symbol sym_nna
;;

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_numericalvalues_block_symbol sym_nnb = 
  let sym_nna = Nwchemdata_set_body_node_aoset_symbol_v.nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_numericalvalues_block_symbol sym_nnb in
    nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_symbol sym_nna
;;

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_onecenter_block_symbol sym_n1b = 
  let sym_nna = Nwchemdata_set_body_node_aoset_symbol_v.nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_onecenter_block_symbol sym_n1b in
    nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_symbol sym_nna
;;

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_oneshell_block_symbol sym_n1b = 
  let sym_nna = Nwchemdata_set_body_node_aoset_symbol_v.nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_oneshell_block_symbol sym_n1b in
    nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_symbol sym_nna
;;

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_anycenter_block_symbol sym_nab = 
  let sym_nne = Nwchemdata_set_body_node_ecpset_symbol_v.nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_anycenter_block_symbol sym_nab in
    nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_symbol sym_nne
;;

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_anyshell_block_symbol sym_nab = 
  let sym_nne = Nwchemdata_set_body_node_ecpset_symbol_v.nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_anyshell_block_symbol sym_nab in
    nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_symbol sym_nne
;;

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_block_symbol sym_neb = 
  let sym_nne = Nwchemdata_set_body_node_ecpset_symbol_v.nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_block_symbol sym_neb in
    nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_symbol sym_nne
;;

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_definition_symbol sym_ned = 
  let sym_nne = Nwchemdata_set_body_node_ecpset_symbol_v.nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_definition_symbol sym_ned in
    nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_symbol sym_nne
;;

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_electronnumber_symbol sym_nee = 
  let sym_nne = Nwchemdata_set_body_node_ecpset_symbol_v.nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_electronnumber_symbol sym_nee in
    nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_symbol sym_nne
;;

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_numericalvalues_symbol sym_nen = 
  let sym_nne = Nwchemdata_set_body_node_ecpset_symbol_v.nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_numericalvalues_symbol sym_nen in
    nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_symbol sym_nne
;;

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol sym_nnb = 
  let sym_nne = Nwchemdata_set_body_node_ecpset_symbol_v.nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol sym_nnb in
    nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_symbol sym_nne
;;

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_onecenter_block_symbol sym_n1b = 
  let sym_nne = Nwchemdata_set_body_node_ecpset_symbol_v.nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_onecenter_block_symbol sym_n1b in
    nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_symbol sym_nne
;;

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_oneshell_block_symbol sym_n1b = 
  let sym_nne = Nwchemdata_set_body_node_ecpset_symbol_v.nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_oneshell_block_symbol sym_n1b in
    nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_symbol sym_nne
;;

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_shell_contraction_symbol sym_nsc = 
  let sym_nns = Nwchemdata_set_body_node_shell_symbol_v.nwchemdata_set_body_node_shell_symbol_of_nwchemdata_set_body_node_shell_contraction_symbol sym_nsc in
    nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_shell_symbol sym_nns
;;

let nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_shell_expansion_symbol sym_nse = 
  let sym_nns = Nwchemdata_set_body_node_shell_symbol_v.nwchemdata_set_body_node_shell_symbol_of_nwchemdata_set_body_node_shell_expansion_symbol sym_nse in
    nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_shell_symbol sym_nns
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let nwchemdata_set_body_node_aobasis_block_constructor s = nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aobasis_block_symbol (Nwchemdata_set_body_node_aobasis_block_symbol_v.nwchemdata_set_body_node_aobasis_block_constructor s);;

let nwchemdata_set_body_node_aocomment_block_constructor s = nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aocomment_block_symbol (Nwchemdata_set_body_node_aocomment_block_symbol_v.nwchemdata_set_body_node_aocomment_block_constructor s);;

let nwchemdata_set_body_node_aoset_anycenter_block_constructor s = nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_symbol (Nwchemdata_set_body_node_aoset_symbol_v.nwchemdata_set_body_node_aoset_anycenter_block_constructor s);;

let nwchemdata_set_body_node_aoset_anyshell_block_constructor s = nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_symbol (Nwchemdata_set_body_node_aoset_symbol_v.nwchemdata_set_body_node_aoset_anyshell_block_constructor s);;

let nwchemdata_set_body_node_aoset_block_constructor s = nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_symbol (Nwchemdata_set_body_node_aoset_symbol_v.nwchemdata_set_body_node_aoset_block_constructor s);;

let nwchemdata_set_body_node_aoset_center_contraction_image_constructor s = nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_symbol (Nwchemdata_set_body_node_aoset_symbol_v.nwchemdata_set_body_node_aoset_center_contraction_image_constructor s);;

let nwchemdata_set_body_node_aoset_center_contraction_scheme_constructor s = nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_symbol (Nwchemdata_set_body_node_aoset_symbol_v.nwchemdata_set_body_node_aoset_center_contraction_scheme_constructor s);;

let nwchemdata_set_body_node_aoset_definition_constructor s = nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_symbol (Nwchemdata_set_body_node_aoset_symbol_v.nwchemdata_set_body_node_aoset_definition_constructor s);;

let nwchemdata_set_body_node_aoset_numericalvalues_constructor s = nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_symbol (Nwchemdata_set_body_node_aoset_symbol_v.nwchemdata_set_body_node_aoset_numericalvalues_constructor s);;

let nwchemdata_set_body_node_aoset_numericalvalues_block_constructor s = nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_symbol (Nwchemdata_set_body_node_aoset_symbol_v.nwchemdata_set_body_node_aoset_numericalvalues_block_constructor s);;

let nwchemdata_set_body_node_aoset_onecenter_block_constructor s = nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_symbol (Nwchemdata_set_body_node_aoset_symbol_v.nwchemdata_set_body_node_aoset_onecenter_block_constructor s);;

let nwchemdata_set_body_node_aoset_oneshell_block_constructor s = nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_symbol (Nwchemdata_set_body_node_aoset_symbol_v.nwchemdata_set_body_node_aoset_oneshell_block_constructor s);;

let nwchemdata_set_body_node_center_n_shellname_constructor s = nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_center_n_shellname_symbol (Nwchemdata_set_body_node_center_n_shellname_symbol_v.nwchemdata_set_body_node_center_n_shellname_constructor s);;

let nwchemdata_set_body_node_comment_block_constructor s = nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_comment_block_symbol (Nwchemdata_set_body_node_comment_block_symbol_v.nwchemdata_set_body_node_comment_block_constructor s);;

let nwchemdata_set_body_node_comment_reference_block_constructor s = nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_comment_reference_block_symbol (Nwchemdata_set_body_node_comment_reference_block_symbol_v.nwchemdata_set_body_node_comment_reference_block_constructor s);;

let nwchemdata_set_body_node_datanamefile_constructor s = nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_datanamefile_symbol (Nwchemdata_set_body_node_datanamefile_symbol_v.nwchemdata_set_body_node_datanamefile_constructor s);;

let nwchemdata_set_body_node_ecpbasis_block_constructor s = nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpbasis_block_symbol (Nwchemdata_set_body_node_ecpbasis_block_symbol_v.nwchemdata_set_body_node_ecpbasis_block_constructor s);;

let nwchemdata_set_body_node_ecpset_anycenter_block_constructor s = nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_symbol (Nwchemdata_set_body_node_ecpset_symbol_v.nwchemdata_set_body_node_ecpset_anycenter_block_constructor s);;

let nwchemdata_set_body_node_ecpset_anyshell_block_constructor s = nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_symbol (Nwchemdata_set_body_node_ecpset_symbol_v.nwchemdata_set_body_node_ecpset_anyshell_block_constructor s);;

let nwchemdata_set_body_node_ecpset_block_constructor s = nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_symbol (Nwchemdata_set_body_node_ecpset_symbol_v.nwchemdata_set_body_node_ecpset_block_constructor s);;

let nwchemdata_set_body_node_ecpset_definition_constructor s = nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_symbol (Nwchemdata_set_body_node_ecpset_symbol_v.nwchemdata_set_body_node_ecpset_definition_constructor s);;

let nwchemdata_set_body_node_ecpset_electronnumber_constructor s = nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_symbol (Nwchemdata_set_body_node_ecpset_symbol_v.nwchemdata_set_body_node_ecpset_electronnumber_constructor s);;

let nwchemdata_set_body_node_ecpset_numericalvalues_constructor s = nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_symbol (Nwchemdata_set_body_node_ecpset_symbol_v.nwchemdata_set_body_node_ecpset_numericalvalues_constructor s);;

let nwchemdata_set_body_node_ecpset_numericalvalues_block_constructor s = nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_symbol (Nwchemdata_set_body_node_ecpset_symbol_v.nwchemdata_set_body_node_ecpset_numericalvalues_block_constructor s);;

let nwchemdata_set_body_node_ecpset_onecenter_block_constructor s = nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_symbol (Nwchemdata_set_body_node_ecpset_symbol_v.nwchemdata_set_body_node_ecpset_onecenter_block_constructor s);;

let nwchemdata_set_body_node_ecpset_oneshell_block_constructor s = nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_symbol (Nwchemdata_set_body_node_ecpset_symbol_v.nwchemdata_set_body_node_ecpset_oneshell_block_constructor s);;

let nwchemdata_set_body_node_hash_databox_constructor s = nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_hash_databox_symbol (Nwchemdata_set_body_node_hash_databox_symbol_v.nwchemdata_set_body_node_hash_databox_constructor s);;

let nwchemdata_set_body_node_positiveinteger_n_shellname_constructor s = nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_positiveinteger_n_shellname_symbol (Nwchemdata_set_body_node_positiveinteger_n_shellname_symbol_v.nwchemdata_set_body_node_positiveinteger_n_shellname_constructor s);;

let nwchemdata_set_body_node_shell_contraction_constructor s = nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_shell_symbol (Nwchemdata_set_body_node_shell_symbol_v.nwchemdata_set_body_node_shell_contraction_constructor s);;

let nwchemdata_set_body_node_shell_expansion_constructor s = nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_shell_symbol (Nwchemdata_set_body_node_shell_symbol_v.nwchemdata_set_body_node_shell_expansion_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Nwchemdata_set_body_node_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Nwchemdata_set_body_node_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aobasis_block_symbol
      (Nwchemdata_set_body_node_aobasis_block_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_aobasis_block_symbol:Nwchemdata_set_body_node_aobasis_block_symbol_v.ml:make" ->
  try nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aocomment_block_symbol
      (Nwchemdata_set_body_node_aocomment_block_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_aocomment_block_symbol:Nwchemdata_set_body_node_aocomment_block_symbol_v.ml:make" ->
  try nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_aoset_symbol
      (Nwchemdata_set_body_node_aoset_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_aoset_symbol:Nwchemdata_set_body_node_aoset_symbol_v.ml:make" ->
  try nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_center_n_shellname_symbol
      (Nwchemdata_set_body_node_center_n_shellname_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_center_n_shellname_symbol:Nwchemdata_set_body_node_center_n_shellname_symbol_v.ml:make" ->
  try nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_comment_block_symbol
      (Nwchemdata_set_body_node_comment_block_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_comment_block_symbol:Nwchemdata_set_body_node_comment_block_symbol_v.ml:make" ->
  try nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_comment_reference_block_symbol
      (Nwchemdata_set_body_node_comment_reference_block_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_comment_reference_block_symbol:Nwchemdata_set_body_node_comment_reference_block_symbol_v.ml:make" ->
  try nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_datanamefile_symbol
      (Nwchemdata_set_body_node_datanamefile_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_datanamefile_symbol:Nwchemdata_set_body_node_datanamefile_symbol_v.ml:make" ->
  try nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpbasis_block_symbol
      (Nwchemdata_set_body_node_ecpbasis_block_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_ecpbasis_block_symbol:Nwchemdata_set_body_node_ecpbasis_block_symbol_v.ml:make" ->
  try nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_ecpset_symbol
      (Nwchemdata_set_body_node_ecpset_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_ecpset_symbol:Nwchemdata_set_body_node_ecpset_symbol_v.ml:make" ->
  try nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_hash_databox_symbol
      (Nwchemdata_set_body_node_hash_databox_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_hash_databox_symbol:Nwchemdata_set_body_node_hash_databox_symbol_v.ml:make" ->
  try nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_positiveinteger_n_shellname_symbol
      (Nwchemdata_set_body_node_positiveinteger_n_shellname_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_positiveinteger_n_shellname_symbol:Nwchemdata_set_body_node_positiveinteger_n_shellname_symbol_v.ml:make" ->
  try nwchemdata_set_body_node_symbol_of_nwchemdata_set_body_node_shell_symbol
      (Nwchemdata_set_body_node_shell_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_shell_symbol:Nwchemdata_set_body_node_shell_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Nwchemdata_set_body_node_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Nwchemdata_set_body_node_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Nwchemdata_set_body_node_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Nwchemdata_set_body_node_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Nwchemdata_set_body_node subtype" nam s)
      "it does not exists"
      "Check file Nwchemdata_set_body_node_symbol_v.ml"
    in
    failwith "Not_a_nwchemdata_set_body_node_symbol:Nwchemdata_set_body_node_symbol_v.ml:make"
;;


(** Nwchemdata_set_body_node_symbol_v at 17:57:20 on 4 Dec 2016. created by version v2.4 of generator *)



