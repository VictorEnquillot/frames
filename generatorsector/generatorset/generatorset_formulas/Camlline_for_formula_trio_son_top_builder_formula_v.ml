(** {3 Camlline_for_formula_trio_son_top_builder_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_formula_trio_son_top_builder_formula_v";
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

let symbol_of_formula for_ctb =
  match for_ctb with
  | Camlline_for_formula_trio_son_top_builder_formula_t.Et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar _ ->
     Camlline_for_formula_trio_son_top_builder_symbol_t.Et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar
  | Camlline_for_formula_trio_son_top_builder_formula_t.Et_formula_tdot_es_tag_ab_l _ ->
     Camlline_for_formula_trio_son_top_builder_symbol_t.Et_formula_tdot_es_tag_ab_l
  | Camlline_for_formula_trio_son_top_builder_formula_t.Pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar_arrow_tag_ab_l _ ->
     Camlline_for_formula_trio_son_top_builder_symbol_t.Pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar_arrow_tag_ab_l
  | Camlline_for_formula_trio_son_top_builder_formula_t.Pipe_et_formula_tdot_es_tag_ab_l_arrow_tag_ab_l _ ->
     Camlline_for_formula_trio_son_top_builder_symbol_t.Pipe_et_formula_tdot_es_tag_ab_l_arrow_tag_ab_l

;;

(** {6 Naming_for_formula} *)

let name for_ctb = 
  let sym_ctb = symbol_of_formula for_ctb in
  Camlline_for_formula_trio_son_top_builder_symbol_v.name sym_ctb
;;
(* ***

let string_off for_ctb =
  let sym_ctb = symbol_of_formula for_ctb in
  Camlline_for_formula_trio_son_top_builder_symbol_v.string_off sym_ctb
;;

let longname for_ctb =
  Format.sprintf "Camlline_for_formula_trio_son_top_builder_formula_t.%s" 
    (String.capitalize (name for_ctb))

let fullname for_ctb =
  Format.sprintf "%s \"%s\"" (longname for_ctb) (string_off for_ctb)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_ctb soi_cal =
  let tag_ctb = Tag_v.make sym_ctb soi_cal in
  let dec_ctb = 
    Camlline_for_formula_trio_son_top_builder_tag_v.camlline_for_formula_trio_son_top_builder_dectup_off_camlline_for_formula_trio_son_top_builder_tag 
      tag_ctb 
  in

(* BT builders *)

  let sym_ent_son = 
    Tools_fgnr_v.entity_topson_symbol_of_camlline_dectup_of_sole_index 
      dec_ctb 
      soi_cal
  in 
  let tri_ent_top = Decuplet_v.right_triplet_off_decuplet dec_ctb in
  let tri_ent_son = Triplet_v.reset_of_left_off_triplet sym_ent_son tri_ent_top in
  let sym_ent_bui = 
    Tools_fgnr_v.entity_builder_main_symbol_of_entity_tritup 
      tri_ent_son
  in 
  let sym_ent_top = Decuplet_v.right_third_off_decuplet dec_ctb in
  let sym_ent_l = 
    Camlline_for_formula_trio_son_top_builder_interface_v.make_of_son_top_builder
      sym_ctb
      sym_ent_son
      sym_ent_top
      sym_ent_bui
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

let make sym_ctb soi_cal =
  let tag_ent_l = build_n_store sym_ctb soi_cal in

  match sym_ctb with 
  | Camlline_for_formula_trio_son_top_builder_symbol_t.Et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar ->
     Camlline_for_formula_trio_son_top_builder_formula_t.Et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar tag_ent_l
  | Camlline_for_formula_trio_son_top_builder_symbol_t.Et_formula_tdot_es_tag_ab_l ->
     Camlline_for_formula_trio_son_top_builder_formula_t.Et_formula_tdot_es_tag_ab_l tag_ent_l
  | Camlline_for_formula_trio_son_top_builder_symbol_t.Pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar_arrow_tag_ab_l ->
     Camlline_for_formula_trio_son_top_builder_formula_t.Pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar_arrow_tag_ab_l tag_ent_l
  | Camlline_for_formula_trio_son_top_builder_symbol_t.Pipe_et_formula_tdot_es_tag_ab_l_arrow_tag_ab_l ->
     Camlline_for_formula_trio_son_top_builder_formula_t.Pipe_et_formula_tdot_es_tag_ab_l_arrow_tag_ab_l tag_ent_l

;;

(** {6 Retrieving} *)

let retrieve tag_ctb =
  let soi_gro = Tag_v.sole_index_off_tag tag_ctb in
  let sym_ctb = Tag_v.entity_off_tag tag_ctb in
  make sym_ctb soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_formula_trio_son_top_builder_formula for_ctb =
  match for_ctb with
  | Camlline_for_formula_trio_son_top_builder_formula_t.Et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar tag_ent_l -> tag_ent_l
  | Camlline_for_formula_trio_son_top_builder_formula_t.Et_formula_tdot_es_tag_ab_l tag_ent_l -> tag_ent_l
  | Camlline_for_formula_trio_son_top_builder_formula_t.Pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar_arrow_tag_ab_l tag_ent_l -> tag_ent_l
  | Camlline_for_formula_trio_son_top_builder_formula_t.Pipe_et_formula_tdot_es_tag_ab_l_arrow_tag_ab_l tag_ent_l -> tag_ent_l

;;

let entity_tag_list_off_camlline_for_formula_trio_son_top_builder_tag tag_ctb =
  let for_ctb = retrieve tag_ctb in
  entity_tag_list_off_camlline_for_formula_trio_son_top_builder_formula for_ctb
;; 

(** {6 Iterating_for_formula_for_formula_trio_son_top_builder.} *)

let map f_of_tag_ent for_ctb = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_trio_son_top_builder_formula for_ctb in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_ctb = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_trio_son_top_builder_formula for_ctb in
  List.iter f_of_tag_ent tag_ent_l;;

let map2 f_of_tag_ent for_ctb_1 for_ctb_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_trio_son_top_builder_formula for_ctb_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_trio_son_top_builder_formula for_ctb_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_ctb_1 for_ctb_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_trio_son_top_builder_formula for_ctb_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_trio_son_top_builder_formula for_ctb_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

