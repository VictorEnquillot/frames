(** {3 Units_actual_length_v} *)


(** {6 Documenting} *)

let documentation () = 
  [
   "Current : UNI:Units_actual_length_v";
   "Needed-by :";
   "What-is-it :";
   "How-is-it-done :";
   "Example: ";
   "Author : François Colonna 06 décembre 2016 at 11:44:13+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name = function
  | Units_actual_length_t.Angstrom -> "angstrom"
  | Units_actual_length_t.Bohr -> "bohr"
  | Units_actual_length_t.Centimeter -> "centimeter"
  | Units_actual_length_t.Decameter -> "decameter"
  | Units_actual_length_t.Decimeter -> "decimeter"
  | Units_actual_length_t.Foot -> "foot"
  | Units_actual_length_t.Inch -> "inch"
  | Units_actual_length_t.Kilometer -> "kilometer"
  | Units_actual_length_t.Light_year -> "light_year"
  | Units_actual_length_t.Meter -> "meter"
  | Units_actual_length_t.Millimeter -> "millimeter"
  | Units_actual_length_t.Nanometer -> "nanometer"
  | Units_actual_length_t.Yard -> "yard"
;;


(** {6 Dimensioning} *)

let dimension uac = "length";;

(** {6 Dimensioning} *)

let kind uac = "actual";;

(** {6 Shortnaming} *)

let shortname = function
  | Units_actual_length_t.Angstrom -> "ang"
  | Units_actual_length_t.Bohr -> "bohr"
  | Units_actual_length_t.Centimeter -> "cm"
  | Units_actual_length_t.Decameter -> "decameter"
  | Units_actual_length_t.Decimeter -> "dm"
  | Units_actual_length_t.Foot -> "foot"
  | Units_actual_length_t.Inch -> "inch"
  | Units_actual_length_t.Kilometer -> "km"
  | Units_actual_length_t.Light_year -> "light_year"
  | Units_actual_length_t.Meter -> "m"
  | Units_actual_length_t.Millimeter -> "mm"
  | Units_actual_length_t.Nanometer -> "nm"
  | Units_actual_length_t.Yard -> "yard"
;;

(** {6 Longnaming} *)

let longname uac =
  Format.sprintf "Units_actual_length_t.%s" (String.capitalize (name uac))
;;


(** {6 Fullnaming} *)

let fullname uac =
  Format.sprintf "%s \"%s\"" (longname uac) (dimension uac)
;;

(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_angstrom = function
  | Units_actual_length_t.Angstrom -> true
  | _ -> false
;;

let is_bohr = function
  | Units_actual_length_t.Bohr -> true
  | _ -> false
;;

let is_centimeter = function
  | Units_actual_length_t.Centimeter -> true
  | _ -> false
;;

let is_decameter = function
  | Units_actual_length_t.Decameter -> true
  | _ -> false
;;

let is_decimeter = function
  | Units_actual_length_t.Decimeter -> true
  | _ -> false
;;

let is_foot = function
  | Units_actual_length_t.Foot -> true
  | _ -> false
;;

let is_inch = function
  | Units_actual_length_t.Inch -> true
  | _ -> false
;;

let is_kilometer = function
  | Units_actual_length_t.Kilometer -> true
  | _ -> false
;;

let is_light_year = function
  | Units_actual_length_t.Light_year -> true
  | _ -> false
;;

let is_meter = function
  | Units_actual_length_t.Meter -> true
  | _ -> false
;;

let is_millimeter = function
  | Units_actual_length_t.Millimeter -> true
  | _ -> false
;;

let is_nanometer = function
  | Units_actual_length_t.Nanometer -> true
  | _ -> false
;;

let is_yard = function
  | Units_actual_length_t.Yard -> true
  | _ -> false
;;


(** {6 Querying_topson_ofstring} *)


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)

let angstrom = Units_actual_length_t.Angstrom;;

let bohr = Units_actual_length_t.Bohr;;

let centimeter = Units_actual_length_t.Centimeter;;

let decameter = Units_actual_length_t.Decameter;;

let decimeter = Units_actual_length_t.Decimeter;;

let foot = Units_actual_length_t.Foot;;

let inch = Units_actual_length_t.Inch;;

let kilometer = Units_actual_length_t.Kilometer;;

let light_year = Units_actual_length_t.Light_year;;

let meter = Units_actual_length_t.Meter;;

let millimeter = Units_actual_length_t.Millimeter;;

let nanometer = Units_actual_length_t.Nanometer;;

let yard = Units_actual_length_t.Yard;;


(** {6 Abbreviating_topson_ofstring} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring} *)


(** {6 Making_for_bare} *)

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
  failwith "Not_a_topson_bare:Units_actual_length_v.ml:make_of_topson_bare"
;;

(** {6 Making_for_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Units_actual_length_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Units_actual_length_v.ml:make_of_topson_notleaf"
;;


(** {6 Making} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Units_actual_length_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Units_actual_length_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Units_actual_length_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_mod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Units_actual_length subtype" nam s)
      "it does not exists"
      "Check file Units_actual_length_v.ml"
    in
    failwith "Not_a_units_actual_length:Units_actual_length_v.ml:make"
;;


(** Units_actual_length_v at 11:52:25 on 9 May 2016. created by version v2.4 of generator *)



