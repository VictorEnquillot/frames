(** {3 Db1pointsdata_set_body_cluster_information_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Db1pointsdata_set_body_cluster_information_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Db1pointsdata_set_body_cluster_information_symbol_t.Db1pointsdata_set_body_cluster_information_constructor _ -> "db1pointsdata_set_body_cluster_information_constructor"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Db1pointsdata_set_body_cluster_information_symbol_t.Db1pointsdata_set_body_cluster_information_constructor s -> s
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_dci =
  Format.sprintf "Db1pointsdata_set_body_cluster_information_symbol_t.%s" (String.capitalize_ascii (name sym_dci))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_dci =
  Format.sprintf "%s \"%s\"" (longname sym_dci) (string_off sym_dci)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)

let is_db1pointsdata_set_body_cluster_information_constructor = function
  | Db1pointsdata_set_body_cluster_information_symbol_t.Db1pointsdata_set_body_cluster_information_constructor _ -> true
;;


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)

let db1pointsdata_set_body_cluster_information_constructor s = Db1pointsdata_set_body_cluster_information_symbol_t.Db1pointsdata_set_body_cluster_information_constructor s;;


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Db1pointsdata_set_body_cluster_information_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | "db1pointsdata_set_body_cluster_information_constructor" -> db1pointsdata_set_body_cluster_information_constructor s
  | _ ->
  failwith "Not_a_topson_ofstring:Db1pointsdata_set_body_cluster_information_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Db1pointsdata_set_body_cluster_information_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Db1pointsdata_set_body_cluster_information_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Db1pointsdata_set_body_cluster_information_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Db1pointsdata_set_body_cluster_information_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Db1pointsdata_set_body_cluster_information subtype" nam s)
      "it does not exists"
      "Check file Db1pointsdata_set_body_cluster_information_symbol_v.ml"
    in
    failwith "Not_a_db1pointsdata_set_body_cluster_information_symbol:Db1pointsdata_set_body_cluster_information_symbol_v.ml:make"
;;


(** Db1pointsdata_set_body_cluster_information_symbol_v at 15:7:18 on 31 Oct 2018. created by version v2.5 of generator *)



