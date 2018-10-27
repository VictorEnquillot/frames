(** {3 Camlline_for_formula_duo_builder_data_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_formula_duo_builder_data_formula_v";
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

let symbol_of_formula for_cbd =
  match for_cbd with
  | Camlline_for_formula_duo_builder_data_formula_t.Eb_formula_vdot_ed_tag_list_off_eb_formula_for_ab_l_in _ ->
     Camlline_for_formula_duo_builder_data_symbol_t.Eb_formula_vdot_ed_tag_list_off_eb_formula_for_ab_l_in

;;

(** {6 Naming_for_formula} *)

let name for_cbd = 
  let sym_cbd = symbol_of_formula for_cbd in
  Camlline_for_formula_duo_builder_data_symbol_v.name sym_cbd
;;
(* ***

let string_off for_cbd =
  let sym_cbd = symbol_of_formula for_cbd in
  Camlline_for_formula_duo_builder_data_symbol_v.string_off sym_cbd
;;

let longname for_cbd =
  Format.sprintf "Camlline_for_formula_duo_builder_data_formula_t.%s" 
    (String.capitalize (name for_cbd))

let fullname for_cbd =
  Format.sprintf "%s \"%s\"" (longname for_cbd) (string_off for_cbd)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_cbd soi_cal =
  let tag_cbd = Tag_v.make sym_cbd soi_cal in
  let dec_cbd = 
    Camlline_for_formula_duo_builder_data_tag_v.camlline_for_formula_duo_builder_data_dectup_off_camlline_for_formula_duo_builder_data_tag 
      tag_cbd 
  in

(* BT builders *)

  let tri_ent_top = Decuplet_v.right_triplet_off_decuplet dec_cbd in
  let sym_ent_bui = Tools_fgnr_v.entity_builder_main_symbol_of_entity_tritup tri_ent_top in
  let sym_ent_dat = 
    Tools_fgnr_v.entity_builder_data_symbol_of_camlline_dectup
      dec_cbd 
  in
  let sym_ent_l = 
    Camlline_for_formula_duo_builder_data_interface_v.make_of_duo
      sym_cbd 
      sym_ent_bui 
      sym_ent_dat
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

let make sym_cbd soi_cal =
  let tag_ent_l = build_n_store sym_cbd soi_cal in

  match sym_cbd with 
  | Camlline_for_formula_duo_builder_data_symbol_t.Eb_formula_vdot_ed_tag_list_off_eb_formula_for_ab_l_in ->
     Camlline_for_formula_duo_builder_data_formula_t.Eb_formula_vdot_ed_tag_list_off_eb_formula_for_ab_l_in tag_ent_l

;;

(** {6 Retrieving} *)

let retrieve tag_cbd =
  let soi_gro = Tag_v.sole_index_off_tag tag_cbd in
  let sym_cbd = Tag_v.entity_off_tag tag_cbd in
  make sym_cbd soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_formula_duo_builder_data_formula for_cbd =
  match for_cbd with
  | Camlline_for_formula_duo_builder_data_formula_t.Eb_formula_vdot_ed_tag_list_off_eb_formula_for_ab_l_in tag_ent_l -> tag_ent_l

;;

let entity_tag_list_off_camlline_for_formula_duo_builder_data_tag tag_cbd =
  let for_cbd = retrieve tag_cbd in
  entity_tag_list_off_camlline_for_formula_duo_builder_data_formula for_cbd
;; 

(** {6 Iterating_for_formula_for_formula_duo_builder_data.} *)

let map f_of_tag_ent for_cbd = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_duo_builder_data_formula for_cbd in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_cbd = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_duo_builder_data_formula for_cbd in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_cbd_1 for_cbd_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_duo_builder_data_formula for_cbd_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_duo_builder_data_formula for_cbd_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_cbd_1 for_cbd_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_duo_builder_data_formula for_cbd_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_duo_builder_data_formula for_cbd_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

