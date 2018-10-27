(** {3 Camlline_for_tag_uno_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_for_tag_uno_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_for_tag_uno_symbol_t.Camlline_for_tag_uno_camltype_symbol sym_tuc ->
    Camlline_for_tag_uno_camltype_symbol_v.name sym_tuc
  | Camlline_for_tag_uno_symbol_t.Camlline_for_tag_uno_top_symbol sym_tut ->
    Camlline_for_tag_uno_top_symbol_v.name sym_tut
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_for_tag_uno_symbol_t.Camlline_for_tag_uno_camltype_symbol sym_tuc ->
  Camlline_for_tag_uno_camltype_symbol_v.string_off sym_tuc
  | Camlline_for_tag_uno_symbol_t.Camlline_for_tag_uno_top_symbol sym_tut ->
  Camlline_for_tag_uno_top_symbol_v.string_off sym_tut
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ftu =
  Format.sprintf "Camlline_for_tag_uno_symbol_t.%s" (String.capitalize (name sym_ftu))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ftu =
  Format.sprintf "%s \"%s\"" (longname sym_ftu) (string_off sym_ftu)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let camlline_for_tag_uno_camltype_symbol_off_camlline_for_tag_uno_symbol = function
  | Camlline_for_tag_uno_symbol_t.Camlline_for_tag_uno_camltype_symbol sym_tuc -> sym_tuc
  | sym_ftu -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_tag_uno_camltype_symbol_off_camlline_for_tag_uno_symbol"
      "Camlline_for_tag_uno_camltype_symbol"
      (name sym_ftu) "check"
;;

let camlline_for_tag_uno_top_symbol_off_camlline_for_tag_uno_symbol = function
  | Camlline_for_tag_uno_symbol_t.Camlline_for_tag_uno_top_symbol sym_tut -> sym_tut
  | sym_ftu -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_tag_uno_top_symbol_off_camlline_for_tag_uno_symbol"
      "Camlline_for_tag_uno_top_symbol"
      (name sym_ftu) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_camlline_for_tag_uno_camltype_symbol_off_camlline_for_tag_uno_symbol = function
  | Camlline_for_tag_uno_symbol_t.Camlline_for_tag_uno_camltype_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_tag_uno_top_symbol_off_camlline_for_tag_uno_symbol = function
  | Camlline_for_tag_uno_symbol_t.Camlline_for_tag_uno_top_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_type_et_tag_equal_et_symbol_tdot_et_symbol_tag sym_ftu =
  if not (is_camlline_for_tag_uno_camltype_symbol_off_camlline_for_tag_uno_symbol sym_ftu)
  then false
  else
    begin
      let sym_tuc = camlline_for_tag_uno_camltype_symbol_off_camlline_for_tag_uno_symbol sym_ftu in
      Camlline_for_tag_uno_camltype_symbol_v.is_type_et_tag_equal_et_symbol_tdot_et_symbol_tag sym_tuc
    end
;;

let is_let_make_soi_at_nam_at_s_equal sym_ftu =
  if not (is_camlline_for_tag_uno_top_symbol_off_camlline_for_tag_uno_symbol sym_ftu)
  then false
  else
    begin
      let sym_tut = camlline_for_tag_uno_top_symbol_off_camlline_for_tag_uno_symbol sym_ftu in
      Camlline_for_tag_uno_top_symbol_v.is_let_make_soi_at_nam_at_s_equal sym_tut
    end
;;

let is_let_make_sym_at_soi_at_equal sym_ftu =
  if not (is_camlline_for_tag_uno_top_symbol_off_camlline_for_tag_uno_symbol sym_ftu)
  then false
  else
    begin
      let sym_tut = camlline_for_tag_uno_top_symbol_off_camlline_for_tag_uno_symbol sym_ftu in
      Camlline_for_tag_uno_top_symbol_v.is_let_make_sym_at_soi_at_equal sym_tut
    end
;;

let is_let_name_tag_at_equal sym_ftu =
  if not (is_camlline_for_tag_uno_top_symbol_off_camlline_for_tag_uno_symbol sym_ftu)
  then false
  else
    begin
      let sym_tut = camlline_for_tag_uno_top_symbol_off_camlline_for_tag_uno_symbol sym_ftu in
      Camlline_for_tag_uno_top_symbol_v.is_let_name_tag_at_equal sym_tut
    end
;;

let is_tag_vdot_make_sym_at_soi_at sym_ftu =
  if not (is_camlline_for_tag_uno_top_symbol_off_camlline_for_tag_uno_symbol sym_ftu)
  then false
  else
    begin
      let sym_tut = camlline_for_tag_uno_top_symbol_off_camlline_for_tag_uno_symbol sym_ftu in
      Camlline_for_tag_uno_top_symbol_v.is_tag_vdot_make_sym_at_soi_at sym_tut
    end
;;

let is_tag_vdot_name_et_symbol_vdot_name_tag_at sym_ftu =
  if not (is_camlline_for_tag_uno_top_symbol_off_camlline_for_tag_uno_symbol sym_ftu)
  then false
  else
    begin
      let sym_tut = camlline_for_tag_uno_top_symbol_off_camlline_for_tag_uno_symbol sym_ftu in
      Camlline_for_tag_uno_top_symbol_v.is_tag_vdot_name_et_symbol_vdot_name_tag_at sym_tut
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let camlline_for_tag_uno_symbol_of_camlline_for_tag_uno_camltype_symbol sym_tuc = 
  Camlline_for_tag_uno_symbol_t.Camlline_for_tag_uno_camltype_symbol sym_tuc
;;

let camlline_for_tag_uno_symbol_of_camlline_for_tag_uno_top_symbol sym_tut = 
  Camlline_for_tag_uno_symbol_t.Camlline_for_tag_uno_top_symbol sym_tut
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let type_et_tag_equal_et_symbol_tdot_et_symbol_tag = camlline_for_tag_uno_symbol_of_camlline_for_tag_uno_camltype_symbol Camlline_for_tag_uno_camltype_symbol_v.type_et_tag_equal_et_symbol_tdot_et_symbol_tag;;

let let_make_soi_at_nam_at_s_equal = camlline_for_tag_uno_symbol_of_camlline_for_tag_uno_top_symbol Camlline_for_tag_uno_top_symbol_v.let_make_soi_at_nam_at_s_equal;;

let let_make_sym_at_soi_at_equal = camlline_for_tag_uno_symbol_of_camlline_for_tag_uno_top_symbol Camlline_for_tag_uno_top_symbol_v.let_make_sym_at_soi_at_equal;;

let let_name_tag_at_equal = camlline_for_tag_uno_symbol_of_camlline_for_tag_uno_top_symbol Camlline_for_tag_uno_top_symbol_v.let_name_tag_at_equal;;

let tag_vdot_make_sym_at_soi_at = camlline_for_tag_uno_symbol_of_camlline_for_tag_uno_top_symbol Camlline_for_tag_uno_top_symbol_v.tag_vdot_make_sym_at_soi_at;;

let tag_vdot_name_et_symbol_vdot_name_tag_at = camlline_for_tag_uno_symbol_of_camlline_for_tag_uno_top_symbol Camlline_for_tag_uno_top_symbol_v.tag_vdot_name_et_symbol_vdot_name_tag_at;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Camlline_for_tag_uno_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_for_tag_uno_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try camlline_for_tag_uno_symbol_of_camlline_for_tag_uno_camltype_symbol
      (Camlline_for_tag_uno_camltype_symbol_v.make nam s)
  with Failure "Not_Camlline_for_tag_uno_camltype_symbol:Camlline_for_tag_uno_camltype_symbol_v:make" ->
  try camlline_for_tag_uno_symbol_of_camlline_for_tag_uno_top_symbol
      (Camlline_for_tag_uno_top_symbol_v.make nam s)
  with Failure "Not_Camlline_for_tag_uno_top_symbol:Camlline_for_tag_uno_top_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Camlline_for_tag_uno_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlline_for_tag_uno_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlline_for_tag_uno_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlline_for_tag_uno_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlline_for_tag_uno subtype" nam s)
      "it does not exists"
      "Check file camlline_for_tag_uno_symbol_v.ml"
    in
    failwith "Not_a_valid_camlline_for_tag_uno_symbol:Camlline_for_tag_uno_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator camlline_for_tag_uno implementation_for_symbol symbol at 9:15 6 May 2013. *)



