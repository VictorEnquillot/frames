(** {3 Elementary_context_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Elementary_context_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Elementary_context_symbol_t.Elementary_context_database_symbol sym_ecd ->
    Elementary_context_database_symbol_v.name sym_ecd
  | Elementary_context_symbol_t.Elementary_context_databox_symbol sym_ecd ->
    Elementary_context_databox_symbol_v.name sym_ecd
  | Elementary_context_symbol_t.Elementary_context_domain_symbol sym_ecd ->
    Elementary_context_domain_symbol_v.name sym_ecd
  | Elementary_context_symbol_t.Elementary_context_sector_symbol sym_ecs ->
    Elementary_context_sector_symbol_v.name sym_ecs
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Elementary_context_symbol_t.Elementary_context_database_symbol sym_ecd ->
  Elementary_context_database_symbol_v.string_off sym_ecd
  | Elementary_context_symbol_t.Elementary_context_databox_symbol sym_ecd ->
  Elementary_context_databox_symbol_v.string_off sym_ecd
  | Elementary_context_symbol_t.Elementary_context_domain_symbol sym_ecd ->
  Elementary_context_domain_symbol_v.string_off sym_ecd
  | Elementary_context_symbol_t.Elementary_context_sector_symbol sym_ecs ->
  Elementary_context_sector_symbol_v.string_off sym_ecs
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_eco =
  Format.sprintf "Elementary_context_symbol_t.%s" (String.capitalize (name sym_eco))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_eco =
  Format.sprintf "%s \"%s\"" (longname sym_eco) (string_off sym_eco)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let elementary_context_database_symbol_off_elementary_context_symbol = function
  | Elementary_context_symbol_t.Elementary_context_database_symbol sym_ecd -> sym_ecd
  | sym_eco -> Error_messages_v.print_fatal_error
      nam_cod "elementary_context_database_symbol_off_elementary_context_symbol"
      "Elementary_context_database_symbol"
      (name sym_eco) "check"
;;

let elementary_context_databox_symbol_off_elementary_context_symbol = function
  | Elementary_context_symbol_t.Elementary_context_databox_symbol sym_ecd -> sym_ecd
  | sym_eco -> Error_messages_v.print_fatal_error
      nam_cod "elementary_context_databox_symbol_off_elementary_context_symbol"
      "Elementary_context_databox_symbol"
      (name sym_eco) "check"
;;

let elementary_context_domain_symbol_off_elementary_context_symbol = function
  | Elementary_context_symbol_t.Elementary_context_domain_symbol sym_ecd -> sym_ecd
  | sym_eco -> Error_messages_v.print_fatal_error
      nam_cod "elementary_context_domain_symbol_off_elementary_context_symbol"
      "Elementary_context_domain_symbol"
      (name sym_eco) "check"
;;

let elementary_context_sector_symbol_off_elementary_context_symbol = function
  | Elementary_context_symbol_t.Elementary_context_sector_symbol sym_ecs -> sym_ecs
  | sym_eco -> Error_messages_v.print_fatal_error
      nam_cod "elementary_context_sector_symbol_off_elementary_context_symbol"
      "Elementary_context_sector_symbol"
      (name sym_eco) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_elementary_context_database_symbol_off_elementary_context_symbol = function
  | Elementary_context_symbol_t.Elementary_context_database_symbol _ -> true
  | _ -> false
;;

let is_elementary_context_databox_symbol_off_elementary_context_symbol = function
  | Elementary_context_symbol_t.Elementary_context_databox_symbol _ -> true
  | _ -> false
;;

let is_elementary_context_domain_symbol_off_elementary_context_symbol = function
  | Elementary_context_symbol_t.Elementary_context_domain_symbol _ -> true
  | _ -> false
;;

let is_elementary_context_sector_symbol_off_elementary_context_symbol = function
  | Elementary_context_symbol_t.Elementary_context_sector_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_elementary_context_database_constructor sym_eco =
  if not (is_elementary_context_database_symbol_off_elementary_context_symbol sym_eco)
  then false
  else
    begin
      let sym_ecd = elementary_context_database_symbol_off_elementary_context_symbol sym_eco in
      Elementary_context_database_symbol_v.is_elementary_context_database_constructor sym_ecd
    end
;;

let is_elementary_context_databox_constructor sym_eco =
  if not (is_elementary_context_databox_symbol_off_elementary_context_symbol sym_eco)
  then false
  else
    begin
      let sym_ecd = elementary_context_databox_symbol_off_elementary_context_symbol sym_eco in
      Elementary_context_databox_symbol_v.is_elementary_context_databox_constructor sym_ecd
    end
;;

let is_elementary_context_domain_constructor sym_eco =
  if not (is_elementary_context_domain_symbol_off_elementary_context_symbol sym_eco)
  then false
  else
    begin
      let sym_ecd = elementary_context_domain_symbol_off_elementary_context_symbol sym_eco in
      Elementary_context_domain_symbol_v.is_elementary_context_domain_constructor sym_ecd
    end
;;

let is_elementary_context_sector_constructor sym_eco =
  if not (is_elementary_context_sector_symbol_off_elementary_context_symbol sym_eco)
  then false
  else
    begin
      let sym_ecs = elementary_context_sector_symbol_off_elementary_context_symbol sym_eco in
      Elementary_context_sector_symbol_v.is_elementary_context_sector_constructor sym_ecs
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let elementary_context_symbol_of_elementary_context_database_symbol sym_ecd = 
  Elementary_context_symbol_t.Elementary_context_database_symbol sym_ecd
;;

let elementary_context_symbol_of_elementary_context_databox_symbol sym_ecd = 
  Elementary_context_symbol_t.Elementary_context_databox_symbol sym_ecd
;;

let elementary_context_symbol_of_elementary_context_domain_symbol sym_ecd = 
  Elementary_context_symbol_t.Elementary_context_domain_symbol sym_ecd
;;

let elementary_context_symbol_of_elementary_context_sector_symbol sym_ecs = 
  Elementary_context_symbol_t.Elementary_context_sector_symbol sym_ecs
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let elementary_context_database_constructor s = elementary_context_symbol_of_elementary_context_database_symbol (Elementary_context_database_symbol_v.elementary_context_database_constructor s);;

let elementary_context_databox_constructor s = elementary_context_symbol_of_elementary_context_databox_symbol (Elementary_context_databox_symbol_v.elementary_context_databox_constructor s);;

let elementary_context_domain_constructor s = elementary_context_symbol_of_elementary_context_domain_symbol (Elementary_context_domain_symbol_v.elementary_context_domain_constructor s);;

let elementary_context_sector_constructor s = elementary_context_symbol_of_elementary_context_sector_symbol (Elementary_context_sector_symbol_v.elementary_context_sector_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Elementary_context_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Elementary_context_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try elementary_context_symbol_of_elementary_context_database_symbol
      (Elementary_context_database_symbol_v.make nam s)
  with Failure "Not_a_elementary_context_database_symbol:Elementary_context_database_symbol_v.ml:make" ->
  try elementary_context_symbol_of_elementary_context_databox_symbol
      (Elementary_context_databox_symbol_v.make nam s)
  with Failure "Not_a_elementary_context_databox_symbol:Elementary_context_databox_symbol_v.ml:make" ->
  try elementary_context_symbol_of_elementary_context_domain_symbol
      (Elementary_context_domain_symbol_v.make nam s)
  with Failure "Not_a_elementary_context_domain_symbol:Elementary_context_domain_symbol_v.ml:make" ->
  try elementary_context_symbol_of_elementary_context_sector_symbol
      (Elementary_context_sector_symbol_v.make nam s)
  with Failure "Not_a_elementary_context_sector_symbol:Elementary_context_sector_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Elementary_context_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Elementary_context_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Elementary_context_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Elementary_context_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Elementary_context subtype" nam s)
      "it does not exists"
      "Check file Elementary_context_symbol_v.ml"
    in
    failwith "Not_a_elementary_context_symbol:Elementary_context_symbol_v.ml:make"
;;


(** Elementary_context_symbol_v at 9:51:53 on 27 Sep 2016. created by version v2.4 of generator *)



