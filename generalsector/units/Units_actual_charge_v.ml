(** {3 Units_actual_charge_v} *)


(** {6 Documenting} *)

let documentation () = 
  [
   "Current : UNI:Units_actual_charge_v";
   "Needs :";
   "Needed-by :";
   "What-is-it :";
   "How-is-it-done :";
   "Example: ";
   "Author : François Colonna 06 décembre 2016 at 11:44:43+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name = function
  | Units_actual_charge_t.Coulomb -> "coulomb"
  | Units_actual_charge_t.Electron_charge -> "electron_charge"
;;


(** {6 Dimensioning} *)

let dimension = function
  | Units_actual_charge_t.Coulomb -> "charge"
  | Units_actual_charge_t.Electron_charge -> "charge"
;;


(** {6 Longnaming} *)

let longname eac =
  Format.sprintf "Units_actual_charge_t.%s" (String.capitalize (name eac))
;;


(** {6 Shortnaming} *)

let shortname uaa =
  Format.sprintf "%s %s" (dimension uaa) (name uaa)
;; 
(** {6 Fullnaming} *)

let fullname eac =
  Format.sprintf "%s \"%s\"" (longname eac) (dimension eac)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_coulomb = function
  | Units_actual_charge_t.Coulomb -> true
  | _ -> false
;;

let is_electron_charge = function
  | Units_actual_charge_t.Electron_charge -> true
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

let coulomb = Units_actual_charge_t.Coulomb;;

let electron_charge = Units_actual_charge_t.Electron_charge;;


(** {6 Abbreviating_topson_ofstring} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring} *)


(** {6 Making_for_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "coulomb" -> coulomb
  | "electron_charge" -> electron_charge
  | _ ->
  failwith "Not_a_topson_bare:Units_actual_charge_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Units_actual_charge_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Units_actual_charge_v.ml:make_of_topson_notleaf"
;;


(** {6 Making} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Units_actual_charge_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Units_actual_charge_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Units_actual_charge_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_mod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Units_actual_charge subtype" nam s)
      "it does not exists"
      "Check file Units_actual_charge_v.ml"
    in
    failwith "Not_a_units_actual_charge:Units_actual_charge_v.ml:make"
;;


(** Units_actual_charge_v at 11:52:25 on 9 May 2016. created by version v2.4 of generator *)



