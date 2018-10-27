(** {3 Localinput_context_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Localinput_context_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Localinput_context_symbol_t.Localinput_context_domain_symbol sym_lcd ->
    Localinput_context_domain_symbol_v.name sym_lcd
  | Localinput_context_symbol_t.Localinput_context_inputbase_symbol sym_lci ->
    Localinput_context_inputbase_symbol_v.name sym_lci
  | Localinput_context_symbol_t.Localinput_context_inputbox_symbol sym_lci ->
    Localinput_context_inputbox_symbol_v.name sym_lci
  | Localinput_context_symbol_t.Localinput_context_sector_symbol sym_lcs ->
    Localinput_context_sector_symbol_v.name sym_lcs
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Localinput_context_symbol_t.Localinput_context_domain_symbol sym_lcd ->
  Localinput_context_domain_symbol_v.string_off sym_lcd
  | Localinput_context_symbol_t.Localinput_context_inputbase_symbol sym_lci ->
  Localinput_context_inputbase_symbol_v.string_off sym_lci
  | Localinput_context_symbol_t.Localinput_context_inputbox_symbol sym_lci ->
  Localinput_context_inputbox_symbol_v.string_off sym_lci
  | Localinput_context_symbol_t.Localinput_context_sector_symbol sym_lcs ->
  Localinput_context_sector_symbol_v.string_off sym_lcs
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_lco =
  Format.sprintf "Localinput_context_symbol_t.%s" (String.capitalize (name sym_lco))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_lco =
  Format.sprintf "%s \"%s\"" (longname sym_lco) (string_off sym_lco)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let localinput_context_domain_symbol_off_localinput_context_symbol = function
  | Localinput_context_symbol_t.Localinput_context_domain_symbol sym_lcd -> sym_lcd
  | sym_lco -> Error_messages_v.print_fatal_error
      nam_cod "localinput_context_domain_symbol_off_localinput_context_symbol"
      "Localinput_context_domain_symbol"
      (name sym_lco) "check"
;;

let localinput_context_inputbase_symbol_off_localinput_context_symbol = function
  | Localinput_context_symbol_t.Localinput_context_inputbase_symbol sym_lci -> sym_lci
  | sym_lco -> Error_messages_v.print_fatal_error
      nam_cod "localinput_context_inputbase_symbol_off_localinput_context_symbol"
      "Localinput_context_inputbase_symbol"
      (name sym_lco) "check"
;;

let localinput_context_inputbox_symbol_off_localinput_context_symbol = function
  | Localinput_context_symbol_t.Localinput_context_inputbox_symbol sym_lci -> sym_lci
  | sym_lco -> Error_messages_v.print_fatal_error
      nam_cod "localinput_context_inputbox_symbol_off_localinput_context_symbol"
      "Localinput_context_inputbox_symbol"
      (name sym_lco) "check"
;;

let localinput_context_sector_symbol_off_localinput_context_symbol = function
  | Localinput_context_symbol_t.Localinput_context_sector_symbol sym_lcs -> sym_lcs
  | sym_lco -> Error_messages_v.print_fatal_error
      nam_cod "localinput_context_sector_symbol_off_localinput_context_symbol"
      "Localinput_context_sector_symbol"
      (name sym_lco) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_localinput_context_domain_symbol_off_localinput_context_symbol = function
  | Localinput_context_symbol_t.Localinput_context_domain_symbol _ -> true
  | _ -> false
;;

let is_localinput_context_inputbase_symbol_off_localinput_context_symbol = function
  | Localinput_context_symbol_t.Localinput_context_inputbase_symbol _ -> true
  | _ -> false
;;

let is_localinput_context_inputbox_symbol_off_localinput_context_symbol = function
  | Localinput_context_symbol_t.Localinput_context_inputbox_symbol _ -> true
  | _ -> false
;;

let is_localinput_context_sector_symbol_off_localinput_context_symbol = function
  | Localinput_context_symbol_t.Localinput_context_sector_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_localinput_context_domain_constructor sym_lco =
  if not (is_localinput_context_domain_symbol_off_localinput_context_symbol sym_lco)
  then false
  else
    begin
      let sym_lcd = localinput_context_domain_symbol_off_localinput_context_symbol sym_lco in
      Localinput_context_domain_symbol_v.is_localinput_context_domain_constructor sym_lcd
    end
;;

let is_localinput_context_inputbase_constructor sym_lco =
  if not (is_localinput_context_inputbase_symbol_off_localinput_context_symbol sym_lco)
  then false
  else
    begin
      let sym_lci = localinput_context_inputbase_symbol_off_localinput_context_symbol sym_lco in
      Localinput_context_inputbase_symbol_v.is_localinput_context_inputbase_constructor sym_lci
    end
;;

let is_localinput_context_inputbox_constructor sym_lco =
  if not (is_localinput_context_inputbox_symbol_off_localinput_context_symbol sym_lco)
  then false
  else
    begin
      let sym_lci = localinput_context_inputbox_symbol_off_localinput_context_symbol sym_lco in
      Localinput_context_inputbox_symbol_v.is_localinput_context_inputbox_constructor sym_lci
    end
;;

let is_localinput_context_sector_constructor sym_lco =
  if not (is_localinput_context_sector_symbol_off_localinput_context_symbol sym_lco)
  then false
  else
    begin
      let sym_lcs = localinput_context_sector_symbol_off_localinput_context_symbol sym_lco in
      Localinput_context_sector_symbol_v.is_localinput_context_sector_constructor sym_lcs
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let localinput_context_symbol_of_localinput_context_domain_symbol sym_lcd = 
  Localinput_context_symbol_t.Localinput_context_domain_symbol sym_lcd
;;

let localinput_context_symbol_of_localinput_context_inputbase_symbol sym_lci = 
  Localinput_context_symbol_t.Localinput_context_inputbase_symbol sym_lci
;;

let localinput_context_symbol_of_localinput_context_inputbox_symbol sym_lci = 
  Localinput_context_symbol_t.Localinput_context_inputbox_symbol sym_lci
;;

let localinput_context_symbol_of_localinput_context_sector_symbol sym_lcs = 
  Localinput_context_symbol_t.Localinput_context_sector_symbol sym_lcs
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let localinput_context_domain_constructor s = localinput_context_symbol_of_localinput_context_domain_symbol (Localinput_context_domain_symbol_v.localinput_context_domain_constructor s);;

let localinput_context_inputbase_constructor s = localinput_context_symbol_of_localinput_context_inputbase_symbol (Localinput_context_inputbase_symbol_v.localinput_context_inputbase_constructor s);;

let localinput_context_inputbox_constructor s = localinput_context_symbol_of_localinput_context_inputbox_symbol (Localinput_context_inputbox_symbol_v.localinput_context_inputbox_constructor s);;

let localinput_context_sector_constructor s = localinput_context_symbol_of_localinput_context_sector_symbol (Localinput_context_sector_symbol_v.localinput_context_sector_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Localinput_context_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Localinput_context_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try localinput_context_symbol_of_localinput_context_domain_symbol
      (Localinput_context_domain_symbol_v.make nam s)
  with Failure "Not_a_localinput_context_domain_symbol:Localinput_context_domain_symbol_v.ml:make" ->
  try localinput_context_symbol_of_localinput_context_inputbase_symbol
      (Localinput_context_inputbase_symbol_v.make nam s)
  with Failure "Not_a_localinput_context_inputbase_symbol:Localinput_context_inputbase_symbol_v.ml:make" ->
  try localinput_context_symbol_of_localinput_context_inputbox_symbol
      (Localinput_context_inputbox_symbol_v.make nam s)
  with Failure "Not_a_localinput_context_inputbox_symbol:Localinput_context_inputbox_symbol_v.ml:make" ->
  try localinput_context_symbol_of_localinput_context_sector_symbol
      (Localinput_context_sector_symbol_v.make nam s)
  with Failure "Not_a_localinput_context_sector_symbol:Localinput_context_sector_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Localinput_context_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Localinput_context_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Localinput_context_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Localinput_context_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Localinput_context subtype" nam s)
      "it does not exists"
      "Check file Localinput_context_symbol_v.ml"
    in
    failwith "Not_a_localinput_context_symbol:Localinput_context_symbol_v.ml:make"
;;


(** Localinput_context_symbol_v at 11:16:45 on 15 May 2017. created by version v2.4 of generator *)



