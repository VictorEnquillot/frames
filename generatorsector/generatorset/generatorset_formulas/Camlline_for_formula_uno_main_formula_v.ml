(** {3 Camlline_for_formula_uno_main_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_formula_uno_main_formula_v";
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

let symbol_of_formula for_cum =
  match for_cum with
  | Camlline_for_formula_uno_main_formula_t.Let_tag_am_equal_tag_vdot_make_sym_am_soi_am_in _ ->
     Camlline_for_formula_uno_main_symbol_t.Let_tag_am_equal_tag_vdot_make_sym_am_soi_am_in
;;

(** {6 Naming_for_formula} *)

let name for_cum = 
  let sym_cum = symbol_of_formula for_cum in
  Camlline_for_formula_uno_main_symbol_v.name sym_cum
;;
(* ***

let string_off for_cum =
  let sym_cum = symbol_of_formula for_cum in
  Camlline_for_formula_uno_main_symbol_v.string_off sym_cum
;;

let longname for_cum =
  Format.sprintf "Camlline_for_formula_uno_main_formula_t.%s" 
    (String.capitalize (name for_cum))

let fullname for_cum =
  Format.sprintf "%s \"%s\"" (longname for_cum) (string_off for_cum)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_cum soi_cal =
  let tag_cum = Tag_v.make sym_cum soi_cal in
  let dec_cum = 
    Camlline_for_formula_uno_main_tag_v.camlline_for_formula_uno_main_dectup_off_camlline_for_formula_uno_main_tag 
      tag_cum 
  in
(* BT builders *)

  let sym_ent_mai = Tools_fgnr_v.entity_main_symbol_of_camlline_dectup dec_cum in

  let sym_ent_l = 
    Camlline_for_formula_uno_main_interface_v.make_of_main
      sym_cum 
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

let make sym_cum soi_cal =
  let tag_ent_l = build_n_store sym_cum soi_cal in

  match sym_cum with 
  | Camlline_for_formula_uno_main_symbol_t.Let_tag_am_equal_tag_vdot_make_sym_am_soi_am_in ->
     Camlline_for_formula_uno_main_formula_t.Let_tag_am_equal_tag_vdot_make_sym_am_soi_am_in tag_ent_l
;;

(** {6 Retrieving} *)

let retrieve tag_cum =
  let soi_gro = Tag_v.sole_index_off_tag tag_cum in
  let sym_cum = Tag_v.entity_off_tag tag_cum in
  make sym_cum soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_formula_uno_main_formula for_cum =
  match for_cum with
  | Camlline_for_formula_uno_main_formula_t.Let_tag_am_equal_tag_vdot_make_sym_am_soi_am_in tag_ent_l -> tag_ent_l
;;

let entity_tag_list_off_camlline_for_formula_uno_main_tag tag_cum =
  let for_cum = retrieve tag_cum in
  entity_tag_list_off_camlline_for_formula_uno_main_formula for_cum
;; 

(** {6 Iterating_for_formula_for_formula_uno_main.} *)

let map f_of_tag_ent for_cum = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_uno_main_formula for_cum in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_cum = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_uno_main_formula for_cum in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_cum_1 for_cum_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_uno_main_formula for_cum_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_uno_main_formula for_cum_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_cum_1 for_cum_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_uno_main_formula for_cum_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_uno_main_formula for_cum_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

