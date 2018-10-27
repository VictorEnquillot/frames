(** {3 Camlline_for_formula_uno_son_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_formula_uno_son_formula_v";
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

let symbol_of_formula for_cus =
  match for_cus with
  | Camlline_for_formula_uno_son_formula_t.Lpar_es_formula_vdot_symbol_of_formula_for_as_rpar _ ->
     Camlline_for_formula_uno_son_symbol_t.Lpar_es_formula_vdot_symbol_of_formula_for_as_rpar
  | Camlline_for_formula_uno_son_formula_t.Es_formula_vdot_map_for_as _ ->
     Camlline_for_formula_uno_son_symbol_t.Es_formula_vdot_map_for_as
  | Camlline_for_formula_uno_son_formula_t.Es_formula_vdot_name_for_as _ ->
     Camlline_for_formula_uno_son_symbol_t.Es_formula_vdot_name_for_as
  | Camlline_for_formula_uno_son_formula_t.Let_tag_as_equal_tag_vdot_make_sym_as_soi_as_in _ ->
     Camlline_for_formula_uno_son_symbol_t.Let_tag_as_equal_tag_vdot_make_sym_as_soi_as_in

;;

(** {6 Naming_for_formula} *)

let name for_cus = 
  let sym_cus = symbol_of_formula for_cus in
  Camlline_for_formula_uno_son_symbol_v.name sym_cus
;;
(* ***

let string_off for_cus =
  let sym_cus = symbol_of_formula for_cus in
  Camlline_for_formula_uno_son_symbol_v.string_off sym_cus
;;

let longname for_cus =
  Format.sprintf "Camlline_for_formula_uno_son_formula_t.%s" 
    (String.capitalize (name for_cus))

let fullname for_cus =
  Format.sprintf "%s \"%s\"" (longname for_cus) (string_off for_cus)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_cus soi_cal =
  let tag_cus = Tag_v.make sym_cus soi_cal in
  let dec_cus = 
    Camlline_for_formula_uno_son_tag_v.camlline_for_formula_uno_son_dectup_off_camlline_for_formula_uno_son_tag 
      tag_cus 
  in

(* BT builders *)

  let sym_ent_son = 
    Tools_fgnr_v.entity_topson_symbol_of_camlline_dectup_of_sole_index 
      dec_cus 
      soi_cal
  in 
  let sym_ent_l = 
    Camlline_for_formula_uno_son_interface_v.make_of_son
      sym_cus 
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

let make sym_cus soi_cal =
  let tag_ent_l = build_n_store sym_cus soi_cal in

  match sym_cus with 
  | Camlline_for_formula_uno_son_symbol_t.Lpar_es_formula_vdot_symbol_of_formula_for_as_rpar ->
     Camlline_for_formula_uno_son_formula_t.Lpar_es_formula_vdot_symbol_of_formula_for_as_rpar tag_ent_l
  | Camlline_for_formula_uno_son_symbol_t.Es_formula_vdot_map_for_as ->
     Camlline_for_formula_uno_son_formula_t.Es_formula_vdot_map_for_as tag_ent_l
  | Camlline_for_formula_uno_son_symbol_t.Es_formula_vdot_name_for_as ->
     Camlline_for_formula_uno_son_formula_t.Es_formula_vdot_name_for_as tag_ent_l
  | Camlline_for_formula_uno_son_symbol_t.Let_tag_as_equal_tag_vdot_make_sym_as_soi_as_in ->
     Camlline_for_formula_uno_son_formula_t.Let_tag_as_equal_tag_vdot_make_sym_as_soi_as_in tag_ent_l
;;

(** {6 Retrieving} *)

let retrieve tag_cus =
  let soi_gro = Tag_v.sole_index_off_tag tag_cus in
  let sym_cus = Tag_v.entity_off_tag tag_cus in
  make sym_cus soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_formula_uno_son_formula for_cus =
  match for_cus with
  | Camlline_for_formula_uno_son_formula_t.Lpar_es_formula_vdot_symbol_of_formula_for_as_rpar tag_ent_l -> tag_ent_l
  | Camlline_for_formula_uno_son_formula_t.Es_formula_vdot_map_for_as tag_ent_l -> tag_ent_l
  | Camlline_for_formula_uno_son_formula_t.Es_formula_vdot_name_for_as tag_ent_l -> tag_ent_l
  | Camlline_for_formula_uno_son_formula_t.Let_tag_as_equal_tag_vdot_make_sym_as_soi_as_in tag_ent_l -> tag_ent_l
;; 

let entity_tag_list_off_camlline_for_formula_uno_son_tag tag_cus =
  let for_cus = retrieve tag_cus in
  entity_tag_list_off_camlline_for_formula_uno_son_formula for_cus
;; 

(** {6 Iterating_for_formula_for_formula_uno_son.} *)

let map f_of_tag_ent for_cus = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_uno_son_formula for_cus in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_cus = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_uno_son_formula for_cus in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_cus_1 for_cus_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_uno_son_formula for_cus_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_uno_son_formula for_cus_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_cus_1 for_cus_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_uno_son_formula for_cus_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_uno_son_formula for_cus_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

