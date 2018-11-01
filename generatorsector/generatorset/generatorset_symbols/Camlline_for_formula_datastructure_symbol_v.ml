(** {3 Camlline_for_formula_datastructure_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_for_formula_datastructure_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_for_formula_datastructure_symbol_t.Camlline_for_formula_datastructure_uno_symbol sym_fdu ->
    Camlline_for_formula_datastructure_uno_symbol_v.name sym_fdu
  | Camlline_for_formula_datastructure_symbol_t.Camlline_for_formula_datastructure_duo_symbol sym_fdd ->
    Camlline_for_formula_datastructure_duo_symbol_v.name sym_fdd
  | Camlline_for_formula_datastructure_symbol_t.Camlline_for_formula_datastructure_trio_symbol sym_fdt ->
    Camlline_for_formula_datastructure_trio_symbol_v.name sym_fdt
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_for_formula_datastructure_symbol_t.Camlline_for_formula_datastructure_uno_symbol sym_fdu ->
  Camlline_for_formula_datastructure_uno_symbol_v.string_off sym_fdu
  | Camlline_for_formula_datastructure_symbol_t.Camlline_for_formula_datastructure_duo_symbol sym_fdd ->
  Camlline_for_formula_datastructure_duo_symbol_v.string_off sym_fdd
  | Camlline_for_formula_datastructure_symbol_t.Camlline_for_formula_datastructure_trio_symbol sym_fdt ->
  Camlline_for_formula_datastructure_trio_symbol_v.string_off sym_fdt
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ffd =
  Format.sprintf "Camlline_for_formula_datastructure_symbol_t.%s" (String.capitalize_ascii (name sym_ffd))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ffd =
  Format.sprintf "%s \"%s\"" (longname sym_ffd) (string_off sym_ffd)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let camlline_for_formula_datastructure_uno_symbol_off_camlline_for_formula_datastructure_symbol = function
  | Camlline_for_formula_datastructure_symbol_t.Camlline_for_formula_datastructure_uno_symbol sym_fdu -> sym_fdu
  | sym_ffd -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_formula_datastructure_uno_symbol_off_camlline_for_formula_datastructure_symbol"
      "Camlline_for_formula_datastructure_uno_symbol"
      (name sym_ffd) "check"
;;

let camlline_for_formula_datastructure_duo_symbol_off_camlline_for_formula_datastructure_symbol = function
  | Camlline_for_formula_datastructure_symbol_t.Camlline_for_formula_datastructure_duo_symbol sym_fdd -> sym_fdd
  | sym_ffd -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_formula_datastructure_duo_symbol_off_camlline_for_formula_datastructure_symbol"
      "Camlline_for_formula_datastructure_duo_symbol"
      (name sym_ffd) "check"
;;

let camlline_for_formula_datastructure_trio_symbol_off_camlline_for_formula_datastructure_symbol = function
  | Camlline_for_formula_datastructure_symbol_t.Camlline_for_formula_datastructure_trio_symbol sym_fdt -> sym_fdt
  | sym_ffd -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_formula_datastructure_trio_symbol_off_camlline_for_formula_datastructure_symbol"
      "Camlline_for_formula_datastructure_trio_symbol"
      (name sym_ffd) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_camlline_for_formula_datastructure_uno_symbol_off_camlline_for_formula_datastructure_symbol = function
  | Camlline_for_formula_datastructure_symbol_t.Camlline_for_formula_datastructure_uno_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_formula_datastructure_duo_symbol_off_camlline_for_formula_datastructure_symbol = function
  | Camlline_for_formula_datastructure_symbol_t.Camlline_for_formula_datastructure_duo_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_formula_datastructure_trio_symbol_off_camlline_for_formula_datastructure_symbol = function
  | Camlline_for_formula_datastructure_symbol_t.Camlline_for_formula_datastructure_trio_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_das_vdot_name_nam_a_for_at sym_ffd =
  if not (is_camlline_for_formula_datastructure_uno_symbol_off_camlline_for_formula_datastructure_symbol sym_ffd)
  then false
  else
    begin
      let sym_fdu = camlline_for_formula_datastructure_uno_symbol_off_camlline_for_formula_datastructure_symbol sym_ffd in
      Camlline_for_formula_datastructure_uno_symbol_v.is_das_vdot_name_nam_a_for_at sym_fdu
    end
;;

let is_das_vdot_name_nam_a_nam_b_for_at sym_ffd =
  if not (is_camlline_for_formula_datastructure_duo_symbol_off_camlline_for_formula_datastructure_symbol sym_ffd)
  then false
  else
    begin
      let sym_fdd = camlline_for_formula_datastructure_duo_symbol_off_camlline_for_formula_datastructure_symbol sym_ffd in
      Camlline_for_formula_datastructure_duo_symbol_v.is_das_vdot_name_nam_a_nam_b_for_at sym_fdd
    end
;;

let is_das_vdot_name_nam_a_nam_b_nam_c_for_at sym_ffd =
  if not (is_camlline_for_formula_datastructure_trio_symbol_off_camlline_for_formula_datastructure_symbol sym_ffd)
  then false
  else
    begin
      let sym_fdt = camlline_for_formula_datastructure_trio_symbol_off_camlline_for_formula_datastructure_symbol sym_ffd in
      Camlline_for_formula_datastructure_trio_symbol_v.is_das_vdot_name_nam_a_nam_b_nam_c_for_at sym_fdt
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let camlline_for_formula_datastructure_symbol_of_camlline_for_formula_datastructure_uno_symbol sym_fdu = 
  Camlline_for_formula_datastructure_symbol_t.Camlline_for_formula_datastructure_uno_symbol sym_fdu
;;

let camlline_for_formula_datastructure_symbol_of_camlline_for_formula_datastructure_duo_symbol sym_fdd = 
  Camlline_for_formula_datastructure_symbol_t.Camlline_for_formula_datastructure_duo_symbol sym_fdd
;;

let camlline_for_formula_datastructure_symbol_of_camlline_for_formula_datastructure_trio_symbol sym_fdt = 
  Camlline_for_formula_datastructure_symbol_t.Camlline_for_formula_datastructure_trio_symbol sym_fdt
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let das_vdot_name_nam_a_for_at = camlline_for_formula_datastructure_symbol_of_camlline_for_formula_datastructure_uno_symbol Camlline_for_formula_datastructure_uno_symbol_v.das_vdot_name_nam_a_for_at;;

let das_vdot_name_nam_a_nam_b_for_at = camlline_for_formula_datastructure_symbol_of_camlline_for_formula_datastructure_duo_symbol Camlline_for_formula_datastructure_duo_symbol_v.das_vdot_name_nam_a_nam_b_for_at;;

let das_vdot_name_nam_a_nam_b_nam_c_for_at = camlline_for_formula_datastructure_symbol_of_camlline_for_formula_datastructure_trio_symbol Camlline_for_formula_datastructure_trio_symbol_v.das_vdot_name_nam_a_nam_b_nam_c_for_at;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Camlline_for_formula_datastructure_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_for_formula_datastructure_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try camlline_for_formula_datastructure_symbol_of_camlline_for_formula_datastructure_uno_symbol
      (Camlline_for_formula_datastructure_uno_symbol_v.make nam s)
  with Failure "Not_Camlline_for_formula_datastructure_uno_symbol:Camlline_for_formula_datastructure_uno_symbol_v:make" ->
  try camlline_for_formula_datastructure_symbol_of_camlline_for_formula_datastructure_duo_symbol
      (Camlline_for_formula_datastructure_duo_symbol_v.make nam s)
  with Failure "Not_Camlline_for_formula_datastructure_duo_symbol:Camlline_for_formula_datastructure_duo_symbol_v:make" ->
  try camlline_for_formula_datastructure_symbol_of_camlline_for_formula_datastructure_trio_symbol
      (Camlline_for_formula_datastructure_trio_symbol_v.make nam s)
  with Failure "Not_Camlline_for_formula_datastructure_trio_symbol:Camlline_for_formula_datastructure_trio_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Camlline_for_formula_datastructure_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlline_for_formula_datastructure_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlline_for_formula_datastructure_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlline_for_formula_datastructure_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlline_for_formula_datastructure subtype" nam s)
      "it does not exists"
      "Check file camlline_for_formula_datastructure_symbol_v.ml"
    in
    failwith "Not_a_valid_camlline_for_formula_datastructure_symbol:Camlline_for_formula_datastructure_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator camlline_for_formula_datastructure implementation_for_symbol symbol at 9:15 6 May 2013. *)



