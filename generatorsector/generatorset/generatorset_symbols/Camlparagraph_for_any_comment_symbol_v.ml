(** {3 Camlparagraph_for_any_comment_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlparagraph_for_any_comment_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlparagraph_for_any_comment_symbol_t.Camlfile_title -> "camlfile_title"
  | Camlparagraph_for_any_comment_symbol_t.Empty -> "empty"
  | Camlparagraph_for_any_comment_symbol_t.Ending -> "ending"
  | Camlparagraph_for_any_comment_symbol_t.Item_title -> "item_title"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlparagraph_for_any_comment_symbol_t.Camlfile_title -> ""
  | Camlparagraph_for_any_comment_symbol_t.Empty -> ""
  | Camlparagraph_for_any_comment_symbol_t.Ending -> ""
  | Camlparagraph_for_any_comment_symbol_t.Item_title -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_fac =
  Format.sprintf "Camlparagraph_for_any_comment_symbol_t.%s" (String.capitalize (name sym_fac))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_fac =
  Format.sprintf "%s \"%s\"" (longname sym_fac) (string_off sym_fac)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_camlfile_title = function
  | Camlparagraph_for_any_comment_symbol_t.Camlfile_title -> true
  | _ -> false
;;

let is_empty = function
  | Camlparagraph_for_any_comment_symbol_t.Empty -> true
  | _ -> false
;;

let is_ending = function
  | Camlparagraph_for_any_comment_symbol_t.Ending -> true
  | _ -> false
;;

let is_item_title = function
  | Camlparagraph_for_any_comment_symbol_t.Item_title -> true
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

let camlfile_title = Camlparagraph_for_any_comment_symbol_t.Camlfile_title;;

let empty = Camlparagraph_for_any_comment_symbol_t.Empty;;

let ending = Camlparagraph_for_any_comment_symbol_t.Ending;;

let item_title = Camlparagraph_for_any_comment_symbol_t.Item_title;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "camlfile_title" -> camlfile_title
  | "empty" -> empty
  | "ending" -> ending
  | "item_title" -> item_title
  | _ ->
  failwith "Not_a_topson_bare:Camlparagraph_for_any_comment_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlparagraph_for_any_comment_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Camlparagraph_for_any_comment_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlparagraph_for_any_comment_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlparagraph_for_any_comment_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlparagraph_for_any_comment_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlparagraph_for_any_comment subtype" nam s)
      "it does not exists"
      "Check file camlparagraph_for_any_comment_symbol_v.ml"
    in
    failwith "Not_a_valid_camlparagraph_for_any_comment_symbol:Camlparagraph_for_any_comment_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator camlparagraph_for_any_comment implementation_for_symbol symbol at 15:11 24 Apr 2013. *)



