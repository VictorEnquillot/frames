(** {3 Camlline_for_any_duo_current_son_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_any_duo_current_son_formula_v";
   "Needed-by : FGNR:Camlline_formula_v";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "Remark : It is a For_any_duo_current_son type";
   "Improve : ";
   "Example : ";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_ccs =
  match for_ccs with
  | Camlline_for_any_duo_current_son_formula_t.Es_any_vdot_ec_any_off_es_any_ac_as _ ->
     Camlline_for_any_duo_current_son_symbol_t.Es_any_vdot_ec_any_off_es_any_ac_as
  | Camlline_for_any_duo_current_son_formula_t.Es_any_vdot_is_ec_any_off_es_any_ac_as _ ->
     Camlline_for_any_duo_current_son_symbol_t.Es_any_vdot_is_ec_any_off_es_any_ac_as
  | Camlline_for_any_duo_current_son_formula_t.Es_any_vdot_is_ec_ac_as _ ->
     Camlline_for_any_duo_current_son_symbol_t.Es_any_vdot_is_ec_ac_as
  | Camlline_for_any_duo_current_son_formula_t.Let_ac_as_equal_es_any_vdot_es_any_of_ec_any_ac_ac_in _ ->
     Camlline_for_any_duo_current_son_symbol_t.Let_ac_as_equal_es_any_vdot_es_any_of_ec_any_ac_ac_in

;;

(** {6 Naming_for_formula} *)

let name for_ccs = 
  let sym_ccs = symbol_of_formula for_ccs in
  Camlline_for_any_duo_current_son_symbol_v.name sym_ccs
;;
(* ***

let string_off for_ccs =
  let sym_ccs = symbol_of_formula for_ccs in
  Camlline_for_any_duo_current_son_symbol_v.string_off sym_ccs
;;

let longname for_ccs =
  Format.sprintf "Camlline_for_any_duo_current_son_formula_t.%s" 
    (String.capitalize (name for_ccs))

let fullname for_ccs =
  Format.sprintf "%s \"%s\"" (longname for_ccs) (string_off for_ccs)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_ccs soi_cal =
  let tag_ccs = Tag_v.make sym_ccs soi_cal in
  let dec_ccs = 
    Camlline_for_any_duo_current_son_tag_v.camlline_for_any_duo_current_son_dectup_off_camlline_for_any_duo_current_son_tag 
      tag_ccs 
  in

  let sym_ent_cur = 
    Tools_fgnr_v.entity_current_symbol_of_camlline_dectup_of_sole_index 
      dec_ccs 
      soi_cal 
  in
   let sym_ent_son = 
    Tools_fgnr_v.entity_topson_symbol_of_camlline_dectup_of_sole_index 
      dec_ccs
      soi_cal
  in 

  let sym_ent_l = 
    Camlline_for_any_duo_current_son_interface_v.make 
      sym_ccs 
      sym_ent_cur 
      sym_ent_son
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

let make sym_ccs soi_cal =
  let tag_ent_l = build_n_store sym_ccs soi_cal in

  match sym_ccs with 
  | Camlline_for_any_duo_current_son_symbol_t.Es_any_vdot_ec_any_off_es_any_ac_as ->
     Camlline_for_any_duo_current_son_formula_t.Es_any_vdot_ec_any_off_es_any_ac_as tag_ent_l
  | Camlline_for_any_duo_current_son_symbol_t.Es_any_vdot_is_ec_any_off_es_any_ac_as ->
     Camlline_for_any_duo_current_son_formula_t.Es_any_vdot_is_ec_any_off_es_any_ac_as tag_ent_l
  | Camlline_for_any_duo_current_son_symbol_t.Es_any_vdot_is_ec_ac_as ->
     Camlline_for_any_duo_current_son_formula_t.Es_any_vdot_is_ec_ac_as tag_ent_l
  | Camlline_for_any_duo_current_son_symbol_t.Let_ac_as_equal_es_any_vdot_es_any_of_ec_any_ac_ac_in ->
     Camlline_for_any_duo_current_son_formula_t.Let_ac_as_equal_es_any_vdot_es_any_of_ec_any_ac_ac_in tag_ent_l

;;

(** {6 Retrieving} *)

let retrieve tag_ccs =
  let soi_gro = Tag_v.sole_index_off_tag tag_ccs in
  let sym_ccs = Tag_v.entity_off_tag tag_ccs in
  make sym_ccs soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_any_duo_current_son_formula for_ccs =
  match for_ccs with
  | Camlline_for_any_duo_current_son_formula_t.Es_any_vdot_ec_any_off_es_any_ac_as tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_current_son_formula_t.Es_any_vdot_is_ec_any_off_es_any_ac_as tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_current_son_formula_t.Es_any_vdot_is_ec_ac_as tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_current_son_formula_t.Let_ac_as_equal_es_any_vdot_es_any_of_ec_any_ac_ac_in tag_ent_l -> tag_ent_l

;;

let entity_tag_list_off_camlline_for_any_duo_current_son_tag tag_ccs =
  let for_ccs = retrieve tag_ccs in
  entity_tag_list_off_camlline_for_any_duo_current_son_formula for_ccs
;; 

(** {6 Iterating_for_formula_for_any_duo_current_son.} *)

let map f_of_tag_ent for_ccs = 
  let tag_ent_l = entity_tag_list_off_camlline_for_any_duo_current_son_formula for_ccs in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_ccs = 
  let tag_ent_l = entity_tag_list_off_camlline_for_any_duo_current_son_formula for_ccs in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_ccs_1 for_ccs_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_any_duo_current_son_formula for_ccs_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_any_duo_current_son_formula for_ccs_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_ccs_1 for_ccs_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_any_duo_current_son_formula for_ccs_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_any_duo_current_son_formula for_ccs_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

