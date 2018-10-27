(** {3 Basisfunction_body_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Basisfunction_body_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Basisfunction_body_symbol_t.Basisfunction_set_centered_symbol sym_bsc ->
    Basisfunction_set_centered_symbol_v.name sym_bsc
  | Basisfunction_body_symbol_t.Basisfunction_set_periodic_symbol sym_bsp ->
    Basisfunction_set_periodic_symbol_v.name sym_bsp
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Basisfunction_body_symbol_t.Basisfunction_set_centered_symbol sym_bsc ->
  Basisfunction_set_centered_symbol_v.string_off sym_bsc
  | Basisfunction_body_symbol_t.Basisfunction_set_periodic_symbol sym_bsp ->
  Basisfunction_set_periodic_symbol_v.string_off sym_bsp
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_bbo =
  Format.sprintf "Basisfunction_body_symbol_t.%s" (String.capitalize (name sym_bbo))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_bbo =
  Format.sprintf "%s \"%s\"" (longname sym_bbo) (string_off sym_bbo)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let basisfunction_set_centered_symbol_off_basisfunction_body_symbol = function
  | Basisfunction_body_symbol_t.Basisfunction_set_centered_symbol sym_bsc -> sym_bsc
  | sym_bbo -> Error_messages_v.print_fatal_error
      nam_cod "basisfunction_set_centered_symbol_off_basisfunction_body_symbol"
      "Basisfunction_set_centered_symbol"
      (name sym_bbo) "check"
;;

let basisfunction_set_periodic_symbol_off_basisfunction_body_symbol = function
  | Basisfunction_body_symbol_t.Basisfunction_set_periodic_symbol sym_bsp -> sym_bsp
  | sym_bbo -> Error_messages_v.print_fatal_error
      nam_cod "basisfunction_set_periodic_symbol_off_basisfunction_body_symbol"
      "Basisfunction_set_periodic_symbol"
      (name sym_bbo) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_basisfunction_set_centered_symbol_off_basisfunction_body_symbol = function
  | Basisfunction_body_symbol_t.Basisfunction_set_centered_symbol _ -> true
  | _ -> false
;;

let is_basisfunction_set_periodic_symbol_off_basisfunction_body_symbol = function
  | Basisfunction_body_symbol_t.Basisfunction_set_periodic_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_basisfunction_set_centered_full sym_bbo =
  if not (is_basisfunction_set_centered_symbol_off_basisfunction_body_symbol sym_bbo)
  then false
  else
    begin
      let sym_bsc = basisfunction_set_centered_symbol_off_basisfunction_body_symbol sym_bbo in
      Basisfunction_set_centered_symbol_v.is_basisfunction_set_centered_full sym_bsc
    end
;;

let is_basisfunction_set_centered_c_indexed sym_bbo =
  if not (is_basisfunction_set_centered_symbol_off_basisfunction_body_symbol sym_bbo)
  then false
  else
    begin
      let sym_bsc = basisfunction_set_centered_symbol_off_basisfunction_body_symbol sym_bbo in
      Basisfunction_set_centered_symbol_v.is_basisfunction_set_centered_c_indexed sym_bsc
    end
;;

let is_basisfunction_set_centered_l_indexed sym_bbo =
  if not (is_basisfunction_set_centered_symbol_off_basisfunction_body_symbol sym_bbo)
  then false
  else
    begin
      let sym_bsc = basisfunction_set_centered_symbol_off_basisfunction_body_symbol sym_bbo in
      Basisfunction_set_centered_symbol_v.is_basisfunction_set_centered_l_indexed sym_bsc
    end
;;

let is_basisfunction_set_centered_n_indexed sym_bbo =
  if not (is_basisfunction_set_centered_symbol_off_basisfunction_body_symbol sym_bbo)
  then false
  else
    begin
      let sym_bsc = basisfunction_set_centered_symbol_off_basisfunction_body_symbol sym_bbo in
      Basisfunction_set_centered_symbol_v.is_basisfunction_set_centered_n_indexed sym_bsc
    end
;;

let is_basisfunction_set_periodic_bloch sym_bbo =
  if not (is_basisfunction_set_periodic_symbol_off_basisfunction_body_symbol sym_bbo)
  then false
  else
    begin
      let sym_bsp = basisfunction_set_periodic_symbol_off_basisfunction_body_symbol sym_bbo in
      Basisfunction_set_periodic_symbol_v.is_basisfunction_set_periodic_bloch sym_bsp
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let basisfunction_body_symbol_of_basisfunction_set_centered_symbol sym_bsc = 
  Basisfunction_body_symbol_t.Basisfunction_set_centered_symbol sym_bsc
;;

let basisfunction_body_symbol_of_basisfunction_set_periodic_symbol sym_bsp = 
  Basisfunction_body_symbol_t.Basisfunction_set_periodic_symbol sym_bsp
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let basisfunction_set_centered_full = basisfunction_body_symbol_of_basisfunction_set_centered_symbol Basisfunction_set_centered_symbol_v.basisfunction_set_centered_full;;

let basisfunction_set_centered_c_indexed = basisfunction_body_symbol_of_basisfunction_set_centered_symbol Basisfunction_set_centered_symbol_v.basisfunction_set_centered_c_indexed;;

let basisfunction_set_centered_l_indexed = basisfunction_body_symbol_of_basisfunction_set_centered_symbol Basisfunction_set_centered_symbol_v.basisfunction_set_centered_l_indexed;;

let basisfunction_set_centered_n_indexed = basisfunction_body_symbol_of_basisfunction_set_centered_symbol Basisfunction_set_centered_symbol_v.basisfunction_set_centered_n_indexed;;

let basisfunction_set_periodic_bloch = basisfunction_body_symbol_of_basisfunction_set_periodic_symbol Basisfunction_set_periodic_symbol_v.basisfunction_set_periodic_bloch;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Basisfunction_body_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Basisfunction_body_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try basisfunction_body_symbol_of_basisfunction_set_centered_symbol
      (Basisfunction_set_centered_symbol_v.make nam s)
  with Failure "Not_a_basisfunction_set_centered_symbol:Basisfunction_set_centered_symbol_v.ml:make" ->
  try basisfunction_body_symbol_of_basisfunction_set_periodic_symbol
      (Basisfunction_set_periodic_symbol_v.make nam s)
  with Failure "Not_a_basisfunction_set_periodic_symbol:Basisfunction_set_periodic_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Basisfunction_body_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Basisfunction_body_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Basisfunction_body_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Basisfunction_body_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Basisfunction_body subtype" nam s)
      "it does not exists"
      "Check file Basisfunction_body_symbol_v.ml"
    in
    failwith "Not_a_basisfunction_body_symbol:Basisfunction_body_symbol_v.ml:make"
;;


(** Basisfunction_body_symbol_v at 19:1:10 on 25 Mar 2015. created by version v2.3 of generator *)



