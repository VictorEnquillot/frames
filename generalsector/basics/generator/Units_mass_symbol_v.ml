(** {3 Units_mass_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Units_mass_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Units_mass_symbol_t.Atomic_units_mass -> "atomic_units_mass"
  | Units_mass_symbol_t.Gram -> "gram"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Units_mass_symbol_t.Atomic_units_mass -> ""
  | Units_mass_symbol_t.Gram -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_uma =
  Format.sprintf "Units_mass_symbol_t.%s" (String.capitalize (name sym_uma))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_uma =
  Format.sprintf "%s \"%s\"" (longname sym_uma) (string_off sym_uma)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_atomic_units_mass = function
  | Units_mass_symbol_t.Atomic_units_mass -> true
  | _ -> false
;;

let is_gram = function
  | Units_mass_symbol_t.Gram -> true
  | _ -> false
;;


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)

let atomic_units_mass = Units_mass_symbol_t.Atomic_units_mass;;

let gram = Units_mass_symbol_t.Gram;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "atomic_units_mass" -> atomic_units_mass
  | "gram" -> gram
  | _ ->
  failwith "Not_a_topson_bare:Units_mass_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Units_mass_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Units_mass_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Units_mass_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Units_mass_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Units_mass_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Units_mass subtype" nam s)
      "it does not exists"
      "Check file Units_mass_symbol_v.ml"
    in
    failwith "Not_a_units_mass_symbol:Units_mass_symbol_v.ml:make"
;;


(** Units_mass_symbol_v at 12:42:31 on 17 Oct 2013. created by version v2.3 of generator *)



