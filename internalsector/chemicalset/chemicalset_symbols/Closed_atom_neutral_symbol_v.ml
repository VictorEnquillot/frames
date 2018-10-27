(** {3 Closed_atom_neutral_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SCHE:Closed_atom_neutral_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Closed_atom_neutral_symbol_t.Ar -> "ar"
  | Closed_atom_neutral_symbol_t.He -> "he"
  | Closed_atom_neutral_symbol_t.Kr -> "kr"
  | Closed_atom_neutral_symbol_t.Ne -> "ne"
  | Closed_atom_neutral_symbol_t.Xe -> "xe"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Closed_atom_neutral_symbol_t.Ar -> ""
  | Closed_atom_neutral_symbol_t.He -> ""
  | Closed_atom_neutral_symbol_t.Kr -> ""
  | Closed_atom_neutral_symbol_t.Ne -> ""
  | Closed_atom_neutral_symbol_t.Xe -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_can =
  Format.sprintf "Closed_atom_neutral_symbol_t.%s" (String.capitalize (name sym_can))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_can =
  Format.sprintf "%s \"%s\"" (longname sym_can) (string_off sym_can)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_ar = function
  | Closed_atom_neutral_symbol_t.Ar -> true
  | _ -> false
;;

let is_he = function
  | Closed_atom_neutral_symbol_t.He -> true
  | _ -> false
;;

let is_kr = function
  | Closed_atom_neutral_symbol_t.Kr -> true
  | _ -> false
;;

let is_ne = function
  | Closed_atom_neutral_symbol_t.Ne -> true
  | _ -> false
;;

let is_xe = function
  | Closed_atom_neutral_symbol_t.Xe -> true
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

let ar = Closed_atom_neutral_symbol_t.Ar;;

let he = Closed_atom_neutral_symbol_t.He;;

let kr = Closed_atom_neutral_symbol_t.Kr;;

let ne = Closed_atom_neutral_symbol_t.Ne;;

let xe = Closed_atom_neutral_symbol_t.Xe;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "ar" -> ar
  | "he" -> he
  | "kr" -> kr
  | "ne" -> ne
  | "xe" -> xe
  | _ ->
  failwith "Not_a_topson_bare:Closed_atom_neutral_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Closed_atom_neutral_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Closed_atom_neutral_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Closed_atom_neutral_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Closed_atom_neutral_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Closed_atom_neutral_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Closed_atom_neutral subtype" nam s)
      "it does not exists"
      "Check file Closed_atom_neutral_symbol_v.ml"
    in
    failwith "Not_a_closed_atom_neutral_symbol:Closed_atom_neutral_symbol_v.ml:make"
;;


(** Closed_atom_neutral_symbol_v at 12:27:30 on 24 Jun 2013. created by version v2.3 of generator *)



