(** {3 Camlline_for_tag_datastructure_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_for_tag_datastructure_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_for_tag_datastructure_symbol_t.Camlline_for_tag_datastructure_camltype_symbol sym_tdc ->
    Camlline_for_tag_datastructure_camltype_symbol_v.name sym_tdc
  | Camlline_for_tag_datastructure_symbol_t.Camlline_for_tag_datastructure_function_symbol sym_tdf ->
    Camlline_for_tag_datastructure_function_symbol_v.name sym_tdf
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_for_tag_datastructure_symbol_t.Camlline_for_tag_datastructure_camltype_symbol sym_tdc ->
  Camlline_for_tag_datastructure_camltype_symbol_v.string_off sym_tdc
  | Camlline_for_tag_datastructure_symbol_t.Camlline_for_tag_datastructure_function_symbol sym_tdf ->
  Camlline_for_tag_datastructure_function_symbol_v.string_off sym_tdf
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ftd =
  Format.sprintf "Camlline_for_tag_datastructure_symbol_t.%s" (String.capitalize (name sym_ftd))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ftd =
  Format.sprintf "%s \"%s\"" (longname sym_ftd) (string_off sym_ftd)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let camlline_for_tag_datastructure_camltype_symbol_off_camlline_for_tag_datastructure_symbol = function
  | Camlline_for_tag_datastructure_symbol_t.Camlline_for_tag_datastructure_camltype_symbol sym_tdc -> sym_tdc
  | sym_ftd -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_tag_datastructure_camltype_symbol_off_camlline_for_tag_datastructure_symbol"
      "Camlline_for_tag_datastructure_camltype_symbol"
      (name sym_ftd) "check"
;;

let camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol = function
  | Camlline_for_tag_datastructure_symbol_t.Camlline_for_tag_datastructure_function_symbol sym_tdf -> sym_tdf
  | sym_ftd -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol"
      "Camlline_for_tag_datastructure_function_symbol"
      (name sym_ftd) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let camlline_for_tag_datastructure_camltype_uno_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd = 
  let sym_tdc = camlline_for_tag_datastructure_camltype_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd in
    Camlline_for_tag_datastructure_camltype_symbol_v.camlline_for_tag_datastructure_camltype_uno_symbol_off_camlline_for_tag_datastructure_camltype_symbol sym_tdc
;;

let camlline_for_tag_datastructure_camltype_duo_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd = 
  let sym_tdc = camlline_for_tag_datastructure_camltype_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd in
    Camlline_for_tag_datastructure_camltype_symbol_v.camlline_for_tag_datastructure_camltype_duo_symbol_off_camlline_for_tag_datastructure_camltype_symbol sym_tdc
;;

let camlline_for_tag_datastructure_function_iter_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd = 
  let sym_tdf = camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd in
    Camlline_for_tag_datastructure_function_symbol_v.camlline_for_tag_datastructure_function_iter_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf
;;

let camlline_for_tag_datastructure_function_make_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd = 
  let sym_tdf = camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd in
    Camlline_for_tag_datastructure_function_symbol_v.camlline_for_tag_datastructure_function_make_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf
;;

let camlline_for_tag_datastructure_function_make_uno_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd = 
  let sym_tdf = camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd in
    Camlline_for_tag_datastructure_function_symbol_v.camlline_for_tag_datastructure_function_make_uno_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf
;;

let camlline_for_tag_datastructure_function_make_duo_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd = 
  let sym_tdf = camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd in
    Camlline_for_tag_datastructure_function_symbol_v.camlline_for_tag_datastructure_function_make_duo_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf
;;

let camlline_for_tag_datastructure_function_make_trio_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd = 
  let sym_tdf = camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd in
    Camlline_for_tag_datastructure_function_symbol_v.camlline_for_tag_datastructure_function_make_trio_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_camlline_for_tag_datastructure_camltype_symbol_off_camlline_for_tag_datastructure_symbol = function
  | Camlline_for_tag_datastructure_symbol_t.Camlline_for_tag_datastructure_camltype_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol = function
  | Camlline_for_tag_datastructure_symbol_t.Camlline_for_tag_datastructure_function_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_lpar_a_tag_rpar sym_ftd =
  if not (is_camlline_for_tag_datastructure_camltype_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd)
  then false
  else
    begin
      let sym_tdc = camlline_for_tag_datastructure_camltype_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd in
      Camlline_for_tag_datastructure_camltype_symbol_v.is_lpar_a_tag_rpar sym_tdc
    end
;;

let is_lpar_a_b_tag_rpar sym_ftd =
  if not (is_camlline_for_tag_datastructure_camltype_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd)
  then false
  else
    begin
      let sym_tdc = camlline_for_tag_datastructure_camltype_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd in
      Camlline_for_tag_datastructure_camltype_symbol_v.is_lpar_a_b_tag_rpar sym_tdc
    end
;;

let is_let_map_equal_das_vdot_map sym_ftd =
  if not (is_camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd)
  then false
  else
    begin
      let sym_tdf = camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd in
      Camlline_for_tag_datastructure_function_symbol_v.is_let_map_equal_das_vdot_map sym_tdf
    end
;;

let is_let_map2_equal_das_vdot_map2 sym_ftd =
  if not (is_camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd)
  then false
  else
    begin
      let sym_tdf = camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd in
      Camlline_for_tag_datastructure_function_symbol_v.is_let_map2_equal_das_vdot_map2 sym_tdf
    end
;;

let is_let_iter_equal_das_vdot_iter sym_ftd =
  if not (is_camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd)
  then false
  else
    begin
      let sym_tdf = camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd in
      Camlline_for_tag_datastructure_function_symbol_v.is_let_iter_equal_das_vdot_iter sym_tdf
    end
;;

let is_let_iter2_equal_das_vdot_iter2 sym_ftd =
  if not (is_camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd)
  then false
  else
    begin
      let sym_tdf = camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd in
      Camlline_for_tag_datastructure_function_symbol_v.is_let_iter2_equal_das_vdot_iter2 sym_tdf
    end
;;

let is_das_vdot_make_tag_a sym_ftd =
  if not (is_camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd)
  then false
  else
    begin
      let sym_tdf = camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd in
      Camlline_for_tag_datastructure_function_symbol_v.is_das_vdot_make_tag_a sym_tdf
    end
;;

let is_das_vdot_make_tag_a_tag_b sym_ftd =
  if not (is_camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd)
  then false
  else
    begin
      let sym_tdf = camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd in
      Camlline_for_tag_datastructure_function_symbol_v.is_das_vdot_make_tag_a_tag_b sym_tdf
    end
;;

let is_das_vdot_make_tag_a_tag_b_tag_c sym_ftd =
  if not (is_camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd)
  then false
  else
    begin
      let sym_tdf = camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd in
      Camlline_for_tag_datastructure_function_symbol_v.is_das_vdot_make_tag_a_tag_b_tag_c sym_tdf
    end
;;

let is_camlline_for_tag_datastructure_function_name sym_ftd =
  if not (is_camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd)
  then false
  else
    begin
      let sym_tdf = camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd in
      Camlline_for_tag_datastructure_function_symbol_v.is_camlline_for_tag_datastructure_function_name sym_tdf
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_camlline_for_tag_datastructure_camltype_uno_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd =
  if not (is_camlline_for_tag_datastructure_camltype_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd)
  then false
  else
    begin
  let sym_tdc = camlline_for_tag_datastructure_camltype_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd in
  Camlline_for_tag_datastructure_camltype_symbol_v.is_camlline_for_tag_datastructure_camltype_uno_symbol_off_camlline_for_tag_datastructure_camltype_symbol sym_tdc
    end
;;

let is_camlline_for_tag_datastructure_camltype_duo_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd =
  if not (is_camlline_for_tag_datastructure_camltype_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd)
  then false
  else
    begin
  let sym_tdc = camlline_for_tag_datastructure_camltype_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd in
  Camlline_for_tag_datastructure_camltype_symbol_v.is_camlline_for_tag_datastructure_camltype_duo_symbol_off_camlline_for_tag_datastructure_camltype_symbol sym_tdc
    end
;;

let is_camlline_for_tag_datastructure_function_iter_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd =
  if not (is_camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd)
  then false
  else
    begin
  let sym_tdf = camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd in
  Camlline_for_tag_datastructure_function_symbol_v.is_camlline_for_tag_datastructure_function_iter_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf
    end
;;

let is_camlline_for_tag_datastructure_function_make_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd =
  if not (is_camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd)
  then false
  else
    begin
  let sym_tdf = camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd in
  Camlline_for_tag_datastructure_function_symbol_v.is_camlline_for_tag_datastructure_function_make_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf
    end
;;

let is_camlline_for_tag_datastructure_function_make_uno_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd =
  if not (is_camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd)
  then false
  else
    begin
  let sym_tdf = camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd in
  Camlline_for_tag_datastructure_function_symbol_v.is_camlline_for_tag_datastructure_function_make_uno_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf
    end
;;

let is_camlline_for_tag_datastructure_function_make_duo_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd =
  if not (is_camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd)
  then false
  else
    begin
  let sym_tdf = camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd in
  Camlline_for_tag_datastructure_function_symbol_v.is_camlline_for_tag_datastructure_function_make_duo_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf
    end
;;

let is_camlline_for_tag_datastructure_function_make_trio_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd =
  if not (is_camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd)
  then false
  else
    begin
  let sym_tdf = camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd in
  Camlline_for_tag_datastructure_function_symbol_v.is_camlline_for_tag_datastructure_function_make_trio_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_camltype_symbol sym_tdc = 
  Camlline_for_tag_datastructure_symbol_t.Camlline_for_tag_datastructure_camltype_symbol sym_tdc
;;

let camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_function_symbol sym_tdf = 
  Camlline_for_tag_datastructure_symbol_t.Camlline_for_tag_datastructure_function_symbol sym_tdf
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_camltype_uno_symbol sym_dcu = 
  let sym_tdc = Camlline_for_tag_datastructure_camltype_symbol_v.camlline_for_tag_datastructure_camltype_symbol_of_camlline_for_tag_datastructure_camltype_uno_symbol sym_dcu in
    camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_camltype_symbol sym_tdc
;;

let camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_camltype_duo_symbol sym_dcd = 
  let sym_tdc = Camlline_for_tag_datastructure_camltype_symbol_v.camlline_for_tag_datastructure_camltype_symbol_of_camlline_for_tag_datastructure_camltype_duo_symbol sym_dcd in
    camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_camltype_symbol sym_tdc
;;

let camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_function_iter_symbol sym_dfi = 
  let sym_tdf = Camlline_for_tag_datastructure_function_symbol_v.camlline_for_tag_datastructure_function_symbol_of_camlline_for_tag_datastructure_function_iter_symbol sym_dfi in
    camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_function_symbol sym_tdf
;;

let camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_function_make_symbol sym_dfm = 
  let sym_tdf = Camlline_for_tag_datastructure_function_symbol_v.camlline_for_tag_datastructure_function_symbol_of_camlline_for_tag_datastructure_function_make_symbol sym_dfm in
    camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_function_symbol sym_tdf
;;

let camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_function_make_uno_symbol sym_fmu = 
  let sym_tdf = Camlline_for_tag_datastructure_function_symbol_v.camlline_for_tag_datastructure_function_symbol_of_camlline_for_tag_datastructure_function_make_uno_symbol sym_fmu in
    camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_function_symbol sym_tdf
;;

let camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_function_make_duo_symbol sym_fmd = 
  let sym_tdf = Camlline_for_tag_datastructure_function_symbol_v.camlline_for_tag_datastructure_function_symbol_of_camlline_for_tag_datastructure_function_make_duo_symbol sym_fmd in
    camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_function_symbol sym_tdf
;;

let camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_function_make_trio_symbol sym_fmt = 
  let sym_tdf = Camlline_for_tag_datastructure_function_symbol_v.camlline_for_tag_datastructure_function_symbol_of_camlline_for_tag_datastructure_function_make_trio_symbol sym_fmt in
    camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_function_symbol sym_tdf
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let lpar_a_tag_rpar = camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_camltype_symbol Camlline_for_tag_datastructure_camltype_symbol_v.lpar_a_tag_rpar;;

let lpar_a_b_tag_rpar = camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_camltype_symbol Camlline_for_tag_datastructure_camltype_symbol_v.lpar_a_b_tag_rpar;;

let let_map_equal_das_vdot_map = camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_function_symbol Camlline_for_tag_datastructure_function_symbol_v.let_map_equal_das_vdot_map;;

let let_map2_equal_das_vdot_map2 = camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_function_symbol Camlline_for_tag_datastructure_function_symbol_v.let_map2_equal_das_vdot_map2;;

let let_iter_equal_das_vdot_iter = camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_function_symbol Camlline_for_tag_datastructure_function_symbol_v.let_iter_equal_das_vdot_iter;;

let let_iter2_equal_das_vdot_iter2 = camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_function_symbol Camlline_for_tag_datastructure_function_symbol_v.let_iter2_equal_das_vdot_iter2;;

let das_vdot_make_tag_a = camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_function_symbol Camlline_for_tag_datastructure_function_symbol_v.das_vdot_make_tag_a;;

let das_vdot_make_tag_a_tag_b = camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_function_symbol Camlline_for_tag_datastructure_function_symbol_v.das_vdot_make_tag_a_tag_b;;

let das_vdot_make_tag_a_tag_b_tag_c = camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_function_symbol Camlline_for_tag_datastructure_function_symbol_v.das_vdot_make_tag_a_tag_b_tag_c;;

let camlline_for_tag_datastructure_function_name = camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_function_symbol Camlline_for_tag_datastructure_function_symbol_v.camlline_for_tag_datastructure_function_name;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Camlline_for_tag_datastructure_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_for_tag_datastructure_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_camltype_symbol
      (Camlline_for_tag_datastructure_camltype_symbol_v.make nam s)
  with Failure "Not_Camlline_for_tag_datastructure_camltype_symbol:Camlline_for_tag_datastructure_camltype_symbol_v:make" ->
  try camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_function_symbol
      (Camlline_for_tag_datastructure_function_symbol_v.make nam s)
  with Failure "Not_Camlline_for_tag_datastructure_function_symbol:Camlline_for_tag_datastructure_function_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Camlline_for_tag_datastructure_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlline_for_tag_datastructure_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlline_for_tag_datastructure_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlline_for_tag_datastructure_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlline_for_tag_datastructure subtype" nam s)
      "it does not exists"
      "Check file camlline_for_tag_datastructure_symbol_v.ml"
    in
    failwith "Not_a_valid_camlline_for_tag_datastructure_symbol:Camlline_for_tag_datastructure_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator camlline_for_tag_datastructure implementation_for_symbol symbol at 9:15 6 May 2013. *)


