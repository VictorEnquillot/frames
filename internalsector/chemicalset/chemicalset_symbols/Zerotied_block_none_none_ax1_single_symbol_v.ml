(** {3 Zerotied_block_none_none_ax1_single_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SCHE:Zerotied_block_none_none_ax1_single_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Zerotied_block_none_none_ax1_single_symbol_t.Z_fh_z -> "z_fh_z"
  | Zerotied_block_none_none_ax1_single_symbol_t.Z_h2_z -> "z_h2_z"
  | Zerotied_block_none_none_ax1_single_symbol_t.Z_sh_z -> "z_sh_z"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Zerotied_block_none_none_ax1_single_symbol_t.Z_fh_z -> ""
  | Zerotied_block_none_none_ax1_single_symbol_t.Z_h2_z -> ""
  | Zerotied_block_none_none_ax1_single_symbol_t.Z_sh_z -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_0as =
  Format.sprintf "Zerotied_block_none_none_ax1_single_symbol_t.%s" (String.capitalize (name sym_0as))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_0as =
  Format.sprintf "%s \"%s\"" (longname sym_0as) (string_off sym_0as)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_z_fh_z = function
  | Zerotied_block_none_none_ax1_single_symbol_t.Z_fh_z -> true
  | _ -> false
;;

let is_z_h2_z = function
  | Zerotied_block_none_none_ax1_single_symbol_t.Z_h2_z -> true
  | _ -> false
;;

let is_z_sh_z = function
  | Zerotied_block_none_none_ax1_single_symbol_t.Z_sh_z -> true
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

let z_fh_z = Zerotied_block_none_none_ax1_single_symbol_t.Z_fh_z;;

let z_h2_z = Zerotied_block_none_none_ax1_single_symbol_t.Z_h2_z;;

let z_sh_z = Zerotied_block_none_none_ax1_single_symbol_t.Z_sh_z;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "z_fh_z" -> z_fh_z
  | "z_h2_z" -> z_h2_z
  | "z_sh_z" -> z_sh_z
  | _ ->
  failwith "Not_a_topson_bare:Zerotied_block_none_none_ax1_single_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Zerotied_block_none_none_ax1_single_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Zerotied_block_none_none_ax1_single_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Zerotied_block_none_none_ax1_single_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Zerotied_block_none_none_ax1_single_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Zerotied_block_none_none_ax1_single_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Zerotied_block_none_none_ax1_single subtype" nam s)
      "it does not exists"
      "Check file Zerotied_block_none_none_ax1_single_symbol_v.ml"
    in
    failwith "Not_a_zerotied_block_none_none_ax1_single_symbol:Zerotied_block_none_none_ax1_single_symbol_v.ml:make"
;;


(** Zerotied_block_none_none_ax1_single_symbol_v at 12:15:55 on 23 Jun 2013. created by version v2.2 of generator *)



