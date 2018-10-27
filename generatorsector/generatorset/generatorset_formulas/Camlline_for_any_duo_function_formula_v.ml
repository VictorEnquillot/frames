(** {3 Camlline_for_any_duo_function_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_any_duo_function_formula_v";
   "Needed-by : FGNR:Camlline_formula_v";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "Remark : It is a For_any_duo_function type";
   "Improve : ";
   "Example : ";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_cdf =
  match for_cdf with
  | Camlline_for_any_duo_function_formula_t.Es_any_vdot_ec_any_off_es_any_ac_as _ ->
      Camlline_for_any_duo_function_symbol_t.Es_any_vdot_ec_any_off_es_any_ac_as

  | Camlline_for_any_duo_function_formula_t.Es_any_vdot_is_ec_any_off_es_any_ac_as _ ->
      Camlline_for_any_duo_function_symbol_t.Es_any_vdot_is_ec_any_off_es_any_ac_as

  | Camlline_for_any_duo_function_formula_t.If_not_is_es_any_off_et_any_ac_at _ ->
      Camlline_for_any_duo_function_symbol_t.If_not_is_es_any_off_et_any_ac_at

  | Camlline_for_any_duo_function_formula_t.Let_ac_as_equal_es_any_off_et_any_ac_at_in _ ->
      Camlline_for_any_duo_function_symbol_t.Let_ac_as_equal_es_any_off_et_any_ac_at_in

  | Camlline_for_any_duo_function_formula_t.Let_ac_as_equal_es_any_vdot_es_any_of_ec_any_ac_ac_in _ ->
      Camlline_for_any_duo_function_symbol_t.Let_ac_as_equal_es_any_vdot_es_any_of_ec_any_ac_ac_in

  | Camlline_for_any_duo_function_formula_t.Let_ec_any_off_et_any_ac_at_equal _ ->
      Camlline_for_any_duo_function_symbol_t.Let_ec_any_off_et_any_ac_at_equal

  | Camlline_for_any_duo_function_formula_t.Let_es_any_off_et_any_equal_function _ ->
      Camlline_for_any_duo_function_symbol_t.Let_es_any_off_et_any_equal_function

  | Camlline_for_any_duo_function_formula_t.Let_et_any_of_ec_any_ac_ac_equal _ ->
      Camlline_for_any_duo_function_symbol_t.Let_et_any_of_ec_any_ac_ac_equal

  | Camlline_for_any_duo_function_formula_t.Let_et_any_of_es_any_ac_as_equal _ ->
      Camlline_for_any_duo_function_symbol_t.Let_et_any_of_es_any_ac_as_equal

  | Camlline_for_any_duo_function_formula_t.Let_is_ec_any_off_et_any_ac_at_equal _ ->
      Camlline_for_any_duo_function_symbol_t.Let_is_ec_any_off_et_any_ac_at_equal

  | Camlline_for_any_duo_function_formula_t.Let_is_es_any_off_et_any_equal_function _ ->
      Camlline_for_any_duo_function_symbol_t.Let_is_es_any_off_et_any_equal_function

  | Camlline_for_any_duo_function_formula_t.Pipe_et_any_tdot_es_any_ac_as_arrow _ ->
      Camlline_for_any_duo_function_symbol_t.Pipe_et_any_tdot_es_any_ac_as_arrow

  | Camlline_for_any_duo_function_formula_t.Pipe_et_any_tdot_es_any_ac_as_arrow_ac_as _ ->
      Camlline_for_any_duo_function_symbol_t.Pipe_et_any_tdot_es_any_ac_as_arrow_ac_as

  | Camlline_for_any_duo_function_formula_t.Pipe_et_any_tdot_es_any_arrow _ ->
      Camlline_for_any_duo_function_symbol_t.Pipe_et_any_tdot_es_any_arrow

  | Camlline_for_any_duo_function_formula_t.Pipe_et_any_tdot_es_any_underscore_arrow_true _ ->
      Camlline_for_any_duo_function_symbol_t.Pipe_et_any_tdot_es_any_underscore_arrow_true

  | Camlline_for_any_duo_function_formula_t.Pipe_print_fatal_error_es_any_off_et_any_4_lines _ ->
      Camlline_for_any_duo_function_symbol_t.Pipe_print_fatal_error_es_any_off_et_any_4_lines

  | Camlline_for_any_duo_function_formula_t.Et_any_of_es_any_ac_as _ ->
      Camlline_for_any_duo_function_symbol_t.Et_any_of_es_any_ac_as

  | Camlline_for_any_duo_function_formula_t.Es_any_vdot_ec_any_off_es_any_ac_as _ ->
      Camlline_for_any_duo_function_symbol_t.Es_any_vdot_ec_any_off_es_any_ac_as

;;

(** {6 Naming_for_formula} *)

let name for_cdf = 
  let sym_cdf = symbol_of_formula for_cdf in
  Camlline_for_any_duo_function_symbol_v.name sym_cdf
;;
(* ***

let string_off for_cdf =
  let sym_cdf = symbol_of_formula for_cdf in
  Camlline_for_any_duo_function_symbol_v.string_off sym_cdf
;;

let longname for_cdf =
  Format.sprintf "Camlline_for_any_duo_function_formula_t.%s" 
    (String.capitalize (name for_cdf))

let fullname for_cdf =
  Format.sprintf "%s \"%s\"" (longname for_cdf) (string_off for_cdf)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_cdf soi_cal =
  let tag_cdf = Tag_v.make sym_cdf soi_cal in
  let dec_cdf = 
    Camlline_for_any_duo_function_tag_v.camlline_for_any_duo_function_dectup_off_camlline_for_any_duo_function_tag 
      tag_cdf 
  in

  let sym_ent_cur = (* <=> Camlparagraph or Group index *) 
    Tools_fgnr_v.entity_current_symbol_of_camlline_dectup_of_sole_index 
      dec_cdf 
      soi_cal 
  in

(* BT builders *)

  let (sym_ent_top, sym_cat, sym_dos) = Decuplet_v.right_triplet_off_decuplet dec_cdf in
  let tri_ent_cur = Triplet_v.make sym_ent_cur sym_cat sym_dos in

  let sym_ent_son =  
    Tools_ignr_v.entity_topson_symbol_of_entity_current_tritup_of_entity_top_symbol 
      tri_ent_cur 
      sym_ent_top
  in
 
  let sym_ent_l = 
    Camlline_for_any_duo_function_interface_v.make 
      sym_cdf 
      sym_ent_cur 
      sym_ent_son
      sym_ent_top
  in
  let soi_ent_l =               (* Sole_index_datastructure_of_datastructure_of_sole_index *)
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_ent_l)
      soi_cal
  in

  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_entity_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_ent_l soi_ent_l;
  
  List.map2 Tag_v.make sym_ent_l soi_ent_l
;;

(** {6 Making_for_formula} *)

let make sym_cdf soi_cal =
  let tag_ent_l = build_n_store sym_cdf soi_cal in

  match sym_cdf with 
  | Camlline_for_any_duo_function_symbol_t.Es_any_vdot_ec_any_off_es_any_ac_as ->
      Camlline_for_any_duo_function_formula_t.Es_any_vdot_ec_any_off_es_any_ac_as tag_ent_l

  | Camlline_for_any_duo_function_symbol_t.Es_any_vdot_is_ec_any_off_es_any_ac_as ->
      Camlline_for_any_duo_function_formula_t.Es_any_vdot_is_ec_any_off_es_any_ac_as tag_ent_l

  | Camlline_for_any_duo_function_symbol_t.If_not_is_es_any_off_et_any_ac_at ->
      Camlline_for_any_duo_function_formula_t.If_not_is_es_any_off_et_any_ac_at tag_ent_l

  | Camlline_for_any_duo_function_symbol_t.Let_ac_as_equal_es_any_off_et_any_ac_at_in ->
      Camlline_for_any_duo_function_formula_t.Let_ac_as_equal_es_any_off_et_any_ac_at_in tag_ent_l

  | Camlline_for_any_duo_function_symbol_t.Let_ac_as_equal_es_any_vdot_es_any_of_ec_any_ac_ac_in ->
      Camlline_for_any_duo_function_formula_t.Let_ac_as_equal_es_any_vdot_es_any_of_ec_any_ac_ac_in tag_ent_l

  | Camlline_for_any_duo_function_symbol_t.Let_ec_any_off_et_any_ac_at_equal ->
      Camlline_for_any_duo_function_formula_t.Let_ec_any_off_et_any_ac_at_equal tag_ent_l

  | Camlline_for_any_duo_function_symbol_t.Let_es_any_off_et_any_equal_function ->
      Camlline_for_any_duo_function_formula_t.Let_es_any_off_et_any_equal_function tag_ent_l

  | Camlline_for_any_duo_function_symbol_t.Let_et_any_of_ec_any_ac_ac_equal ->
      Camlline_for_any_duo_function_formula_t.Let_et_any_of_ec_any_ac_ac_equal tag_ent_l

  | Camlline_for_any_duo_function_symbol_t.Let_et_any_of_es_any_ac_as_equal ->
      Camlline_for_any_duo_function_formula_t.Let_et_any_of_es_any_ac_as_equal tag_ent_l

  | Camlline_for_any_duo_function_symbol_t.Let_is_ec_any_off_et_any_ac_at_equal ->
      Camlline_for_any_duo_function_formula_t.Let_is_ec_any_off_et_any_ac_at_equal tag_ent_l

  | Camlline_for_any_duo_function_symbol_t.Let_is_es_any_off_et_any_equal_function ->
      Camlline_for_any_duo_function_formula_t.Let_is_es_any_off_et_any_equal_function tag_ent_l

  | Camlline_for_any_duo_function_symbol_t.Pipe_et_any_tdot_es_any_ac_as_arrow ->
      Camlline_for_any_duo_function_formula_t.Pipe_et_any_tdot_es_any_ac_as_arrow tag_ent_l

  | Camlline_for_any_duo_function_symbol_t.Pipe_et_any_tdot_es_any_ac_as_arrow_ac_as ->
      Camlline_for_any_duo_function_formula_t.Pipe_et_any_tdot_es_any_ac_as_arrow_ac_as tag_ent_l

  | Camlline_for_any_duo_function_symbol_t.Pipe_et_any_tdot_es_any_arrow ->
      Camlline_for_any_duo_function_formula_t.Pipe_et_any_tdot_es_any_arrow tag_ent_l

  | Camlline_for_any_duo_function_symbol_t.Pipe_et_any_tdot_es_any_underscore_arrow_true ->
      Camlline_for_any_duo_function_formula_t.Pipe_et_any_tdot_es_any_underscore_arrow_true tag_ent_l

  | Camlline_for_any_duo_function_symbol_t.Pipe_print_fatal_error_es_any_off_et_any_4_lines ->
      Camlline_for_any_duo_function_formula_t.Pipe_print_fatal_error_es_any_off_et_any_4_lines tag_ent_l

  | Camlline_for_any_duo_function_symbol_t.Et_any_of_es_any_ac_as ->
      Camlline_for_any_duo_function_formula_t.Et_any_of_es_any_ac_as tag_ent_l

  | Camlline_for_any_duo_function_symbol_t.Es_any_vdot_ec_any_off_es_any_ac_as ->
      Camlline_for_any_duo_function_formula_t.Es_any_vdot_ec_any_off_es_any_ac_as tag_ent_l
;;

(** {6 Retrieving} *)

let retrieve tag_cdf =
  let soi_gro = Tag_v.sole_index_off_tag tag_cdf in
  let sym_cdf = Tag_v.entity_off_tag tag_cdf in
  make sym_cdf soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_any_duo_function_formula for_cdf =
  match for_cdf with
  | Camlline_for_any_duo_function_formula_t.Es_any_vdot_ec_any_off_es_any_ac_as tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_function_formula_t.Es_any_vdot_is_ec_any_off_es_any_ac_as tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_function_formula_t.If_not_is_es_any_off_et_any_ac_at tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_function_formula_t.Let_ac_as_equal_es_any_off_et_any_ac_at_in tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_function_formula_t.Let_ac_as_equal_es_any_vdot_es_any_of_ec_any_ac_ac_in tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_function_formula_t.Let_ec_any_off_et_any_ac_at_equal tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_function_formula_t.Let_es_any_off_et_any_equal_function tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_function_formula_t.Let_et_any_of_ec_any_ac_ac_equal tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_function_formula_t.Let_et_any_of_es_any_ac_as_equal tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_function_formula_t.Let_is_ec_any_off_et_any_ac_at_equal tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_function_formula_t.Let_is_es_any_off_et_any_equal_function tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_function_formula_t.Pipe_et_any_tdot_es_any_ac_as_arrow tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_function_formula_t.Pipe_et_any_tdot_es_any_ac_as_arrow_ac_as tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_function_formula_t.Pipe_et_any_tdot_es_any_arrow tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_function_formula_t.Pipe_et_any_tdot_es_any_underscore_arrow_true tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_function_formula_t.Pipe_print_fatal_error_es_any_off_et_any_4_lines tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_function_formula_t.Et_any_of_es_any_ac_as tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_function_formula_t.Es_any_vdot_ec_any_off_es_any_ac_as tag_ent_l -> tag_ent_l
;;

let entity_tag_list_off_camlline_for_any_duo_function_tag tag_cdf =
  let for_cdf = retrieve tag_cdf in
  entity_tag_list_off_camlline_for_any_duo_function_formula for_cdf
;; 

(** {6 Iterating_for_formula_for_any_duo_function.} *)

let map f_of_tag_ent for_cdf = 
  let tag_ent_l = entity_tag_list_off_camlline_for_any_duo_function_formula for_cdf in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_cdf = 
  let tag_ent_l = entity_tag_list_off_camlline_for_any_duo_function_formula for_cdf in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_cdf_1 for_cdf_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_any_duo_function_formula for_cdf_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_any_duo_function_formula for_cdf_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_cdf_1 for_cdf_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_any_duo_function_formula for_cdf_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_any_duo_function_formula for_cdf_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

