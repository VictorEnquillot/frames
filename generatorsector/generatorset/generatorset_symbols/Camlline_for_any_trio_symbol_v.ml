(** {3 Camlline_for_any_trio_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_for_any_trio_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_for_any_trio_symbol_t.Camlline_for_any_trio_current_son_top_symbol sym_cst ->
    Camlline_for_any_trio_current_son_top_symbol_v.name sym_cst
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_for_any_trio_symbol_t.Camlline_for_any_trio_current_son_top_symbol sym_cst ->
  Camlline_for_any_trio_current_son_top_symbol_v.string_off sym_cst
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_fat =
  Format.sprintf "Camlline_for_any_trio_symbol_t.%s" (String.capitalize (name sym_fat))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_fat =
  Format.sprintf "%s \"%s\"" (longname sym_fat) (string_off sym_fat)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let camlline_for_any_trio_current_son_top_symbol_off_camlline_for_any_trio_symbol = function
  | Camlline_for_any_trio_symbol_t.Camlline_for_any_trio_current_son_top_symbol sym_cst -> sym_cst
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_camlline_for_any_trio_current_son_top_symbol_off_camlline_for_any_trio_symbol = function
  | Camlline_for_any_trio_symbol_t.Camlline_for_any_trio_current_son_top_symbol _ -> true
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_let_ec_equal_et_any_of_es_any_es_any_vdot_ec_any sym_fat =
  if not (is_camlline_for_any_trio_current_son_top_symbol_off_camlline_for_any_trio_symbol sym_fat)
  then false
  else
    begin
      let sym_cst = camlline_for_any_trio_current_son_top_symbol_off_camlline_for_any_trio_symbol sym_fat in
      Camlline_for_any_trio_current_son_top_symbol_v.is_let_ec_equal_et_any_of_es_any_es_any_vdot_ec_any sym_cst
    end
;;

let is_let_ec_sarg_equal_et_any_of_es_any_lpar_es_any_vdot_ec_any_sarg sym_fat =
  if not (is_camlline_for_any_trio_current_son_top_symbol_off_camlline_for_any_trio_symbol sym_fat)
  then false
  else
    begin
      let sym_cst = camlline_for_any_trio_current_son_top_symbol_off_camlline_for_any_trio_symbol sym_fat in
      Camlline_for_any_trio_current_son_top_symbol_v.is_let_ec_sarg_equal_et_any_of_es_any_lpar_es_any_vdot_ec_any_sarg sym_cst
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let camlline_for_any_trio_symbol_of_camlline_for_any_trio_current_son_top_symbol sym_cst = 
  Camlline_for_any_trio_symbol_t.Camlline_for_any_trio_current_son_top_symbol sym_cst
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let let_ec_equal_et_any_of_es_any_es_any_vdot_ec_any = camlline_for_any_trio_symbol_of_camlline_for_any_trio_current_son_top_symbol Camlline_for_any_trio_current_son_top_symbol_v.let_ec_equal_et_any_of_es_any_es_any_vdot_ec_any;;

let let_ec_sarg_equal_et_any_of_es_any_lpar_es_any_vdot_ec_any_sarg = camlline_for_any_trio_symbol_of_camlline_for_any_trio_current_son_top_symbol Camlline_for_any_trio_current_son_top_symbol_v.let_ec_sarg_equal_et_any_of_es_any_lpar_es_any_vdot_ec_any_sarg;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Camlline_for_any_trio_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_for_any_trio_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try camlline_for_any_trio_symbol_of_camlline_for_any_trio_current_son_top_symbol
      (Camlline_for_any_trio_current_son_top_symbol_v.make nam s)
  with Failure "Not_Camlline_for_any_trio_current_son_top_symbol:Camlline_for_any_trio_current_son_top_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Camlline_for_any_trio_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlline_for_any_trio_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlline_for_any_trio_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlline_for_any_trio_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlline_for_any_trio subtype" nam s)
      "it does not exists"
      "Check file camlline_for_any_trio_symbol_v.ml"
    in
    failwith "Not_a_valid_camlline_for_any_trio_symbol:Camlline_for_any_trio_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator camlline_for_any_trio implementation_for_symbol symbol at 9:15 6 May 2013. *)



