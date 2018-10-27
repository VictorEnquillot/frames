(** {3 Nwchemdata_lexer_variable_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
  [
   "Current : LEXNWC:Nwchemdata_lexer_variable_symbol_v";
   "Needed-by: ";
   "What-is-it: ";
   "How-is-it-done: ";
   "Example: ";
   "Author : François Colonna 31 août 2016 at 14:52:09+02:00";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_basis_name_atomic_orbital _ -> "nwchemdata_lexer_variable_basis_name_atomic_orbital"
  | Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_basis_name_spin_orbit _ -> "nwchemdata_lexer_variable_basis_name_spin_orbit"
  | Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_databox_name _ -> "nwchemdata_lexer_variable_databox_name"
  | Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_ecpset_name _ -> "nwchemdata_lexer_variable_ecpset_name"
  | Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space _ -> "nwchemdata_lexer_variable_many_space"
  | Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_shell_name _ -> "nwchemdata_lexer_variable_shell_name"
  | Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_spaced_end_of_line _ -> "nwchemdata_lexer_variable_spaced_end_of_line"
  | Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_version _ -> "nwchemdata_lexer_variable_version"
;;

(** {6 String_offing_for_symbol} *)

let string_off = function
  | Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_basis_name_atomic_orbital s -> s
  | Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_basis_name_spin_orbit s -> s
  | Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_databox_name s -> s
  | Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_ecpset_name s -> s
  | Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space s -> s
  | Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_shell_name s -> s
  | Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_spaced_end_of_line s -> s
  | Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_version s -> s
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_dlv =
  Format.sprintf "Nwchemdata_lexer_variable_symbol_t.%s" (String.capitalize (name sym_dlv))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_dlv =
  Format.sprintf "%s \"%s\"" (longname sym_dlv) (string_off sym_dlv)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)

let is_nwchemdata_lexer_variable_basis_name_atomic_orbital = function
  | Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_basis_name_atomic_orbital _ -> true
  | _ -> false
;;

let is_nwchemdata_lexer_variable_basis_name_spin_orbit = function
  | Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_basis_name_spin_orbit _ -> true
  | _ -> false
;;

let is_nwchemdata_lexer_variable_databox_name = function
  | Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_databox_name _ -> true
  | _ -> false
;;

let is_nwchemdata_lexer_variable_ecpset_name = function
  | Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_ecpset_name _ -> true
  | _ -> false
;;

let is_nwchemdata_lexer_variable_many_space = function
  | Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space _ -> true
  | _ -> false
;;

let is_nwchemdata_lexer_variable_shell_name = function
  | Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_shell_name _ -> true
  | _ -> false
;;

let is_nwchemdata_lexer_variable_spaced_end_of_line = function
  | Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_spaced_end_of_line _ -> true
  | _ -> false
;;

let is_nwchemdata_lexer_variable_version = function
  | Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_version _ -> true
  | _ -> false
;;


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)

let nwchemdata_lexer_variable_basis_name_atomic_orbital s = Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_basis_name_atomic_orbital s;;

let nwchemdata_lexer_variable_basis_name_spin_orbit s = Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_basis_name_spin_orbit s;;

let nwchemdata_lexer_variable_databox_name s = Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_databox_name s;;

let nwchemdata_lexer_variable_ecpset_name s = Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_ecpset_name s;;

let nwchemdata_lexer_variable_many_space s = Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_many_space s;;

let nwchemdata_lexer_variable_shell_name s = Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_shell_name s;;

let nwchemdata_lexer_variable_spaced_end_of_line s = Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_spaced_end_of_line s;;

let nwchemdata_lexer_variable_version s = Nwchemdata_lexer_variable_symbol_t.Nwchemdata_lexer_variable_version s;;


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Nwchemdata_lexer_variable_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "nwchemdata_lexer_variable_basis_name_atomic_orbital" -> nwchemdata_lexer_variable_basis_name_atomic_orbital s
  | "nwchemdata_lexer_variable_basis_name_spin_orbit" -> nwchemdata_lexer_variable_basis_name_spin_orbit s
  | "nwchemdata_lexer_variable_databox_name" -> nwchemdata_lexer_variable_databox_name s
  | "nwchemdata_lexer_variable_ecpset_name" -> nwchemdata_lexer_variable_ecpset_name s
  | "nwchemdata_lexer_variable_many_space" -> nwchemdata_lexer_variable_many_space s
  | "nwchemdata_lexer_variable_shell_name" -> nwchemdata_lexer_variable_shell_name s
  | "nwchemdata_lexer_variable_spaced_end_of_line" -> nwchemdata_lexer_variable_spaced_end_of_line s
  | "nwchemdata_lexer_variable_version" -> nwchemdata_lexer_variable_version s
  | _ ->
  failwith "Not_a_topson_ofstring:Nwchemdata_lexer_variable_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Nwchemdata_lexer_variable_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Nwchemdata_lexer_variable_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Nwchemdata_lexer_variable_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Nwchemdata_lexer_variable_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Nwchemdata_lexer_variable subtype" nam s)
      "it does not exists"
      "Check file Nwchemdata_lexer_variable_symbol_v.ml"
    in
    failwith "Not_a_nwchemdata_lexer_variable_symbol:Nwchemdata_lexer_variable_symbol_v.ml:make"
;;


(** Nwchemdata_lexer_variable_symbol_v at 17:56:3 on 23 Apr 2015. created by version v2.4 of generator *)



