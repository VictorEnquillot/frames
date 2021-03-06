(** {3 Camlline_for_any_uno_camltype_top_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_for_any_uno_camltype_top_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_for_any_uno_camltype_top_symbol_t.Pipe_et_any_constructor_of_et_any_tdot_et_any -> "pipe_et_any_constructor_of_et_any_tdot_et_any"
  | Camlline_for_any_uno_camltype_top_symbol_t.Type_et_any_equal -> "type_et_any_equal"
  | Camlline_for_any_uno_camltype_top_symbol_t.Type_et_any_equal_et -> "type_et_any_equal_et"
  | Camlline_for_any_uno_camltype_top_symbol_t.Type_et_any_equal_private -> "type_et_any_equal_private"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_for_any_uno_camltype_top_symbol_t.Pipe_et_any_constructor_of_et_any_tdot_et_any -> ""
  | Camlline_for_any_uno_camltype_top_symbol_t.Type_et_any_equal -> ""
  | Camlline_for_any_uno_camltype_top_symbol_t.Type_et_any_equal_et -> ""
  | Camlline_for_any_uno_camltype_top_symbol_t.Type_et_any_equal_private -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_uct =
  Format.sprintf "Camlline_for_any_uno_camltype_top_symbol_t.%s" (String.capitalize_ascii (name sym_uct))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_uct =
  Format.sprintf "%s \"%s\"" (longname sym_uct) (string_off sym_uct)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_pipe_et_any_constructor_of_et_any_tdot_et_any = function
  | Camlline_for_any_uno_camltype_top_symbol_t.Pipe_et_any_constructor_of_et_any_tdot_et_any -> true
  | _ -> false
;;

let is_type_et_any_equal = function
  | Camlline_for_any_uno_camltype_top_symbol_t.Type_et_any_equal -> true
  | _ -> false
;;

let is_type_et_any_equal_et = function
  | Camlline_for_any_uno_camltype_top_symbol_t.Type_et_any_equal_et -> true
  | _ -> false
;;

let is_type_et_any_equal_private = function
  | Camlline_for_any_uno_camltype_top_symbol_t.Type_et_any_equal_private -> true
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

let pipe_et_any_constructor_of_et_any_tdot_et_any = Camlline_for_any_uno_camltype_top_symbol_t.Pipe_et_any_constructor_of_et_any_tdot_et_any;;

let type_et_any_equal = Camlline_for_any_uno_camltype_top_symbol_t.Type_et_any_equal;;

let type_et_any_equal_et = Camlline_for_any_uno_camltype_top_symbol_t.Type_et_any_equal_et;;

let type_et_any_equal_private = Camlline_for_any_uno_camltype_top_symbol_t.Type_et_any_equal_private;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | "pipe_et_any_constructor_of_et_any_tdot_et_any" -> pipe_et_any_constructor_of_et_any_tdot_et_any
  | "type_et_any_equal" -> type_et_any_equal
  | "type_et_any_equal_et" -> type_et_any_equal_et
  | "type_et_any_equal_private" -> type_et_any_equal_private
  | _ ->
  failwith "Not_a_topson_bare:Camlline_for_any_uno_camltype_top_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_for_any_uno_camltype_top_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Camlline_for_any_uno_camltype_top_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlline_for_any_uno_camltype_top_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlline_for_any_uno_camltype_top_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlline_for_any_uno_camltype_top_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlline_for_any_uno_camltype_top subtype" nam s)
      "it does not exists"
      "Check file camlline_for_any_uno_camltype_top_symbol_v.ml"
    in
    failwith "Not_a_valid_camlline_for_any_uno_camltype_top_symbol:Camlline_for_any_uno_camltype_top_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator camlline_for_any_uno_camltype_top implementation_for_symbol symbol at 9:15 6 May 2013. *)



