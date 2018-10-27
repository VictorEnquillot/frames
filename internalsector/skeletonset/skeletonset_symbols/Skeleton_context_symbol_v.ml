(** {3 Skeleton_context_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Skeleton_context_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Skeleton_context_symbol_t.Skeleton_context_database_symbol sym_scd ->
    Skeleton_context_database_symbol_v.name sym_scd
  | Skeleton_context_symbol_t.Skeleton_context_databox_symbol sym_scd ->
    Skeleton_context_databox_symbol_v.name sym_scd
  | Skeleton_context_symbol_t.Skeleton_context_domain_symbol sym_scd ->
    Skeleton_context_domain_symbol_v.name sym_scd
  | Skeleton_context_symbol_t.Skeleton_context_sector_symbol sym_scs ->
    Skeleton_context_sector_symbol_v.name sym_scs
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Skeleton_context_symbol_t.Skeleton_context_database_symbol sym_scd ->
  Skeleton_context_database_symbol_v.string_off sym_scd
  | Skeleton_context_symbol_t.Skeleton_context_databox_symbol sym_scd ->
  Skeleton_context_databox_symbol_v.string_off sym_scd
  | Skeleton_context_symbol_t.Skeleton_context_domain_symbol sym_scd ->
  Skeleton_context_domain_symbol_v.string_off sym_scd
  | Skeleton_context_symbol_t.Skeleton_context_sector_symbol sym_scs ->
  Skeleton_context_sector_symbol_v.string_off sym_scs
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_sco =
  Format.sprintf "Skeleton_context_symbol_t.%s" (String.capitalize (name sym_sco))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_sco =
  Format.sprintf "%s \"%s\"" (longname sym_sco) (string_off sym_sco)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let skeleton_context_database_symbol_off_skeleton_context_symbol = function
  | Skeleton_context_symbol_t.Skeleton_context_database_symbol sym_scd -> sym_scd
  | sym_sco -> Error_messages_v.print_fatal_error
      nam_cod "skeleton_context_database_symbol_off_skeleton_context_symbol"
      "Skeleton_context_database_symbol"
      (name sym_sco) "check"
;;

let skeleton_context_databox_symbol_off_skeleton_context_symbol = function
  | Skeleton_context_symbol_t.Skeleton_context_databox_symbol sym_scd -> sym_scd
  | sym_sco -> Error_messages_v.print_fatal_error
      nam_cod "skeleton_context_databox_symbol_off_skeleton_context_symbol"
      "Skeleton_context_databox_symbol"
      (name sym_sco) "check"
;;

let skeleton_context_domain_symbol_off_skeleton_context_symbol = function
  | Skeleton_context_symbol_t.Skeleton_context_domain_symbol sym_scd -> sym_scd
  | sym_sco -> Error_messages_v.print_fatal_error
      nam_cod "skeleton_context_domain_symbol_off_skeleton_context_symbol"
      "Skeleton_context_domain_symbol"
      (name sym_sco) "check"
;;

let skeleton_context_sector_symbol_off_skeleton_context_symbol = function
  | Skeleton_context_symbol_t.Skeleton_context_sector_symbol sym_scs -> sym_scs
  | sym_sco -> Error_messages_v.print_fatal_error
      nam_cod "skeleton_context_sector_symbol_off_skeleton_context_symbol"
      "Skeleton_context_sector_symbol"
      (name sym_sco) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_skeleton_context_database_symbol_off_skeleton_context_symbol = function
  | Skeleton_context_symbol_t.Skeleton_context_database_symbol _ -> true
  | _ -> false
;;

let is_skeleton_context_databox_symbol_off_skeleton_context_symbol = function
  | Skeleton_context_symbol_t.Skeleton_context_databox_symbol _ -> true
  | _ -> false
;;

let is_skeleton_context_domain_symbol_off_skeleton_context_symbol = function
  | Skeleton_context_symbol_t.Skeleton_context_domain_symbol _ -> true
  | _ -> false
;;

let is_skeleton_context_sector_symbol_off_skeleton_context_symbol = function
  | Skeleton_context_symbol_t.Skeleton_context_sector_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_skeleton_context_database_constructor sym_sco =
  if not (is_skeleton_context_database_symbol_off_skeleton_context_symbol sym_sco)
  then false
  else
    begin
      let sym_scd = skeleton_context_database_symbol_off_skeleton_context_symbol sym_sco in
      Skeleton_context_database_symbol_v.is_skeleton_context_database_constructor sym_scd
    end
;;

let is_skeleton_context_databox_constructor sym_sco =
  if not (is_skeleton_context_databox_symbol_off_skeleton_context_symbol sym_sco)
  then false
  else
    begin
      let sym_scd = skeleton_context_databox_symbol_off_skeleton_context_symbol sym_sco in
      Skeleton_context_databox_symbol_v.is_skeleton_context_databox_constructor sym_scd
    end
;;

let is_skeleton_context_domain_constructor sym_sco =
  if not (is_skeleton_context_domain_symbol_off_skeleton_context_symbol sym_sco)
  then false
  else
    begin
      let sym_scd = skeleton_context_domain_symbol_off_skeleton_context_symbol sym_sco in
      Skeleton_context_domain_symbol_v.is_skeleton_context_domain_constructor sym_scd
    end
;;

let is_skeleton_context_sector_constructor sym_sco =
  if not (is_skeleton_context_sector_symbol_off_skeleton_context_symbol sym_sco)
  then false
  else
    begin
      let sym_scs = skeleton_context_sector_symbol_off_skeleton_context_symbol sym_sco in
      Skeleton_context_sector_symbol_v.is_skeleton_context_sector_constructor sym_scs
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let skeleton_context_symbol_of_skeleton_context_database_symbol sym_scd = 
  Skeleton_context_symbol_t.Skeleton_context_database_symbol sym_scd
;;

let skeleton_context_symbol_of_skeleton_context_databox_symbol sym_scd = 
  Skeleton_context_symbol_t.Skeleton_context_databox_symbol sym_scd
;;

let skeleton_context_symbol_of_skeleton_context_domain_symbol sym_scd = 
  Skeleton_context_symbol_t.Skeleton_context_domain_symbol sym_scd
;;

let skeleton_context_symbol_of_skeleton_context_sector_symbol sym_scs = 
  Skeleton_context_symbol_t.Skeleton_context_sector_symbol sym_scs
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let skeleton_context_database_constructor s = skeleton_context_symbol_of_skeleton_context_database_symbol (Skeleton_context_database_symbol_v.skeleton_context_database_constructor s);;

let skeleton_context_databox_constructor s = skeleton_context_symbol_of_skeleton_context_databox_symbol (Skeleton_context_databox_symbol_v.skeleton_context_databox_constructor s);;

let skeleton_context_domain_constructor s = skeleton_context_symbol_of_skeleton_context_domain_symbol (Skeleton_context_domain_symbol_v.skeleton_context_domain_constructor s);;

let skeleton_context_sector_constructor s = skeleton_context_symbol_of_skeleton_context_sector_symbol (Skeleton_context_sector_symbol_v.skeleton_context_sector_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Skeleton_context_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Skeleton_context_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try skeleton_context_symbol_of_skeleton_context_database_symbol
      (Skeleton_context_database_symbol_v.make nam s)
  with Failure "Not_a_skeleton_context_database_symbol:Skeleton_context_database_symbol_v.ml:make" ->
  try skeleton_context_symbol_of_skeleton_context_databox_symbol
      (Skeleton_context_databox_symbol_v.make nam s)
  with Failure "Not_a_skeleton_context_databox_symbol:Skeleton_context_databox_symbol_v.ml:make" ->
  try skeleton_context_symbol_of_skeleton_context_domain_symbol
      (Skeleton_context_domain_symbol_v.make nam s)
  with Failure "Not_a_skeleton_context_domain_symbol:Skeleton_context_domain_symbol_v.ml:make" ->
  try skeleton_context_symbol_of_skeleton_context_sector_symbol
      (Skeleton_context_sector_symbol_v.make nam s)
  with Failure "Not_a_skeleton_context_sector_symbol:Skeleton_context_sector_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Skeleton_context_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Skeleton_context_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Skeleton_context_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Skeleton_context_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Skeleton_context subtype" nam s)
      "it does not exists"
      "Check file Skeleton_context_symbol_v.ml"
    in
    failwith "Not_a_skeleton_context_symbol:Skeleton_context_symbol_v.ml:make"
;;


(** Skeleton_context_symbol_v at 14:12:39 on 5 Jan 2017. created by version v2.4 of generator *)



