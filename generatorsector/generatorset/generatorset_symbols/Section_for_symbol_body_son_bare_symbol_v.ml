(** {3 Section_for_symbol_body_son_bare_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Section_for_symbol_body_son_bare_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Section_for_symbol_body_son_bare_symbol_t.Make_ecstring_pattern_bare_for_symbol -> "make_ecstring_pattern_bare_for_symbol"
  | Section_for_symbol_body_son_bare_symbol_t.Pipe_topson_symbol_type_bare_constructors -> "pipe_topson_symbol_type_bare_constructors"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Section_for_symbol_body_son_bare_symbol_t.Make_ecstring_pattern_bare_for_symbol -> ""
  | Section_for_symbol_body_son_bare_symbol_t.Pipe_topson_symbol_type_bare_constructors -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_bsb =
  Format.sprintf "Section_for_symbol_body_son_bare_symbol_t.%s" (String.capitalize_ascii (name sym_bsb))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_bsb =
  Format.sprintf "%s \"%s\"" (longname sym_bsb) (string_off sym_bsb)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_make_ecstring_pattern_bare_for_symbol = function
  | Section_for_symbol_body_son_bare_symbol_t.Make_ecstring_pattern_bare_for_symbol -> true
  | _ -> false
;;

let is_pipe_topson_symbol_type_bare_constructors = function
  | Section_for_symbol_body_son_bare_symbol_t.Pipe_topson_symbol_type_bare_constructors -> true
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

let make_ecstring_pattern_bare_for_symbol = Section_for_symbol_body_son_bare_symbol_t.Make_ecstring_pattern_bare_for_symbol;;

let pipe_topson_symbol_type_bare_constructors = Section_for_symbol_body_son_bare_symbol_t.Pipe_topson_symbol_type_bare_constructors;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | "make_ecstring_pattern_bare_for_symbol" -> make_ecstring_pattern_bare_for_symbol
  | "pipe_topson_symbol_type_bare_constructors" -> pipe_topson_symbol_type_bare_constructors
  | _ ->
  failwith "Not_a_topson_bare:Section_for_symbol_body_son_bare_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Section_for_symbol_body_son_bare_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Section_for_symbol_body_son_bare_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Section_for_symbol_body_son_bare_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Section_for_symbol_body_son_bare_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Section_for_symbol_body_son_bare_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Section_for_symbol_body_son_bare subtype" nam s)
      "it does not exists"
      "Check file section_for_symbol_body_son_bare_symbol_v.ml"
    in
    failwith "Not_a_valid_section_for_symbol_body_son_bare_symbol:Section_for_symbol_body_son_bare_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator section_for_symbol_body_son_bare implementation_for_symbol symbol at 10:33 30 Apr 2013. *)



