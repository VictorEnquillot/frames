(** {3 Nwchemdata_lexer_keyword_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : LEXNWC:Nwchemdata_lexer_keyword_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_basis -> "nwchemdata_lexer_keyword_basis"
  | Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_ecp -> "nwchemdata_lexer_keyword_ecp"
  | Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_ecp_local -> "nwchemdata_lexer_keyword_ecp_local"
  | Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_end -> "nwchemdata_lexer_keyword_end"
  | Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_end_of_file -> "nwchemdata_lexer_keyword_end_of_file"
  | Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_ecp_electron_number -> "nwchemdata_lexer_keyword_ecp_electron_number"
  | Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_hash_basis -> "nwchemdata_lexer_keyword_hash_basis"
  | Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_print -> "nwchemdata_lexer_keyword_print"
  | Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_set -> "nwchemdata_lexer_keyword_set"
  | Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_spin_orbit -> "nwchemdata_lexer_keyword_spin_orbit"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_basis -> ""
  | Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_ecp -> ""
  | Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_ecp_local -> ""
  | Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_end -> ""
  | Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_end_of_file -> ""
  | Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_ecp_electron_number -> ""
  | Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_hash_basis -> ""
  | Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_print -> ""
  | Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_set -> ""
  | Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_spin_orbit -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_dlk =
  Format.sprintf "Nwchemdata_lexer_keyword_symbol_t.%s" (String.capitalize (name sym_dlk))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_dlk =
  Format.sprintf "%s \"%s\"" (longname sym_dlk) (string_off sym_dlk)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_nwchemdata_lexer_keyword_basis = function
  | Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_basis -> true
  | _ -> false
;;

let is_nwchemdata_lexer_keyword_ecp = function
  | Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_ecp -> true
  | _ -> false
;;

let is_nwchemdata_lexer_keyword_ecp_local = function
  | Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_ecp_local -> true
  | _ -> false
;;

let is_nwchemdata_lexer_keyword_end = function
  | Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_end -> true
  | _ -> false
;;

let is_nwchemdata_lexer_keyword_end_of_file = function
  | Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_end_of_file -> true
  | _ -> false
;;

let is_nwchemdata_lexer_keyword_ecp_electron_number = function
  | Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_ecp_electron_number -> true
  | _ -> false
;;

let is_nwchemdata_lexer_keyword_hash_basis = function
  | Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_hash_basis -> true
  | _ -> false
;;

let is_nwchemdata_lexer_keyword_print = function
  | Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_print -> true
  | _ -> false
;;

let is_nwchemdata_lexer_keyword_set = function
  | Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_set -> true
  | _ -> false
;;

let is_nwchemdata_lexer_keyword_spin_orbit = function
  | Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_spin_orbit -> true
  | _ -> false
;;


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)

let nwchemdata_lexer_keyword_basis = Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_basis;;

let nwchemdata_lexer_keyword_ecp = Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_ecp;;

let nwchemdata_lexer_keyword_ecp_local = Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_ecp_local;;

let nwchemdata_lexer_keyword_end = Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_end;;

let nwchemdata_lexer_keyword_end_of_file = Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_end_of_file;;

let nwchemdata_lexer_keyword_ecp_electron_number = Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_ecp_electron_number;;

let nwchemdata_lexer_keyword_hash_basis = Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_hash_basis;;

let nwchemdata_lexer_keyword_print = Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_print;;

let nwchemdata_lexer_keyword_set = Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_set;;

let nwchemdata_lexer_keyword_spin_orbit = Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_spin_orbit;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "nwchemdata_lexer_keyword_basis" -> nwchemdata_lexer_keyword_basis
  | "nwchemdata_lexer_keyword_ecp" -> nwchemdata_lexer_keyword_ecp
  | "nwchemdata_lexer_keyword_ecp_local" -> nwchemdata_lexer_keyword_ecp_local
  | "nwchemdata_lexer_keyword_end" -> nwchemdata_lexer_keyword_end
  | "nwchemdata_lexer_keyword_end_of_file" -> nwchemdata_lexer_keyword_end_of_file
  | "nwchemdata_lexer_keyword_ecp_electron_number" -> nwchemdata_lexer_keyword_ecp_electron_number
  | "nwchemdata_lexer_keyword_hash_basis" -> nwchemdata_lexer_keyword_hash_basis
  | "nwchemdata_lexer_keyword_print" -> nwchemdata_lexer_keyword_print
  | "nwchemdata_lexer_keyword_set" -> nwchemdata_lexer_keyword_set
  | "nwchemdata_lexer_keyword_spin_orbit" -> nwchemdata_lexer_keyword_spin_orbit
  | _ ->
  failwith "Not_a_topson_bare:Nwchemdata_lexer_keyword_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Nwchemdata_lexer_keyword_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Nwchemdata_lexer_keyword_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Nwchemdata_lexer_keyword_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Nwchemdata_lexer_keyword_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Nwchemdata_lexer_keyword_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Nwchemdata_lexer_keyword subtype" nam s)
      "it does not exists"
      "Check file Nwchemdata_lexer_keyword_symbol_v.ml"
    in
    failwith "Not_a_nwchemdata_lexer_keyword_symbol:Nwchemdata_lexer_keyword_symbol_v.ml:make"
;;


(** Nwchemdata_lexer_keyword_symbol_v at 17:56:3 on 23 Apr 2015. created by version v2.4 of generator *)



