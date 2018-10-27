(** {3 Camlline_for_formula_duo_son_main_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_formula_duo_son_main_formula_v";
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

let symbol_of_formula for_csm =
  match for_csm with
  | Camlline_for_formula_duo_son_main_formula_t.Lpar_es_formula_vdot_make_sym_as_soi_am_rpar _ ->
     Camlline_for_formula_duo_son_main_symbol_t.Lpar_es_formula_vdot_make_sym_as_soi_am_rpar

;;

(** {6 Naming_for_formula} *)

let name for_csm = 
  let sym_csm = symbol_of_formula for_csm in
  Camlline_for_formula_duo_son_main_symbol_v.name sym_csm
;;
(* ***

let string_off for_csm =
  let sym_csm = symbol_of_formula for_csm in
  Camlline_for_formula_duo_son_main_symbol_v.string_off sym_csm
;;

let longname for_csm =
  Format.sprintf "Camlline_for_formula_duo_son_main_formula_t.%s" 
    (String.capitalize (name for_csm))

let fullname for_csm =
  Format.sprintf "%s \"%s\"" (longname for_csm) (string_off for_csm)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_csm soi_cal =
  let tag_csm = Tag_v.make sym_csm soi_cal in
  let dec_csm = 
    Camlline_for_formula_duo_son_main_tag_v.camlline_for_formula_duo_son_main_dectup_off_camlline_for_formula_duo_son_main_tag 
      tag_csm 
  in

(* BT builders *)

  let sym_ent_son = 
    Tools_fgnr_v.entity_topson_symbol_of_camlline_dectup_of_sole_index 
      dec_csm 
      soi_cal
  in 
  let sym_ent_mai = 
    Tools_fgnr_v.entity_main_symbol_of_camlline_dectup
      dec_csm 
  in 
  let sym_ent_l = 
    Camlline_for_formula_duo_son_main_interface_v.make_of_duo 
      sym_csm
      sym_ent_son 
      sym_ent_mai
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

let make sym_csm soi_cal =
  let tag_ent_l = build_n_store sym_csm soi_cal in

  match sym_csm with 
  | Camlline_for_formula_duo_son_main_symbol_t.Lpar_es_formula_vdot_make_sym_as_soi_am_rpar ->
     Camlline_for_formula_duo_son_main_formula_t.Lpar_es_formula_vdot_make_sym_as_soi_am_rpar tag_ent_l

;;

(** {6 Retrieving} *)

let retrieve tag_csm =
  let soi_gro = Tag_v.sole_index_off_tag tag_csm in
  let sym_csm = Tag_v.entity_off_tag tag_csm in
  make sym_csm soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_formula_duo_son_main_formula for_csm =
  match for_csm with
  | Camlline_for_formula_duo_son_main_formula_t.Lpar_es_formula_vdot_make_sym_as_soi_am_rpar tag_ent_l -> tag_ent_l

;;

let entity_tag_list_off_camlline_for_formula_duo_son_main_tag tag_csm =
  let for_csm = retrieve tag_csm in
  entity_tag_list_off_camlline_for_formula_duo_son_main_formula for_csm
;; 

(** {6 Iterating_for_formula_for_formula_duo_son_main.} *)

let map f_of_tag_ent for_csm = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_duo_son_main_formula for_csm in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_csm = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_duo_son_main_formula for_csm in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_csm_1 for_csm_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_duo_son_main_formula for_csm_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_duo_son_main_formula for_csm_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_csm_1 for_csm_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_duo_son_main_formula for_csm_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_duo_son_main_formula for_csm_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

