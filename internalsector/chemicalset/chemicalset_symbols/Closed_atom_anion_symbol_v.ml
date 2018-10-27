(** {3 Closed_atom_anion_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SCHE:Closed_atom_anion_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Closed_atom_anion_symbol_t.Fm1 -> "fm1"
  | Closed_atom_anion_symbol_t.Hm1 -> "hm1"
  | Closed_atom_anion_symbol_t.Clm1 -> "clm1"
  | Closed_atom_anion_symbol_t.Brm1 -> "brm1"
  | Closed_atom_anion_symbol_t.Im1 -> "im1"
  | Closed_atom_anion_symbol_t.Om2 -> "om2"
  | Closed_atom_anion_symbol_t.Sm2 -> "sm2"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Closed_atom_anion_symbol_t.Fm1 -> ""
  | Closed_atom_anion_symbol_t.Hm1 -> ""
  | Closed_atom_anion_symbol_t.Clm1 -> ""
  | Closed_atom_anion_symbol_t.Brm1 -> ""
  | Closed_atom_anion_symbol_t.Im1 -> ""
  | Closed_atom_anion_symbol_t.Om2 -> ""
  | Closed_atom_anion_symbol_t.Sm2 -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_caa =
  Format.sprintf "Closed_atom_anion_symbol_t.%s" (String.capitalize (name sym_caa))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_caa =
  Format.sprintf "%s \"%s\"" (longname sym_caa) (string_off sym_caa)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_fm1 = function
  | Closed_atom_anion_symbol_t.Fm1 -> true
  | _ -> false
;;

let is_hm1 = function
  | Closed_atom_anion_symbol_t.Hm1 -> true
  | _ -> false
;;

let is_clm1 = function
  | Closed_atom_anion_symbol_t.Clm1 -> true
  | _ -> false
;;

let is_brm1 = function
  | Closed_atom_anion_symbol_t.Brm1 -> true
  | _ -> false
;;

let is_im1 = function
  | Closed_atom_anion_symbol_t.Im1 -> true
  | _ -> false
;;

let is_om2 = function
  | Closed_atom_anion_symbol_t.Om2 -> true
  | _ -> false
;;

let is_sm2 = function
  | Closed_atom_anion_symbol_t.Sm2 -> true
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

let fm1 = Closed_atom_anion_symbol_t.Fm1;;

let hm1 = Closed_atom_anion_symbol_t.Hm1;;

let clm1 = Closed_atom_anion_symbol_t.Clm1;;

let brm1 = Closed_atom_anion_symbol_t.Brm1;;

let im1 = Closed_atom_anion_symbol_t.Im1;;

let om2 = Closed_atom_anion_symbol_t.Om2;;

let sm2 = Closed_atom_anion_symbol_t.Sm2;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "fm1" -> fm1
  | "hm1" -> hm1
  | "clm1" -> clm1
  | "brm1" -> brm1
  | "im1" -> im1
  | "om2" -> om2
  | "sm2" -> sm2
  | _ ->
  failwith "Not_a_topson_bare:Closed_atom_anion_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Closed_atom_anion_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Closed_atom_anion_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Closed_atom_anion_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Closed_atom_anion_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Closed_atom_anion_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Closed_atom_anion subtype" nam s)
      "it does not exists"
      "Check file Closed_atom_anion_symbol_v.ml"
    in
    failwith "Not_a_closed_atom_anion_symbol:Closed_atom_anion_symbol_v.ml:make"
;;


(** Closed_atom_anion_symbol_v at 12:27:30 on 24 Jun 2013. created by version v2.3 of generator *)



