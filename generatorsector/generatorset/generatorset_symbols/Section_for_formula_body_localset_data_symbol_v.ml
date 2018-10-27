(** {3 Section_for_formula_body_localset_data_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SGEN:Section_for_formula_body_localset_data_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Section_for_formula_body_localset_data_symbol_t.Data_tag_list -> "data_tag_list"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Section_for_formula_body_localset_data_symbol_t.Data_tag_list -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_sdd =
  Format.sprintf "Section_for_formula_body_localset_data_symbol_t.%s" (String.capitalize (name sym_sdd))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_sdd =
  Format.sprintf "%s \"%s\"" (longname sym_sdd) (string_off sym_sdd)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_data_tag_list = function
  | Section_for_formula_body_localset_data_symbol_t.Data_tag_list -> true
;;


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)

let data_tag_list = Section_for_formula_body_localset_data_symbol_t.Data_tag_list;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "data_tag_list" -> data_tag_list
  | _ ->
  failwith "Not_a_topson_bare:Section_for_formula_body_localset_data_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Section_for_formula_body_localset_data_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Section_for_formula_body_localset_data_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Section_for_formula_body_localset_data_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Section_for_formula_body_localset_data_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Section_for_formula_body_localset_data_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Section_for_formula_body_localset_data subtype" nam s)
      "it does not exists"
      "Check file Section_for_formula_body_localset_data_symbol_v.ml"
    in
    failwith "Not_a_section_for_formula_body_localset_data_symbol:Section_for_formula_body_localset_data_symbol_v.ml:make"
;;


(** Section_for_formula_body_localset_data_symbol_v at 16:16:51 on 30 May 2013. created by version v1.13 of generator *)



