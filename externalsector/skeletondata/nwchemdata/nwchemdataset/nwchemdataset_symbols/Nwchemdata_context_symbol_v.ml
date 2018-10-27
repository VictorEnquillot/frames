(** {3 Nwchemdata_context_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Nwchemdata_context_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Nwchemdata_context_symbol_t.Nwchemdata_context_databox_symbol sym_ncd ->
    Nwchemdata_context_databox_symbol_v.name sym_ncd
  | Nwchemdata_context_symbol_t.Nwchemdata_context_database_symbol sym_ncd ->
    Nwchemdata_context_database_symbol_v.name sym_ncd
  | Nwchemdata_context_symbol_t.Nwchemdata_context_domain_symbol sym_ncd ->
    Nwchemdata_context_domain_symbol_v.name sym_ncd
  | Nwchemdata_context_symbol_t.Nwchemdata_context_sector_symbol sym_ncs ->
    Nwchemdata_context_sector_symbol_v.name sym_ncs
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Nwchemdata_context_symbol_t.Nwchemdata_context_databox_symbol sym_ncd ->
  Nwchemdata_context_databox_symbol_v.string_off sym_ncd
  | Nwchemdata_context_symbol_t.Nwchemdata_context_database_symbol sym_ncd ->
  Nwchemdata_context_database_symbol_v.string_off sym_ncd
  | Nwchemdata_context_symbol_t.Nwchemdata_context_domain_symbol sym_ncd ->
  Nwchemdata_context_domain_symbol_v.string_off sym_ncd
  | Nwchemdata_context_symbol_t.Nwchemdata_context_sector_symbol sym_ncs ->
  Nwchemdata_context_sector_symbol_v.string_off sym_ncs
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_nco =
  Format.sprintf "Nwchemdata_context_symbol_t.%s" (String.capitalize (name sym_nco))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_nco =
  Format.sprintf "%s \"%s\"" (longname sym_nco) (string_off sym_nco)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let nwchemdata_context_databox_symbol_off_nwchemdata_context_symbol = function
  | Nwchemdata_context_symbol_t.Nwchemdata_context_databox_symbol sym_ncd -> sym_ncd
  | sym_nco -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_context_databox_symbol_off_nwchemdata_context_symbol"
      "Nwchemdata_context_databox_symbol"
      (name sym_nco) "check"
;;

let nwchemdata_context_database_symbol_off_nwchemdata_context_symbol = function
  | Nwchemdata_context_symbol_t.Nwchemdata_context_database_symbol sym_ncd -> sym_ncd
  | sym_nco -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_context_database_symbol_off_nwchemdata_context_symbol"
      "Nwchemdata_context_database_symbol"
      (name sym_nco) "check"
;;

let nwchemdata_context_domain_symbol_off_nwchemdata_context_symbol = function
  | Nwchemdata_context_symbol_t.Nwchemdata_context_domain_symbol sym_ncd -> sym_ncd
  | sym_nco -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_context_domain_symbol_off_nwchemdata_context_symbol"
      "Nwchemdata_context_domain_symbol"
      (name sym_nco) "check"
;;

let nwchemdata_context_sector_symbol_off_nwchemdata_context_symbol = function
  | Nwchemdata_context_symbol_t.Nwchemdata_context_sector_symbol sym_ncs -> sym_ncs
  | sym_nco -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_context_sector_symbol_off_nwchemdata_context_symbol"
      "Nwchemdata_context_sector_symbol"
      (name sym_nco) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_nwchemdata_context_databox_symbol_off_nwchemdata_context_symbol = function
  | Nwchemdata_context_symbol_t.Nwchemdata_context_databox_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_context_database_symbol_off_nwchemdata_context_symbol = function
  | Nwchemdata_context_symbol_t.Nwchemdata_context_database_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_context_domain_symbol_off_nwchemdata_context_symbol = function
  | Nwchemdata_context_symbol_t.Nwchemdata_context_domain_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_context_sector_symbol_off_nwchemdata_context_symbol = function
  | Nwchemdata_context_symbol_t.Nwchemdata_context_sector_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_nwchemdata_context_databox_constructor sym_nco =
  if not (is_nwchemdata_context_databox_symbol_off_nwchemdata_context_symbol sym_nco)
  then false
  else
    begin
      let sym_ncd = nwchemdata_context_databox_symbol_off_nwchemdata_context_symbol sym_nco in
      Nwchemdata_context_databox_symbol_v.is_nwchemdata_context_databox_constructor sym_ncd
    end
;;

let is_nwchemdata_context_database_constructor sym_nco =
  if not (is_nwchemdata_context_database_symbol_off_nwchemdata_context_symbol sym_nco)
  then false
  else
    begin
      let sym_ncd = nwchemdata_context_database_symbol_off_nwchemdata_context_symbol sym_nco in
      Nwchemdata_context_database_symbol_v.is_nwchemdata_context_database_constructor sym_ncd
    end
;;

let is_nwchemdata_context_domain_constructor sym_nco =
  if not (is_nwchemdata_context_domain_symbol_off_nwchemdata_context_symbol sym_nco)
  then false
  else
    begin
      let sym_ncd = nwchemdata_context_domain_symbol_off_nwchemdata_context_symbol sym_nco in
      Nwchemdata_context_domain_symbol_v.is_nwchemdata_context_domain_constructor sym_ncd
    end
;;

let is_nwchemdata_context_sector_constructor sym_nco =
  if not (is_nwchemdata_context_sector_symbol_off_nwchemdata_context_symbol sym_nco)
  then false
  else
    begin
      let sym_ncs = nwchemdata_context_sector_symbol_off_nwchemdata_context_symbol sym_nco in
      Nwchemdata_context_sector_symbol_v.is_nwchemdata_context_sector_constructor sym_ncs
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let nwchemdata_context_symbol_of_nwchemdata_context_databox_symbol sym_ncd = 
  Nwchemdata_context_symbol_t.Nwchemdata_context_databox_symbol sym_ncd
;;

let nwchemdata_context_symbol_of_nwchemdata_context_database_symbol sym_ncd = 
  Nwchemdata_context_symbol_t.Nwchemdata_context_database_symbol sym_ncd
;;

let nwchemdata_context_symbol_of_nwchemdata_context_domain_symbol sym_ncd = 
  Nwchemdata_context_symbol_t.Nwchemdata_context_domain_symbol sym_ncd
;;

let nwchemdata_context_symbol_of_nwchemdata_context_sector_symbol sym_ncs = 
  Nwchemdata_context_symbol_t.Nwchemdata_context_sector_symbol sym_ncs
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let nwchemdata_context_databox_constructor s = nwchemdata_context_symbol_of_nwchemdata_context_databox_symbol (Nwchemdata_context_databox_symbol_v.nwchemdata_context_databox_constructor s);;

let nwchemdata_context_database_constructor s = nwchemdata_context_symbol_of_nwchemdata_context_database_symbol (Nwchemdata_context_database_symbol_v.nwchemdata_context_database_constructor s);;

let nwchemdata_context_domain_constructor s = nwchemdata_context_symbol_of_nwchemdata_context_domain_symbol (Nwchemdata_context_domain_symbol_v.nwchemdata_context_domain_constructor s);;

let nwchemdata_context_sector_constructor s = nwchemdata_context_symbol_of_nwchemdata_context_sector_symbol (Nwchemdata_context_sector_symbol_v.nwchemdata_context_sector_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Nwchemdata_context_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Nwchemdata_context_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try nwchemdata_context_symbol_of_nwchemdata_context_databox_symbol
      (Nwchemdata_context_databox_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_context_databox_symbol:Nwchemdata_context_databox_symbol_v.ml:make" ->
  try nwchemdata_context_symbol_of_nwchemdata_context_database_symbol
      (Nwchemdata_context_database_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_context_database_symbol:Nwchemdata_context_database_symbol_v.ml:make" ->
  try nwchemdata_context_symbol_of_nwchemdata_context_domain_symbol
      (Nwchemdata_context_domain_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_context_domain_symbol:Nwchemdata_context_domain_symbol_v.ml:make" ->
  try nwchemdata_context_symbol_of_nwchemdata_context_sector_symbol
      (Nwchemdata_context_sector_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_context_sector_symbol:Nwchemdata_context_sector_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Nwchemdata_context_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Nwchemdata_context_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Nwchemdata_context_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Nwchemdata_context_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Nwchemdata_context subtype" nam s)
      "it does not exists"
      "Check file Nwchemdata_context_symbol_v.ml"
    in
    failwith "Not_a_nwchemdata_context_symbol:Nwchemdata_context_symbol_v.ml:make"
;;


(** Nwchemdata_context_symbol_v at 17:57:14 on 4 Dec 2016. created by version v2.4 of generator *)



