(** {3 Camlline_for_formula_uno_builder_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_formula_uno_builder_formula_v";
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

let symbol_of_formula for_cub =
  match for_cub with
  | Camlline_for_formula_uno_builder_formula_t.Let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in _ ->
     Camlline_for_formula_uno_builder_symbol_t.Let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in
 
 | Camlline_for_formula_uno_builder_formula_t.Let_dss_ab_l_equal_list_dot_map_dss_of_sym_sym_ab_l_in _ ->
     Camlline_for_formula_uno_builder_symbol_t.Let_dss_ab_l_equal_list_dot_map_dss_of_sym_sym_ab_l_in

 | Camlline_for_formula_uno_builder_formula_t.Let_soi_ab_l_equal _ ->
     Camlline_for_formula_uno_builder_symbol_t.Let_soi_ab_l_equal

 | Camlline_for_formula_uno_builder_formula_t.List_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 _ ->
     Camlline_for_formula_uno_builder_symbol_t.List_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2
  | Camlline_for_formula_uno_builder_formula_t.List_dot_iter_f_of_tag_ab_tag_ab_l _ ->
     Camlline_for_formula_uno_builder_symbol_t.List_dot_iter_f_of_tag_ab_tag_ab_l
  | Camlline_for_formula_uno_builder_formula_t.List_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 _ ->
     Camlline_for_formula_uno_builder_symbol_t.List_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2
  | Camlline_for_formula_uno_builder_formula_t.List_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l _ ->
     Camlline_for_formula_uno_builder_symbol_t.List_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l
  | Camlline_for_formula_uno_builder_formula_t.List_dot_map_f_of_tag_ab_tag_ab_l _ ->
     Camlline_for_formula_uno_builder_symbol_t.List_dot_map_f_of_tag_ab_tag_ab_l

  | Camlline_for_formula_uno_builder_formula_t.Double_quote_builders _ ->
     Camlline_for_formula_uno_builder_symbol_t.Double_quote_builders
 
  | Camlline_for_formula_uno_builder_formula_t.Tools_fgnr_vdot_store_builder_dss_datastructure_dss_of_sym_sym_ab_l_soi_ab_l _ ->
      Camlline_for_formula_uno_builder_symbol_t.Tools_fgnr_vdot_store_builder_dss_datastructure_dss_of_sym_sym_ab_l_soi_ab_l

;;

(** {6 Naming_for_formula} *)

let name for_cub = 
  let sym_cub = symbol_of_formula for_cub in
  Camlline_for_formula_uno_builder_symbol_v.name sym_cub
;;
(* ***

let string_off for_cub =
  let sym_cub = symbol_of_formula for_cub in
  Camlline_for_formula_uno_builder_symbol_v.string_off sym_cub
;;

let longname for_cub =
  Format.sprintf "Camlline_for_formula_uno_builder_formula_t.%s" 
    (String.capitalize (name for_cub))

let fullname for_cub =
  Format.sprintf "%s \"%s\"" (longname for_cub) (string_off for_cub)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_cub soi_cal =
  let tag_cub = Tag_v.make sym_cub soi_cal in
  let dec_cub = 
    Camlline_for_formula_uno_builder_tag_v.camlline_for_formula_uno_builder_dectup_off_camlline_for_formula_uno_builder_tag 
      tag_cub 
  in

(* BT builders *)
  let tri_ent_top = Decuplet_v.right_triplet_off_decuplet dec_cub in
  let sym_ent_bui = Tools_fgnr_v.entity_builder_main_symbol_of_entity_tritup tri_ent_top in
  let sym_ent_l = 
    Camlline_for_formula_uno_builder_interface_v.make
      sym_cub 
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

let make sym_cub soi_cal =
  let tag_ent_l = build_n_store sym_cub soi_cal in

  match sym_cub with 
  | Camlline_for_formula_uno_builder_symbol_t.Let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in ->
     Camlline_for_formula_uno_builder_formula_t.Let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in tag_ent_l
 
 | Camlline_for_formula_uno_builder_symbol_t.Let_dss_ab_l_equal_list_dot_map_dss_of_sym_sym_ab_l_in ->
     Camlline_for_formula_uno_builder_formula_t.Let_dss_ab_l_equal_list_dot_map_dss_of_sym_sym_ab_l_in tag_ent_l

 | Camlline_for_formula_uno_builder_symbol_t.Let_soi_ab_l_equal ->
     Camlline_for_formula_uno_builder_formula_t.Let_soi_ab_l_equal tag_ent_l

  | Camlline_for_formula_uno_builder_symbol_t.List_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 ->
     Camlline_for_formula_uno_builder_formula_t.List_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 tag_ent_l
  | Camlline_for_formula_uno_builder_symbol_t.List_dot_iter_f_of_tag_ab_tag_ab_l ->
     Camlline_for_formula_uno_builder_formula_t.List_dot_iter_f_of_tag_ab_tag_ab_l tag_ent_l
  | Camlline_for_formula_uno_builder_symbol_t.List_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 ->
     Camlline_for_formula_uno_builder_formula_t.List_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 tag_ent_l
  | Camlline_for_formula_uno_builder_symbol_t.List_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l ->
     Camlline_for_formula_uno_builder_formula_t.List_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l tag_ent_l
  | Camlline_for_formula_uno_builder_symbol_t.List_dot_map_f_of_tag_ab_tag_ab_l ->
     Camlline_for_formula_uno_builder_formula_t.List_dot_map_f_of_tag_ab_tag_ab_l tag_ent_l

  | Camlline_for_formula_uno_builder_symbol_t.Double_quote_builders ->
     Camlline_for_formula_uno_builder_formula_t.Double_quote_builders tag_ent_l

  | Camlline_for_formula_uno_builder_symbol_t.Tools_fgnr_vdot_store_builder_dss_datastructure_dss_of_sym_sym_ab_l_soi_ab_l ->
     Camlline_for_formula_uno_builder_formula_t.Tools_fgnr_vdot_store_builder_dss_datastructure_dss_of_sym_sym_ab_l_soi_ab_l tag_ent_l

;;

(** {6 Retrieving} *)

let retrieve tag_cub =
  let soi_gro = Tag_v.sole_index_off_tag tag_cub in
  let sym_cub = Tag_v.entity_off_tag tag_cub in
  make sym_cub soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_formula_uno_builder_formula for_cub =
  match for_cub with
  | Camlline_for_formula_uno_builder_formula_t.Let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in tag_ent_l -> tag_ent_l
  | Camlline_for_formula_uno_builder_formula_t.Let_dss_ab_l_equal_list_dot_map_dss_of_sym_sym_ab_l_in tag_ent_l -> tag_ent_l
  | Camlline_for_formula_uno_builder_formula_t.Let_soi_ab_l_equal tag_ent_l -> tag_ent_l
 
 | Camlline_for_formula_uno_builder_formula_t.List_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 tag_ent_l -> tag_ent_l
  | Camlline_for_formula_uno_builder_formula_t.List_dot_iter_f_of_tag_ab_tag_ab_l tag_ent_l -> tag_ent_l
  | Camlline_for_formula_uno_builder_formula_t.List_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 tag_ent_l -> tag_ent_l
  | Camlline_for_formula_uno_builder_formula_t.List_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l tag_ent_l -> tag_ent_l
  | Camlline_for_formula_uno_builder_formula_t.List_dot_map_f_of_tag_ab_tag_ab_l tag_ent_l -> tag_ent_l
  | Camlline_for_formula_uno_builder_formula_t.Double_quote_builders tag_ent_l -> tag_ent_l
  | Camlline_for_formula_uno_builder_formula_t.Tools_fgnr_vdot_store_builder_dss_datastructure_dss_of_sym_sym_ab_l_soi_ab_l tag_ent_l -> tag_ent_l

;;

let entity_tag_list_off_camlline_for_formula_uno_builder_tag tag_cub =
  let for_cub = retrieve tag_cub in
  entity_tag_list_off_camlline_for_formula_uno_builder_formula for_cub
;; 

(** {6 Iterating_for_formula_for_formula_uno_builder.} *)

let map f_of_tag_ent for_cub = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_uno_builder_formula for_cub in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_cub = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_uno_builder_formula for_cub in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_cub_1 for_cub_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_uno_builder_formula for_cub_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_uno_builder_formula for_cub_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_cub_1 for_cub_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_uno_builder_formula for_cub_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_uno_builder_formula for_cub_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

