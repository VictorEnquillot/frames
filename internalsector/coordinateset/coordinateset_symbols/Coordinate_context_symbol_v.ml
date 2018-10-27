(** {3 Coordinate_context_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Coordinate_context_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Coordinate_context_symbol_t.Coordinate_context_database_symbol sym_ccd ->
    Coordinate_context_database_symbol_v.name sym_ccd
  | Coordinate_context_symbol_t.Coordinate_context_databox_symbol sym_ccd ->
    Coordinate_context_databox_symbol_v.name sym_ccd
  | Coordinate_context_symbol_t.Coordinate_context_domain_symbol sym_ccd ->
    Coordinate_context_domain_symbol_v.name sym_ccd
  | Coordinate_context_symbol_t.Coordinate_context_sector_symbol sym_ccs ->
    Coordinate_context_sector_symbol_v.name sym_ccs
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Coordinate_context_symbol_t.Coordinate_context_database_symbol sym_ccd ->
  Coordinate_context_database_symbol_v.string_off sym_ccd
  | Coordinate_context_symbol_t.Coordinate_context_databox_symbol sym_ccd ->
  Coordinate_context_databox_symbol_v.string_off sym_ccd
  | Coordinate_context_symbol_t.Coordinate_context_domain_symbol sym_ccd ->
  Coordinate_context_domain_symbol_v.string_off sym_ccd
  | Coordinate_context_symbol_t.Coordinate_context_sector_symbol sym_ccs ->
  Coordinate_context_sector_symbol_v.string_off sym_ccs
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_cco =
  Format.sprintf "Coordinate_context_symbol_t.%s" (String.capitalize (name sym_cco))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_cco =
  Format.sprintf "%s \"%s\"" (longname sym_cco) (string_off sym_cco)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let coordinate_context_database_symbol_off_coordinate_context_symbol = function
  | Coordinate_context_symbol_t.Coordinate_context_database_symbol sym_ccd -> sym_ccd
  | sym_cco -> Error_messages_v.print_fatal_error
      nam_cod "coordinate_context_database_symbol_off_coordinate_context_symbol"
      "Coordinate_context_database_symbol"
      (name sym_cco) "check"
;;

let coordinate_context_databox_symbol_off_coordinate_context_symbol = function
  | Coordinate_context_symbol_t.Coordinate_context_databox_symbol sym_ccd -> sym_ccd
  | sym_cco -> Error_messages_v.print_fatal_error
      nam_cod "coordinate_context_databox_symbol_off_coordinate_context_symbol"
      "Coordinate_context_databox_symbol"
      (name sym_cco) "check"
;;

let coordinate_context_domain_symbol_off_coordinate_context_symbol = function
  | Coordinate_context_symbol_t.Coordinate_context_domain_symbol sym_ccd -> sym_ccd
  | sym_cco -> Error_messages_v.print_fatal_error
      nam_cod "coordinate_context_domain_symbol_off_coordinate_context_symbol"
      "Coordinate_context_domain_symbol"
      (name sym_cco) "check"
;;

let coordinate_context_sector_symbol_off_coordinate_context_symbol = function
  | Coordinate_context_symbol_t.Coordinate_context_sector_symbol sym_ccs -> sym_ccs
  | sym_cco -> Error_messages_v.print_fatal_error
      nam_cod "coordinate_context_sector_symbol_off_coordinate_context_symbol"
      "Coordinate_context_sector_symbol"
      (name sym_cco) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_coordinate_context_database_symbol_off_coordinate_context_symbol = function
  | Coordinate_context_symbol_t.Coordinate_context_database_symbol _ -> true
  | _ -> false
;;

let is_coordinate_context_databox_symbol_off_coordinate_context_symbol = function
  | Coordinate_context_symbol_t.Coordinate_context_databox_symbol _ -> true
  | _ -> false
;;

let is_coordinate_context_domain_symbol_off_coordinate_context_symbol = function
  | Coordinate_context_symbol_t.Coordinate_context_domain_symbol _ -> true
  | _ -> false
;;

let is_coordinate_context_sector_symbol_off_coordinate_context_symbol = function
  | Coordinate_context_symbol_t.Coordinate_context_sector_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_coordinate_context_database_constructor sym_cco =
  if not (is_coordinate_context_database_symbol_off_coordinate_context_symbol sym_cco)
  then false
  else
    begin
      let sym_ccd = coordinate_context_database_symbol_off_coordinate_context_symbol sym_cco in
      Coordinate_context_database_symbol_v.is_coordinate_context_database_constructor sym_ccd
    end
;;

let is_coordinate_context_databox_constructor sym_cco =
  if not (is_coordinate_context_databox_symbol_off_coordinate_context_symbol sym_cco)
  then false
  else
    begin
      let sym_ccd = coordinate_context_databox_symbol_off_coordinate_context_symbol sym_cco in
      Coordinate_context_databox_symbol_v.is_coordinate_context_databox_constructor sym_ccd
    end
;;

let is_coordinate_context_domain_constructor sym_cco =
  if not (is_coordinate_context_domain_symbol_off_coordinate_context_symbol sym_cco)
  then false
  else
    begin
      let sym_ccd = coordinate_context_domain_symbol_off_coordinate_context_symbol sym_cco in
      Coordinate_context_domain_symbol_v.is_coordinate_context_domain_constructor sym_ccd
    end
;;

let is_coordinate_context_sector_constructor sym_cco =
  if not (is_coordinate_context_sector_symbol_off_coordinate_context_symbol sym_cco)
  then false
  else
    begin
      let sym_ccs = coordinate_context_sector_symbol_off_coordinate_context_symbol sym_cco in
      Coordinate_context_sector_symbol_v.is_coordinate_context_sector_constructor sym_ccs
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let coordinate_context_symbol_of_coordinate_context_database_symbol sym_ccd = 
  Coordinate_context_symbol_t.Coordinate_context_database_symbol sym_ccd
;;

let coordinate_context_symbol_of_coordinate_context_databox_symbol sym_ccd = 
  Coordinate_context_symbol_t.Coordinate_context_databox_symbol sym_ccd
;;

let coordinate_context_symbol_of_coordinate_context_domain_symbol sym_ccd = 
  Coordinate_context_symbol_t.Coordinate_context_domain_symbol sym_ccd
;;

let coordinate_context_symbol_of_coordinate_context_sector_symbol sym_ccs = 
  Coordinate_context_symbol_t.Coordinate_context_sector_symbol sym_ccs
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let coordinate_context_database_constructor s = coordinate_context_symbol_of_coordinate_context_database_symbol (Coordinate_context_database_symbol_v.coordinate_context_database_constructor s);;

let coordinate_context_databox_constructor s = coordinate_context_symbol_of_coordinate_context_databox_symbol (Coordinate_context_databox_symbol_v.coordinate_context_databox_constructor s);;

let coordinate_context_domain_constructor s = coordinate_context_symbol_of_coordinate_context_domain_symbol (Coordinate_context_domain_symbol_v.coordinate_context_domain_constructor s);;

let coordinate_context_sector_constructor s = coordinate_context_symbol_of_coordinate_context_sector_symbol (Coordinate_context_sector_symbol_v.coordinate_context_sector_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Coordinate_context_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Coordinate_context_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try coordinate_context_symbol_of_coordinate_context_database_symbol
      (Coordinate_context_database_symbol_v.make nam s)
  with Failure "Not_a_coordinate_context_database_symbol:Coordinate_context_database_symbol_v.ml:make" ->
  try coordinate_context_symbol_of_coordinate_context_databox_symbol
      (Coordinate_context_databox_symbol_v.make nam s)
  with Failure "Not_a_coordinate_context_databox_symbol:Coordinate_context_databox_symbol_v.ml:make" ->
  try coordinate_context_symbol_of_coordinate_context_domain_symbol
      (Coordinate_context_domain_symbol_v.make nam s)
  with Failure "Not_a_coordinate_context_domain_symbol:Coordinate_context_domain_symbol_v.ml:make" ->
  try coordinate_context_symbol_of_coordinate_context_sector_symbol
      (Coordinate_context_sector_symbol_v.make nam s)
  with Failure "Not_a_coordinate_context_sector_symbol:Coordinate_context_sector_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Coordinate_context_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Coordinate_context_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Coordinate_context_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Coordinate_context_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Coordinate_context subtype" nam s)
      "it does not exists"
      "Check file Coordinate_context_symbol_v.ml"
    in
    failwith "Not_a_coordinate_context_symbol:Coordinate_context_symbol_v.ml:make"
;;


(** Coordinate_context_symbol_v at 11:32:45 on 14 Dec 2016. created by version v2.4 of generator *)



