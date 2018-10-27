(** {3 Closed_atom_cation_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SCHE:Closed_atom_cation_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Closed_atom_cation_symbol_t.Hp1 -> "hp1"
  | Closed_atom_cation_symbol_t.Kp1 -> "kp1"
  | Closed_atom_cation_symbol_t.Lip1 -> "lip1"
  | Closed_atom_cation_symbol_t.Nap1 -> "nap1"
  | Closed_atom_cation_symbol_t.Nip1 -> "nip1"
  | Closed_atom_cation_symbol_t.Cup1 -> "cup1"
  | Closed_atom_cation_symbol_t.Mgp2 -> "mgp2"
  | Closed_atom_cation_symbol_t.Cap2 -> "cap2"
  | Closed_atom_cation_symbol_t.Fep2 -> "fep2"
  | Closed_atom_cation_symbol_t.Znp2 -> "znp2"
  | Closed_atom_cation_symbol_t.Cup2 -> "cup2"
  | Closed_atom_cation_symbol_t.Fep3 -> "fep3"
  | Closed_atom_cation_symbol_t.Nip3 -> "nip3"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Closed_atom_cation_symbol_t.Hp1 -> ""
  | Closed_atom_cation_symbol_t.Kp1 -> ""
  | Closed_atom_cation_symbol_t.Lip1 -> ""
  | Closed_atom_cation_symbol_t.Nap1 -> ""
  | Closed_atom_cation_symbol_t.Nip1 -> ""
  | Closed_atom_cation_symbol_t.Cup1 -> ""
  | Closed_atom_cation_symbol_t.Mgp2 -> ""
  | Closed_atom_cation_symbol_t.Cap2 -> ""
  | Closed_atom_cation_symbol_t.Fep2 -> ""
  | Closed_atom_cation_symbol_t.Znp2 -> ""
  | Closed_atom_cation_symbol_t.Cup2 -> ""
  | Closed_atom_cation_symbol_t.Fep3 -> ""
  | Closed_atom_cation_symbol_t.Nip3 -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_cac =
  Format.sprintf "Closed_atom_cation_symbol_t.%s" (String.capitalize (name sym_cac))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_cac =
  Format.sprintf "%s \"%s\"" (longname sym_cac) (string_off sym_cac)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_hp1 = function
  | Closed_atom_cation_symbol_t.Hp1 -> true
  | _ -> false
;;

let is_kp1 = function
  | Closed_atom_cation_symbol_t.Kp1 -> true
  | _ -> false
;;

let is_lip1 = function
  | Closed_atom_cation_symbol_t.Lip1 -> true
  | _ -> false
;;

let is_nap1 = function
  | Closed_atom_cation_symbol_t.Nap1 -> true
  | _ -> false
;;

let is_nip1 = function
  | Closed_atom_cation_symbol_t.Nip1 -> true
  | _ -> false
;;

let is_cup1 = function
  | Closed_atom_cation_symbol_t.Cup1 -> true
  | _ -> false
;;

let is_mgp2 = function
  | Closed_atom_cation_symbol_t.Mgp2 -> true
  | _ -> false
;;

let is_cap2 = function
  | Closed_atom_cation_symbol_t.Cap2 -> true
  | _ -> false
;;

let is_fep2 = function
  | Closed_atom_cation_symbol_t.Fep2 -> true
  | _ -> false
;;

let is_znp2 = function
  | Closed_atom_cation_symbol_t.Znp2 -> true
  | _ -> false
;;

let is_cup2 = function
  | Closed_atom_cation_symbol_t.Cup2 -> true
  | _ -> false
;;

let is_fep3 = function
  | Closed_atom_cation_symbol_t.Fep3 -> true
  | _ -> false
;;

let is_nip3 = function
  | Closed_atom_cation_symbol_t.Nip3 -> true
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

let hp1 = Closed_atom_cation_symbol_t.Hp1;;

let kp1 = Closed_atom_cation_symbol_t.Kp1;;

let lip1 = Closed_atom_cation_symbol_t.Lip1;;

let nap1 = Closed_atom_cation_symbol_t.Nap1;;

let nip1 = Closed_atom_cation_symbol_t.Nip1;;

let cup1 = Closed_atom_cation_symbol_t.Cup1;;

let mgp2 = Closed_atom_cation_symbol_t.Mgp2;;

let cap2 = Closed_atom_cation_symbol_t.Cap2;;

let fep2 = Closed_atom_cation_symbol_t.Fep2;;

let znp2 = Closed_atom_cation_symbol_t.Znp2;;

let cup2 = Closed_atom_cation_symbol_t.Cup2;;

let fep3 = Closed_atom_cation_symbol_t.Fep3;;

let nip3 = Closed_atom_cation_symbol_t.Nip3;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "hp1" -> hp1
  | "kp1" -> kp1
  | "lip1" -> lip1
  | "nap1" -> nap1
  | "nip1" -> nip1
  | "cup1" -> cup1
  | "mgp2" -> mgp2
  | "cap2" -> cap2
  | "fep2" -> fep2
  | "znp2" -> znp2
  | "cup2" -> cup2
  | "fep3" -> fep3
  | "nip3" -> nip3
  | _ ->
  failwith "Not_a_topson_bare:Closed_atom_cation_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Closed_atom_cation_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Closed_atom_cation_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Closed_atom_cation_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Closed_atom_cation_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Closed_atom_cation_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Closed_atom_cation subtype" nam s)
      "it does not exists"
      "Check file Closed_atom_cation_symbol_v.ml"
    in
    failwith "Not_a_closed_atom_cation_symbol:Closed_atom_cation_symbol_v.ml:make"
;;


(** Closed_atom_cation_symbol_v at 12:27:30 on 24 Jun 2013. created by version v2.3 of generator *)



