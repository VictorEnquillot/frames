(** {3 Camlline_for_formula_duo_main_builder_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_formula_duo_main_builder_formula_v";
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

let symbol_of_formula for_cmb =
  match for_cmb with
  | Camlline_for_formula_duo_main_builder_formula_t.Let_sym_ab_l_equal_eb_symbol_list_by_em_tag_provider_vdot_provide_tag_am_in _ ->
     Camlline_for_formula_duo_main_builder_symbol_t.Let_sym_ab_l_equal_eb_symbol_list_by_em_tag_provider_vdot_provide_tag_am_in
 
  | Camlline_for_formula_duo_main_builder_formula_t.One_lpar_list_dot_length_sym_ab_l_rpar_soi_am_in _ ->
     Camlline_for_formula_duo_main_builder_symbol_t.One_lpar_list_dot_length_sym_ab_l_rpar_soi_am_in

;;

(** {6 Naming_for_formula} *)

let name for_cmb = 
  let sym_cmb = symbol_of_formula for_cmb in
  Camlline_for_formula_duo_main_builder_symbol_v.name sym_cmb
;;
(* ***

let string_off for_cmb =
  let sym_cmb = symbol_of_formula for_cmb in
  Camlline_for_formula_duo_main_builder_symbol_v.string_off sym_cmb
;;

let longname for_cmb =
  Format.sprintf "Camlline_for_formula_duo_main_builder_formula_t.%s" 
    (String.capitalize (name for_cmb))

let fullname for_cmb =
  Format.sprintf "%s \"%s\"" (longname for_cmb) (string_off for_cmb)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_cmb soi_cal =
  let tag_cmb = Tag_v.make sym_cmb soi_cal in
  let dec_cmb = 
    Camlline_for_formula_duo_main_builder_tag_v.camlline_for_formula_duo_main_builder_dectup_off_camlline_for_formula_duo_main_builder_tag 
      tag_cmb 
  in

(* BT builders *)

  let tri_ent_top = Decuplet_v.right_triplet_off_decuplet dec_cmb in
  let sym_ent_mai = Tools_fgnr_v.entity_main_symbol_of_camlline_dectup dec_cmb in
  let sym_ent_bui = Tools_fgnr_v.entity_builder_main_symbol_of_entity_tritup tri_ent_top in

  let sym_ent_l = 
    Camlline_for_formula_duo_main_builder_interface_v.make_of_duo 
      sym_cmb 
      sym_ent_mai 
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

let make sym_cmb soi_cal =
  let tag_ent_l = build_n_store sym_cmb soi_cal in

  match sym_cmb with 
  | Camlline_for_formula_duo_main_builder_symbol_t.Let_sym_ab_l_equal_eb_symbol_list_by_em_tag_provider_vdot_provide_tag_am_in ->
    Camlline_for_formula_duo_main_builder_formula_t.Let_sym_ab_l_equal_eb_symbol_list_by_em_tag_provider_vdot_provide_tag_am_in tag_ent_l

  | Camlline_for_formula_duo_main_builder_symbol_t.One_lpar_list_dot_length_sym_ab_l_rpar_soi_am_in ->
     Camlline_for_formula_duo_main_builder_formula_t.One_lpar_list_dot_length_sym_ab_l_rpar_soi_am_in tag_ent_l
;;

(** {6 Retrieving} *)

let retrieve tag_cmb =
  let soi_gro = Tag_v.sole_index_off_tag tag_cmb in
  let sym_cmb = Tag_v.entity_off_tag tag_cmb in
  make sym_cmb soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_formula_duo_main_builder_formula for_cmb =
  match for_cmb with
  | Camlline_for_formula_duo_main_builder_formula_t.Let_sym_ab_l_equal_eb_symbol_list_by_em_tag_provider_vdot_provide_tag_am_in tag_ent_l -> tag_ent_l

  | Camlline_for_formula_duo_main_builder_formula_t.One_lpar_list_dot_length_sym_ab_l_rpar_soi_am_in tag_ent_l -> tag_ent_l

;;

let entity_tag_list_off_camlline_for_formula_duo_main_builder_tag tag_cmb =
  let for_cmb = retrieve tag_cmb in
  entity_tag_list_off_camlline_for_formula_duo_main_builder_formula for_cmb
;; 

(** {6 Iterating_for_formula_for_formula_duo_main_builder.} *)

let map f_of_tag_ent for_cmb = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_duo_main_builder_formula for_cmb in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_cmb = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_duo_main_builder_formula for_cmb in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_cmb_1 for_cmb_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_duo_main_builder_formula for_cmb_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_duo_main_builder_formula for_cmb_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_cmb_1 for_cmb_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_duo_main_builder_formula for_cmb_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_duo_main_builder_formula for_cmb_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

