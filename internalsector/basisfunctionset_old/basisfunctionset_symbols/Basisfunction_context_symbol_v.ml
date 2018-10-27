(** {3 Basisfunction_context_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Basisfunction_context_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Basisfunction_context_symbol_t.Basisfunction_createdby_symbol sym_bcr ->
    Basisfunction_createdby_symbol_v.name sym_bcr
  | Basisfunction_context_symbol_t.Basisfunction_domain_symbol sym_bdo ->
    Basisfunction_domain_symbol_v.name sym_bdo
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Basisfunction_context_symbol_t.Basisfunction_createdby_symbol sym_bcr ->
  Basisfunction_createdby_symbol_v.string_off sym_bcr
  | Basisfunction_context_symbol_t.Basisfunction_domain_symbol sym_bdo ->
  Basisfunction_domain_symbol_v.string_off sym_bdo
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_bco =
  Format.sprintf "Basisfunction_context_symbol_t.%s" (String.capitalize (name sym_bco))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_bco =
  Format.sprintf "%s \"%s\"" (longname sym_bco) (string_off sym_bco)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let basisfunction_createdby_symbol_off_basisfunction_context_symbol = function
  | Basisfunction_context_symbol_t.Basisfunction_createdby_symbol sym_bcr -> sym_bcr
  | sym_bco -> Error_messages_v.print_fatal_error
      nam_cod "basisfunction_createdby_symbol_off_basisfunction_context_symbol"
      "Basisfunction_createdby_symbol"
      (name sym_bco) "check"
;;

let basisfunction_domain_symbol_off_basisfunction_context_symbol = function
  | Basisfunction_context_symbol_t.Basisfunction_domain_symbol sym_bdo -> sym_bdo
  | sym_bco -> Error_messages_v.print_fatal_error
      nam_cod "basisfunction_domain_symbol_off_basisfunction_context_symbol"
      "Basisfunction_domain_symbol"
      (name sym_bco) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_basisfunction_createdby_symbol_off_basisfunction_context_symbol = function
  | Basisfunction_context_symbol_t.Basisfunction_createdby_symbol _ -> true
  | _ -> false
;;

let is_basisfunction_domain_symbol_off_basisfunction_context_symbol = function
  | Basisfunction_context_symbol_t.Basisfunction_domain_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_basisfunction_database sym_bco =
  if not (is_basisfunction_createdby_symbol_off_basisfunction_context_symbol sym_bco)
  then false
  else
    begin
      let sym_bcr = basisfunction_createdby_symbol_off_basisfunction_context_symbol sym_bco in
      Basisfunction_createdby_symbol_v.is_basisfunction_database sym_bcr
    end
;;

let is_basisfunction_input_file sym_bco =
  if not (is_basisfunction_createdby_symbol_off_basisfunction_context_symbol sym_bco)
  then false
  else
    begin
      let sym_bcr = basisfunction_createdby_symbol_off_basisfunction_context_symbol sym_bco in
      Basisfunction_createdby_symbol_v.is_basisfunction_input_file sym_bcr
    end
;;

let is_basisfunction_domain_constructor sym_bco =
  if not (is_basisfunction_domain_symbol_off_basisfunction_context_symbol sym_bco)
  then false
  else
    begin
      let sym_bdo = basisfunction_domain_symbol_off_basisfunction_context_symbol sym_bco in
      Basisfunction_domain_symbol_v.is_basisfunction_domain_constructor sym_bdo
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let basisfunction_context_symbol_of_basisfunction_createdby_symbol sym_bcr = 
  Basisfunction_context_symbol_t.Basisfunction_createdby_symbol sym_bcr
;;

let basisfunction_context_symbol_of_basisfunction_domain_symbol sym_bdo = 
  Basisfunction_context_symbol_t.Basisfunction_domain_symbol sym_bdo
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let basisfunction_database s = basisfunction_context_symbol_of_basisfunction_createdby_symbol (Basisfunction_createdby_symbol_v.basisfunction_database s);;

let basisfunction_input_file s = basisfunction_context_symbol_of_basisfunction_createdby_symbol (Basisfunction_createdby_symbol_v.basisfunction_input_file s);;

let basisfunction_domain_constructor s = basisfunction_context_symbol_of_basisfunction_domain_symbol (Basisfunction_domain_symbol_v.basisfunction_domain_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Basisfunction_context_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Basisfunction_context_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try basisfunction_context_symbol_of_basisfunction_createdby_symbol
      (Basisfunction_createdby_symbol_v.make nam s)
  with Failure "Not_a_basisfunction_createdby_symbol:Basisfunction_createdby_symbol_v.ml:make" ->
  try basisfunction_context_symbol_of_basisfunction_domain_symbol
      (Basisfunction_domain_symbol_v.make nam s)
  with Failure "Not_a_basisfunction_domain_symbol:Basisfunction_domain_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Basisfunction_context_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Basisfunction_context_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Basisfunction_context_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Basisfunction_context_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Basisfunction_context subtype" nam s)
      "it does not exists"
      "Check file Basisfunction_context_symbol_v.ml"
    in
    failwith "Not_a_basisfunction_context_symbol:Basisfunction_context_symbol_v.ml:make"
;;


(** Basisfunction_context_symbol_v at 19:1:10 on 25 Mar 2015. created by version v2.3 of generator *)



