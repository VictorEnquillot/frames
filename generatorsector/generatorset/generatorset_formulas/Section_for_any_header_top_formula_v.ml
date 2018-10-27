(** {3 Section_for_any_header_top_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Section_for_any_header_top_interface_v";
   "Current : FGNR:Section_for_any_header_top_formula_v";
   "Needed-by : FGNR:Section_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_sht =
  match for_sht with
  | Section_for_any_header_top_formula_t.Camlfile_title _ ->
     Section_for_any_header_top_symbol_t.Camlfile_title
  | Section_for_any_header_top_formula_t.Item_title _ ->
     Section_for_any_header_top_symbol_t.Item_title
  | Section_for_any_header_top_formula_t.Let_name_argument_equal _ ->
     Section_for_any_header_top_symbol_t.Let_name_argument_equal
  | Section_for_any_header_top_formula_t.Let_longname_argument_equal _ ->
     Section_for_any_header_top_symbol_t.Let_longname_argument_equal
  | Section_for_any_header_top_formula_t.Let_fullname_argument_equal _ ->
     Section_for_any_header_top_symbol_t.Let_fullname_argument_equal
  | Section_for_any_header_top_formula_t.Let_retrieve_tag_top_equal _ ->
     Section_for_any_header_top_symbol_t.Let_retrieve_tag_top_equal
  | Section_for_any_header_top_formula_t.Let_string_off_argument_equal _ ->
     Section_for_any_header_top_symbol_t.Let_string_off_argument_equal

;;

(** {6 Naming_for_formula} *)

let name for_sht = 
  let sym_sht = symbol_of_formula for_sht in
  Section_for_any_header_top_symbol_v.name sym_sht
;;
(* ***

let string_off for_sht =
  let sym_sht = symbol_of_formula for_sht in
  Section_for_any_header_top_symbol_v.string_off sym_sht
;;

let longname for_sht =
  Format.sprintf "Section_for_any_header_top_formula_t.%s" 
    (String.capitalize (name for_sht))

let fullname for_sht =
  Format.sprintf "%s \"%s\"" (longname for_sht) (string_off for_sht)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_sht soi_sec =
  let sym_gro_l = Section_for_any_header_top_interface_v.make sym_sht in
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

let make sym_sht soi_sec =
  let tag_gro_l = build_n_store sym_sht soi_sec in
  match sym_sht with 
  | Section_for_any_header_top_symbol_t.Camlfile_title ->
     Section_for_any_header_top_formula_t.Camlfile_title tag_gro_l
  | Section_for_any_header_top_symbol_t.Item_title ->
     Section_for_any_header_top_formula_t.Item_title tag_gro_l
  | Section_for_any_header_top_symbol_t.Let_name_argument_equal ->
     Section_for_any_header_top_formula_t.Let_name_argument_equal tag_gro_l
  | Section_for_any_header_top_symbol_t.Let_longname_argument_equal ->
     Section_for_any_header_top_formula_t.Let_longname_argument_equal tag_gro_l
  | Section_for_any_header_top_symbol_t.Let_fullname_argument_equal ->
     Section_for_any_header_top_formula_t.Let_fullname_argument_equal tag_gro_l
  | Section_for_any_header_top_symbol_t.Let_retrieve_tag_top_equal ->
     Section_for_any_header_top_formula_t.Let_retrieve_tag_top_equal tag_gro_l
  | Section_for_any_header_top_symbol_t.Let_string_off_argument_equal ->
     Section_for_any_header_top_formula_t.Let_string_off_argument_equal tag_gro_l

;;

(** {6 Retrieving} *)

let retrieve tag_sht =
  let soi_sec = Tag_v.sole_index_off_tag tag_sht in
  let sym_sht = Tag_v.entity_off_tag tag_sht in
  make sym_sht soi_sec 
;; 

(** {6 Builder_tag_listing} *)

let group_tag_list_off_section_for_any_header_top_formula for_sht =
  match for_sht with
  | Section_for_any_header_top_formula_t.Camlfile_title tag_gro_l -> tag_gro_l
  | Section_for_any_header_top_formula_t.Item_title tag_gro_l -> tag_gro_l
  | Section_for_any_header_top_formula_t.Let_name_argument_equal tag_gro_l -> tag_gro_l
  | Section_for_any_header_top_formula_t.Let_longname_argument_equal tag_gro_l -> tag_gro_l
  | Section_for_any_header_top_formula_t.Let_fullname_argument_equal tag_gro_l -> tag_gro_l
  | Section_for_any_header_top_formula_t.Let_retrieve_tag_top_equal tag_gro_l -> tag_gro_l
  | Section_for_any_header_top_formula_t.Let_string_off_argument_equal tag_gro_l -> tag_gro_l

;;

let group_tag_list_off_section_for_any_header_top_tag tag_sht =
  let for_sht = retrieve tag_sht in
  group_tag_list_off_section_for_any_header_top_formula for_sht
;; 

let camlline_tag_list_off_section_for_any_header_top_formula for_sht =
  let tag_gro_l = 
    group_tag_list_off_section_for_any_header_top_formula 
      for_sht 
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

let camlline_tag_list_off_section_for_any_header_top_tag tag_sht =
  let for_sht = retrieve tag_sht in
  camlline_tag_list_off_section_for_any_header_top_formula for_sht
;; 

(** {6 Iterating_for_formula} *)

let map f_of_tag_gro for_sht = 
  let tag_gro_l = group_tag_list_off_section_for_any_header_top_formula for_sht in
  List.map f_of_tag_gro tag_gro_l
;;

let iter f_of_tag_gro for_sht = 
  let tag_gro_l = group_tag_list_off_section_for_any_header_top_formula for_sht in
  List.iter f_of_tag_gro tag_gro_l ;;

let map2 f_of_tag_gro for_sht_1 for_sht_2  = 
  let tag_gro_l_1 = group_tag_list_off_section_for_any_header_top_formula for_sht_1 in
  let tag_gro_l_2 = group_tag_list_off_section_for_any_header_top_formula for_sht_2 in
  List.map2 f_of_tag_gro tag_gro_l_1 tag_gro_l_2
;;

let iter2 f_of_tag_gro for_sht_1 for_sht_2 = 
  let tag_gro_l_1 = group_tag_list_off_section_for_any_header_top_formula for_sht_1 in
  let tag_gro_l_2 = group_tag_list_off_section_for_any_header_top_formula for_sht_2 in
  List.iter2 f_of_tag_gro tag_gro_l_1 tag_gro_l_2 
;;

