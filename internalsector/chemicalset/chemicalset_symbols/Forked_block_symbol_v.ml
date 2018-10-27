(** {3 Forked_block_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SCHE:Forked_block_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Forked_block_symbol_t.S_c_sd -> "s_c_sd"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Forked_block_symbol_t.S_c_sd -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_fbl =
  Format.sprintf "Forked_block_symbol_t.%s" (String.capitalize (name sym_fbl))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_fbl =
  Format.sprintf "%s \"%s\"" (longname sym_fbl) (string_off sym_fbl)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_s_c_sd = function
  | Forked_block_symbol_t.S_c_sd -> true
;;


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)

let s_c_sd = Forked_block_symbol_t.S_c_sd;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "s_c_sd" -> s_c_sd
  | _ ->
  failwith "Not_a_topson_bare:Forked_block_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Forked_block_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Forked_block_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Forked_block_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Forked_block_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Forked_block_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Forked_block subtype" nam s)
      "it does not exists"
      "Check file Forked_block_symbol_v.ml"
    in
    failwith "Not_a_forked_block_symbol:Forked_block_symbol_v.ml:make"
;;


(** Forked_block_symbol_v at 15:38:37 on 24 Jun 2013. created by version v2.3 of generator *)



