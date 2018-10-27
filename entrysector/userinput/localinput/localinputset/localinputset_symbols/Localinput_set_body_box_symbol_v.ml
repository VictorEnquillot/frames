(** {3 Localinput_set_body_box_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Localinput_set_body_box_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol sym_lbt ->
    Localinput_set_body_box_type_symbol_v.name sym_lbt
  | Localinput_set_body_box_symbol_t.Localinput_set_body_box_units_symbol sym_lbu ->
    Localinput_set_body_box_units_symbol_v.name sym_lbu
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol sym_lbt ->
  Localinput_set_body_box_type_symbol_v.string_off sym_lbt
  | Localinput_set_body_box_symbol_t.Localinput_set_body_box_units_symbol sym_lbu ->
  Localinput_set_body_box_units_symbol_v.string_off sym_lbu
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_lbb =
  Format.sprintf "Localinput_set_body_box_symbol_t.%s" (String.capitalize (name sym_lbb))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_lbb =
  Format.sprintf "%s \"%s\"" (longname sym_lbb) (string_off sym_lbb)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let localinput_set_body_box_type_symbol_off_localinput_set_body_box_symbol = function
  | Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol sym_lbt -> sym_lbt
  | sym_lbb -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_body_box_type_symbol_off_localinput_set_body_box_symbol"
      "Localinput_set_body_box_type_symbol"
      (name sym_lbb) "check"
;;

let localinput_set_body_box_units_symbol_off_localinput_set_body_box_symbol = function
  | Localinput_set_body_box_symbol_t.Localinput_set_body_box_units_symbol sym_lbu -> sym_lbu
  | sym_lbb -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_body_box_units_symbol_off_localinput_set_body_box_symbol"
      "Localinput_set_body_box_units_symbol"
      (name sym_lbb) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_localinput_set_body_box_type_symbol_off_localinput_set_body_box_symbol = function
  | Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_body_box_units_symbol_off_localinput_set_body_box_symbol = function
  | Localinput_set_body_box_symbol_t.Localinput_set_body_box_units_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_localinput_set_body_box_type_constructor sym_lbb =
  if not (is_localinput_set_body_box_type_symbol_off_localinput_set_body_box_symbol sym_lbb)
  then false
  else
    begin
      let sym_lbt = localinput_set_body_box_type_symbol_off_localinput_set_body_box_symbol sym_lbb in
      Localinput_set_body_box_type_symbol_v.is_localinput_set_body_box_type_constructor sym_lbt
    end
;;

let is_localinput_set_body_box_units_constructor sym_lbb =
  if not (is_localinput_set_body_box_units_symbol_off_localinput_set_body_box_symbol sym_lbb)
  then false
  else
    begin
      let sym_lbu = localinput_set_body_box_units_symbol_off_localinput_set_body_box_symbol sym_lbb in
      Localinput_set_body_box_units_symbol_v.is_localinput_set_body_box_units_constructor sym_lbu
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let localinput_set_body_box_symbol_of_localinput_set_body_box_type_symbol sym_lbt = 
  Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol sym_lbt
;;

let localinput_set_body_box_symbol_of_localinput_set_body_box_units_symbol sym_lbu = 
  Localinput_set_body_box_symbol_t.Localinput_set_body_box_units_symbol sym_lbu
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let localinput_set_body_box_type_constructor s = localinput_set_body_box_symbol_of_localinput_set_body_box_type_symbol (Localinput_set_body_box_type_symbol_v.localinput_set_body_box_type_constructor s);;

let localinput_set_body_box_units_constructor s = localinput_set_body_box_symbol_of_localinput_set_body_box_units_symbol (Localinput_set_body_box_units_symbol_v.localinput_set_body_box_units_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Localinput_set_body_box_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Localinput_set_body_box_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try localinput_set_body_box_symbol_of_localinput_set_body_box_type_symbol
      (Localinput_set_body_box_type_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_body_box_type_symbol:Localinput_set_body_box_type_symbol_v.ml:make" ->
  try localinput_set_body_box_symbol_of_localinput_set_body_box_units_symbol
      (Localinput_set_body_box_units_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_body_box_units_symbol:Localinput_set_body_box_units_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Localinput_set_body_box_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Localinput_set_body_box_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Localinput_set_body_box_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Localinput_set_body_box_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Localinput_set_body_box subtype" nam s)
      "it does not exists"
      "Check file Localinput_set_body_box_symbol_v.ml"
    in
    failwith "Not_a_localinput_set_body_box_symbol:Localinput_set_body_box_symbol_v.ml:make"
;;


(** Localinput_set_body_box_symbol_v at 11:16:50 on 15 May 2017. created by version v2.4 of generator *)



