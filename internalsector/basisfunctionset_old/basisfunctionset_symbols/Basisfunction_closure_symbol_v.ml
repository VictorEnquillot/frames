(** {3 Basisfunction_closure_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Basisfunction_closure_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Basisfunction_closure_symbol_t.Basisfunction_closure_centered_symbol sym_bcc ->
    Basisfunction_closure_centered_symbol_v.name sym_bcc
  | Basisfunction_closure_symbol_t.Basisfunction_closure_periodic_symbol sym_bcp ->
    Basisfunction_closure_periodic_symbol_v.name sym_bcp
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Basisfunction_closure_symbol_t.Basisfunction_closure_centered_symbol sym_bcc ->
  Basisfunction_closure_centered_symbol_v.string_off sym_bcc
  | Basisfunction_closure_symbol_t.Basisfunction_closure_periodic_symbol sym_bcp ->
  Basisfunction_closure_periodic_symbol_v.string_off sym_bcp
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_bcl =
  Format.sprintf "Basisfunction_closure_symbol_t.%s" (String.capitalize (name sym_bcl))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_bcl =
  Format.sprintf "%s \"%s\"" (longname sym_bcl) (string_off sym_bcl)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let basisfunction_closure_centered_symbol_off_basisfunction_closure_symbol = function
  | Basisfunction_closure_symbol_t.Basisfunction_closure_centered_symbol sym_bcc -> sym_bcc
  | sym_bcl -> Error_messages_v.print_fatal_error
      nam_cod "basisfunction_closure_centered_symbol_off_basisfunction_closure_symbol"
      "Basisfunction_closure_centered_symbol"
      (name sym_bcl) "check"
;;

let basisfunction_closure_periodic_symbol_off_basisfunction_closure_symbol = function
  | Basisfunction_closure_symbol_t.Basisfunction_closure_periodic_symbol sym_bcp -> sym_bcp
  | sym_bcl -> Error_messages_v.print_fatal_error
      nam_cod "basisfunction_closure_periodic_symbol_off_basisfunction_closure_symbol"
      "Basisfunction_closure_periodic_symbol"
      (name sym_bcl) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_basisfunction_closure_centered_symbol_off_basisfunction_closure_symbol = function
  | Basisfunction_closure_symbol_t.Basisfunction_closure_centered_symbol _ -> true
  | _ -> false
;;

let is_basisfunction_closure_periodic_symbol_off_basisfunction_closure_symbol = function
  | Basisfunction_closure_symbol_t.Basisfunction_closure_periodic_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_basisfunction_centered_m_indexed sym_bcl =
  if not (is_basisfunction_closure_centered_symbol_off_basisfunction_closure_symbol sym_bcl)
  then false
  else
    begin
      let sym_bcc = basisfunction_closure_centered_symbol_off_basisfunction_closure_symbol sym_bcl in
      Basisfunction_closure_centered_symbol_v.is_basisfunction_centered_m_indexed sym_bcc
    end
;;

let is_basisfunction_periodic sym_bcl =
  if not (is_basisfunction_closure_periodic_symbol_off_basisfunction_closure_symbol sym_bcl)
  then false
  else
    begin
      let sym_bcp = basisfunction_closure_periodic_symbol_off_basisfunction_closure_symbol sym_bcl in
      Basisfunction_closure_periodic_symbol_v.is_basisfunction_periodic sym_bcp
    end
;;

let is_basisfunction_planewave sym_bcl =
  if not (is_basisfunction_closure_periodic_symbol_off_basisfunction_closure_symbol sym_bcl)
  then false
  else
    begin
      let sym_bcp = basisfunction_closure_periodic_symbol_off_basisfunction_closure_symbol sym_bcl in
      Basisfunction_closure_periodic_symbol_v.is_basisfunction_planewave sym_bcp
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let basisfunction_closure_symbol_of_basisfunction_closure_centered_symbol sym_bcc = 
  Basisfunction_closure_symbol_t.Basisfunction_closure_centered_symbol sym_bcc
;;

let basisfunction_closure_symbol_of_basisfunction_closure_periodic_symbol sym_bcp = 
  Basisfunction_closure_symbol_t.Basisfunction_closure_periodic_symbol sym_bcp
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let basisfunction_centered_m_indexed s = basisfunction_closure_symbol_of_basisfunction_closure_centered_symbol (Basisfunction_closure_centered_symbol_v.basisfunction_centered_m_indexed s);;

let basisfunction_periodic s = basisfunction_closure_symbol_of_basisfunction_closure_periodic_symbol (Basisfunction_closure_periodic_symbol_v.basisfunction_periodic s);;

let basisfunction_planewave s = basisfunction_closure_symbol_of_basisfunction_closure_periodic_symbol (Basisfunction_closure_periodic_symbol_v.basisfunction_planewave s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Basisfunction_closure_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Basisfunction_closure_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try basisfunction_closure_symbol_of_basisfunction_closure_centered_symbol
      (Basisfunction_closure_centered_symbol_v.make nam s)
  with Failure "Not_a_basisfunction_closure_centered_symbol:Basisfunction_closure_centered_symbol_v.ml:make" ->
  try basisfunction_closure_symbol_of_basisfunction_closure_periodic_symbol
      (Basisfunction_closure_periodic_symbol_v.make nam s)
  with Failure "Not_a_basisfunction_closure_periodic_symbol:Basisfunction_closure_periodic_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Basisfunction_closure_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Basisfunction_closure_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Basisfunction_closure_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Basisfunction_closure_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Basisfunction_closure subtype" nam s)
      "it does not exists"
      "Check file Basisfunction_closure_symbol_v.ml"
    in
    failwith "Not_a_basisfunction_closure_symbol:Basisfunction_closure_symbol_v.ml:make"
;;


(** Basisfunction_closure_symbol_v at 19:1:10 on 25 Mar 2015. created by version v2.3 of generator *)



