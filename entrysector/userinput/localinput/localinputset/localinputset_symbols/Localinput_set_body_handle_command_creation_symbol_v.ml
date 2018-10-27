(** {3 Localinput_set_body_handle_command_creation_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Localinput_set_body_handle_command_creation_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol sym_lcd ->
    Localinput_set_body_handle_command_creation_define_symbol_v.name sym_lcd
  | Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_read_symbol sym_lcr ->
    Localinput_set_body_handle_command_creation_read_symbol_v.name sym_lcr
  | Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_set_symbol sym_lcs ->
    Localinput_set_body_handle_command_creation_set_symbol_v.name sym_lcs
  | Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_title_symbol sym_lct ->
    Localinput_set_body_handle_command_creation_title_symbol_v.name sym_lct
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol sym_lcd ->
  Localinput_set_body_handle_command_creation_define_symbol_v.string_off sym_lcd
  | Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_read_symbol sym_lcr ->
  Localinput_set_body_handle_command_creation_read_symbol_v.string_off sym_lcr
  | Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_set_symbol sym_lcs ->
  Localinput_set_body_handle_command_creation_set_symbol_v.string_off sym_lcs
  | Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_title_symbol sym_lct ->
  Localinput_set_body_handle_command_creation_title_symbol_v.string_off sym_lct
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_lcc =
  Format.sprintf "Localinput_set_body_handle_command_creation_symbol_t.%s" (String.capitalize (name sym_lcc))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_lcc =
  Format.sprintf "%s \"%s\"" (longname sym_lcc) (string_off sym_lcc)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let localinput_set_body_handle_command_creation_define_symbol_off_localinput_set_body_handle_command_creation_symbol = function
  | Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol sym_lcd -> sym_lcd
  | sym_lcc -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_body_handle_command_creation_define_symbol_off_localinput_set_body_handle_command_creation_symbol"
      "Localinput_set_body_handle_command_creation_define_symbol"
      (name sym_lcc) "check"
;;

let localinput_set_body_handle_command_creation_read_symbol_off_localinput_set_body_handle_command_creation_symbol = function
  | Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_read_symbol sym_lcr -> sym_lcr
  | sym_lcc -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_body_handle_command_creation_read_symbol_off_localinput_set_body_handle_command_creation_symbol"
      "Localinput_set_body_handle_command_creation_read_symbol"
      (name sym_lcc) "check"
;;

let localinput_set_body_handle_command_creation_set_symbol_off_localinput_set_body_handle_command_creation_symbol = function
  | Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_set_symbol sym_lcs -> sym_lcs
  | sym_lcc -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_body_handle_command_creation_set_symbol_off_localinput_set_body_handle_command_creation_symbol"
      "Localinput_set_body_handle_command_creation_set_symbol"
      (name sym_lcc) "check"
;;

let localinput_set_body_handle_command_creation_title_symbol_off_localinput_set_body_handle_command_creation_symbol = function
  | Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_title_symbol sym_lct -> sym_lct
  | sym_lcc -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_body_handle_command_creation_title_symbol_off_localinput_set_body_handle_command_creation_symbol"
      "Localinput_set_body_handle_command_creation_title_symbol"
      (name sym_lcc) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_localinput_set_body_handle_command_creation_define_symbol_off_localinput_set_body_handle_command_creation_symbol = function
  | Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_body_handle_command_creation_read_symbol_off_localinput_set_body_handle_command_creation_symbol = function
  | Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_read_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_body_handle_command_creation_set_symbol_off_localinput_set_body_handle_command_creation_symbol = function
  | Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_set_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_body_handle_command_creation_title_symbol_off_localinput_set_body_handle_command_creation_symbol = function
  | Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_title_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_localinput_set_body_handle_command_creation_define_constructor sym_lcc =
  if not (is_localinput_set_body_handle_command_creation_define_symbol_off_localinput_set_body_handle_command_creation_symbol sym_lcc)
  then false
  else
    begin
      let sym_lcd = localinput_set_body_handle_command_creation_define_symbol_off_localinput_set_body_handle_command_creation_symbol sym_lcc in
      Localinput_set_body_handle_command_creation_define_symbol_v.is_localinput_set_body_handle_command_creation_define_constructor sym_lcd
    end
;;

let is_localinput_set_body_handle_command_creation_read_constructor sym_lcc =
  if not (is_localinput_set_body_handle_command_creation_read_symbol_off_localinput_set_body_handle_command_creation_symbol sym_lcc)
  then false
  else
    begin
      let sym_lcr = localinput_set_body_handle_command_creation_read_symbol_off_localinput_set_body_handle_command_creation_symbol sym_lcc in
      Localinput_set_body_handle_command_creation_read_symbol_v.is_localinput_set_body_handle_command_creation_read_constructor sym_lcr
    end
;;

let is_localinput_set_body_handle_command_creation_set_constructor sym_lcc =
  if not (is_localinput_set_body_handle_command_creation_set_symbol_off_localinput_set_body_handle_command_creation_symbol sym_lcc)
  then false
  else
    begin
      let sym_lcs = localinput_set_body_handle_command_creation_set_symbol_off_localinput_set_body_handle_command_creation_symbol sym_lcc in
      Localinput_set_body_handle_command_creation_set_symbol_v.is_localinput_set_body_handle_command_creation_set_constructor sym_lcs
    end
;;

let is_localinput_set_body_handle_command_creation_title_constructor sym_lcc =
  if not (is_localinput_set_body_handle_command_creation_title_symbol_off_localinput_set_body_handle_command_creation_symbol sym_lcc)
  then false
  else
    begin
      let sym_lct = localinput_set_body_handle_command_creation_title_symbol_off_localinput_set_body_handle_command_creation_symbol sym_lcc in
      Localinput_set_body_handle_command_creation_title_symbol_v.is_localinput_set_body_handle_command_creation_title_constructor sym_lct
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let localinput_set_body_handle_command_creation_symbol_of_localinput_set_body_handle_command_creation_define_symbol sym_lcd = 
  Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol sym_lcd
;;

let localinput_set_body_handle_command_creation_symbol_of_localinput_set_body_handle_command_creation_read_symbol sym_lcr = 
  Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_read_symbol sym_lcr
;;

let localinput_set_body_handle_command_creation_symbol_of_localinput_set_body_handle_command_creation_set_symbol sym_lcs = 
  Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_set_symbol sym_lcs
;;

let localinput_set_body_handle_command_creation_symbol_of_localinput_set_body_handle_command_creation_title_symbol sym_lct = 
  Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_title_symbol sym_lct
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let localinput_set_body_handle_command_creation_define_constructor s = localinput_set_body_handle_command_creation_symbol_of_localinput_set_body_handle_command_creation_define_symbol (Localinput_set_body_handle_command_creation_define_symbol_v.localinput_set_body_handle_command_creation_define_constructor s);;

let localinput_set_body_handle_command_creation_read_constructor s = localinput_set_body_handle_command_creation_symbol_of_localinput_set_body_handle_command_creation_read_symbol (Localinput_set_body_handle_command_creation_read_symbol_v.localinput_set_body_handle_command_creation_read_constructor s);;

let localinput_set_body_handle_command_creation_set_constructor s = localinput_set_body_handle_command_creation_symbol_of_localinput_set_body_handle_command_creation_set_symbol (Localinput_set_body_handle_command_creation_set_symbol_v.localinput_set_body_handle_command_creation_set_constructor s);;

let localinput_set_body_handle_command_creation_title_constructor s = localinput_set_body_handle_command_creation_symbol_of_localinput_set_body_handle_command_creation_title_symbol (Localinput_set_body_handle_command_creation_title_symbol_v.localinput_set_body_handle_command_creation_title_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Localinput_set_body_handle_command_creation_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Localinput_set_body_handle_command_creation_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try localinput_set_body_handle_command_creation_symbol_of_localinput_set_body_handle_command_creation_define_symbol
      (Localinput_set_body_handle_command_creation_define_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_body_handle_command_creation_define_symbol:Localinput_set_body_handle_command_creation_define_symbol_v.ml:make" ->
  try localinput_set_body_handle_command_creation_symbol_of_localinput_set_body_handle_command_creation_read_symbol
      (Localinput_set_body_handle_command_creation_read_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_body_handle_command_creation_read_symbol:Localinput_set_body_handle_command_creation_read_symbol_v.ml:make" ->
  try localinput_set_body_handle_command_creation_symbol_of_localinput_set_body_handle_command_creation_set_symbol
      (Localinput_set_body_handle_command_creation_set_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_body_handle_command_creation_set_symbol:Localinput_set_body_handle_command_creation_set_symbol_v.ml:make" ->
  try localinput_set_body_handle_command_creation_symbol_of_localinput_set_body_handle_command_creation_title_symbol
      (Localinput_set_body_handle_command_creation_title_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_body_handle_command_creation_title_symbol:Localinput_set_body_handle_command_creation_title_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Localinput_set_body_handle_command_creation_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Localinput_set_body_handle_command_creation_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Localinput_set_body_handle_command_creation_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Localinput_set_body_handle_command_creation_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Localinput_set_body_handle_command_creation subtype" nam s)
      "it does not exists"
      "Check file Localinput_set_body_handle_command_creation_symbol_v.ml"
    in
    failwith "Not_a_localinput_set_body_handle_command_creation_symbol:Localinput_set_body_handle_command_creation_symbol_v.ml:make"
;;


(** Localinput_set_body_handle_command_creation_symbol_v at 11:16:50 on 15 May 2017. created by version v2.4 of generator *)



