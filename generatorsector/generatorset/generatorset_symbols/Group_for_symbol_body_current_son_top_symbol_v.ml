(** {3 Group_for_symbol_body_current_son_top_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SGEN:Group_for_symbol_body_current_son_top_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Group_for_symbol_body_current_son_top_symbol_t.If_not_is_topson_begin_leaf_end -> "if_not_is_topson_begin_leaf_end"
  | Group_for_symbol_body_current_son_top_symbol_t.If_not_is_topson_begin_notleaf_end -> "if_not_is_topson_begin_notleaf_end"
  | Group_for_symbol_body_current_son_top_symbol_t.Grandson_symbol_off_topson_notleaf_symbol_off_top_symbol -> "grandson_symbol_off_topson_notleaf_symbol_off_top_symbol"
  | Group_for_symbol_body_current_son_top_symbol_t.Upgrade_grandson_symbol -> "upgrade_grandson_symbol"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Group_for_symbol_body_current_son_top_symbol_t.If_not_is_topson_begin_leaf_end -> ""
  | Group_for_symbol_body_current_son_top_symbol_t.If_not_is_topson_begin_notleaf_end -> ""
  | Group_for_symbol_body_current_son_top_symbol_t.Grandson_symbol_off_topson_notleaf_symbol_off_top_symbol -> ""
  | Group_for_symbol_body_current_son_top_symbol_t.Upgrade_grandson_symbol -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_gst =
  Format.sprintf "Group_for_symbol_body_current_son_top_symbol_t.%s" (String.capitalize_ascii (name sym_gst))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_gst =
  Format.sprintf "%s \"%s\"" (longname sym_gst) (string_off sym_gst)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_if_not_is_topson_begin_leaf_end = function
  | Group_for_symbol_body_current_son_top_symbol_t.If_not_is_topson_begin_leaf_end -> true
  | _ -> false
;;

let is_if_not_is_topson_begin_notleaf_end = function
  | Group_for_symbol_body_current_son_top_symbol_t.If_not_is_topson_begin_notleaf_end -> true
  | _ -> false
;;

let is_grandson_symbol_off_topson_notleaf_symbol_off_top_symbol = function
  | Group_for_symbol_body_current_son_top_symbol_t.Grandson_symbol_off_topson_notleaf_symbol_off_top_symbol -> true
  | _ -> false
;;

let is_upgrade_grandson_symbol = function
  | Group_for_symbol_body_current_son_top_symbol_t.Upgrade_grandson_symbol -> true
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

let if_not_is_topson_begin_leaf_end = Group_for_symbol_body_current_son_top_symbol_t.If_not_is_topson_begin_leaf_end;;

let if_not_is_topson_begin_notleaf_end = Group_for_symbol_body_current_son_top_symbol_t.If_not_is_topson_begin_notleaf_end;;

let grandson_symbol_off_topson_notleaf_symbol_off_top_symbol = Group_for_symbol_body_current_son_top_symbol_t.Grandson_symbol_off_topson_notleaf_symbol_off_top_symbol;;

let upgrade_grandson_symbol = Group_for_symbol_body_current_son_top_symbol_t.Upgrade_grandson_symbol;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | "if_not_is_topson_begin_leaf_end" -> if_not_is_topson_begin_leaf_end
  | "if_not_is_topson_begin_notleaf_end" -> if_not_is_topson_begin_notleaf_end
  | "grandson_symbol_off_topson_notleaf_symbol_off_top_symbol" -> grandson_symbol_off_topson_notleaf_symbol_off_top_symbol
  | "upgrade_grandson_symbol" -> upgrade_grandson_symbol
  | _ ->
  failwith "Not_a_topson_bare:Group_for_symbol_body_current_son_top_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Group_for_symbol_body_current_son_top_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Group_for_symbol_body_current_son_top_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Group_for_symbol_body_current_son_top_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Group_for_symbol_body_current_son_top_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Group_for_symbol_body_current_son_top_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Group_for_symbol_body_current_son_top subtype" nam s)
      "it does not exists"
      "Check file Group_for_symbol_body_current_son_top_symbol_v.ml"
    in
    failwith "Not_a_group_for_symbol_body_current_son_top_symbol:Group_for_symbol_body_current_son_top_symbol_v.ml:make"
;;


(** Group_for_symbol_body_current_son_top_symbol_v at 15:34:1 on 30 May 2013. created by version v1.13 of generator *)



