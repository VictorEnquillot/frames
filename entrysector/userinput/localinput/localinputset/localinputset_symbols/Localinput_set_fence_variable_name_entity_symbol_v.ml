(** {3 Localinput_set_fence_variable_name_entity_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Localinput_set_fence_variable_name_entity_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol sym_lee ->
    Localinput_set_fence_variable_name_entity_external_symbol_v.name sym_lee
  | Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_implicit_symbol sym_lei ->
    Localinput_set_fence_variable_name_entity_implicit_symbol_v.name sym_lei
  | Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_target_symbol sym_let ->
    Localinput_set_fence_variable_name_entity_target_symbol_v.name sym_let
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol sym_lee ->
  Localinput_set_fence_variable_name_entity_external_symbol_v.string_off sym_lee
  | Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_implicit_symbol sym_lei ->
  Localinput_set_fence_variable_name_entity_implicit_symbol_v.string_off sym_lei
  | Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_target_symbol sym_let ->
  Localinput_set_fence_variable_name_entity_target_symbol_v.string_off sym_let
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_lne =
  Format.sprintf "Localinput_set_fence_variable_name_entity_symbol_t.%s" (String.capitalize (name sym_lne))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_lne =
  Format.sprintf "%s \"%s\"" (longname sym_lne) (string_off sym_lne)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let localinput_set_fence_variable_name_entity_external_symbol_off_localinput_set_fence_variable_name_entity_symbol = function
  | Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol sym_lee -> sym_lee
  | sym_lne -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_variable_name_entity_external_symbol_off_localinput_set_fence_variable_name_entity_symbol"
      "Localinput_set_fence_variable_name_entity_external_symbol"
      (name sym_lne) "check"
;;

let localinput_set_fence_variable_name_entity_implicit_symbol_off_localinput_set_fence_variable_name_entity_symbol = function
  | Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_implicit_symbol sym_lei -> sym_lei
  | sym_lne -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_variable_name_entity_implicit_symbol_off_localinput_set_fence_variable_name_entity_symbol"
      "Localinput_set_fence_variable_name_entity_implicit_symbol"
      (name sym_lne) "check"
;;

let localinput_set_fence_variable_name_entity_target_symbol_off_localinput_set_fence_variable_name_entity_symbol = function
  | Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_target_symbol sym_let -> sym_let
  | sym_lne -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_variable_name_entity_target_symbol_off_localinput_set_fence_variable_name_entity_symbol"
      "Localinput_set_fence_variable_name_entity_target_symbol"
      (name sym_lne) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_localinput_set_fence_variable_name_entity_external_symbol_off_localinput_set_fence_variable_name_entity_symbol = function
  | Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_variable_name_entity_implicit_symbol_off_localinput_set_fence_variable_name_entity_symbol = function
  | Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_implicit_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_variable_name_entity_target_symbol_off_localinput_set_fence_variable_name_entity_symbol = function
  | Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_target_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_localinput_set_fence_variable_name_entity_external_constructor sym_lne =
  if not (is_localinput_set_fence_variable_name_entity_external_symbol_off_localinput_set_fence_variable_name_entity_symbol sym_lne)
  then false
  else
    begin
      let sym_lee = localinput_set_fence_variable_name_entity_external_symbol_off_localinput_set_fence_variable_name_entity_symbol sym_lne in
      Localinput_set_fence_variable_name_entity_external_symbol_v.is_localinput_set_fence_variable_name_entity_external_constructor sym_lee
    end
;;

let is_localinput_set_fence_variable_name_entity_implicit_constructor sym_lne =
  if not (is_localinput_set_fence_variable_name_entity_implicit_symbol_off_localinput_set_fence_variable_name_entity_symbol sym_lne)
  then false
  else
    begin
      let sym_lei = localinput_set_fence_variable_name_entity_implicit_symbol_off_localinput_set_fence_variable_name_entity_symbol sym_lne in
      Localinput_set_fence_variable_name_entity_implicit_symbol_v.is_localinput_set_fence_variable_name_entity_implicit_constructor sym_lei
    end
;;

let is_localinput_set_fence_variable_name_entity_target_constructor sym_lne =
  if not (is_localinput_set_fence_variable_name_entity_target_symbol_off_localinput_set_fence_variable_name_entity_symbol sym_lne)
  then false
  else
    begin
      let sym_let = localinput_set_fence_variable_name_entity_target_symbol_off_localinput_set_fence_variable_name_entity_symbol sym_lne in
      Localinput_set_fence_variable_name_entity_target_symbol_v.is_localinput_set_fence_variable_name_entity_target_constructor sym_let
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let localinput_set_fence_variable_name_entity_symbol_of_localinput_set_fence_variable_name_entity_external_symbol sym_lee = 
  Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol sym_lee
;;

let localinput_set_fence_variable_name_entity_symbol_of_localinput_set_fence_variable_name_entity_implicit_symbol sym_lei = 
  Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_implicit_symbol sym_lei
;;

let localinput_set_fence_variable_name_entity_symbol_of_localinput_set_fence_variable_name_entity_target_symbol sym_let = 
  Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_target_symbol sym_let
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let localinput_set_fence_variable_name_entity_external_constructor s = localinput_set_fence_variable_name_entity_symbol_of_localinput_set_fence_variable_name_entity_external_symbol (Localinput_set_fence_variable_name_entity_external_symbol_v.localinput_set_fence_variable_name_entity_external_constructor s);;

let localinput_set_fence_variable_name_entity_implicit_constructor s = localinput_set_fence_variable_name_entity_symbol_of_localinput_set_fence_variable_name_entity_implicit_symbol (Localinput_set_fence_variable_name_entity_implicit_symbol_v.localinput_set_fence_variable_name_entity_implicit_constructor s);;

let localinput_set_fence_variable_name_entity_target_constructor s = localinput_set_fence_variable_name_entity_symbol_of_localinput_set_fence_variable_name_entity_target_symbol (Localinput_set_fence_variable_name_entity_target_symbol_v.localinput_set_fence_variable_name_entity_target_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Localinput_set_fence_variable_name_entity_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Localinput_set_fence_variable_name_entity_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try localinput_set_fence_variable_name_entity_symbol_of_localinput_set_fence_variable_name_entity_external_symbol
      (Localinput_set_fence_variable_name_entity_external_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_variable_name_entity_external_symbol:Localinput_set_fence_variable_name_entity_external_symbol_v.ml:make" ->
  try localinput_set_fence_variable_name_entity_symbol_of_localinput_set_fence_variable_name_entity_implicit_symbol
      (Localinput_set_fence_variable_name_entity_implicit_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_variable_name_entity_implicit_symbol:Localinput_set_fence_variable_name_entity_implicit_symbol_v.ml:make" ->
  try localinput_set_fence_variable_name_entity_symbol_of_localinput_set_fence_variable_name_entity_target_symbol
      (Localinput_set_fence_variable_name_entity_target_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_variable_name_entity_target_symbol:Localinput_set_fence_variable_name_entity_target_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Localinput_set_fence_variable_name_entity_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Localinput_set_fence_variable_name_entity_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Localinput_set_fence_variable_name_entity_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Localinput_set_fence_variable_name_entity_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Localinput_set_fence_variable_name_entity subtype" nam s)
      "it does not exists"
      "Check file Localinput_set_fence_variable_name_entity_symbol_v.ml"
    in
    failwith "Not_a_localinput_set_fence_variable_name_entity_symbol:Localinput_set_fence_variable_name_entity_symbol_v.ml:make"
;;


(** Localinput_set_fence_variable_name_entity_symbol_v at 11:16:58 on 15 May 2017. created by version v2.4 of generator *)



