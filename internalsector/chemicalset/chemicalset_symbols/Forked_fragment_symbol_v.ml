(** {3 Forked_fragment_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SCHE:Forked_fragment_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Forked_fragment_symbol_t.S_co_c_nh_s_ch_ss -> "s_co_c_nh_s_ch_ss"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Forked_fragment_symbol_t.S_co_c_nh_s_ch_ss -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ffr =
  Format.sprintf "Forked_fragment_symbol_t.%s" (String.capitalize (name sym_ffr))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ffr =
  Format.sprintf "%s \"%s\"" (longname sym_ffr) (string_off sym_ffr)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_s_co_c_nh_s_ch_ss = function
  | Forked_fragment_symbol_t.S_co_c_nh_s_ch_ss -> true
;;


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)

let s_co_c_nh_s_ch_ss = Forked_fragment_symbol_t.S_co_c_nh_s_ch_ss;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "s_co_c_nh_s_ch_ss" -> s_co_c_nh_s_ch_ss
  | _ ->
  failwith "Not_a_topson_bare:Forked_fragment_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Forked_fragment_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Forked_fragment_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Forked_fragment_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Forked_fragment_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Forked_fragment_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Forked_fragment subtype" nam s)
      "it does not exists"
      "Check file Forked_fragment_symbol_v.ml"
    in
    failwith "Not_a_forked_fragment_symbol:Forked_fragment_symbol_v.ml:make"
;;


(** Forked_fragment_symbol_v at 15:38:37 on 24 Jun 2013. created by version v2.3 of generator *)



