(** {3 Wavefunction_body_spatial_manye_determinant_bare_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Wavefunction_body_spatial_manye_determinant_bare_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Wavefunction_body_spatial_manye_determinant_bare_symbol_t.Wavefunction_body_spatial_manye_determinant_bare_cc _ -> "wavefunction_body_spatial_manye_determinant_bare_cc"
  | Wavefunction_body_spatial_manye_determinant_bare_symbol_t.Wavefunction_body_spatial_manye_determinant_bare_ci _ -> "wavefunction_body_spatial_manye_determinant_bare_ci"
  | Wavefunction_body_spatial_manye_determinant_bare_symbol_t.Wavefunction_body_spatial_manye_determinant_bare_hf _ -> "wavefunction_body_spatial_manye_determinant_bare_hf"
  | Wavefunction_body_spatial_manye_determinant_bare_symbol_t.Wavefunction_body_spatial_manye_determinant_bare_mcscf _ -> "wavefunction_body_spatial_manye_determinant_bare_mcscf"
  | Wavefunction_body_spatial_manye_determinant_bare_symbol_t.Wavefunction_body_spatial_manye_determinant_bare_rhf _ -> "wavefunction_body_spatial_manye_determinant_bare_rhf"
  | Wavefunction_body_spatial_manye_determinant_bare_symbol_t.Wavefunction_body_spatial_manye_determinant_bare_uhf _ -> "wavefunction_body_spatial_manye_determinant_bare_uhf"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Wavefunction_body_spatial_manye_determinant_bare_symbol_t.Wavefunction_body_spatial_manye_determinant_bare_cc s -> s
  | Wavefunction_body_spatial_manye_determinant_bare_symbol_t.Wavefunction_body_spatial_manye_determinant_bare_ci s -> s
  | Wavefunction_body_spatial_manye_determinant_bare_symbol_t.Wavefunction_body_spatial_manye_determinant_bare_hf s -> s
  | Wavefunction_body_spatial_manye_determinant_bare_symbol_t.Wavefunction_body_spatial_manye_determinant_bare_mcscf s -> s
  | Wavefunction_body_spatial_manye_determinant_bare_symbol_t.Wavefunction_body_spatial_manye_determinant_bare_rhf s -> s
  | Wavefunction_body_spatial_manye_determinant_bare_symbol_t.Wavefunction_body_spatial_manye_determinant_bare_uhf s -> s
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_wdb =
  Format.sprintf "Wavefunction_body_spatial_manye_determinant_bare_symbol_t.%s" (String.capitalize (name sym_wdb))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_wdb =
  Format.sprintf "%s \"%s\"" (longname sym_wdb) (string_off sym_wdb)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)

let is_wavefunction_body_spatial_manye_determinant_bare_cc = function
  | Wavefunction_body_spatial_manye_determinant_bare_symbol_t.Wavefunction_body_spatial_manye_determinant_bare_cc _ -> true
  | _ -> false
;;

let is_wavefunction_body_spatial_manye_determinant_bare_ci = function
  | Wavefunction_body_spatial_manye_determinant_bare_symbol_t.Wavefunction_body_spatial_manye_determinant_bare_ci _ -> true
  | _ -> false
;;

let is_wavefunction_body_spatial_manye_determinant_bare_hf = function
  | Wavefunction_body_spatial_manye_determinant_bare_symbol_t.Wavefunction_body_spatial_manye_determinant_bare_hf _ -> true
  | _ -> false
;;

let is_wavefunction_body_spatial_manye_determinant_bare_mcscf = function
  | Wavefunction_body_spatial_manye_determinant_bare_symbol_t.Wavefunction_body_spatial_manye_determinant_bare_mcscf _ -> true
  | _ -> false
;;

let is_wavefunction_body_spatial_manye_determinant_bare_rhf = function
  | Wavefunction_body_spatial_manye_determinant_bare_symbol_t.Wavefunction_body_spatial_manye_determinant_bare_rhf _ -> true
  | _ -> false
;;

let is_wavefunction_body_spatial_manye_determinant_bare_uhf = function
  | Wavefunction_body_spatial_manye_determinant_bare_symbol_t.Wavefunction_body_spatial_manye_determinant_bare_uhf _ -> true
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

let wavefunction_body_spatial_manye_determinant_bare_cc s = Wavefunction_body_spatial_manye_determinant_bare_symbol_t.Wavefunction_body_spatial_manye_determinant_bare_cc s;;

let wavefunction_body_spatial_manye_determinant_bare_ci s = Wavefunction_body_spatial_manye_determinant_bare_symbol_t.Wavefunction_body_spatial_manye_determinant_bare_ci s;;

let wavefunction_body_spatial_manye_determinant_bare_hf s = Wavefunction_body_spatial_manye_determinant_bare_symbol_t.Wavefunction_body_spatial_manye_determinant_bare_hf s;;

let wavefunction_body_spatial_manye_determinant_bare_mcscf s = Wavefunction_body_spatial_manye_determinant_bare_symbol_t.Wavefunction_body_spatial_manye_determinant_bare_mcscf s;;

let wavefunction_body_spatial_manye_determinant_bare_rhf s = Wavefunction_body_spatial_manye_determinant_bare_symbol_t.Wavefunction_body_spatial_manye_determinant_bare_rhf s;;

let wavefunction_body_spatial_manye_determinant_bare_uhf s = Wavefunction_body_spatial_manye_determinant_bare_symbol_t.Wavefunction_body_spatial_manye_determinant_bare_uhf s;;


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Wavefunction_body_spatial_manye_determinant_bare_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "wavefunction_body_spatial_manye_determinant_bare_cc" -> wavefunction_body_spatial_manye_determinant_bare_cc s
  | "wavefunction_body_spatial_manye_determinant_bare_ci" -> wavefunction_body_spatial_manye_determinant_bare_ci s
  | "wavefunction_body_spatial_manye_determinant_bare_hf" -> wavefunction_body_spatial_manye_determinant_bare_hf s
  | "wavefunction_body_spatial_manye_determinant_bare_mcscf" -> wavefunction_body_spatial_manye_determinant_bare_mcscf s
  | "wavefunction_body_spatial_manye_determinant_bare_rhf" -> wavefunction_body_spatial_manye_determinant_bare_rhf s
  | "wavefunction_body_spatial_manye_determinant_bare_uhf" -> wavefunction_body_spatial_manye_determinant_bare_uhf s
  | _ ->
  failwith "Not_a_topson_ofstring:Wavefunction_body_spatial_manye_determinant_bare_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Wavefunction_body_spatial_manye_determinant_bare_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Wavefunction_body_spatial_manye_determinant_bare_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Wavefunction_body_spatial_manye_determinant_bare_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Wavefunction_body_spatial_manye_determinant_bare_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Wavefunction_body_spatial_manye_determinant_bare subtype" nam s)
      "it does not exists"
      "Check file Wavefunction_body_spatial_manye_determinant_bare_symbol_v.ml"
    in
    failwith "Not_a_wavefunction_body_spatial_manye_determinant_bare_symbol:Wavefunction_body_spatial_manye_determinant_bare_symbol_v.ml:make"
;;


(** Wavefunction_body_spatial_manye_determinant_bare_symbol_v at 11:11:33 on 27 Mar 2015. created by version v2.3 of generator *)



