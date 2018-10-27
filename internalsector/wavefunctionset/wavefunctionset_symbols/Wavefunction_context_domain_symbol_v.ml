(** {3 Wavefunction_context_domain_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Wavefunction_context_domain_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Wavefunction_context_domain_symbol_t.Wavefunction_context_domain_constructor _ -> "wavefunction_context_domain_constructor"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Wavefunction_context_domain_symbol_t.Wavefunction_context_domain_constructor s -> s
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_wcd =
  Format.sprintf "Wavefunction_context_domain_symbol_t.%s" (String.capitalize (name sym_wcd))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_wcd =
  Format.sprintf "%s \"%s\"" (longname sym_wcd) (string_off sym_wcd)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)

let is_wavefunction_context_domain_constructor = function
  | Wavefunction_context_domain_symbol_t.Wavefunction_context_domain_constructor _ -> true
;;


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)

let wavefunction_context_domain_constructor s = Wavefunction_context_domain_symbol_t.Wavefunction_context_domain_constructor s;;


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Wavefunction_context_domain_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "wavefunction_context_domain_constructor" -> wavefunction_context_domain_constructor s
  | _ ->
  failwith "Not_a_topson_ofstring:Wavefunction_context_domain_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Wavefunction_context_domain_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Wavefunction_context_domain_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Wavefunction_context_domain_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Wavefunction_context_domain_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Wavefunction_context_domain subtype" nam s)
      "it does not exists"
      "Check file Wavefunction_context_domain_symbol_v.ml"
    in
    failwith "Not_a_wavefunction_context_domain_symbol:Wavefunction_context_domain_symbol_v.ml:make"
;;


(** Wavefunction_context_domain_symbol_v at 11:11:35 on 27 Mar 2015. created by version v2.3 of generator *)



