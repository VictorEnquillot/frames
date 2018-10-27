(** {3 Camlline_for_formula_duo_localset_builder_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_formula_duo_localset_builder_formula_v";
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

let symbol_of_formula for_cdb =
  match for_cdb with
  | Camlline_for_formula_duo_localset_builder_formula_t.Let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in _ ->
     Camlline_for_formula_duo_localset_builder_symbol_t.Let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in
  | Camlline_for_formula_duo_localset_builder_formula_t.List_dot_iter2_localset_symbol_by_sole_index_register_vdot_store_soi_ab_l_dss_ab_l_semicolon _ ->
     Camlline_for_formula_duo_localset_builder_symbol_t.List_dot_iter2_localset_symbol_by_sole_index_register_vdot_store_soi_ab_l_dss_ab_l_semicolon

;;

(** {6 Naming_for_formula} *)

let name for_cdb = 
  let sym_cdb = symbol_of_formula for_cdb in
  Camlline_for_formula_duo_localset_builder_symbol_v.name sym_cdb
;;
(* ***

let string_off for_cdb =
  let sym_cdb = symbol_of_formula for_cdb in
  Camlline_for_formula_duo_localset_builder_symbol_v.string_off sym_cdb
;;

let longname for_cdb =
  Format.sprintf "Camlline_for_formula_duo_localset_builder_formula_t.%s" 
    (String.capitalize (name for_cdb))

let fullname for_cdb =
  Format.sprintf "%s \"%s\"" (longname for_cdb) (string_off for_cdb)
;;
*** *)

(** {6 Building_and_storing_proper_sons} *)

let build_n_store sym_cdb soi_cal =
  let tag_cdb = Tag_v.make sym_cdb soi_cal in
  let dec_cdb = 
    Camlline_for_formula_duo_localset_builder_tag_v.camlline_for_formula_duo_localset_builder_dectup_off_camlline_for_formula_duo_localset_builder_tag 
      tag_cdb 
  in

(* BT builders *)

  let sym_ent_l = Camlline_for_formula_duo_localset_builder_interface_v.make_of_tuple dec_cdb in
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

let make sym_cdb soi_cal =
  let tag_ent_l = build_n_store sym_cdb soi_cal in
  match sym_cdb with 
  | Camlline_for_formula_duo_localset_builder_symbol_t.Let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in ->
     Camlline_for_formula_duo_localset_builder_formula_t.Let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in tag_ent_l
  | Camlline_for_formula_duo_localset_builder_symbol_t.List_dot_iter2_localset_symbol_by_sole_index_register_vdot_store_soi_ab_l_dss_ab_l_semicolon ->
     Camlline_for_formula_duo_localset_builder_formula_t.List_dot_iter2_localset_symbol_by_sole_index_register_vdot_store_soi_ab_l_dss_ab_l_semicolon tag_ent_l
;;

(** {6 Retrieving} *)

let retrieve tag_cdb =
  let soi_gro = Tag_v.sole_index_off_tag tag_cdb in
  let sym_cdb = Tag_v.entity_off_tag tag_cdb in
  make sym_cdb soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_formula_duo_localset_builder_formula for_cdb =
  match for_cdb with
  | Camlline_for_formula_duo_localset_builder_formula_t.Let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in tag_ent_l -> tag_ent_l
  | Camlline_for_formula_duo_localset_builder_formula_t.List_dot_iter2_localset_symbol_by_sole_index_register_vdot_store_soi_ab_l_dss_ab_l_semicolon tag_ent_l -> tag_ent_l

;;

let entity_tag_list_off_camlline_for_formula_duo_localset_builder_tag tag_cdb =
  let for_cdb = retrieve tag_cdb in
  entity_tag_list_off_camlline_for_formula_duo_localset_builder_formula for_cdb
;; 

(** {6 Iterating_for_formula_for_formula_duo_localset_builder.} *)

let map f_of_tag_ent for_cdb = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_duo_localset_builder_formula for_cdb in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_cdb = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_duo_localset_builder_formula for_cdb in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_cdb_1 for_cdb_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_duo_localset_builder_formula for_cdb_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_duo_localset_builder_formula for_cdb_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_cdb_1 for_cdb_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_duo_localset_builder_formula for_cdb_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_duo_localset_builder_formula for_cdb_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

