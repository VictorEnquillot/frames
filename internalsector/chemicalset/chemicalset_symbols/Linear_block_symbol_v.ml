(** {3 Linear_block_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SCHE:Linear_block_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Linear_block_symbol_t.S_ch2_s -> "s_ch2_s"
  | Linear_block_symbol_t.S_ch2_d -> "s_ch2_d"
  | Linear_block_symbol_t.S_ch2_t -> "s_ch2_t"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Linear_block_symbol_t.S_ch2_s -> ""
  | Linear_block_symbol_t.S_ch2_d -> ""
  | Linear_block_symbol_t.S_ch2_t -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_lbl =
  Format.sprintf "Linear_block_symbol_t.%s" (String.capitalize (name sym_lbl))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_lbl =
  Format.sprintf "%s \"%s\"" (longname sym_lbl) (string_off sym_lbl)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_s_ch2_s = function
  | Linear_block_symbol_t.S_ch2_s -> true
  | _ -> false
;;

let is_s_ch2_d = function
  | Linear_block_symbol_t.S_ch2_d -> true
  | _ -> false
;;

let is_s_ch2_t = function
  | Linear_block_symbol_t.S_ch2_t -> true
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

let s_ch2_s = Linear_block_symbol_t.S_ch2_s;;

let s_ch2_d = Linear_block_symbol_t.S_ch2_d;;

let s_ch2_t = Linear_block_symbol_t.S_ch2_t;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "s_ch2_s" -> s_ch2_s
  | "s_ch2_d" -> s_ch2_d
  | "s_ch2_t" -> s_ch2_t
  | _ ->
  failwith "Not_a_topson_bare:Linear_block_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Linear_block_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Linear_block_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Linear_block_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Linear_block_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Linear_block_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Linear_block subtype" nam s)
      "it does not exists"
      "Check file Linear_block_symbol_v.ml"
    in
    failwith "Not_a_linear_block_symbol:Linear_block_symbol_v.ml:make"
;;


(** Linear_block_symbol_v at 15:38:37 on 24 Jun 2013. created by version v2.3 of generator *)



