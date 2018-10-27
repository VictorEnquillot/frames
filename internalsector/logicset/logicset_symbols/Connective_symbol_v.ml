(** {3 Connective_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SLOG:Connective_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Connective_symbol_t.Negation -> "negation"
  | Connective_symbol_t.Conjunction -> "conjunction"
  | Connective_symbol_t.Disjunction -> "disjunction"
  | Connective_symbol_t.Implication -> "implication"
  | Connective_symbol_t.Leftparenthesis -> "leftparenthesis"
  | Connective_symbol_t.Rightparenthesis -> "rightparenthesis"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Connective_symbol_t.Negation -> ""
  | Connective_symbol_t.Conjunction -> ""
  | Connective_symbol_t.Disjunction -> ""
  | Connective_symbol_t.Implication -> ""
  | Connective_symbol_t.Leftparenthesis -> ""
  | Connective_symbol_t.Rightparenthesis -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_con =
  Format.sprintf "Connective_symbol_t.%s" (String.capitalize (name sym_con))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_con =
  Format.sprintf "%s \"%s\"" (longname sym_con) (string_off sym_con)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_negation = function
  | Connective_symbol_t.Negation -> true
  | _ -> false
;;

let is_conjunction = function
  | Connective_symbol_t.Conjunction -> true
  | _ -> false
;;

let is_disjunction = function
  | Connective_symbol_t.Disjunction -> true
  | _ -> false
;;

let is_implication = function
  | Connective_symbol_t.Implication -> true
  | _ -> false
;;

let is_leftparenthesis = function
  | Connective_symbol_t.Leftparenthesis -> true
  | _ -> false
;;

let is_rightparenthesis = function
  | Connective_symbol_t.Rightparenthesis -> true
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

let negation = Connective_symbol_t.Negation;;

let conjunction = Connective_symbol_t.Conjunction;;

let disjunction = Connective_symbol_t.Disjunction;;

let implication = Connective_symbol_t.Implication;;

let leftparenthesis = Connective_symbol_t.Leftparenthesis;;

let rightparenthesis = Connective_symbol_t.Rightparenthesis;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "negation" -> negation
  | "conjunction" -> conjunction
  | "disjunction" -> disjunction
  | "implication" -> implication
  | "leftparenthesis" -> leftparenthesis
  | "rightparenthesis" -> rightparenthesis
  | _ ->
  failwith "Not_a_topson_bare:Connective_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Connective_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Connective_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Connective_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Connective_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Connective_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Connective subtype" nam s)
      "it does not exists"
      "Check file Connective_symbol_v.ml"
    in
    failwith "Not_a_connective_symbol:Connective_symbol_v.ml:make"
;;


(** Connective_symbol_v at 17:8:18 on 9 Jul 2013. created by version v2.3 of generator *)



