(** {3 Closed_segment_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SCHE:Closed_segment_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Closed_segment_symbol_t.Closed_segment_anion_symbol sym_csa ->
    Closed_segment_anion_symbol_v.name sym_csa
  | Closed_segment_symbol_t.Closed_segment_cation_symbol sym_csc ->
    Closed_segment_cation_symbol_v.name sym_csc
  | Closed_segment_symbol_t.Closed_segment_neutral_symbol sym_csn ->
    Closed_segment_neutral_symbol_v.name sym_csn
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Closed_segment_symbol_t.Closed_segment_anion_symbol sym_csa ->
  Closed_segment_anion_symbol_v.string_off sym_csa
  | Closed_segment_symbol_t.Closed_segment_cation_symbol sym_csc ->
  Closed_segment_cation_symbol_v.string_off sym_csc
  | Closed_segment_symbol_t.Closed_segment_neutral_symbol sym_csn ->
  Closed_segment_neutral_symbol_v.string_off sym_csn
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_cse =
  Format.sprintf "Closed_segment_symbol_t.%s" (String.capitalize (name sym_cse))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_cse =
  Format.sprintf "%s \"%s\"" (longname sym_cse) (string_off sym_cse)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let closed_segment_anion_symbol_off_closed_segment_symbol = function
  | Closed_segment_symbol_t.Closed_segment_anion_symbol sym_csa -> sym_csa
  | sym_cse -> Error_messages_v.print_fatal_error
      nam_cod "closed_segment_anion_symbol_off_closed_segment_symbol"
      "Closed_segment_anion_symbol"
      (name sym_cse) "check"
;;

let closed_segment_cation_symbol_off_closed_segment_symbol = function
  | Closed_segment_symbol_t.Closed_segment_cation_symbol sym_csc -> sym_csc
  | sym_cse -> Error_messages_v.print_fatal_error
      nam_cod "closed_segment_cation_symbol_off_closed_segment_symbol"
      "Closed_segment_cation_symbol"
      (name sym_cse) "check"
;;

let closed_segment_neutral_symbol_off_closed_segment_symbol = function
  | Closed_segment_symbol_t.Closed_segment_neutral_symbol sym_csn -> sym_csn
  | sym_cse -> Error_messages_v.print_fatal_error
      nam_cod "closed_segment_neutral_symbol_off_closed_segment_symbol"
      "Closed_segment_neutral_symbol"
      (name sym_cse) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_closed_segment_anion_symbol_off_closed_segment_symbol = function
  | Closed_segment_symbol_t.Closed_segment_anion_symbol _ -> true
  | _ -> false
;;

let is_closed_segment_cation_symbol_off_closed_segment_symbol = function
  | Closed_segment_symbol_t.Closed_segment_cation_symbol _ -> true
  | _ -> false
;;

let is_closed_segment_neutral_symbol_off_closed_segment_symbol = function
  | Closed_segment_symbol_t.Closed_segment_neutral_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_closed_segment_anion_constructor sym_cse =
  if not (is_closed_segment_anion_symbol_off_closed_segment_symbol sym_cse)
  then false
  else
    begin
      let sym_csa = closed_segment_anion_symbol_off_closed_segment_symbol sym_cse in
      Closed_segment_anion_symbol_v.is_closed_segment_anion_constructor sym_csa
    end
;;

let is_closed_segment_cation_constructor sym_cse =
  if not (is_closed_segment_cation_symbol_off_closed_segment_symbol sym_cse)
  then false
  else
    begin
      let sym_csc = closed_segment_cation_symbol_off_closed_segment_symbol sym_cse in
      Closed_segment_cation_symbol_v.is_closed_segment_cation_constructor sym_csc
    end
;;

let is_closed_segment_neutral_constructor sym_cse =
  if not (is_closed_segment_neutral_symbol_off_closed_segment_symbol sym_cse)
  then false
  else
    begin
      let sym_csn = closed_segment_neutral_symbol_off_closed_segment_symbol sym_cse in
      Closed_segment_neutral_symbol_v.is_closed_segment_neutral_constructor sym_csn
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let closed_segment_symbol_of_closed_segment_anion_symbol sym_csa = 
  Closed_segment_symbol_t.Closed_segment_anion_symbol sym_csa
;;

let closed_segment_symbol_of_closed_segment_cation_symbol sym_csc = 
  Closed_segment_symbol_t.Closed_segment_cation_symbol sym_csc
;;

let closed_segment_symbol_of_closed_segment_neutral_symbol sym_csn = 
  Closed_segment_symbol_t.Closed_segment_neutral_symbol sym_csn
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let closed_segment_anion_constructor s = closed_segment_symbol_of_closed_segment_anion_symbol (Closed_segment_anion_symbol_v.closed_segment_anion_constructor s);;

let closed_segment_cation_constructor s = closed_segment_symbol_of_closed_segment_cation_symbol (Closed_segment_cation_symbol_v.closed_segment_cation_constructor s);;

let closed_segment_neutral_constructor s = closed_segment_symbol_of_closed_segment_neutral_symbol (Closed_segment_neutral_symbol_v.closed_segment_neutral_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Closed_segment_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Closed_segment_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try closed_segment_symbol_of_closed_segment_anion_symbol
      (Closed_segment_anion_symbol_v.make nam s)
  with Failure "Not_a_closed_segment_anion_symbol:Closed_segment_anion_symbol_v.ml:make" ->
  try closed_segment_symbol_of_closed_segment_cation_symbol
      (Closed_segment_cation_symbol_v.make nam s)
  with Failure "Not_a_closed_segment_cation_symbol:Closed_segment_cation_symbol_v.ml:make" ->
  try closed_segment_symbol_of_closed_segment_neutral_symbol
      (Closed_segment_neutral_symbol_v.make nam s)
  with Failure "Not_a_closed_segment_neutral_symbol:Closed_segment_neutral_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Closed_segment_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Closed_segment_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Closed_segment_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Closed_segment_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Closed_segment subtype" nam s)
      "it does not exists"
      "Check file Closed_segment_symbol_v.ml"
    in
    failwith "Not_a_closed_segment_symbol:Closed_segment_symbol_v.ml:make"
;;


(** Closed_segment_symbol_v at 12:27:31 on 24 Jun 2013. created by version v2.3 of generator *)



