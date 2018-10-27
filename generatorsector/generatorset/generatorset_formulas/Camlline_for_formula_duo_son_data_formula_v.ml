(** {3 Camlline_for_formula_duo_son_data_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_formula_duo_son_data_formula_v";
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

let symbol_of_formula for_csd =
  match for_csd with
  | Camlline_for_formula_duo_son_data_formula_t.Es_formula_vdot_ed_tag_list_off_es_formula_for_as _ ->
     Camlline_for_formula_duo_son_data_symbol_t.Es_formula_vdot_ed_tag_list_off_es_formula_for_as
  | Camlline_for_formula_duo_son_data_formula_t.Pipe_es_constructor_of_ed_tag_tdot_ed_tag_list _ ->
     Camlline_for_formula_duo_son_data_symbol_t.Pipe_es_constructor_of_ed_tag_tdot_ed_tag_list
  | Camlline_for_formula_duo_son_data_formula_t.Pipe_es_constructor_of_string_star_ed_tag_tdot_ed_tag_list _ ->
     Camlline_for_formula_duo_son_data_symbol_t.Pipe_es_constructor_of_string_star_ed_tag_tdot_ed_tag_list

;;

(** {6 Naming_for_formula} *)

let name for_csd = 
  let sym_csd = symbol_of_formula for_csd in
  Camlline_for_formula_duo_son_data_symbol_v.name sym_csd
;;
(* ***

let string_off for_csd =
  let sym_csd = symbol_of_formula for_csd in
  Camlline_for_formula_duo_son_data_symbol_v.string_off sym_csd
;;

let longname for_csd =
  Format.sprintf "Camlline_for_formula_duo_son_data_formula_t.%s" 
    (String.capitalize (name for_csd))

let fullname for_csd =
  Format.sprintf "%s \"%s\"" (longname for_csd) (string_off for_csd)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_csd soi_cal =
  let tag_csd = Tag_v.make sym_csd soi_cal in
  let dec_csd = 
    Camlline_for_formula_duo_son_data_tag_v.camlline_for_formula_duo_son_data_dectup_off_camlline_for_formula_duo_son_data_tag 
      tag_csd 
  in

(* BT datas *)
  
  let tri_ent_top = Decuplet_v.right_triplet_off_decuplet dec_csd in
  let sym_ent_son = 
    Tools_fgnr_v.entity_topson_symbol_of_camlline_dectup_of_sole_index 
      dec_csd 
      soi_cal 
  in
  let tri_ent_son = Triplet_v.reset_of_left_off_triplet sym_ent_son tri_ent_top in
  let sym_ent_dat = 
    Tools_fgnr_v.entity_builder_data_symbol_of_entity_tritup 
      tri_ent_son
  in 

  let sym_ent_l = 
    Camlline_for_formula_duo_son_data_interface_v.make_of_duo 
      sym_csd 
      sym_ent_son 
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

let make sym_csd soi_cal =
  let tag_ent_l = build_n_store sym_csd soi_cal in
  match sym_csd with 
  | Camlline_for_formula_duo_son_data_symbol_t.Es_formula_vdot_ed_tag_list_off_es_formula_for_as ->
     Camlline_for_formula_duo_son_data_formula_t.Es_formula_vdot_ed_tag_list_off_es_formula_for_as tag_ent_l
  | Camlline_for_formula_duo_son_data_symbol_t.Pipe_es_constructor_of_ed_tag_tdot_ed_tag_list ->
     Camlline_for_formula_duo_son_data_formula_t.Pipe_es_constructor_of_ed_tag_tdot_ed_tag_list tag_ent_l
  | Camlline_for_formula_duo_son_data_symbol_t.Pipe_es_constructor_of_string_star_ed_tag_tdot_ed_tag_list ->
     Camlline_for_formula_duo_son_data_formula_t.Pipe_es_constructor_of_string_star_ed_tag_tdot_ed_tag_list tag_ent_l
;;

(** {6 Retrieving} *)

let retrieve tag_csd =
  let soi_gro = Tag_v.sole_index_off_tag tag_csd in
  let sym_csd = Tag_v.entity_off_tag tag_csd in
  make sym_csd soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_formula_duo_son_data_formula for_csd =
  match for_csd with
  | Camlline_for_formula_duo_son_data_formula_t.Es_formula_vdot_ed_tag_list_off_es_formula_for_as tag_ent_l -> tag_ent_l
  | Camlline_for_formula_duo_son_data_formula_t.Pipe_es_constructor_of_ed_tag_tdot_ed_tag_list tag_ent_l -> tag_ent_l
  | Camlline_for_formula_duo_son_data_formula_t.Pipe_es_constructor_of_string_star_ed_tag_tdot_ed_tag_list tag_ent_l -> tag_ent_l

;;

let entity_tag_list_off_camlline_for_formula_duo_son_data_tag tag_csd =
  let for_csd = retrieve tag_csd in
  entity_tag_list_off_camlline_for_formula_duo_son_data_formula for_csd
;; 

(** {6 Iterating_for_formula_for_formula_duo_son_data.} *)

let map f_of_tag_ent for_csd = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_duo_son_data_formula for_csd in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_csd = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_duo_son_data_formula for_csd in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_csd_1 for_csd_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_duo_son_data_formula for_csd_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_duo_son_data_formula for_csd_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_csd_1 for_csd_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_duo_son_data_formula for_csd_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_duo_son_data_formula for_csd_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

