(** {3 Section_for_formula_header_top_main_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Section_for_formula_header_top_main_interface_v";
   "Current : FGNR:Section_for_formula_header_top_main_formula_v";
   "Needed-by : FGNR:Section_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_stm =
  match for_stm with
  | Section_for_formula_header_top_main_formula_t.Let_build_n_store_basic_sons _ ->
     Section_for_formula_header_top_main_symbol_t.Let_build_n_store_basic_sons
  | Section_for_formula_header_top_main_formula_t.Let_build_n_store_proper_sons _ ->
     Section_for_formula_header_top_main_symbol_t.Let_build_n_store_proper_sons
  | Section_for_formula_header_top_main_formula_t.Let_make_arguments_equal_match_with _ ->
     Section_for_formula_header_top_main_symbol_t.Let_make_arguments_equal_match_with

;;

(** {6 Naming_for_formula} *)

let name for_stm = 
  let sym_stm = symbol_of_formula for_stm in
  Section_for_formula_header_top_main_symbol_v.name sym_stm
;;
(* ***

let string_off for_stm =
  let sym_stm = symbol_of_formula for_stm in
  Section_for_formula_header_top_main_symbol_v.string_off sym_stm
;;

let longname for_stm =
  Format.sprintf "Section_for_formula_header_top_main_formula_t.%s" 
    (String.capitalize (name for_stm))

let fullname for_stm =
  Format.sprintf "%s \"%s\"" (longname for_stm) (string_off for_stm)
;;
*** *)

(** {6 Building_and_storing_proper_sons} *)

let build_n_store sym_stm soi_sec =
  let sym_gro_l = Section_for_formula_header_top_main_interface_v.make_of_symbol sym_stm in
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

let make sym_stm soi_sec =
  let tag_gro_l = build_n_store sym_stm soi_sec in
  match sym_stm with 
  | Section_for_formula_header_top_main_symbol_t.Let_build_n_store_basic_sons ->
     Section_for_formula_header_top_main_formula_t.Let_build_n_store_basic_sons tag_gro_l
  | Section_for_formula_header_top_main_symbol_t.Let_build_n_store_proper_sons ->
     Section_for_formula_header_top_main_formula_t.Let_build_n_store_proper_sons tag_gro_l
  | Section_for_formula_header_top_main_symbol_t.Let_make_arguments_equal_match_with ->
     Section_for_formula_header_top_main_formula_t.Let_make_arguments_equal_match_with tag_gro_l

;;

(** {6 Retrieving} *)

let retrieve tag_stm =
  let soi_sec = Tag_v.sole_index_off_tag tag_stm in
  let sym_stm = Tag_v.entity_off_tag tag_stm in
  make sym_stm soi_sec 
;; 

(** {6 Builder_tag_listing} *)

let group_tag_list_off_section_for_formula_header_top_main_formula for_stm =
  match for_stm with
  | Section_for_formula_header_top_main_formula_t.Let_build_n_store_basic_sons tag_gro_l -> tag_gro_l
  | Section_for_formula_header_top_main_formula_t.Let_build_n_store_proper_sons tag_gro_l -> tag_gro_l
  | Section_for_formula_header_top_main_formula_t.Let_make_arguments_equal_match_with tag_gro_l -> tag_gro_l

;;

let group_tag_list_off_section_for_formula_header_top_main_tag tag_stm =
  let for_stm = retrieve tag_stm in
  group_tag_list_off_section_for_formula_header_top_main_formula for_stm
;; 

let camlline_tag_list_off_section_for_formula_header_top_main_formula for_stm =
  let tag_gro_l = 
    group_tag_list_off_section_for_formula_header_top_main_formula 
      for_stm 
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

let camlline_tag_list_off_section_for_formula_header_top_main_tag tag_stm =
  let for_stm = retrieve tag_stm in
  camlline_tag_list_off_section_for_formula_header_top_main_formula for_stm
;; 

(** {6 Iterating_for_formula} *)

let map f_of_tag_gro for_stm = 
  let tag_gro_l = group_tag_list_off_section_for_formula_header_top_main_formula for_stm in
  List.map f_of_tag_gro tag_gro_l
;;

let iter f_of_tag_gro for_stm = 
  let tag_gro_l = group_tag_list_off_section_for_formula_header_top_main_formula for_stm in
  List.iter f_of_tag_gro tag_gro_l ;;

let map2 f_of_tag_gro for_stm_1 for_stm_2  = 
  let tag_gro_l_1 = group_tag_list_off_section_for_formula_header_top_main_formula for_stm_1 in
  let tag_gro_l_2 = group_tag_list_off_section_for_formula_header_top_main_formula for_stm_2 in
  List.map2 f_of_tag_gro tag_gro_l_1 tag_gro_l_2
;;

let iter2 f_of_tag_gro for_stm_1 for_stm_2 = 
  let tag_gro_l_1 = group_tag_list_off_section_for_formula_header_top_main_formula for_stm_1 in
  let tag_gro_l_2 = group_tag_list_off_section_for_formula_header_top_main_formula for_stm_2 in
  List.iter2 f_of_tag_gro tag_gro_l_1 tag_gro_l_2 
;;

