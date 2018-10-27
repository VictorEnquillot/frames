(** {3 Units_time_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Units_time_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Units_time_symbol_t.Femtosecond -> "femtosecond"
  | Units_time_symbol_t.Nanosecond -> "nanosecond"
  | Units_time_symbol_t.Picosecond -> "picosecond"
  | Units_time_symbol_t.Second -> "second"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Units_time_symbol_t.Femtosecond -> ""
  | Units_time_symbol_t.Nanosecond -> ""
  | Units_time_symbol_t.Picosecond -> ""
  | Units_time_symbol_t.Second -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_uti =
  Format.sprintf "Units_time_symbol_t.%s" (String.capitalize (name sym_uti))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_uti =
  Format.sprintf "%s \"%s\"" (longname sym_uti) (string_off sym_uti)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_femtosecond = function
  | Units_time_symbol_t.Femtosecond -> true
  | _ -> false
;;

let is_nanosecond = function
  | Units_time_symbol_t.Nanosecond -> true
  | _ -> false
;;

let is_picosecond = function
  | Units_time_symbol_t.Picosecond -> true
  | _ -> false
;;

let is_second = function
  | Units_time_symbol_t.Second -> true
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

let femtosecond = Units_time_symbol_t.Femtosecond;;

let nanosecond = Units_time_symbol_t.Nanosecond;;

let picosecond = Units_time_symbol_t.Picosecond;;

let second = Units_time_symbol_t.Second;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "femtosecond" -> femtosecond
  | "nanosecond" -> nanosecond
  | "picosecond" -> picosecond
  | "second" -> second
  | _ ->
  failwith "Not_a_topson_bare:Units_time_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Units_time_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Units_time_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Units_time_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Units_time_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Units_time_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Units_time subtype" nam s)
      "it does not exists"
      "Check file Units_time_symbol_v.ml"
    in
    failwith "Not_a_units_time_symbol:Units_time_symbol_v.ml:make"
;;


(** Units_time_symbol_v at 12:42:31 on 17 Oct 2013. created by version v2.3 of generator *)



