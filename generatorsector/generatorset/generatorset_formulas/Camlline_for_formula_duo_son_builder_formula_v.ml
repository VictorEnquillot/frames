(** {3 Camlline_for_formula_duo_son_builder_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_formula_duo_son_builder_formula_v";
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

let symbol_of_formula for_csb =
  match for_csb with
  | Camlline_for_formula_duo_son_builder_formula_t.Es_formula_vdot_eb_tag_list_off_es_formula_for_as _ ->
     Camlline_for_formula_duo_son_builder_symbol_t.Es_formula_vdot_eb_tag_list_off_es_formula_for_as
  | Camlline_for_formula_duo_son_builder_formula_t.Pipe_es_constructor_of_eb_tag_tdot_eb_tag_list _ ->
     Camlline_for_formula_duo_son_builder_symbol_t.Pipe_es_constructor_of_eb_tag_tdot_eb_tag_list
  | Camlline_for_formula_duo_son_builder_formula_t.Pipe_es_constructor_of_string_star_eb_tag_tdot_eb_tag_list _ ->
     Camlline_for_formula_duo_son_builder_symbol_t.Pipe_es_constructor_of_string_star_eb_tag_tdot_eb_tag_list

;;

(** {6 Naming_for_formula} *)

let name for_csb = 
  let sym_csb = symbol_of_formula for_csb in
  Camlline_for_formula_duo_son_builder_symbol_v.name sym_csb
;;
(* ***

let string_off for_csb =
  let sym_csb = symbol_of_formula for_csb in
  Camlline_for_formula_duo_son_builder_symbol_v.string_off sym_csb
;;

let longname for_csb =
  Format.sprintf "Camlline_for_formula_duo_son_builder_formula_t.%s" 
    (String.capitalize (name for_csb))

let fullname for_csb =
  Format.sprintf "%s \"%s\"" (longname for_csb) (string_off for_csb)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_csb soi_cal =
  let tag_csb = Tag_v.make sym_csb soi_cal in
  let dec_csb = 
    Camlline_for_formula_duo_son_builder_tag_v.camlline_for_formula_duo_son_builder_dectup_off_camlline_for_formula_duo_son_builder_tag 
      tag_csb 
  in

(* BT builders *)
  
  let tri_ent_top = Decuplet_v.right_triplet_off_decuplet dec_csb in

  let sym_ent_son = 
    Tools_fgnr_v.entity_topson_symbol_of_camlline_dectup_of_sole_index 
      dec_csb 
      soi_cal 
  in
  let tri_ent_son = Triplet_v.reset_of_left_off_triplet sym_ent_son tri_ent_top in
  let sym_ent_son_bui = Tools_fgnr_v.entity_builder_main_symbol_of_entity_tritup tri_ent_son in

  let sym_ent_l = 
    Camlline_for_formula_duo_son_builder_interface_v.make_of_duo 
      sym_csb 
      sym_ent_son 
      sym_ent_son_bui
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

let make sym_csb soi_cal =
  let tag_ent_l = build_n_store sym_csb soi_cal in

  match sym_csb with 
  | Camlline_for_formula_duo_son_builder_symbol_t.Es_formula_vdot_eb_tag_list_off_es_formula_for_as ->
     Camlline_for_formula_duo_son_builder_formula_t.Es_formula_vdot_eb_tag_list_off_es_formula_for_as tag_ent_l
  | Camlline_for_formula_duo_son_builder_symbol_t.Pipe_es_constructor_of_eb_tag_tdot_eb_tag_list ->
     Camlline_for_formula_duo_son_builder_formula_t.Pipe_es_constructor_of_eb_tag_tdot_eb_tag_list tag_ent_l
  | Camlline_for_formula_duo_son_builder_symbol_t.Pipe_es_constructor_of_string_star_eb_tag_tdot_eb_tag_list ->
     Camlline_for_formula_duo_son_builder_formula_t.Pipe_es_constructor_of_string_star_eb_tag_tdot_eb_tag_list tag_ent_l

;;

(** {6 Retrieving} *)

let retrieve tag_csb =
  let soi_gro = Tag_v.sole_index_off_tag tag_csb in
  let sym_csb = Tag_v.entity_off_tag tag_csb in
  make sym_csb soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_formula_duo_son_builder_formula for_csb =
  match for_csb with
  | Camlline_for_formula_duo_son_builder_formula_t.Es_formula_vdot_eb_tag_list_off_es_formula_for_as tag_ent_l -> tag_ent_l
  | Camlline_for_formula_duo_son_builder_formula_t.Pipe_es_constructor_of_eb_tag_tdot_eb_tag_list tag_ent_l -> tag_ent_l
  | Camlline_for_formula_duo_son_builder_formula_t.Pipe_es_constructor_of_string_star_eb_tag_tdot_eb_tag_list tag_ent_l -> tag_ent_l

;;

let entity_tag_list_off_camlline_for_formula_duo_son_builder_tag tag_csb =
  let for_csb = retrieve tag_csb in
  entity_tag_list_off_camlline_for_formula_duo_son_builder_formula for_csb
;; 

(** {6 Iterating_for_formula_for_formula_duo_son_builder.} *)

let map f_of_tag_ent for_csb = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_duo_son_builder_formula for_csb in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_csb = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_duo_son_builder_formula for_csb in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_csb_1 for_csb_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_duo_son_builder_formula for_csb_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_duo_son_builder_formula for_csb_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_csb_1 for_csb_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_duo_son_builder_formula for_csb_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_duo_son_builder_formula for_csb_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

