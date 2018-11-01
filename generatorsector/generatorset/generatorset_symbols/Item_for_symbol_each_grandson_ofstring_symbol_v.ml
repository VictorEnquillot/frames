(** {3 Item_for_symbol_each_grandson_ofstring_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SGEN:Item_for_symbol_each_grandson_ofstring_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Item_for_symbol_each_grandson_ofstring_symbol_t.Abbreviating_grandson_ofstring_for_symbol -> "abbreviating_grandson_ofstring_for_symbol"
  | Item_for_symbol_each_grandson_ofstring_symbol_t.Querying_grandson_ofstring_for_symbol -> "querying_grandson_ofstring_for_symbol"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Item_for_symbol_each_grandson_ofstring_symbol_t.Abbreviating_grandson_ofstring_for_symbol -> ""
  | Item_for_symbol_each_grandson_ofstring_symbol_t.Querying_grandson_ofstring_for_symbol -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_igo =
  Format.sprintf "Item_for_symbol_each_grandson_ofstring_symbol_t.%s" (String.capitalize_ascii (name sym_igo))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_igo =
  Format.sprintf "%s \"%s\"" (longname sym_igo) (string_off sym_igo)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_abbreviating_grandson_ofstring_for_symbol = function
  | Item_for_symbol_each_grandson_ofstring_symbol_t.Abbreviating_grandson_ofstring_for_symbol -> true
  | _ -> false
;;

let is_querying_grandson_ofstring_for_symbol = function
  | Item_for_symbol_each_grandson_ofstring_symbol_t.Querying_grandson_ofstring_for_symbol -> true
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

let abbreviating_grandson_ofstring_for_symbol = Item_for_symbol_each_grandson_ofstring_symbol_t.Abbreviating_grandson_ofstring_for_symbol;;

let querying_grandson_ofstring_for_symbol = Item_for_symbol_each_grandson_ofstring_symbol_t.Querying_grandson_ofstring_for_symbol;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | "abbreviating_grandson_ofstring_for_symbol" -> abbreviating_grandson_ofstring_for_symbol
  | "querying_grandson_ofstring_for_symbol" -> querying_grandson_ofstring_for_symbol
  | _ ->
  failwith "Not_a_topson_bare:Item_for_symbol_each_grandson_ofstring_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Item_for_symbol_each_grandson_ofstring_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Item_for_symbol_each_grandson_ofstring_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Item_for_symbol_each_grandson_ofstring_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Item_for_symbol_each_grandson_ofstring_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Item_for_symbol_each_grandson_ofstring_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Item_for_symbol_each_grandson_ofstring subtype" nam s)
      "it does not exists"
      "Check file Item_for_symbol_each_grandson_ofstring_symbol_v.ml"
    in
    failwith "Not_a_item_for_symbol_each_grandson_ofstring_symbol:Item_for_symbol_each_grandson_ofstring_symbol_v.ml:make"
;;


(** Item_for_symbol_each_grandson_ofstring_symbol_v at 14:13:41 on 2 Jun 2013. created by version v1.13 of generator *)



