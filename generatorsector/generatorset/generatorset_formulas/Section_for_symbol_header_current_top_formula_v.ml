(** {3 Section_for_symbol_header_current_top_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Section_for_symbol_header_current_top_interface_v";
   "Current : FGNR:Section_for_symbol_header_current_top_formula_v";
   "Needed-by : FGNR:Section_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a For_symbol_header_current_top type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_sct =
  match for_sct with
  | Section_for_symbol_header_current_top_formula_t.Let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal _ -> 
      Section_for_symbol_header_current_top_symbol_t.Let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal

  | Section_for_symbol_header_current_top_formula_t.Let_is_grandson_bare _ -> 
      Section_for_symbol_header_current_top_symbol_t.Let_is_grandson_bare

  | Section_for_symbol_header_current_top_formula_t.Let_is_grandson_ofstring _ -> 
      Section_for_symbol_header_current_top_symbol_t.Let_is_grandson_ofstring

  | Section_for_symbol_header_current_top_formula_t.Let_grandson_notleaf_symbol_off_top_symbol_argument_equal _ -> 
      Section_for_symbol_header_current_top_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol_argument_equal

  | Section_for_symbol_header_current_top_formula_t.Let_top_symbol_of_grandson_notleaf_symbol_argument_equal _ -> 
      Section_for_symbol_header_current_top_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol_argument_equal

;;

(** {6 Naming_for_formula} *)

let name for_sct = 
  let sym_sct = symbol_of_formula for_sct in
  Section_for_symbol_header_current_top_symbol_v.name sym_sct
;;
(* ***

let string_off for_sct =
  let sym_sct = symbol_of_formula for_sct in
  Section_for_symbol_header_current_top_symbol_v.string_off sym_sct
;;

let longname for_sct =
  Format.sprintf "Section_for_symbol_header_current_top_formula_t.%s" 
    (String.capitalize (name for_sct))

let fullname for_sct =
  Format.sprintf "%s \"%s\"" (longname for_sct) (string_off for_sct)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_sct soi_sec =
  let sym_gro_l = Section_for_symbol_header_current_top_interface_v.make sym_sct in
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

let make sym_sct soi_sec =
  let tag_gro_l = build_n_store sym_sct soi_sec in

  match sym_sct with 
  | Section_for_symbol_header_current_top_symbol_t.Let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal -> 
      Section_for_symbol_header_current_top_formula_t.Let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal tag_gro_l

  | Section_for_symbol_header_current_top_symbol_t.Let_is_grandson_bare -> 
      Section_for_symbol_header_current_top_formula_t.Let_is_grandson_bare tag_gro_l

  | Section_for_symbol_header_current_top_symbol_t.Let_is_grandson_ofstring -> 
      Section_for_symbol_header_current_top_formula_t.Let_is_grandson_ofstring tag_gro_l

  | Section_for_symbol_header_current_top_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol_argument_equal -> 
      Section_for_symbol_header_current_top_formula_t.Let_grandson_notleaf_symbol_off_top_symbol_argument_equal tag_gro_l

  | Section_for_symbol_header_current_top_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol_argument_equal -> 
      Section_for_symbol_header_current_top_formula_t.Let_top_symbol_of_grandson_notleaf_symbol_argument_equal tag_gro_l
;;

(** {6 Retrieving} *)

let retrieve tag_sct =
  let soi_sec = Tag_v.sole_index_off_tag tag_sct in
  let sym_sct = Tag_v.entity_off_tag tag_sct in
  make sym_sct soi_sec 
;; 

(** {6 Builder_tag_listing} *)

let group_tag_list_off_section_for_symbol_header_current_top_formula for_sct =
  match for_sct with
  | Section_for_symbol_header_current_top_formula_t.Let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal tag_cap_l -> 
      tag_cap_l

  | Section_for_symbol_header_current_top_formula_t.Let_is_grandson_bare tag_cap_l -> 
      tag_cap_l

  | Section_for_symbol_header_current_top_formula_t.Let_is_grandson_ofstring tag_cap_l -> 
      tag_cap_l

  | Section_for_symbol_header_current_top_formula_t.Let_grandson_notleaf_symbol_off_top_symbol_argument_equal tag_cap_l -> 
      tag_cap_l

  | Section_for_symbol_header_current_top_formula_t.Let_top_symbol_of_grandson_notleaf_symbol_argument_equal tag_cap_l -> 
      tag_cap_l
;;

let group_tag_list_off_section_for_symbol_header_current_top_tag tag_sct =
  let for_sct = retrieve tag_sct in
  group_tag_list_off_section_for_symbol_header_current_top_formula for_sct
;; 

let camlline_tag_list_off_section_for_symbol_header_current_top_formula for_sct =
  let tag_gro_l = 
    group_tag_list_off_section_for_symbol_header_current_top_formula 
      for_sct 
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

let camlline_tag_list_off_section_for_symbol_header_current_top_tag tag_sct =
  let for_sct = retrieve tag_sct in
  camlline_tag_list_off_section_for_symbol_header_current_top_formula for_sct
;; 

(** {6 Iterating_for_formula} *)

let map f_of_tag_gro for_sct = 
  let tag_gro_l = group_tag_list_off_section_for_symbol_header_current_top_formula for_sct in
  List.map f_of_tag_gro tag_gro_l
;;

let iter f_of_tag_gro for_sct = 
  let tag_gro_l = group_tag_list_off_section_for_symbol_header_current_top_formula for_sct in
  List.iter f_of_tag_gro tag_gro_l ;;

let map2 f_of_tag_gro for_sct_1 for_sct_2  = 
  let tag_gro_l_1 = group_tag_list_off_section_for_symbol_header_current_top_formula for_sct_1 in
  let tag_gro_l_2 = group_tag_list_off_section_for_symbol_header_current_top_formula for_sct_2 in
  List.map2 f_of_tag_gro tag_gro_l_1 tag_gro_l_2
;;

let iter2 f_of_tag_gro for_sct_1 for_sct_2 = 
  let tag_gro_l_1 = group_tag_list_off_section_for_symbol_header_current_top_formula for_sct_1 in
  let tag_gro_l_2 = group_tag_list_off_section_for_symbol_header_current_top_formula for_sct_2 in
  List.iter2 f_of_tag_gro tag_gro_l_1 tag_gro_l_2 
;;

