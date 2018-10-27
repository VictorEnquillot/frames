(** {3 Camlline_for_symbol_uno_son_notleaf_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_for_symbol_uno_son_notleaf_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_for_symbol_uno_son_notleaf_symbol_t.Lpar_es_symbol_vdot_make_of_string_of_string_rpar -> "lpar_es_symbol_vdot_make_of_string_of_string_rpar"
  | Camlline_for_symbol_uno_son_notleaf_symbol_t.Failwith_not_es_symbol -> "failwith_not_es_symbol"
  | Camlline_for_symbol_uno_son_notleaf_symbol_t.With_failure_not_es_symbol_arrow -> "with_failure_not_es_symbol_arrow"
  | Camlline_for_symbol_uno_son_notleaf_symbol_t.Es_symbol_vdot_string_off_sym_as -> "es_symbol_vdot_string_off_sym_as"
  | Camlline_for_symbol_uno_son_notleaf_symbol_t.Es_symbol_vdot_name_sym_as -> "es_symbol_vdot_name_sym_as"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_for_symbol_uno_son_notleaf_symbol_t.Lpar_es_symbol_vdot_make_of_string_of_string_rpar -> ""
  | Camlline_for_symbol_uno_son_notleaf_symbol_t.Failwith_not_es_symbol -> ""
  | Camlline_for_symbol_uno_son_notleaf_symbol_t.With_failure_not_es_symbol_arrow -> ""
  | Camlline_for_symbol_uno_son_notleaf_symbol_t.Es_symbol_vdot_string_off_sym_as -> ""
  | Camlline_for_symbol_uno_son_notleaf_symbol_t.Es_symbol_vdot_name_sym_as -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_usn =
  Format.sprintf "Camlline_for_symbol_uno_son_notleaf_symbol_t.%s" (String.capitalize (name sym_usn))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_usn =
  Format.sprintf "%s \"%s\"" (longname sym_usn) (string_off sym_usn)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_lpar_es_symbol_vdot_make_of_string_of_string_rpar = function
  | Camlline_for_symbol_uno_son_notleaf_symbol_t.Lpar_es_symbol_vdot_make_of_string_of_string_rpar -> true
  | _ -> false
;;

let is_failwith_not_es_symbol = function
  | Camlline_for_symbol_uno_son_notleaf_symbol_t.Failwith_not_es_symbol -> true
  | _ -> false
;;

let is_with_failure_not_es_symbol_arrow = function
  | Camlline_for_symbol_uno_son_notleaf_symbol_t.With_failure_not_es_symbol_arrow -> true
  | _ -> false
;;

let is_es_symbol_vdot_string_off_sym_as = function
  | Camlline_for_symbol_uno_son_notleaf_symbol_t.Es_symbol_vdot_string_off_sym_as -> true
  | _ -> false
;;

let is_es_symbol_vdot_name_sym_as = function
  | Camlline_for_symbol_uno_son_notleaf_symbol_t.Es_symbol_vdot_name_sym_as -> true
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

let lpar_es_symbol_vdot_make_of_string_of_string_rpar = Camlline_for_symbol_uno_son_notleaf_symbol_t.Lpar_es_symbol_vdot_make_of_string_of_string_rpar;;

let failwith_not_es_symbol = Camlline_for_symbol_uno_son_notleaf_symbol_t.Failwith_not_es_symbol;;

let with_failure_not_es_symbol_arrow = Camlline_for_symbol_uno_son_notleaf_symbol_t.With_failure_not_es_symbol_arrow;;

let es_symbol_vdot_string_off_sym_as = Camlline_for_symbol_uno_son_notleaf_symbol_t.Es_symbol_vdot_string_off_sym_as;;

let es_symbol_vdot_name_sym_as = Camlline_for_symbol_uno_son_notleaf_symbol_t.Es_symbol_vdot_name_sym_as;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "lpar_es_symbol_vdot_make_of_string_of_string_rpar" -> lpar_es_symbol_vdot_make_of_string_of_string_rpar
  | "failwith_not_es_symbol" -> failwith_not_es_symbol
  | "with_failure_not_es_symbol_arrow" -> with_failure_not_es_symbol_arrow
  | "es_symbol_vdot_string_off_sym_as" -> es_symbol_vdot_string_off_sym_as
  | "es_symbol_vdot_name_sym_as" -> es_symbol_vdot_name_sym_as
  | _ ->
  failwith "Not_a_topson_bare:Camlline_for_symbol_uno_son_notleaf_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_for_symbol_uno_son_notleaf_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Camlline_for_symbol_uno_son_notleaf_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlline_for_symbol_uno_son_notleaf_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlline_for_symbol_uno_son_notleaf_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlline_for_symbol_uno_son_notleaf_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlline_for_symbol_uno_son_notleaf subtype" nam s)
      "it does not exists"
      "Check file camlline_for_symbol_uno_son_notleaf_symbol_v.ml"
    in
    failwith "Not_a_valid_camlline_for_symbol_uno_son_notleaf_symbol:Camlline_for_symbol_uno_son_notleaf_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator camlline_for_symbol_uno_son_notleaf implementation_for_symbol symbol at 9:15 6 May 2013. *)



