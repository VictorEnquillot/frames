(** {3 Section_for_symbol_header_constant_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Section_for_symbol_header_constant_interface_v";
   "Current : FGNR:Section_for_symbol_header_constant_formula_v";
   "Needed-by : FGNR:Section_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_sss =
  match for_sss with
  | Section_for_symbol_header_constant_formula_t.Let_make_equal_function _ -> 
      Section_for_symbol_header_constant_symbol_t.Let_make_equal_function

  | Section_for_symbol_header_constant_formula_t.Let_make_nam_s_equal _ -> 
      Section_for_symbol_header_constant_symbol_t.Let_make_nam_s_equal

  | Section_for_symbol_header_constant_formula_t.Let_make_of_topson_bare_nam_equal _ -> 
      Section_for_symbol_header_constant_symbol_t.Let_make_of_topson_bare_nam_equal

  | Section_for_symbol_header_constant_formula_t.Let_make_of_topson_notleaf_nam_s_equal _ -> 
      Section_for_symbol_header_constant_symbol_t.Let_make_of_topson_notleaf_nam_s_equal

  | Section_for_symbol_header_constant_formula_t.Let_make_of_topson_ofstring_nam_s_equal _ -> 
      Section_for_symbol_header_constant_symbol_t.Let_make_of_topson_ofstring_nam_s_equal

  | Section_for_symbol_header_constant_formula_t.Let_name_equal_function _ -> 
      Section_for_symbol_header_constant_symbol_t.Let_name_equal_function

  | Section_for_symbol_header_constant_formula_t.Let_name_of_topson_bare_equal_function _ -> 
      Section_for_symbol_header_constant_symbol_t.Let_name_of_topson_bare_equal_function

  | Section_for_symbol_header_constant_formula_t.Let_name_of_topson_notleaf_equal_function _ -> 
      Section_for_symbol_header_constant_symbol_t.Let_name_of_topson_notleaf_equal_function

  | Section_for_symbol_header_constant_formula_t.Let_name_of_topson_ofstring_equal_function _ -> 
      Section_for_symbol_header_constant_symbol_t.Let_name_of_topson_ofstring_equal_function

  | Section_for_symbol_header_constant_formula_t.Let_string_off_equal_function _ -> 
      Section_for_symbol_header_constant_symbol_t.Let_string_off_equal_function

  | Section_for_symbol_header_constant_formula_t.Let_string_off_of_topson_bare_equal_function _ -> 
      Section_for_symbol_header_constant_symbol_t.Let_string_off_of_topson_bare_equal_function

  | Section_for_symbol_header_constant_formula_t.Let_string_off_of_topson_notleaf_equal_function _ -> 
      Section_for_symbol_header_constant_symbol_t.Let_string_off_of_topson_notleaf_equal_function

  | Section_for_symbol_header_constant_formula_t.Let_string_off_of_topson_ofstring_equal_function _ -> 
      Section_for_symbol_header_constant_symbol_t.Let_string_off_of_topson_ofstring_equal_function

;;

(** {6 Naming_for_formula} *)

let name for_sss = 
  let sym_sss = symbol_of_formula for_sss in
  Section_for_symbol_header_constant_symbol_v.name sym_sss
;;
(* ***

let string_off for_sss =
  let sym_sss = symbol_of_formula for_sss in
  Section_for_symbol_header_constant_symbol_v.string_off sym_sss
;;

let longname for_sss =
  Format.sprintf "Section_for_symbol_header_constant_formula_t.%s" 
    (String.capitalize (name for_sss))

let fullname for_sss =
  Format.sprintf "%s \"%s\"" (longname for_sss) (string_off for_sss)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_sss soi_sec =
  let sym_gro_l = Section_for_symbol_header_constant_interface_v.make sym_sss in
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

let make sym_sss soi_sec =
  let tag_gro_l = build_n_store sym_sss soi_sec in

  match sym_sss with 
  | Section_for_symbol_header_constant_symbol_t.Let_make_equal_function -> 
      Section_for_symbol_header_constant_formula_t.Let_make_equal_function tag_gro_l

  | Section_for_symbol_header_constant_symbol_t.Let_make_nam_s_equal -> 
      Section_for_symbol_header_constant_formula_t.Let_make_nam_s_equal tag_gro_l

  | Section_for_symbol_header_constant_symbol_t.Let_make_of_topson_bare_nam_equal -> 
      Section_for_symbol_header_constant_formula_t.Let_make_of_topson_bare_nam_equal tag_gro_l

  | Section_for_symbol_header_constant_symbol_t.Let_make_of_topson_notleaf_nam_s_equal -> 
      Section_for_symbol_header_constant_formula_t.Let_make_of_topson_notleaf_nam_s_equal tag_gro_l

  | Section_for_symbol_header_constant_symbol_t.Let_make_of_topson_ofstring_nam_s_equal -> 
      Section_for_symbol_header_constant_formula_t.Let_make_of_topson_ofstring_nam_s_equal tag_gro_l

  | Section_for_symbol_header_constant_symbol_t.Let_name_equal_function -> 
      Section_for_symbol_header_constant_formula_t.Let_name_equal_function tag_gro_l

  | Section_for_symbol_header_constant_symbol_t.Let_name_of_topson_bare_equal_function -> 
      Section_for_symbol_header_constant_formula_t.Let_name_of_topson_bare_equal_function tag_gro_l

  | Section_for_symbol_header_constant_symbol_t.Let_name_of_topson_notleaf_equal_function -> 
      Section_for_symbol_header_constant_formula_t.Let_name_of_topson_notleaf_equal_function tag_gro_l

  | Section_for_symbol_header_constant_symbol_t.Let_name_of_topson_ofstring_equal_function -> 
      Section_for_symbol_header_constant_formula_t.Let_name_of_topson_ofstring_equal_function tag_gro_l

  | Section_for_symbol_header_constant_symbol_t.Let_string_off_equal_function -> 
      Section_for_symbol_header_constant_formula_t.Let_string_off_equal_function tag_gro_l

  | Section_for_symbol_header_constant_symbol_t.Let_string_off_of_topson_bare_equal_function -> 
      Section_for_symbol_header_constant_formula_t.Let_string_off_of_topson_bare_equal_function tag_gro_l

  | Section_for_symbol_header_constant_symbol_t.Let_string_off_of_topson_notleaf_equal_function -> 
      Section_for_symbol_header_constant_formula_t.Let_string_off_of_topson_notleaf_equal_function tag_gro_l

  | Section_for_symbol_header_constant_symbol_t.Let_string_off_of_topson_ofstring_equal_function -> 
      Section_for_symbol_header_constant_formula_t.Let_string_off_of_topson_ofstring_equal_function tag_gro_l

;;

(** {6 Retrieving} *)

let retrieve tag_sss =
  let soi_sec = Tag_v.sole_index_off_tag tag_sss in
  let sym_sss = Tag_v.entity_off_tag tag_sss in
  make sym_sss soi_sec 
;; 

(** {6 Builder_tag_listing} *)

let group_tag_list_off_section_for_symbol_header_constant_formula for_sss =
  match for_sss with
  | Section_for_symbol_header_constant_formula_t.Let_make_equal_function tag_cap_l -> 
      tag_cap_l

  | Section_for_symbol_header_constant_formula_t.Let_make_nam_s_equal tag_cap_l -> 
      tag_cap_l

  | Section_for_symbol_header_constant_formula_t.Let_make_of_topson_bare_nam_equal tag_cap_l ->       tag_cap_l

  | Section_for_symbol_header_constant_formula_t.Let_make_of_topson_notleaf_nam_s_equal tag_cap_l -> 
      tag_cap_l

  | Section_for_symbol_header_constant_formula_t.Let_make_of_topson_ofstring_nam_s_equal tag_cap_l -> 
      tag_cap_l

  | Section_for_symbol_header_constant_formula_t.Let_name_equal_function tag_cap_l ->       tag_cap_l

  | Section_for_symbol_header_constant_formula_t.Let_name_of_topson_bare_equal_function tag_cap_l ->       tag_cap_l

  | Section_for_symbol_header_constant_formula_t.Let_name_of_topson_notleaf_equal_function tag_cap_l ->       tag_cap_l

  | Section_for_symbol_header_constant_formula_t.Let_name_of_topson_ofstring_equal_function tag_cap_l ->       tag_cap_l

  | Section_for_symbol_header_constant_formula_t.Let_string_off_equal_function tag_cap_l ->       tag_cap_l

  | Section_for_symbol_header_constant_formula_t.Let_string_off_of_topson_bare_equal_function tag_cap_l ->       tag_cap_l

  | Section_for_symbol_header_constant_formula_t.Let_string_off_of_topson_notleaf_equal_function tag_cap_l ->       tag_cap_l

  | Section_for_symbol_header_constant_formula_t.Let_string_off_of_topson_ofstring_equal_function tag_cap_l ->       tag_cap_l

;;

let group_tag_list_off_section_for_symbol_header_constant_tag tag_sss =
  let for_sss = retrieve tag_sss in
  group_tag_list_off_section_for_symbol_header_constant_formula for_sss
;; 

let camlline_tag_list_off_section_for_symbol_header_constant_formula for_sss =
  let tag_gro_l = 
    group_tag_list_off_section_for_symbol_header_constant_formula 
      for_sss 
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

let camlline_tag_list_off_section_for_symbol_header_constant_tag tag_sss =
  let for_sss = retrieve tag_sss in
  camlline_tag_list_off_section_for_symbol_header_constant_formula for_sss
;; 

(** {6 Iterating_for_formula_for_symbol_header_constant.} *)

let map f_of_tag_gro for_sss = 
  let tag_gro_l = group_tag_list_off_section_for_symbol_header_constant_formula for_sss in
  List.map f_of_tag_gro tag_gro_l
;;

let iter f_of_tag_gro for_sss = 
  let tag_gro_l = group_tag_list_off_section_for_symbol_header_constant_formula for_sss in
  List.iter f_of_tag_gro tag_gro_l ;;

let map2 f_of_tag_gro for_sss_1 for_sss_2  = 
  let tag_gro_l_1 = group_tag_list_off_section_for_symbol_header_constant_formula for_sss_1 in
  let tag_gro_l_2 = group_tag_list_off_section_for_symbol_header_constant_formula for_sss_2 in
  List.map2 f_of_tag_gro tag_gro_l_1 tag_gro_l_2
;;

let iter2 f_of_tag_gro for_sss_1 for_sss_2 = 
  let tag_gro_l_1 = group_tag_list_off_section_for_symbol_header_constant_formula for_sss_1 in
  let tag_gro_l_2 = group_tag_list_off_section_for_symbol_header_constant_formula for_sss_2 in
  List.iter2 f_of_tag_gro tag_gro_l_1 tag_gro_l_2 
;;

