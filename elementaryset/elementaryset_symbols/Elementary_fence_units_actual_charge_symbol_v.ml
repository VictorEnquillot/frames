(** {3 Elementary_fence_units_actual_charge_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Elementary_fence_units_actual_charge_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Elementary_fence_units_actual_charge_symbol_t.Coulomb -> "coulomb"
  | Elementary_fence_units_actual_charge_symbol_t.Electron_charge -> "electron_charge"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Elementary_fence_units_actual_charge_symbol_t.Coulomb -> ""
  | Elementary_fence_units_actual_charge_symbol_t.Electron_charge -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_eac =
  Format.sprintf "Elementary_fence_units_actual_charge_symbol_t.%s" (String.capitalize (name sym_eac))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_eac =
  Format.sprintf "%s \"%s\"" (longname sym_eac) (string_off sym_eac)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_coulomb = function
  | Elementary_fence_units_actual_charge_symbol_t.Coulomb -> true
  | _ -> false
;;

let is_electron_charge = function
  | Elementary_fence_units_actual_charge_symbol_t.Electron_charge -> true
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

let coulomb = Elementary_fence_units_actual_charge_symbol_t.Coulomb;;

let electron_charge = Elementary_fence_units_actual_charge_symbol_t.Electron_charge;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "coulomb" -> coulomb
  | "electron_charge" -> electron_charge
  | _ ->
  failwith "Not_a_topson_bare:Elementary_fence_units_actual_charge_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Elementary_fence_units_actual_charge_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Elementary_fence_units_actual_charge_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Elementary_fence_units_actual_charge_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Elementary_fence_units_actual_charge_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Elementary_fence_units_actual_charge_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Elementary_fence_units_actual_charge subtype" nam s)
      "it does not exists"
      "Check file Elementary_fence_units_actual_charge_symbol_v.ml"
    in
    failwith "Not_a_elementary_fence_units_actual_charge_symbol:Elementary_fence_units_actual_charge_symbol_v.ml:make"
;;


(** Elementary_fence_units_actual_charge_symbol_v at 11:52:25 on 9 May 2016. created by version v2.4 of generator *)



