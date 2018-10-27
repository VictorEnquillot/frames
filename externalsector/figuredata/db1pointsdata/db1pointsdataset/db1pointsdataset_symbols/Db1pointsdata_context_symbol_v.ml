(** {3 Db1pointsdata_context_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Db1pointsdata_context_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Db1pointsdata_context_symbol_t.Db1pointsdata_context_databox_symbol sym_dcd ->
    Db1pointsdata_context_databox_symbol_v.name sym_dcd
  | Db1pointsdata_context_symbol_t.Db1pointsdata_context_database_symbol sym_dcd ->
    Db1pointsdata_context_database_symbol_v.name sym_dcd
  | Db1pointsdata_context_symbol_t.Db1pointsdata_context_domain_symbol sym_dcd ->
    Db1pointsdata_context_domain_symbol_v.name sym_dcd
  | Db1pointsdata_context_symbol_t.Db1pointsdata_context_sector_symbol sym_dcs ->
    Db1pointsdata_context_sector_symbol_v.name sym_dcs
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Db1pointsdata_context_symbol_t.Db1pointsdata_context_databox_symbol sym_dcd ->
  Db1pointsdata_context_databox_symbol_v.string_off sym_dcd
  | Db1pointsdata_context_symbol_t.Db1pointsdata_context_database_symbol sym_dcd ->
  Db1pointsdata_context_database_symbol_v.string_off sym_dcd
  | Db1pointsdata_context_symbol_t.Db1pointsdata_context_domain_symbol sym_dcd ->
  Db1pointsdata_context_domain_symbol_v.string_off sym_dcd
  | Db1pointsdata_context_symbol_t.Db1pointsdata_context_sector_symbol sym_dcs ->
  Db1pointsdata_context_sector_symbol_v.string_off sym_dcs
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_dco =
  Format.sprintf "Db1pointsdata_context_symbol_t.%s" (String.capitalize (name sym_dco))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_dco =
  Format.sprintf "%s \"%s\"" (longname sym_dco) (string_off sym_dco)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let db1pointsdata_context_databox_symbol_off_db1pointsdata_context_symbol = function
  | Db1pointsdata_context_symbol_t.Db1pointsdata_context_databox_symbol sym_dcd -> sym_dcd
  | sym_dco -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_context_databox_symbol_off_db1pointsdata_context_symbol"
      "Db1pointsdata_context_databox_symbol"
      (name sym_dco) "check"
;;

let db1pointsdata_context_database_symbol_off_db1pointsdata_context_symbol = function
  | Db1pointsdata_context_symbol_t.Db1pointsdata_context_database_symbol sym_dcd -> sym_dcd
  | sym_dco -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_context_database_symbol_off_db1pointsdata_context_symbol"
      "Db1pointsdata_context_database_symbol"
      (name sym_dco) "check"
;;

let db1pointsdata_context_domain_symbol_off_db1pointsdata_context_symbol = function
  | Db1pointsdata_context_symbol_t.Db1pointsdata_context_domain_symbol sym_dcd -> sym_dcd
  | sym_dco -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_context_domain_symbol_off_db1pointsdata_context_symbol"
      "Db1pointsdata_context_domain_symbol"
      (name sym_dco) "check"
;;

let db1pointsdata_context_sector_symbol_off_db1pointsdata_context_symbol = function
  | Db1pointsdata_context_symbol_t.Db1pointsdata_context_sector_symbol sym_dcs -> sym_dcs
  | sym_dco -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_context_sector_symbol_off_db1pointsdata_context_symbol"
      "Db1pointsdata_context_sector_symbol"
      (name sym_dco) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_db1pointsdata_context_databox_symbol_off_db1pointsdata_context_symbol = function
  | Db1pointsdata_context_symbol_t.Db1pointsdata_context_databox_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_context_database_symbol_off_db1pointsdata_context_symbol = function
  | Db1pointsdata_context_symbol_t.Db1pointsdata_context_database_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_context_domain_symbol_off_db1pointsdata_context_symbol = function
  | Db1pointsdata_context_symbol_t.Db1pointsdata_context_domain_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_context_sector_symbol_off_db1pointsdata_context_symbol = function
  | Db1pointsdata_context_symbol_t.Db1pointsdata_context_sector_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_db1pointsdata_context_databox_constructor sym_dco =
  if not (is_db1pointsdata_context_databox_symbol_off_db1pointsdata_context_symbol sym_dco)
  then false
  else
    begin
      let sym_dcd = db1pointsdata_context_databox_symbol_off_db1pointsdata_context_symbol sym_dco in
      Db1pointsdata_context_databox_symbol_v.is_db1pointsdata_context_databox_constructor sym_dcd
    end
;;

let is_db1pointsdata_context_database_constructor sym_dco =
  if not (is_db1pointsdata_context_database_symbol_off_db1pointsdata_context_symbol sym_dco)
  then false
  else
    begin
      let sym_dcd = db1pointsdata_context_database_symbol_off_db1pointsdata_context_symbol sym_dco in
      Db1pointsdata_context_database_symbol_v.is_db1pointsdata_context_database_constructor sym_dcd
    end
;;

let is_db1pointsdata_context_domain_constructor sym_dco =
  if not (is_db1pointsdata_context_domain_symbol_off_db1pointsdata_context_symbol sym_dco)
  then false
  else
    begin
      let sym_dcd = db1pointsdata_context_domain_symbol_off_db1pointsdata_context_symbol sym_dco in
      Db1pointsdata_context_domain_symbol_v.is_db1pointsdata_context_domain_constructor sym_dcd
    end
;;

let is_db1pointsdata_context_sector_constructor sym_dco =
  if not (is_db1pointsdata_context_sector_symbol_off_db1pointsdata_context_symbol sym_dco)
  then false
  else
    begin
      let sym_dcs = db1pointsdata_context_sector_symbol_off_db1pointsdata_context_symbol sym_dco in
      Db1pointsdata_context_sector_symbol_v.is_db1pointsdata_context_sector_constructor sym_dcs
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let db1pointsdata_context_symbol_of_db1pointsdata_context_databox_symbol sym_dcd = 
  Db1pointsdata_context_symbol_t.Db1pointsdata_context_databox_symbol sym_dcd
;;

let db1pointsdata_context_symbol_of_db1pointsdata_context_database_symbol sym_dcd = 
  Db1pointsdata_context_symbol_t.Db1pointsdata_context_database_symbol sym_dcd
;;

let db1pointsdata_context_symbol_of_db1pointsdata_context_domain_symbol sym_dcd = 
  Db1pointsdata_context_symbol_t.Db1pointsdata_context_domain_symbol sym_dcd
;;

let db1pointsdata_context_symbol_of_db1pointsdata_context_sector_symbol sym_dcs = 
  Db1pointsdata_context_symbol_t.Db1pointsdata_context_sector_symbol sym_dcs
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let db1pointsdata_context_databox_constructor s = db1pointsdata_context_symbol_of_db1pointsdata_context_databox_symbol (Db1pointsdata_context_databox_symbol_v.db1pointsdata_context_databox_constructor s);;

let db1pointsdata_context_database_constructor s = db1pointsdata_context_symbol_of_db1pointsdata_context_database_symbol (Db1pointsdata_context_database_symbol_v.db1pointsdata_context_database_constructor s);;

let db1pointsdata_context_domain_constructor s = db1pointsdata_context_symbol_of_db1pointsdata_context_domain_symbol (Db1pointsdata_context_domain_symbol_v.db1pointsdata_context_domain_constructor s);;

let db1pointsdata_context_sector_constructor s = db1pointsdata_context_symbol_of_db1pointsdata_context_sector_symbol (Db1pointsdata_context_sector_symbol_v.db1pointsdata_context_sector_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Db1pointsdata_context_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Db1pointsdata_context_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try db1pointsdata_context_symbol_of_db1pointsdata_context_databox_symbol
      (Db1pointsdata_context_databox_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_context_databox_symbol:Db1pointsdata_context_databox_symbol_v.ml:make" ->
  try db1pointsdata_context_symbol_of_db1pointsdata_context_database_symbol
      (Db1pointsdata_context_database_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_context_database_symbol:Db1pointsdata_context_database_symbol_v.ml:make" ->
  try db1pointsdata_context_symbol_of_db1pointsdata_context_domain_symbol
      (Db1pointsdata_context_domain_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_context_domain_symbol:Db1pointsdata_context_domain_symbol_v.ml:make" ->
  try db1pointsdata_context_symbol_of_db1pointsdata_context_sector_symbol
      (Db1pointsdata_context_sector_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_context_sector_symbol:Db1pointsdata_context_sector_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Db1pointsdata_context_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Db1pointsdata_context_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Db1pointsdata_context_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Db1pointsdata_context_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Db1pointsdata_context subtype" nam s)
      "it does not exists"
      "Check file Db1pointsdata_context_symbol_v.ml"
    in
    failwith "Not_a_db1pointsdata_context_symbol:Db1pointsdata_context_symbol_v.ml:make"
;;


(** Db1pointsdata_context_symbol_v at 12:40:34 on 4 Jun 2017. created by version v2.4 of generator *)



