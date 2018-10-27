(** {3 Section_for_formula_body_son_top_main_builder_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Section_for_formula_body_son_top_main_builder_interface_v";
   "Current : FGNR:Section_for_formula_body_son_top_main_builder_formula_v";
   "Needed-by : FGNR:Section_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_smb =
  match for_smb with
  | Section_for_formula_body_son_top_main_builder_formula_t.Make_topson_pattern_bare_for_formula _ ->
     Section_for_formula_body_son_top_main_builder_symbol_t.Make_topson_pattern_bare_for_formula
  | Section_for_formula_body_son_top_main_builder_formula_t.Make_topson_pattern_ofstring_for_formula _ ->
     Section_for_formula_body_son_top_main_builder_symbol_t.Make_topson_pattern_ofstring_for_formula

;;

(** {6 Naming_for_formula} *)

let name for_smb = 
  let sym_smb = symbol_of_formula for_smb in
  Section_for_formula_body_son_top_main_builder_symbol_v.name sym_smb
;;
(* ***

let string_off for_smb =
  let sym_smb = symbol_of_formula for_smb in
  Section_for_formula_body_son_top_main_builder_symbol_v.string_off sym_smb
;;

let longname for_smb =
  Format.sprintf "Section_for_formula_body_son_top_main_builder_formula_t.%s" 
    (String.capitalize (name for_smb))

let fullname for_smb =
  Format.sprintf "%s \"%s\"" (longname for_smb) (string_off for_smb)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_smb soi_sec =
  let tag_smb = Tag_v.make sym_smb soi_sec in
  let oct_smb = 
    Section_for_formula_body_son_top_main_builder_tag_v.section_for_formula_body_son_top_main_builder_octtup_off_section_for_formula_body_son_top_main_builder_tag 
      tag_smb 
  in
  let sym_gro_l = Section_for_formula_body_son_top_main_builder_interface_v.make_of_tuple oct_smb in
  let soi_gro_l =               (* Sole_index_datastructure_of_datastructure_of_sole_index *)
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_gro_l)
      soi_sec
  in

  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_group_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_gro_l soi_gro_l;
  
  List.map2 Tag_v.make sym_gro_l soi_gro_l
;;

(** {6 Making_for_formula} *)

let make sym_smb soi_sec =
  let tag_gro_l = build_n_store sym_smb soi_sec in

  match sym_smb with 
  | Section_for_formula_body_son_top_main_builder_symbol_t.Make_topson_pattern_bare_for_formula ->
     Section_for_formula_body_son_top_main_builder_formula_t.Make_topson_pattern_bare_for_formula tag_gro_l
  | Section_for_formula_body_son_top_main_builder_symbol_t.Make_topson_pattern_ofstring_for_formula ->
     Section_for_formula_body_son_top_main_builder_formula_t.Make_topson_pattern_ofstring_for_formula tag_gro_l

;;

(** {6 Retrieving} *)

let retrieve tag_smb =
  let soi_sec = Tag_v.sole_index_off_tag tag_smb in
  let sym_smb = Tag_v.entity_off_tag tag_smb in
  make sym_smb soi_sec 
;; 

(** {6 Builder_tag_listing} *)

let group_tag_list_off_section_for_formula_body_son_top_main_builder_formula for_smb =
  match for_smb with
  | Section_for_formula_body_son_top_main_builder_formula_t.Make_topson_pattern_bare_for_formula tag_gro_l -> tag_gro_l
  | Section_for_formula_body_son_top_main_builder_formula_t.Make_topson_pattern_ofstring_for_formula tag_gro_l -> tag_gro_l

;;

let group_tag_list_off_section_for_formula_body_son_top_main_builder_tag tag_smb =
  let for_smb = retrieve tag_smb in
  group_tag_list_off_section_for_formula_body_son_top_main_builder_formula for_smb
;; 

let camlline_tag_list_off_section_for_formula_body_son_top_main_builder_formula for_smb =
  let tag_gro_l = 
    group_tag_list_off_section_for_formula_body_son_top_main_builder_formula 
      for_smb 
  in
  let for_gro_l = List.map
      Group_formula_v.retrieve 
      tag_gro_l 
  in
  let tag_cal_ll = List.map
      Group_formula_v.camlline_tag_list_off_group_formula 
      for_gro_l
  in 
  List.flatten tag_cal_ll
;;

let camlline_tag_list_off_section_for_formula_body_son_top_main_builder_tag tag_smb =
  let for_smb = retrieve tag_smb in
  camlline_tag_list_off_section_for_formula_body_son_top_main_builder_formula for_smb
;; 

(** {6 Iterating_for_formula} *)

let map f_of_tag_gro for_smb = 
  let tag_gro_l = group_tag_list_off_section_for_formula_body_son_top_main_builder_formula for_smb in
  List.map f_of_tag_gro tag_gro_l
;;

let iter f_of_tag_gro for_smb = 
  let tag_gro_l = group_tag_list_off_section_for_formula_body_son_top_main_builder_formula for_smb in
  List.iter f_of_tag_gro tag_gro_l ;;

let map2 f_of_tag_gro for_smb_1 for_smb_2  = 
  let tag_gro_l_1 = group_tag_list_off_section_for_formula_body_son_top_main_builder_formula for_smb_1 in
  let tag_gro_l_2 = group_tag_list_off_section_for_formula_body_son_top_main_builder_formula for_smb_2 in
  List.map2 f_of_tag_gro tag_gro_l_1 tag_gro_l_2
;;

let iter2 f_of_tag_gro for_smb_1 for_smb_2 = 
  let tag_gro_l_1 = group_tag_list_off_section_for_formula_body_son_top_main_builder_formula for_smb_1 in
  let tag_gro_l_2 = group_tag_list_off_section_for_formula_body_son_top_main_builder_formula for_smb_2 in
  List.iter2 f_of_tag_gro tag_gro_l_1 tag_gro_l_2 
;;

