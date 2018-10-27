(** {3 Units_actual_energy_v} *)


(** {6 Documenting} *)

let documentation () = 
[
  "Needs :";
  "Current : UNI:Units_actual_energy_v";
  "Needed-by :";
  "What-is-it :";
  "How-is-it-done :";
  "Example: ";
]
;;

let nam_mod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name = function
  | Units_actual_energy_t.Hartree -> "hartree"
  | Units_actual_energy_t.Calorie -> "calorie"
  | Units_actual_energy_t.Electron_volt -> "electron_volt"
  | Units_actual_energy_t.Joule -> "joule"
  | Units_actual_energy_t.Kilocalorie -> "kilocalorie"
  | Units_actual_energy_t.Kilojoule -> "kilojoule"
;;


(** {6 Dimensioning} *)

let dimension = function
  | Units_actual_energy_t.Hartree -> "energy"
  | Units_actual_energy_t.Calorie -> "energy"
  | Units_actual_energy_t.Electron_volt -> "energy"
  | Units_actual_energy_t.Joule -> "energy"
  | Units_actual_energy_t.Kilocalorie -> "energy"
  | Units_actual_energy_t.Kilojoule -> "energy"
;;

let shortname = function
  | Units_actual_energy_t.Hartree -> "h"
  | Units_actual_energy_t.Calorie -> "ca"
  | Units_actual_energy_t.Electron_volt -> "ev"
  | Units_actual_energy_t.Joule -> "j"
  | Units_actual_energy_t.Kilocalorie -> "kcal"
  | Units_actual_energy_t.Kilojoule -> "kj"
;;


(** {6 Longnaming} *)

let longname eae =
  Format.sprintf "Units_actual_energy_t.%s" (String.capitalize (name eae))
;;


(** {6 Fullnaming} *)

let fullname eae =
  Format.sprintf "%s \"%s\"" (longname eae) (dimension eae)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_hartree = function
  | Units_actual_energy_t.Hartree -> true
  | _ -> false
;;

let is_calorie = function
  | Units_actual_energy_t.Calorie -> true
  | _ -> false
;;

let is_electron_volt = function
  | Units_actual_energy_t.Electron_volt -> true
  | _ -> false
;;

let is_joule = function
  | Units_actual_energy_t.Joule -> true
  | _ -> false
;;

let is_kilocalorie = function
  | Units_actual_energy_t.Kilocalorie -> true
  | _ -> false
;;

let is_kilojoule = function
  | Units_actual_energy_t.Kilojoule -> true
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

let hartree = Units_actual_energy_t.Hartree;;

let calorie = Units_actual_energy_t.Calorie;;

let electron_volt = Units_actual_energy_t.Electron_volt;;

let joule = Units_actual_energy_t.Joule;;

let kilocalorie = Units_actual_energy_t.Kilocalorie;;

let kilojoule = Units_actual_energy_t.Kilojoule;;


(** {6 Abbreviating_topson_ofstring} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring} *)


(** {6 Making_for_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "hartree" -> hartree
  | "calorie" -> calorie
  | "electron_volt" -> electron_volt
  | "joule" -> joule
  | "kilocalorie" -> kilocalorie
  | "kilojoule" -> kilojoule
  | _ ->
  failwith "Not_a_topson_bare:Units_actual_energy_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Units_actual_energy_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Units_actual_energy_v.ml:make_of_topson_notleaf"
;;


(** {6 Making} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Units_actual_energy_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Units_actual_energy_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Units_actual_energy_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_mod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Units_actual_energy subtype" nam s)
      "it does not exists"
      "Check file Units_actual_energy_v.ml"
    in
    failwith "Not_a_units_actual_energy:Units_actual_energy_v.ml:make"
;;


(** Units_actual_energy_v at 11:52:25 on 9 May 2016. created by version v2.4 of generator *)



