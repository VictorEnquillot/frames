(** {3 Camlline_for_formula_duo_top_builder_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_formula_duo_top_builder_formula_v";
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
  | Camlline_for_formula_duo_top_builder_formula_t.Eb_tag_list_off_et_formula_for_at _ ->
     Camlline_for_formula_duo_top_builder_symbol_t.Eb_tag_list_off_et_formula_for_at
  | Camlline_for_formula_duo_top_builder_formula_t.Let_eb_tag_list_off_et_formula_equal_function _ ->
     Camlline_for_formula_duo_top_builder_symbol_t.Let_eb_tag_list_off_et_formula_equal_function
  | Camlline_for_formula_duo_top_builder_formula_t.Let_eb_tag_list_off_et_tag_tag_at_equal _ ->
     Camlline_for_formula_duo_top_builder_symbol_t.Let_eb_tag_list_off_et_tag_tag_at_equal
  | Camlline_for_formula_duo_top_builder_formula_t.Let_iter2_f_of_tag_ab_for_at_1_for_at_2_equal _ ->
     Camlline_for_formula_duo_top_builder_symbol_t.Let_iter2_f_of_tag_ab_for_at_1_for_at_2_equal
  | Camlline_for_formula_duo_top_builder_formula_t.Let_iter_f_of_tag_ab_for_at_equal _ ->
     Camlline_for_formula_duo_top_builder_symbol_t.Let_iter_f_of_tag_ab_for_at_equal
  | Camlline_for_formula_duo_top_builder_formula_t.Let_map2_f_of_tag_ab_for_at_1_for_at_2_equal _ ->
     Camlline_for_formula_duo_top_builder_symbol_t.Let_map2_f_of_tag_ab_for_at_1_for_at_2_equal
  | Camlline_for_formula_duo_top_builder_formula_t.Let_map_f_of_tag_ab_for_at_equal _ ->
     Camlline_for_formula_duo_top_builder_symbol_t.Let_map_f_of_tag_ab_for_at_equal
  | Camlline_for_formula_duo_top_builder_formula_t.Let_sym_ab_l_equal_et_interface_vdot_make_of_tuple_tup_at_in _ ->
     Camlline_for_formula_duo_top_builder_symbol_t.Let_sym_ab_l_equal_et_interface_vdot_make_of_tuple_tup_at_in
  | Camlline_for_formula_duo_top_builder_formula_t.Let_tag_ab_l_1_equal_eb_tag_list_off_et_formula_for_at_1_in _ ->
     Camlline_for_formula_duo_top_builder_symbol_t.Let_tag_ab_l_1_equal_eb_tag_list_off_et_formula_for_at_1_in
  | Camlline_for_formula_duo_top_builder_formula_t.Let_tag_ab_l_2_equal_eb_tag_list_off_et_formula_for_at_2_in _ ->
     Camlline_for_formula_duo_top_builder_symbol_t.Let_tag_ab_l_2_equal_eb_tag_list_off_et_formula_for_at_2_in
  | Camlline_for_formula_duo_top_builder_formula_t.Let_tag_ab_l_equal_eb_tag_list_off_et_formula_for_at_in _ ->
     Camlline_for_formula_duo_top_builder_symbol_t.Let_tag_ab_l_equal_eb_tag_list_off_et_formula_for_at_in

;;

(** {6 Naming_for_formula} *)

let name for_ctb = 
  let sym_ctb = symbol_of_formula for_ctb in
  Camlline_for_formula_duo_top_builder_symbol_v.name sym_ctb
;;
(* ***

let string_off for_ctb =
  let sym_ctb = symbol_of_formula for_ctb in
  Camlline_for_formula_duo_top_builder_symbol_v.string_off sym_ctb
;;

let longname for_ctb =
  Format.sprintf "Camlline_for_formula_duo_top_builder_formula_t.%s" 
    (String.capitalize (name for_ctb))

let fullname for_ctb =
  Format.sprintf "%s \"%s\"" (longname for_ctb) (string_off for_ctb)
;;
*** *)

(** {6 Building_and_storing_proper_sons} *)

let build_n_store sym_ctb soi_cal =
  let tag_ctb = Tag_v.make sym_ctb soi_cal in
  let dec_ctb = 
    Camlline_for_formula_duo_top_builder_tag_v.camlline_for_formula_duo_top_builder_dectup_off_camlline_for_formula_duo_top_builder_tag 
      tag_ctb 
  in

(* BT builders *)

  let tri_ent_top = Decuplet_v.right_triplet_off_decuplet dec_ctb in
  let sym_ent_bui = Tools_fgnr_v.entity_builder_main_symbol_of_entity_tritup tri_ent_top in
  
  let sym_ent_top = Triplet_v.left_off_triplet tri_ent_top in
  let sym_ent_l = 
    Camlline_for_formula_duo_top_builder_interface_v.make
      sym_ctb
      sym_ent_top
      sym_ent_bui 
  in
  let soi_ent_l = 
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
  | Camlline_for_formula_duo_top_builder_symbol_t.Eb_tag_list_off_et_formula_for_at ->
     Camlline_for_formula_duo_top_builder_formula_t.Eb_tag_list_off_et_formula_for_at tag_ent_l
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_eb_tag_list_off_et_formula_equal_function ->
     Camlline_for_formula_duo_top_builder_formula_t.Let_eb_tag_list_off_et_formula_equal_function tag_ent_l
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_eb_tag_list_off_et_tag_tag_at_equal ->
     Camlline_for_formula_duo_top_builder_formula_t.Let_eb_tag_list_off_et_tag_tag_at_equal tag_ent_l
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_iter2_f_of_tag_ab_for_at_1_for_at_2_equal ->
     Camlline_for_formula_duo_top_builder_formula_t.Let_iter2_f_of_tag_ab_for_at_1_for_at_2_equal tag_ent_l
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_iter_f_of_tag_ab_for_at_equal ->
     Camlline_for_formula_duo_top_builder_formula_t.Let_iter_f_of_tag_ab_for_at_equal tag_ent_l
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_map2_f_of_tag_ab_for_at_1_for_at_2_equal ->
     Camlline_for_formula_duo_top_builder_formula_t.Let_map2_f_of_tag_ab_for_at_1_for_at_2_equal tag_ent_l
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_map_f_of_tag_ab_for_at_equal ->
     Camlline_for_formula_duo_top_builder_formula_t.Let_map_f_of_tag_ab_for_at_equal tag_ent_l
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_sym_ab_l_equal_et_interface_vdot_make_of_tuple_tup_at_in ->
     Camlline_for_formula_duo_top_builder_formula_t.Let_sym_ab_l_equal_et_interface_vdot_make_of_tuple_tup_at_in tag_ent_l
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_tag_ab_l_1_equal_eb_tag_list_off_et_formula_for_at_1_in ->
     Camlline_for_formula_duo_top_builder_formula_t.Let_tag_ab_l_1_equal_eb_tag_list_off_et_formula_for_at_1_in tag_ent_l
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_tag_ab_l_2_equal_eb_tag_list_off_et_formula_for_at_2_in ->
     Camlline_for_formula_duo_top_builder_formula_t.Let_tag_ab_l_2_equal_eb_tag_list_off_et_formula_for_at_2_in tag_ent_l
  | Camlline_for_formula_duo_top_builder_symbol_t.Let_tag_ab_l_equal_eb_tag_list_off_et_formula_for_at_in ->
     Camlline_for_formula_duo_top_builder_formula_t.Let_tag_ab_l_equal_eb_tag_list_off_et_formula_for_at_in tag_ent_l
;;

(** {6 Retrieving} *)

let retrieve tag_ctb =
  let soi_gro = Tag_v.sole_index_off_tag tag_ctb in
  let sym_ctb = Tag_v.entity_off_tag tag_ctb in
  make sym_ctb soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_formula_duo_top_builder_formula for_ctb =
  match for_ctb with
  | Camlline_for_formula_duo_top_builder_formula_t.Eb_tag_list_off_et_formula_for_at tag_ent_l -> tag_ent_l
  | Camlline_for_formula_duo_top_builder_formula_t.Let_eb_tag_list_off_et_formula_equal_function tag_ent_l -> tag_ent_l
  | Camlline_for_formula_duo_top_builder_formula_t.Let_eb_tag_list_off_et_tag_tag_at_equal tag_ent_l -> tag_ent_l
  | Camlline_for_formula_duo_top_builder_formula_t.Let_iter2_f_of_tag_ab_for_at_1_for_at_2_equal tag_ent_l -> tag_ent_l
  | Camlline_for_formula_duo_top_builder_formula_t.Let_iter_f_of_tag_ab_for_at_equal tag_ent_l -> tag_ent_l
  | Camlline_for_formula_duo_top_builder_formula_t.Let_map2_f_of_tag_ab_for_at_1_for_at_2_equal tag_ent_l -> tag_ent_l
  | Camlline_for_formula_duo_top_builder_formula_t.Let_map_f_of_tag_ab_for_at_equal tag_ent_l -> tag_ent_l
  | Camlline_for_formula_duo_top_builder_formula_t.Let_sym_ab_l_equal_et_interface_vdot_make_of_tuple_tup_at_in tag_ent_l -> tag_ent_l
  | Camlline_for_formula_duo_top_builder_formula_t.Let_tag_ab_l_1_equal_eb_tag_list_off_et_formula_for_at_1_in tag_ent_l -> tag_ent_l
  | Camlline_for_formula_duo_top_builder_formula_t.Let_tag_ab_l_2_equal_eb_tag_list_off_et_formula_for_at_2_in tag_ent_l -> tag_ent_l
  | Camlline_for_formula_duo_top_builder_formula_t.Let_tag_ab_l_equal_eb_tag_list_off_et_formula_for_at_in tag_ent_l -> tag_ent_l

;;

let entity_tag_list_off_camlline_for_formula_duo_top_builder_tag tag_ctb =
  let for_ctb = retrieve tag_ctb in
  entity_tag_list_off_camlline_for_formula_duo_top_builder_formula for_ctb
;; 

(** {6 Iterating_for_formula_for_formula_duo_top_builder.} *)

let map f_of_tag_ent for_ctb = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_duo_top_builder_formula for_ctb in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_ctb = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_duo_top_builder_formula for_ctb in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_ctb_1 for_ctb_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_duo_top_builder_formula for_ctb_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_duo_top_builder_formula for_ctb_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_ctb_1 for_ctb_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_duo_top_builder_formula for_ctb_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_duo_top_builder_formula for_ctb_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

