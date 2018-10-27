(** {3 Units_actual_mass_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : UNI:Units_actual_mass_v";
   "Needed-by :";
   "What-is-it :";
   "How-is-it-done :";
   "Example: ";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name = function
  | Units_actual_mass_t.Electron_mass -> "electron_mass"
  | Units_actual_mass_t.Atomic_mass_unit -> "atomic_mass_unit"
  | Units_actual_mass_t.Kilogram -> "kilogram"
;;

(** {6 Shortnaming} *)

let shortname = function
  | Units_actual_mass_t.Electron_mass -> "em"
  | Units_actual_mass_t.Atomic_mass_unit -> "amu"
  | Units_actual_mass_t.Kilogram -> "kg"
;; 

(** {6 Dimensioning} *)

let dimension uam = "mass";;

(** {6 Longnaming} *)

let longname eam =
  Format.sprintf "Units_actual_mass_t.%s" (String.capitalize (name eam))
;;

(** {6 Fullnaming} *)

let fullname eam =
  Format.sprintf "%s \"%s\"" (longname eam) (dimension eam)
;;


(** {6 Extracting_topson_notleaf} *)


(** {6 Extracting_grandson_notleaf} *)


(** {6 Querying_topson_bare} *)

let is_electron_mass = function
  | Units_actual_mass_t.Electron_mass -> true
  | _ -> false
;;

let is_atomic_mass_unit = function
  | Units_actual_mass_t.Atomic_mass_unit -> true
  | _ -> false
;;

let is_kilogram = function
  | Units_actual_mass_t.Kilogram -> true
  | _ -> false
;;


(** {6 Querying_topson_ofstring} *)


(** {6 Querying_topson_notleaf} *)


(** {6 Querying_grandson_bare} *)


(** {6 Querying_grandson_ofstring} *)


(** {6 Querying_grandson_notleaf} *)


(** {6 Upgrading_topson_notleaf} *)


(** {6 Upgrading_grandson_notleaf} *)


(** {6 Abbreviating_topson_bare} *)

let electron_mass = Units_actual_mass_t.Electron_mass;;

let atomic_mass_unit = Units_actual_mass_t.Atomic_mass_unit;;

let kilogram = Units_actual_mass_t.Kilogram;;


(** {6 Abbreviating_topson_ofstring} *)


(** {6 Abbreviating_grandson_bare} *)


(** {6 Abbreviating_grandson_ofstring} *)


(** {6 Making_for_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "electron_mass" -> electron_mass
  | "atomic_mass_unit" -> atomic_mass_unit
  | "kilogram" -> kilogram
  | _ ->
  failwith "Not_a_topson_bare:Units_actual_mass_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Units_actual_mass_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Units_actual_mass_v.ml:make_of_topson_notleaf"
;;


(** {6 Making} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Units_actual_mass_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Units_actual_mass_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Units_actual_mass_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_mod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Units_actual_mass subtype" nam s)
      "it does not exists"
      "Check file Units_actual_mass_v.ml"
    in
    failwith "Not_a_units_actual_mass:Units_actual_mass_v.ml:make"
;;


(** Units_actual_mass_v at 11:52:25 on 9 May 2016. created by version v2.4 of generator *)



