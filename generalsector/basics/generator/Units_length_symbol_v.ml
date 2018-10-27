(** {3 Units_length_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Units_length_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Units_length_symbol_t.Angstrom -> "angstrom"
  | Units_length_symbol_t.Bohr -> "bohr"
  | Units_length_symbol_t.Meter -> "meter"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Units_length_symbol_t.Angstrom -> ""
  | Units_length_symbol_t.Bohr -> ""
  | Units_length_symbol_t.Meter -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ule =
  Format.sprintf "Units_length_symbol_t.%s" (String.capitalize (name sym_ule))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ule =
  Format.sprintf "%s \"%s\"" (longname sym_ule) (string_off sym_ule)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_angstrom = function
  | Units_length_symbol_t.Angstrom -> true
  | _ -> false
;;

let is_bohr = function
  | Units_length_symbol_t.Bohr -> true
  | _ -> false
;;

let is_meter = function
  | Units_length_symbol_t.Meter -> true
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

let angstrom = Units_length_symbol_t.Angstrom;;

let bohr = Units_length_symbol_t.Bohr;;

let meter = Units_length_symbol_t.Meter;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "angstrom" -> angstrom
  | "bohr" -> bohr
  | "meter" -> meter
  | _ ->
  failwith "Not_a_topson_bare:Units_length_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Units_length_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Units_length_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Units_length_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Units_length_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Units_length_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Units_length subtype" nam s)
      "it does not exists"
      "Check file Units_length_symbol_v.ml"
    in
    failwith "Not_a_units_length_symbol:Units_length_symbol_v.ml:make"
;;


(** Units_length_symbol_v at 12:42:31 on 17 Oct 2013. created by version v2.3 of generator *)



