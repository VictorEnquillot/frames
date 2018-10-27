(** {3 Camlline_for_formula_duo_son_top_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_formula_duo_son_top_formula_v";
   "Needed-by : FGNR:Camlline_formula_v";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "Remark : It is a Stem type";
   "Improve : ";
   "Example : ";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_cst =
  match for_cst with
  | Camlline_for_formula_duo_son_top_formula_t.Et_formula_tdot_es_formula _ ->
     Camlline_for_formula_duo_son_top_symbol_t.Et_formula_tdot_es_formula
  | Camlline_for_formula_duo_son_top_formula_t.Pipe_et_formula_tdot_es_lpar_sarg_comma_underscore_rpar_arrow _ ->
     Camlline_for_formula_duo_son_top_symbol_t.Pipe_et_formula_tdot_es_lpar_sarg_comma_underscore_rpar_arrow
  | Camlline_for_formula_duo_son_top_formula_t.Pipe_et_formula_tdot_es_underscore_arrow _ ->
     Camlline_for_formula_duo_son_top_symbol_t.Pipe_et_formula_tdot_es_underscore_arrow
  | Camlline_for_formula_duo_son_top_formula_t.Et_formula_tdot_es_for_das _ ->
     Camlline_for_formula_duo_son_top_symbol_t.Et_formula_tdot_es_for_das
  | Camlline_for_formula_duo_son_top_formula_t.Let_nam_as_equal_es_tag_vdot_name_for_at_in _ ->
     Camlline_for_formula_duo_son_top_symbol_t.Let_nam_as_equal_es_tag_vdot_name_for_at_in
  | Camlline_for_formula_duo_son_top_formula_t.Let_nam_as_equal_tag_vdot_name_et_symbol_vdot_name_in _ ->
     Camlline_for_formula_duo_son_top_symbol_t.Let_nam_as_equal_tag_vdot_name_et_symbol_vdot_name_in

;;

(** {6 Naming_for_formula} *)

let name for_cst = 
  let sym_cst = symbol_of_formula for_cst in
  Camlline_for_formula_duo_son_top_symbol_v.name sym_cst
;;
(* ***

let string_off for_cst =
  let sym_cst = symbol_of_formula for_cst in
  Camlline_for_formula_duo_son_top_symbol_v.string_off sym_cst
;;

let longname for_cst =
  Format.sprintf "Camlline_for_formula_duo_son_top_formula_t.%s" 
    (String.capitalize (name for_cst))

let fullname for_cst =
  Format.sprintf "%s \"%s\"" (longname for_cst) (string_off for_cst)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_cst soi_cal =
  let tag_cst = Tag_v.make sym_cst soi_cal in
  let dec_cst = 
    Camlline_for_formula_duo_son_top_tag_v.camlline_for_formula_duo_son_top_dectup_off_camlline_for_formula_duo_son_top_tag 
      tag_cst 
  in

(* BT builders *)

  let sym_ent_son = 
    Tools_fgnr_v.entity_topson_symbol_of_camlline_dectup_of_sole_index 
      dec_cst 
      soi_cal
  in 
  let sym_ent_top = Decuplet_v.right_third_off_decuplet dec_cst in
  let sym_ent_l = 
    Camlline_for_formula_duo_son_top_interface_v.make_of_son_of_top 
      sym_cst 
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

let make sym_cst soi_cal =
  let tag_ent_l = build_n_store sym_cst soi_cal in

  match sym_cst with 
  | Camlline_for_formula_duo_son_top_symbol_t.Et_formula_tdot_es_formula ->
     Camlline_for_formula_duo_son_top_formula_t.Et_formula_tdot_es_formula tag_ent_l

  | Camlline_for_formula_duo_son_top_symbol_t.Pipe_et_formula_tdot_es_lpar_sarg_comma_underscore_rpar_arrow ->
     Camlline_for_formula_duo_son_top_formula_t.Pipe_et_formula_tdot_es_lpar_sarg_comma_underscore_rpar_arrow tag_ent_l
  | Camlline_for_formula_duo_son_top_symbol_t.Pipe_et_formula_tdot_es_underscore_arrow ->
     Camlline_for_formula_duo_son_top_formula_t.Pipe_et_formula_tdot_es_underscore_arrow tag_ent_l
  | Camlline_for_formula_duo_son_top_symbol_t.Et_formula_tdot_es_for_das ->
     Camlline_for_formula_duo_son_top_formula_t.Et_formula_tdot_es_for_das tag_ent_l
  | Camlline_for_formula_duo_son_top_symbol_t.Let_nam_as_equal_es_tag_vdot_name_for_at_in ->
     Camlline_for_formula_duo_son_top_formula_t.Let_nam_as_equal_es_tag_vdot_name_for_at_in tag_ent_l
  | Camlline_for_formula_duo_son_top_symbol_t.Let_nam_as_equal_tag_vdot_name_et_symbol_vdot_name_in ->
     Camlline_for_formula_duo_son_top_formula_t.Let_nam_as_equal_tag_vdot_name_et_symbol_vdot_name_in tag_ent_l

;;

(** {6 Retrieving} *)

let retrieve tag_cst =
  let soi_gro = Tag_v.sole_index_off_tag tag_cst in
  let sym_cst = Tag_v.entity_off_tag tag_cst in
  make sym_cst soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_formula_duo_son_top_formula for_cst =
  match for_cst with
  | Camlline_for_formula_duo_son_top_formula_t.Et_formula_tdot_es_formula tag_ent_l -> tag_ent_l
  | Camlline_for_formula_duo_son_top_formula_t.Pipe_et_formula_tdot_es_lpar_sarg_comma_underscore_rpar_arrow tag_ent_l -> tag_ent_l
  | Camlline_for_formula_duo_son_top_formula_t.Pipe_et_formula_tdot_es_underscore_arrow tag_ent_l -> tag_ent_l
  | Camlline_for_formula_duo_son_top_formula_t.Et_formula_tdot_es_for_das tag_ent_l -> tag_ent_l
  | Camlline_for_formula_duo_son_top_formula_t.Let_nam_as_equal_es_tag_vdot_name_for_at_in tag_ent_l -> tag_ent_l
  | Camlline_for_formula_duo_son_top_formula_t.Let_nam_as_equal_tag_vdot_name_et_symbol_vdot_name_in tag_ent_l -> tag_ent_l

;;

let entity_tag_list_off_camlline_for_formula_duo_son_top_tag tag_cst =
  let for_cst = retrieve tag_cst in
  entity_tag_list_off_camlline_for_formula_duo_son_top_formula for_cst
;; 

(** {6 Iterating_for_formula_for_formula_duo_son_top.} *)

let map f_of_tag_ent for_cst = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_duo_son_top_formula for_cst in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_cst = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_duo_son_top_formula for_cst in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_cst_1 for_cst_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_duo_son_top_formula for_cst_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_duo_son_top_formula for_cst_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_cst_1 for_cst_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_duo_son_top_formula for_cst_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_duo_son_top_formula for_cst_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

