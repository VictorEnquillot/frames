(** {3 Section_for_any_body_son_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Section_for_any_body_son_interface_v";
   "Current : FGNR:Section_for_any_body_son_formula_v";
   "Needed-by : FGNR:Section_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_sbs =
  match for_sbs with
  | Section_for_any_body_son_formula_t.Pipe_topson_any_type_notleaf_constructors _ ->
     Section_for_any_body_son_symbol_t.Pipe_topson_any_type_notleaf_constructors

;;

(** {6 Naming_for_formula} *)

let name for_sbs = 
  let sym_sbs = symbol_of_formula for_sbs in
  Section_for_any_body_son_symbol_v.name sym_sbs
;;
(* ***

let string_off for_sbs =
  let sym_sbs = symbol_of_formula for_sbs in
  Section_for_any_body_son_symbol_v.string_off sym_sbs
;;

let longname for_sbs =
  Format.sprintf "Section_for_any_body_son_formula_t.%s" 
    (String.capitalize (name for_sbs))

let fullname for_sbs =
  Format.sprintf "%s \"%s\"" (longname for_sbs) (string_off for_sbs)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_sbs soi_sec =
  let tag_sbs = Tag_v.make sym_sbs soi_sec in
  let oct_sbs = 
    Section_for_any_body_son_tag_v.section_for_any_body_son_octtup_off_section_for_any_body_son_tag 
      tag_sbs 
  in
  let sym_gro_l = Section_for_any_body_son_interface_v.make_of_tuple oct_sbs in
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

let make sym_sbs soi_sec =
  let tag_gro_l = build_n_store sym_sbs soi_sec in

  match sym_sbs with 
  | Section_for_any_body_son_symbol_t.Pipe_topson_any_type_notleaf_constructors ->
     Section_for_any_body_son_formula_t.Pipe_topson_any_type_notleaf_constructors tag_gro_l

;;

(** {6 Retrieving} *)

let retrieve tag_sbs =
  let soi_sec = Tag_v.sole_index_off_tag tag_sbs in
  let sym_sbs = Tag_v.entity_off_tag tag_sbs in
  make sym_sbs soi_sec 
;; 

(** {6 Builder_tag_listing} *)

let group_tag_list_off_section_for_any_body_son_formula for_sbs =
  match for_sbs with
  | Section_for_any_body_son_formula_t.Pipe_topson_any_type_notleaf_constructors tag_gro_l -> tag_gro_l

;;

let group_tag_list_off_section_for_any_body_son_tag tag_sbs =
  let for_sbs = retrieve tag_sbs in
  group_tag_list_off_section_for_any_body_son_formula for_sbs
;; 

let camlline_tag_list_off_section_for_any_body_son_formula for_sbs =
  let tag_gro_l = 
    group_tag_list_off_section_for_any_body_son_formula 
      for_sbs 
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

let camlline_tag_list_off_section_for_any_body_son_tag tag_sbs =
  let for_sbs = retrieve tag_sbs in
  camlline_tag_list_off_section_for_any_body_son_formula for_sbs
;; 

(** {6 Iterating_for_formula} *)

let map f_of_tag_gro for_sbs = 
  let tag_gro_l = group_tag_list_off_section_for_any_body_son_formula for_sbs in
  List.map f_of_tag_gro tag_gro_l
;;

let iter f_of_tag_gro for_sbs = 
  let tag_gro_l = group_tag_list_off_section_for_any_body_son_formula for_sbs in
  List.iter f_of_tag_gro tag_gro_l ;;

let map2 f_of_tag_gro for_sbs_1 for_sbs_2  = 
  let tag_gro_l_1 = group_tag_list_off_section_for_any_body_son_formula for_sbs_1 in
  let tag_gro_l_2 = group_tag_list_off_section_for_any_body_son_formula for_sbs_2 in
  List.map2 f_of_tag_gro tag_gro_l_1 tag_gro_l_2
;;

let iter2 f_of_tag_gro for_sbs_1 for_sbs_2 = 
  let tag_gro_l_1 = group_tag_list_off_section_for_any_body_son_formula for_sbs_1 in
  let tag_gro_l_2 = group_tag_list_off_section_for_any_body_son_formula for_sbs_2 in
  List.iter2 f_of_tag_gro tag_gro_l_1 tag_gro_l_2 
;;

