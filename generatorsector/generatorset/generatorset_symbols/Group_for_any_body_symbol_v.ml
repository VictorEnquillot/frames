(** {3 Group_for_any_body_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SGEN:Group_for_any_body_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Group_for_any_body_symbol_t.Group_for_any_body_son_symbol sym_gbs ->
    Group_for_any_body_son_symbol_v.name sym_gbs
  | Group_for_any_body_symbol_t.Group_for_any_body_top_symbol sym_gbt ->
    Group_for_any_body_top_symbol_v.name sym_gbt
  | Group_for_any_body_symbol_t.Group_for_any_body_top_main_symbol sym_gtm ->
    Group_for_any_body_top_main_symbol_v.name sym_gtm
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Group_for_any_body_symbol_t.Group_for_any_body_son_symbol sym_gbs ->
  Group_for_any_body_son_symbol_v.string_off sym_gbs
  | Group_for_any_body_symbol_t.Group_for_any_body_top_symbol sym_gbt ->
  Group_for_any_body_top_symbol_v.string_off sym_gbt
  | Group_for_any_body_symbol_t.Group_for_any_body_top_main_symbol sym_gtm ->
  Group_for_any_body_top_main_symbol_v.string_off sym_gtm
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_gab =
  Format.sprintf "Group_for_any_body_symbol_t.%s" (String.capitalize_ascii (name sym_gab))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_gab =
  Format.sprintf "%s \"%s\"" (longname sym_gab) (string_off sym_gab)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let group_for_any_body_son_symbol_off_group_for_any_body_symbol = function
  | Group_for_any_body_symbol_t.Group_for_any_body_son_symbol sym_gbs -> sym_gbs
  | sym_gab -> Error_messages_v.print_fatal_error
      nam_cod "group_for_any_body_son_symbol_off_group_for_any_body_symbol"
      "Group_for_any_body_son_symbol"
      (name sym_gab) "check"
;;

let group_for_any_body_top_symbol_off_group_for_any_body_symbol = function
  | Group_for_any_body_symbol_t.Group_for_any_body_top_symbol sym_gbt -> sym_gbt
  | sym_gab -> Error_messages_v.print_fatal_error
      nam_cod "group_for_any_body_top_symbol_off_group_for_any_body_symbol"
      "Group_for_any_body_top_symbol"
      (name sym_gab) "check"
;;

let group_for_any_body_top_main_symbol_off_group_for_any_body_symbol = function
  | Group_for_any_body_symbol_t.Group_for_any_body_top_main_symbol sym_gtm -> sym_gtm
  | sym_gab -> Error_messages_v.print_fatal_error
      nam_cod "group_for_any_body_top_main_symbol_off_group_for_any_body_symbol"
      "Group_for_any_body_top_main_symbol"
      (name sym_gab) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_group_for_any_body_son_symbol_off_group_for_any_body_symbol = function
  | Group_for_any_body_symbol_t.Group_for_any_body_son_symbol _ -> true
  | _ -> false
;;

let is_group_for_any_body_top_symbol_off_group_for_any_body_symbol = function
  | Group_for_any_body_symbol_t.Group_for_any_body_top_symbol _ -> true
  | _ -> false
;;

let is_group_for_any_body_top_main_symbol_off_group_for_any_body_symbol = function
  | Group_for_any_body_symbol_t.Group_for_any_body_top_main_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_pipe_topson_any_type_notleaf_one_constructor sym_gab =
  if not (is_group_for_any_body_son_symbol_off_group_for_any_body_symbol sym_gab)
  then false
  else
    begin
      let sym_gbs = group_for_any_body_son_symbol_off_group_for_any_body_symbol sym_gab in
      Group_for_any_body_son_symbol_v.is_pipe_topson_any_type_notleaf_one_constructor sym_gbs
    end
;;

let is_sprintf_for_any_fullname sym_gab =
  if not (is_group_for_any_body_top_symbol_off_group_for_any_body_symbol sym_gab)
  then false
  else
    begin
      let sym_gbt = group_for_any_body_top_symbol_off_group_for_any_body_symbol sym_gab in
      Group_for_any_body_top_symbol_v.is_sprintf_for_any_fullname sym_gbt
    end
;;

let is_sprintf_for_any_longname sym_gab =
  if not (is_group_for_any_body_top_symbol_off_group_for_any_body_symbol sym_gab)
  then false
  else
    begin
      let sym_gbt = group_for_any_body_top_symbol_off_group_for_any_body_symbol sym_gab in
      Group_for_any_body_top_symbol_v.is_sprintf_for_any_longname sym_gbt
    end
;;

let is_make_tag_top sym_gab =
  if not (is_group_for_any_body_top_main_symbol_off_group_for_any_body_symbol sym_gab)
  then false
  else
    begin
      let sym_gtm = group_for_any_body_top_main_symbol_off_group_for_any_body_symbol sym_gab in
      Group_for_any_body_top_main_symbol_v.is_make_tag_top sym_gtm
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let group_for_any_body_symbol_of_group_for_any_body_son_symbol sym_gbs = 
  Group_for_any_body_symbol_t.Group_for_any_body_son_symbol sym_gbs
;;

let group_for_any_body_symbol_of_group_for_any_body_top_symbol sym_gbt = 
  Group_for_any_body_symbol_t.Group_for_any_body_top_symbol sym_gbt
;;

let group_for_any_body_symbol_of_group_for_any_body_top_main_symbol sym_gtm = 
  Group_for_any_body_symbol_t.Group_for_any_body_top_main_symbol sym_gtm
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let pipe_topson_any_type_notleaf_one_constructor = group_for_any_body_symbol_of_group_for_any_body_son_symbol Group_for_any_body_son_symbol_v.pipe_topson_any_type_notleaf_one_constructor;;

let sprintf_for_any_fullname = group_for_any_body_symbol_of_group_for_any_body_top_symbol Group_for_any_body_top_symbol_v.sprintf_for_any_fullname;;

let sprintf_for_any_longname = group_for_any_body_symbol_of_group_for_any_body_top_symbol Group_for_any_body_top_symbol_v.sprintf_for_any_longname;;

let make_tag_top = group_for_any_body_symbol_of_group_for_any_body_top_main_symbol Group_for_any_body_top_main_symbol_v.make_tag_top;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Group_for_any_body_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Group_for_any_body_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try group_for_any_body_symbol_of_group_for_any_body_son_symbol
      (Group_for_any_body_son_symbol_v.make nam s)
  with Failure "Not_a_group_for_any_body_son_symbol:Group_for_any_body_son_symbol_v:make" ->
  try group_for_any_body_symbol_of_group_for_any_body_top_symbol
      (Group_for_any_body_top_symbol_v.make nam s)
  with Failure "Not_a_group_for_any_body_top_symbol:Group_for_any_body_top_symbol_v:make" ->
  try group_for_any_body_symbol_of_group_for_any_body_top_main_symbol
      (Group_for_any_body_top_main_symbol_v.make nam s)
  with Failure "Not_a_group_for_any_body_top_main_symbol:Group_for_any_body_top_main_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Group_for_any_body_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Group_for_any_body_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Group_for_any_body_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Group_for_any_body_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Group_for_any_body subtype" nam s)
      "it does not exists"
      "Check file Group_for_any_body_symbol_v.ml"
    in
    failwith "Not_a_group_for_any_body_symbol:Group_for_any_body_symbol_v.ml:make"
;;


(** Group_for_any_body_symbol_v at 15:32:27 on 30 May 2013. created by version v1.13 of generator *)



