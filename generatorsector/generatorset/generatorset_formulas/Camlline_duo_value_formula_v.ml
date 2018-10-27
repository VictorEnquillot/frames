(** {3 Camlline_duo_value_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_duo_value_formula_v";
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

let symbol_of_formula for_cad =
  match for_cad with
  | Camlline_duo_value_formula_t.Val_eac_off_eat_colon _ -> 
      Camlline_duo_value_symbol_t.Val_eac_off_eat_colon

  | Camlline_duo_value_formula_t.Val_eat_of_eac_colon _ -> 
      Camlline_duo_value_symbol_t.Val_eat_of_eac_colon

  | Camlline_duo_value_formula_t.Val_esl_colon_Et_symbol_tdot_et_symbol _ -> 
      Camlline_duo_value_symbol_t.Val_esl_colon_Et_symbol_tdot_et_symbol

  | Camlline_duo_value_formula_t.Val_is_es_symbol_off_et_symbol_colon _ -> 
      Camlline_duo_value_symbol_t.Val_is_es_symbol_off_et_symbol_colon
;;

(** {6 Naming_for_formula} *)

let name for_cad = 
  let sym_cad = symbol_of_formula for_cad in
  Camlline_duo_value_symbol_v.name sym_cad
;;
(* ***

let string_off for_cad =
  let sym_cad = symbol_of_formula for_cad in
  Camlline_duo_value_symbol_v.string_off sym_cad
;;

let longname for_cad =
  Format.sprintf "Camlline_duo_value_formula_t.%s" 
    (String.capitalize (name for_cad))

let fullname for_cad =
  Format.sprintf "%s \"%s\"" (longname for_cad) (string_off for_cad)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_cad soi_cal =
  let tag_cad = Tag_v.make sym_cad soi_cal in
  let dec_cad = 
    Camlline_duo_value_tag_v.camlline_duo_value_dectup_off_camlline_duo_value_tag 
      tag_cad 
  in
  let sym_ent_l = Camlline_duo_value_interface_v.make dec_cad soi_cal in
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

let make sym_cad soi_cal =
  let tag_ent_l = build_n_store sym_cad soi_cal in

  match sym_cad with 
  | Camlline_duo_value_symbol_t.Val_eac_off_eat_colon -> 
      Camlline_duo_value_formula_t.Val_eac_off_eat_colon tag_ent_l

  | Camlline_duo_value_symbol_t.Val_eat_of_eac_colon -> 
      Camlline_duo_value_formula_t.Val_eat_of_eac_colon tag_ent_l

  | Camlline_duo_value_symbol_t.Val_esl_colon_Et_symbol_tdot_et_symbol _ -> 
      Camlline_duo_value_formula_t.Val_esl_colon_Et_symbol_tdot_et_symbol tag_ent_l

  | Camlline_duo_value_symbol_t.Val_is_es_symbol_off_et_symbol_colon -> 
      Camlline_duo_value_formula_t.Val_is_es_symbol_off_et_symbol_colon tag_ent_l
;;

(** {6 Retrieving} *)

let retrieve tag_cad =
  let soi_gro = Tag_v.sole_index_off_tag tag_cad in
  let sym_cad = Tag_v.entity_off_tag tag_cad in
  make sym_cad soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_duo_value_formula for_cad =
  match for_cad with
  | Camlline_duo_value_formula_t.Val_eac_off_eat_colon tag_ent_l -> 
      tag_ent_l

  | Camlline_duo_value_formula_t.Val_eat_of_eac_colon tag_ent_l -> 
      tag_ent_l

  | Camlline_duo_value_formula_t.Val_esl_colon_Et_symbol_tdot_et_symbol tag_ent_l -> 
      tag_ent_l

  | Camlline_duo_value_formula_t.Val_is_es_symbol_off_et_symbol_colon tag_ent_l -> 
      tag_ent_l
;;

let entity_tag_list_off_camlline_duo_value_tag tag_cad =
  let for_cad = retrieve tag_cad in
  entity_tag_list_off_camlline_duo_value_formula for_cad
;; 

(** {6 Iterating_for_formula_duo_value.} *)

let map f_of_tag_ent for_cad = 
  let tag_ent_l = entity_tag_list_off_camlline_duo_value_formula for_cad in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_cad = 
  let tag_ent_l = entity_tag_list_off_camlline_duo_value_formula for_cad in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_cad_1 for_cad_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_duo_value_formula for_cad_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_duo_value_formula for_cad_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_cad_1 for_cad_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_duo_value_formula for_cad_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_duo_value_formula for_cad_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

