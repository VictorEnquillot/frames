(** {3 Coordinate_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : HAR:Coordinate_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Coordinate_symbol_t.Coordinate_current_symbol sym_cca ->
    Coordinate_current_symbol_v.name sym_cca
  | Coordinate_symbol_t.Coordinate_step_zero_symbol sym_ccy ->
    Coordinate_step_zero_symbol_v.name sym_ccy
  | Coordinate_symbol_t.Coordinate_step_minusone_symbol sym_cpo ->
    Coordinate_step_minusone_symbol_v.name sym_cpo
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Coordinate_symbol_t.Coordinate_current_symbol sym_cca ->
  Coordinate_current_symbol_v.string_off sym_cca
  | Coordinate_symbol_t.Coordinate_step_zero_symbol sym_ccy ->
  Coordinate_step_zero_symbol_v.string_off sym_ccy
  | Coordinate_symbol_t.Coordinate_step_minusone_symbol sym_cpo ->
  Coordinate_step_minusone_symbol_v.string_off sym_cpo
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_coo =
  Format.sprintf "Coordinate_symbol_t.%s" (String.capitalize (name sym_coo))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_coo =
  Format.sprintf "%s \"%s\"" (longname sym_coo) (string_off sym_coo)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let coordinate_current_symbol_off_coordinate_symbol = function
  | Coordinate_symbol_t.Coordinate_current_symbol sym_cca -> sym_cca
  | sym_coo -> Error_messages_v.print_fatal_error
      nam_cod "coordinate_current_symbol_off_coordinate_symbol"
      "Coordinate_current_symbol"
      (name sym_coo) "check"
;;

let coordinate_previous_symbol_off_coordinate_symbol = function
  | Coordinate_symbol_t.Coordinate_step_zero_symbol sym_ccy -> sym_ccy
  | sym_coo -> Error_messages_v.print_fatal_error
      nam_cod "coordinate_previous_symbol_off_coordinate_symbol"
      "Coordinate_step_zero_symbol"
      (name sym_coo) "check"
;;

let coordinate_step_minusone_symbol_off_coordinate_symbol = function
  | Coordinate_symbol_t.Coordinate_step_minusone_symbol sym_cpo -> sym_cpo
  | sym_coo -> Error_messages_v.print_fatal_error
      nam_cod "coordinate_step_minusone_symbol_off_coordinate_symbol"
      "Coordinate_step_minusone_symbol"
      (name sym_coo) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_coordinate_current_symbol_off_coordinate_symbol = function
  | Coordinate_symbol_t.Coordinate_current_symbol _ -> true
  | _ -> false
;;

let is_coordinate_previous_symbol_off_coordinate_symbol = function
  | Coordinate_symbol_t.Coordinate_step_zero_symbol _ -> true
  | _ -> false
;;

let is_coordinate_step_minusone_symbol_off_coordinate_symbol = function
  | Coordinate_symbol_t.Coordinate_step_minusone_symbol _ -> true
  | _ -> false
;;

(** {6 Querying_grandson_bare_for_symbol} *)

let is_previous_x sym_coo =
  if not (is_coordinate_previous_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
      let sym_ccy = coordinate_previous_symbol_off_coordinate_symbol sym_coo in
      Coordinate_step_zero_symbol_v.is_previous_x sym_ccy
    end
;;

let is_anteprevious_x sym_coo =
  if not (is_coordinate_step_minusone_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
      let sym_cpo = coordinate_step_minusone_symbol_off_coordinate_symbol sym_coo in
      Coordinate_step_minusone_symbol_v.is_anteprevious_x sym_cpo
    end
;;

let is_current_x sym_coo =
  if not (is_coordinate_current_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
      let sym_csp = coordinate_current_symbol_off_coordinate_symbol sym_coo in
      Coordinate_current_symbol_v.is_current_x sym_csp
    end
;;

(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let coordinate_symbol_of_coordinate_current_symbol sym_cca = 
  Coordinate_symbol_t.Coordinate_current_symbol sym_cca
;;

let coordinate_symbol_of_coordinate_previous_symbol sym_ccy = 
  Coordinate_symbol_t.Coordinate_step_zero_symbol sym_ccy
;;

let coordinate_symbol_of_coordinate_step_minusone_symbol sym_cpo = 
  Coordinate_symbol_t.Coordinate_step_minusone_symbol sym_cpo
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let previous_x = coordinate_symbol_of_coordinate_previous_symbol Coordinate_step_zero_symbol_v.previous_x;;

let anteprevious_x = coordinate_symbol_of_coordinate_step_minusone_symbol Coordinate_step_minusone_symbol_v.anteprevious_x;;

let current_x = coordinate_symbol_of_coordinate_current_symbol Coordinate_current_symbol_v.current_x;;

(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Coordinate_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Coordinate_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try coordinate_symbol_of_coordinate_current_symbol
      (Coordinate_current_symbol_v.make nam s)
  with Failure "Not_a_coordinate_current_symbol:Coordinate_current_symbol_v.ml:make" ->
  try coordinate_symbol_of_coordinate_previous_symbol
      (Coordinate_step_zero_symbol_v.make nam s)
  with Failure "Not_a_coordinate_previous_symbol:Coordinate_step_zero_symbol_v.ml:make" ->
  try coordinate_symbol_of_coordinate_step_minusone_symbol
      (Coordinate_step_minusone_symbol_v.make nam s)
  with Failure "Not_a_coordinate_step_minusone_symbol:Coordinate_step_minusone_symbol_v.ml:make" ->
    failwith "Not_a_topson_notleaf:Coordinate_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Coordinate_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Coordinate_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Coordinate_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Coordinate subtype" nam s)
      "it does not exists"
      "Check file Coordinate_symbol_v.ml"
    in
    failwith "Not_a_coordinate_symbol:Coordinate_symbol_v.ml:make"
;;


(** Coordinate_symbol_v at 15:6:59 on 18 Jul 2013. created by version v2.3 of generator *)



