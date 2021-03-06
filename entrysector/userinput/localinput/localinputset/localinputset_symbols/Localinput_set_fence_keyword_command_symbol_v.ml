(** {3 Localinput_set_fence_keyword_command_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Localinput_set_fence_keyword_command_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_define_symbol sym_lcd ->
    Localinput_set_fence_keyword_command_define_symbol_v.name sym_lcd
  | Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_print_symbol sym_lcp ->
    Localinput_set_fence_keyword_command_print_symbol_v.name sym_lcp
  | Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_read_symbol sym_lcr ->
    Localinput_set_fence_keyword_command_read_symbol_v.name sym_lcr
  | Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_set_symbol sym_lcs ->
    Localinput_set_fence_keyword_command_set_symbol_v.name sym_lcs
  | Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_stop_symbol sym_lcs ->
    Localinput_set_fence_keyword_command_stop_symbol_v.name sym_lcs
  | Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_title_symbol sym_lct ->
    Localinput_set_fence_keyword_command_title_symbol_v.name sym_lct
  | Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_write_symbol sym_lcw ->
    Localinput_set_fence_keyword_command_write_symbol_v.name sym_lcw
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_define_symbol sym_lcd ->
  Localinput_set_fence_keyword_command_define_symbol_v.string_off sym_lcd
  | Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_print_symbol sym_lcp ->
  Localinput_set_fence_keyword_command_print_symbol_v.string_off sym_lcp
  | Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_read_symbol sym_lcr ->
  Localinput_set_fence_keyword_command_read_symbol_v.string_off sym_lcr
  | Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_set_symbol sym_lcs ->
  Localinput_set_fence_keyword_command_set_symbol_v.string_off sym_lcs
  | Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_stop_symbol sym_lcs ->
  Localinput_set_fence_keyword_command_stop_symbol_v.string_off sym_lcs
  | Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_title_symbol sym_lct ->
  Localinput_set_fence_keyword_command_title_symbol_v.string_off sym_lct
  | Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_write_symbol sym_lcw ->
  Localinput_set_fence_keyword_command_write_symbol_v.string_off sym_lcw
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_lkc =
  Format.sprintf "Localinput_set_fence_keyword_command_symbol_t.%s" (String.capitalize (name sym_lkc))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_lkc =
  Format.sprintf "%s \"%s\"" (longname sym_lkc) (string_off sym_lkc)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let localinput_set_fence_keyword_command_define_symbol_off_localinput_set_fence_keyword_command_symbol = function
  | Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_define_symbol sym_lcd -> sym_lcd
  | sym_lkc -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_keyword_command_define_symbol_off_localinput_set_fence_keyword_command_symbol"
      "Localinput_set_fence_keyword_command_define_symbol"
      (name sym_lkc) "check"
;;

let localinput_set_fence_keyword_command_print_symbol_off_localinput_set_fence_keyword_command_symbol = function
  | Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_print_symbol sym_lcp -> sym_lcp
  | sym_lkc -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_keyword_command_print_symbol_off_localinput_set_fence_keyword_command_symbol"
      "Localinput_set_fence_keyword_command_print_symbol"
      (name sym_lkc) "check"
;;

let localinput_set_fence_keyword_command_read_symbol_off_localinput_set_fence_keyword_command_symbol = function
  | Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_read_symbol sym_lcr -> sym_lcr
  | sym_lkc -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_keyword_command_read_symbol_off_localinput_set_fence_keyword_command_symbol"
      "Localinput_set_fence_keyword_command_read_symbol"
      (name sym_lkc) "check"
;;

let localinput_set_fence_keyword_command_set_symbol_off_localinput_set_fence_keyword_command_symbol = function
  | Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_set_symbol sym_lcs -> sym_lcs
  | sym_lkc -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_keyword_command_set_symbol_off_localinput_set_fence_keyword_command_symbol"
      "Localinput_set_fence_keyword_command_set_symbol"
      (name sym_lkc) "check"
;;

let localinput_set_fence_keyword_command_stop_symbol_off_localinput_set_fence_keyword_command_symbol = function
  | Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_stop_symbol sym_lcs -> sym_lcs
  | sym_lkc -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_keyword_command_stop_symbol_off_localinput_set_fence_keyword_command_symbol"
      "Localinput_set_fence_keyword_command_stop_symbol"
      (name sym_lkc) "check"
;;

let localinput_set_fence_keyword_command_title_symbol_off_localinput_set_fence_keyword_command_symbol = function
  | Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_title_symbol sym_lct -> sym_lct
  | sym_lkc -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_keyword_command_title_symbol_off_localinput_set_fence_keyword_command_symbol"
      "Localinput_set_fence_keyword_command_title_symbol"
      (name sym_lkc) "check"
;;

let localinput_set_fence_keyword_command_write_symbol_off_localinput_set_fence_keyword_command_symbol = function
  | Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_write_symbol sym_lcw -> sym_lcw
  | sym_lkc -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_keyword_command_write_symbol_off_localinput_set_fence_keyword_command_symbol"
      "Localinput_set_fence_keyword_command_write_symbol"
      (name sym_lkc) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_localinput_set_fence_keyword_command_define_symbol_off_localinput_set_fence_keyword_command_symbol = function
  | Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_define_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_keyword_command_print_symbol_off_localinput_set_fence_keyword_command_symbol = function
  | Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_print_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_keyword_command_read_symbol_off_localinput_set_fence_keyword_command_symbol = function
  | Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_read_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_keyword_command_set_symbol_off_localinput_set_fence_keyword_command_symbol = function
  | Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_set_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_keyword_command_stop_symbol_off_localinput_set_fence_keyword_command_symbol = function
  | Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_stop_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_keyword_command_title_symbol_off_localinput_set_fence_keyword_command_symbol = function
  | Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_title_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_keyword_command_write_symbol_off_localinput_set_fence_keyword_command_symbol = function
  | Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_write_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_localinput_set_fence_keyword_command_define_constructor sym_lkc =
  if not (is_localinput_set_fence_keyword_command_define_symbol_off_localinput_set_fence_keyword_command_symbol sym_lkc)
  then false
  else
    begin
      let sym_lcd = localinput_set_fence_keyword_command_define_symbol_off_localinput_set_fence_keyword_command_symbol sym_lkc in
      Localinput_set_fence_keyword_command_define_symbol_v.is_localinput_set_fence_keyword_command_define_constructor sym_lcd
    end
;;

let is_localinput_set_fence_keyword_command_print_constructor sym_lkc =
  if not (is_localinput_set_fence_keyword_command_print_symbol_off_localinput_set_fence_keyword_command_symbol sym_lkc)
  then false
  else
    begin
      let sym_lcp = localinput_set_fence_keyword_command_print_symbol_off_localinput_set_fence_keyword_command_symbol sym_lkc in
      Localinput_set_fence_keyword_command_print_symbol_v.is_localinput_set_fence_keyword_command_print_constructor sym_lcp
    end
;;

let is_localinput_set_fence_keyword_command_read_constructor sym_lkc =
  if not (is_localinput_set_fence_keyword_command_read_symbol_off_localinput_set_fence_keyword_command_symbol sym_lkc)
  then false
  else
    begin
      let sym_lcr = localinput_set_fence_keyword_command_read_symbol_off_localinput_set_fence_keyword_command_symbol sym_lkc in
      Localinput_set_fence_keyword_command_read_symbol_v.is_localinput_set_fence_keyword_command_read_constructor sym_lcr
    end
;;

let is_localinput_set_fence_keyword_command_set_constructor sym_lkc =
  if not (is_localinput_set_fence_keyword_command_set_symbol_off_localinput_set_fence_keyword_command_symbol sym_lkc)
  then false
  else
    begin
      let sym_lcs = localinput_set_fence_keyword_command_set_symbol_off_localinput_set_fence_keyword_command_symbol sym_lkc in
      Localinput_set_fence_keyword_command_set_symbol_v.is_localinput_set_fence_keyword_command_set_constructor sym_lcs
    end
;;

let is_localinput_set_fence_keyword_command_stop_constructor sym_lkc =
  if not (is_localinput_set_fence_keyword_command_stop_symbol_off_localinput_set_fence_keyword_command_symbol sym_lkc)
  then false
  else
    begin
      let sym_lcs = localinput_set_fence_keyword_command_stop_symbol_off_localinput_set_fence_keyword_command_symbol sym_lkc in
      Localinput_set_fence_keyword_command_stop_symbol_v.is_localinput_set_fence_keyword_command_stop_constructor sym_lcs
    end
;;

let is_localinput_set_fence_keyword_command_title_constructor sym_lkc =
  if not (is_localinput_set_fence_keyword_command_title_symbol_off_localinput_set_fence_keyword_command_symbol sym_lkc)
  then false
  else
    begin
      let sym_lct = localinput_set_fence_keyword_command_title_symbol_off_localinput_set_fence_keyword_command_symbol sym_lkc in
      Localinput_set_fence_keyword_command_title_symbol_v.is_localinput_set_fence_keyword_command_title_constructor sym_lct
    end
;;

let is_localinput_set_fence_keyword_command_write_constructor sym_lkc =
  if not (is_localinput_set_fence_keyword_command_write_symbol_off_localinput_set_fence_keyword_command_symbol sym_lkc)
  then false
  else
    begin
      let sym_lcw = localinput_set_fence_keyword_command_write_symbol_off_localinput_set_fence_keyword_command_symbol sym_lkc in
      Localinput_set_fence_keyword_command_write_symbol_v.is_localinput_set_fence_keyword_command_write_constructor sym_lcw
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let localinput_set_fence_keyword_command_symbol_of_localinput_set_fence_keyword_command_define_symbol sym_lcd = 
  Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_define_symbol sym_lcd
;;

let localinput_set_fence_keyword_command_symbol_of_localinput_set_fence_keyword_command_print_symbol sym_lcp = 
  Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_print_symbol sym_lcp
;;

let localinput_set_fence_keyword_command_symbol_of_localinput_set_fence_keyword_command_read_symbol sym_lcr = 
  Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_read_symbol sym_lcr
;;

let localinput_set_fence_keyword_command_symbol_of_localinput_set_fence_keyword_command_set_symbol sym_lcs = 
  Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_set_symbol sym_lcs
;;

let localinput_set_fence_keyword_command_symbol_of_localinput_set_fence_keyword_command_stop_symbol sym_lcs = 
  Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_stop_symbol sym_lcs
;;

let localinput_set_fence_keyword_command_symbol_of_localinput_set_fence_keyword_command_title_symbol sym_lct = 
  Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_title_symbol sym_lct
;;

let localinput_set_fence_keyword_command_symbol_of_localinput_set_fence_keyword_command_write_symbol sym_lcw = 
  Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_write_symbol sym_lcw
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let localinput_set_fence_keyword_command_define_constructor s = localinput_set_fence_keyword_command_symbol_of_localinput_set_fence_keyword_command_define_symbol (Localinput_set_fence_keyword_command_define_symbol_v.localinput_set_fence_keyword_command_define_constructor s);;

let localinput_set_fence_keyword_command_print_constructor s = localinput_set_fence_keyword_command_symbol_of_localinput_set_fence_keyword_command_print_symbol (Localinput_set_fence_keyword_command_print_symbol_v.localinput_set_fence_keyword_command_print_constructor s);;

let localinput_set_fence_keyword_command_read_constructor s = localinput_set_fence_keyword_command_symbol_of_localinput_set_fence_keyword_command_read_symbol (Localinput_set_fence_keyword_command_read_symbol_v.localinput_set_fence_keyword_command_read_constructor s);;

let localinput_set_fence_keyword_command_set_constructor s = localinput_set_fence_keyword_command_symbol_of_localinput_set_fence_keyword_command_set_symbol (Localinput_set_fence_keyword_command_set_symbol_v.localinput_set_fence_keyword_command_set_constructor s);;

let localinput_set_fence_keyword_command_stop_constructor s = localinput_set_fence_keyword_command_symbol_of_localinput_set_fence_keyword_command_stop_symbol (Localinput_set_fence_keyword_command_stop_symbol_v.localinput_set_fence_keyword_command_stop_constructor s);;

let localinput_set_fence_keyword_command_title_constructor s = localinput_set_fence_keyword_command_symbol_of_localinput_set_fence_keyword_command_title_symbol (Localinput_set_fence_keyword_command_title_symbol_v.localinput_set_fence_keyword_command_title_constructor s);;

let localinput_set_fence_keyword_command_write_constructor s = localinput_set_fence_keyword_command_symbol_of_localinput_set_fence_keyword_command_write_symbol (Localinput_set_fence_keyword_command_write_symbol_v.localinput_set_fence_keyword_command_write_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Localinput_set_fence_keyword_command_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Localinput_set_fence_keyword_command_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try localinput_set_fence_keyword_command_symbol_of_localinput_set_fence_keyword_command_define_symbol
      (Localinput_set_fence_keyword_command_define_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_keyword_command_define_symbol:Localinput_set_fence_keyword_command_define_symbol_v.ml:make" ->
  try localinput_set_fence_keyword_command_symbol_of_localinput_set_fence_keyword_command_print_symbol
      (Localinput_set_fence_keyword_command_print_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_keyword_command_print_symbol:Localinput_set_fence_keyword_command_print_symbol_v.ml:make" ->
  try localinput_set_fence_keyword_command_symbol_of_localinput_set_fence_keyword_command_read_symbol
      (Localinput_set_fence_keyword_command_read_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_keyword_command_read_symbol:Localinput_set_fence_keyword_command_read_symbol_v.ml:make" ->
  try localinput_set_fence_keyword_command_symbol_of_localinput_set_fence_keyword_command_set_symbol
      (Localinput_set_fence_keyword_command_set_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_keyword_command_set_symbol:Localinput_set_fence_keyword_command_set_symbol_v.ml:make" ->
  try localinput_set_fence_keyword_command_symbol_of_localinput_set_fence_keyword_command_stop_symbol
      (Localinput_set_fence_keyword_command_stop_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_keyword_command_stop_symbol:Localinput_set_fence_keyword_command_stop_symbol_v.ml:make" ->
  try localinput_set_fence_keyword_command_symbol_of_localinput_set_fence_keyword_command_title_symbol
      (Localinput_set_fence_keyword_command_title_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_keyword_command_title_symbol:Localinput_set_fence_keyword_command_title_symbol_v.ml:make" ->
  try localinput_set_fence_keyword_command_symbol_of_localinput_set_fence_keyword_command_write_symbol
      (Localinput_set_fence_keyword_command_write_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_keyword_command_write_symbol:Localinput_set_fence_keyword_command_write_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Localinput_set_fence_keyword_command_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Localinput_set_fence_keyword_command_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Localinput_set_fence_keyword_command_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Localinput_set_fence_keyword_command_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Localinput_set_fence_keyword_command subtype" nam s)
      "it does not exists"
      "Check file Localinput_set_fence_keyword_command_symbol_v.ml"
    in
    failwith "Not_a_localinput_set_fence_keyword_command_symbol:Localinput_set_fence_keyword_command_symbol_v.ml:make"
;;


(** Localinput_set_fence_keyword_command_symbol_v at 11:16:56 on 15 May 2017. created by version v2.4 of generator *)



