(** {3 Basisfunction_createdby_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Basisfunction_createdby_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Basisfunction_createdby_symbol_t.Basisfunction_database _ -> "basisfunction_database"
  | Basisfunction_createdby_symbol_t.Basisfunction_input_file _ -> "basisfunction_input_file"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Basisfunction_createdby_symbol_t.Basisfunction_database s -> s
  | Basisfunction_createdby_symbol_t.Basisfunction_input_file s -> s
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_bcr =
  Format.sprintf "Basisfunction_createdby_symbol_t.%s" (String.capitalize (name sym_bcr))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_bcr =
  Format.sprintf "%s \"%s\"" (longname sym_bcr) (string_off sym_bcr)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)

let is_basisfunction_database = function
  | Basisfunction_createdby_symbol_t.Basisfunction_database _ -> true
  | _ -> false
;;

let is_basisfunction_input_file = function
  | Basisfunction_createdby_symbol_t.Basisfunction_input_file _ -> true
  | _ -> false
;;


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)

let basisfunction_database s = Basisfunction_createdby_symbol_t.Basisfunction_database s;;

let basisfunction_input_file s = Basisfunction_createdby_symbol_t.Basisfunction_input_file s;;


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Basisfunction_createdby_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "basisfunction_database" -> basisfunction_database s
  | "basisfunction_input_file" -> basisfunction_input_file s
  | _ ->
  failwith "Not_a_topson_ofstring:Basisfunction_createdby_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Basisfunction_createdby_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Basisfunction_createdby_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Basisfunction_createdby_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Basisfunction_createdby_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Basisfunction_createdby subtype" nam s)
      "it does not exists"
      "Check file Basisfunction_createdby_symbol_v.ml"
    in
    failwith "Not_a_basisfunction_createdby_symbol:Basisfunction_createdby_symbol_v.ml:make"
;;


(** Basisfunction_createdby_symbol_v at 19:1:10 on 25 Mar 2015. created by version v2.3 of generator *)



