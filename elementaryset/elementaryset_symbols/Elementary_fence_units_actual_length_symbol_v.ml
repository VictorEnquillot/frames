(** {3 Elementary_fence_units_actual_length_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Elementary_fence_units_actual_length_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Elementary_fence_units_actual_length_symbol_t.Angstrom -> "angstrom"
  | Elementary_fence_units_actual_length_symbol_t.Bohr -> "bohr"
  | Elementary_fence_units_actual_length_symbol_t.Centimeter -> "centimeter"
  | Elementary_fence_units_actual_length_symbol_t.Decameter -> "decameter"
  | Elementary_fence_units_actual_length_symbol_t.Decimeter -> "decimeter"
  | Elementary_fence_units_actual_length_symbol_t.Foot -> "foot"
  | Elementary_fence_units_actual_length_symbol_t.Inch -> "inch"
  | Elementary_fence_units_actual_length_symbol_t.Kilometer -> "kilometer"
  | Elementary_fence_units_actual_length_symbol_t.Light_year -> "light_year"
  | Elementary_fence_units_actual_length_symbol_t.Meter -> "meter"
  | Elementary_fence_units_actual_length_symbol_t.Millimeter -> "millimeter"
  | Elementary_fence_units_actual_length_symbol_t.Nanometer -> "nanometer"
  | Elementary_fence_units_actual_length_symbol_t.Yard -> "yard"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Elementary_fence_units_actual_length_symbol_t.Angstrom -> ""
  | Elementary_fence_units_actual_length_symbol_t.Bohr -> ""
  | Elementary_fence_units_actual_length_symbol_t.Centimeter -> ""
  | Elementary_fence_units_actual_length_symbol_t.Decameter -> ""
  | Elementary_fence_units_actual_length_symbol_t.Decimeter -> ""
  | Elementary_fence_units_actual_length_symbol_t.Foot -> ""
  | Elementary_fence_units_actual_length_symbol_t.Inch -> ""
  | Elementary_fence_units_actual_length_symbol_t.Kilometer -> ""
  | Elementary_fence_units_actual_length_symbol_t.Light_year -> ""
  | Elementary_fence_units_actual_length_symbol_t.Meter -> ""
  | Elementary_fence_units_actual_length_symbol_t.Millimeter -> ""
  | Elementary_fence_units_actual_length_symbol_t.Nanometer -> ""
  | Elementary_fence_units_actual_length_symbol_t.Yard -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_eal =
  Format.sprintf "Elementary_fence_units_actual_length_symbol_t.%s" (String.capitalize (name sym_eal))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_eal =
  Format.sprintf "%s \"%s\"" (longname sym_eal) (string_off sym_eal)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_angstrom = function
  | Elementary_fence_units_actual_length_symbol_t.Angstrom -> true
  | _ -> false
;;

let is_bohr = function
  | Elementary_fence_units_actual_length_symbol_t.Bohr -> true
  | _ -> false
;;

let is_centimeter = function
  | Elementary_fence_units_actual_length_symbol_t.Centimeter -> true
  | _ -> false
;;

let is_decameter = function
  | Elementary_fence_units_actual_length_symbol_t.Decameter -> true
  | _ -> false
;;

let is_decimeter = function
  | Elementary_fence_units_actual_length_symbol_t.Decimeter -> true
  | _ -> false
;;

let is_foot = function
  | Elementary_fence_units_actual_length_symbol_t.Foot -> true
  | _ -> false
;;

let is_inch = function
  | Elementary_fence_units_actual_length_symbol_t.Inch -> true
  | _ -> false
;;

let is_kilometer = function
  | Elementary_fence_units_actual_length_symbol_t.Kilometer -> true
  | _ -> false
;;

let is_light_year = function
  | Elementary_fence_units_actual_length_symbol_t.Light_year -> true
  | _ -> false
;;

let is_meter = function
  | Elementary_fence_units_actual_length_symbol_t.Meter -> true
  | _ -> false
;;

let is_millimeter = function
  | Elementary_fence_units_actual_length_symbol_t.Millimeter -> true
  | _ -> false
;;

let is_nanometer = function
  | Elementary_fence_units_actual_length_symbol_t.Nanometer -> true
  | _ -> false
;;

let is_yard = function
  | Elementary_fence_units_actual_length_symbol_t.Yard -> true
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

let angstrom = Elementary_fence_units_actual_length_symbol_t.Angstrom;;

let bohr = Elementary_fence_units_actual_length_symbol_t.Bohr;;

let centimeter = Elementary_fence_units_actual_length_symbol_t.Centimeter;;

let decameter = Elementary_fence_units_actual_length_symbol_t.Decameter;;

let decimeter = Elementary_fence_units_actual_length_symbol_t.Decimeter;;

let foot = Elementary_fence_units_actual_length_symbol_t.Foot;;

let inch = Elementary_fence_units_actual_length_symbol_t.Inch;;

let kilometer = Elementary_fence_units_actual_length_symbol_t.Kilometer;;

let light_year = Elementary_fence_units_actual_length_symbol_t.Light_year;;

let meter = Elementary_fence_units_actual_length_symbol_t.Meter;;

let millimeter = Elementary_fence_units_actual_length_symbol_t.Millimeter;;

let nanometer = Elementary_fence_units_actual_length_symbol_t.Nanometer;;

let yard = Elementary_fence_units_actual_length_symbol_t.Yard;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "angstrom" -> angstrom
  | "bohr" -> bohr
  | "centimeter" -> centimeter
  | "decameter" -> decameter
  | "decimeter" -> decimeter
  | "foot" -> foot
  | "inch" -> inch
  | "kilometer" -> kilometer
  | "light_year" -> light_year
  | "meter" -> meter
  | "millimeter" -> millimeter
  | "nanometer" -> nanometer
  | "yard" -> yard
  | _ ->
  failwith "Not_a_topson_bare:Elementary_fence_units_actual_length_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Elementary_fence_units_actual_length_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Elementary_fence_units_actual_length_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Elementary_fence_units_actual_length_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Elementary_fence_units_actual_length_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Elementary_fence_units_actual_length_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Elementary_fence_units_actual_length subtype" nam s)
      "it does not exists"
      "Check file Elementary_fence_units_actual_length_symbol_v.ml"
    in
    failwith "Not_a_elementary_fence_units_actual_length_symbol:Elementary_fence_units_actual_length_symbol_v.ml:make"
;;


(** Elementary_fence_units_actual_length_symbol_v at 11:52:25 on 9 May 2016. created by version v2.4 of generator *)



