(** {3 Section_for_formula_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Section_for_formula_formula_v";
   "Needed-by : FGNR:Section_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Builders : Camlparagraph";
   "Builder_data : Camlline";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_sff = 
  match for_sff with
  | Section_for_formula_formula_t.Section_for_formula_body_formula for_cc1 ->
      Section_for_formula_symbol_t.Section_for_formula_body_symbol
        (Section_for_formula_body_formula_v.symbol_of_formula for_cc1)

  | Section_for_formula_formula_t.Section_for_formula_header_formula for_cc2 ->
      Section_for_formula_symbol_t.Section_for_formula_header_symbol
        (Section_for_formula_header_formula_v.symbol_of_formula for_cc2)




;;

(** {6 Naming_for_formula} *)

let name for_sff =
  let sym_sff = symbol_of_formula for_sff in
  Section_for_formula_symbol_v.name sym_sff
;;
(* ***
let longname for_sff =
  let sym_sff = symbol_of_formula for_sff in
  Section_for_formula_symbol_v.longname sym_sff
;;

let string_off for_sff =
  let sym_sff = symbol_of_formula for_sff in
  Section_for_formula_symbol_v.string_off sym_sff
;;

let fullname for_sff =
  let sym_sff = symbol_of_formula for_sff in
  Section_for_formula_symbol_v.longname sym_sff
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_sff soi_sec =
  match sym_sff with 
  | Section_for_formula_symbol_t.Section_for_formula_body_symbol sym_cc1 ->
      Section_for_formula_formula_t.Section_for_formula_body_formula 
        (Section_for_formula_body_formula_v.make sym_cc1 soi_sec)

  | Section_for_formula_symbol_t.Section_for_formula_header_symbol sym_cc2 ->
      Section_for_formula_formula_t.Section_for_formula_header_formula 
        (Section_for_formula_header_formula_v.make sym_cc2 soi_sec)

;;

(** {6 Retrieving} *)

let retrieve tag_sff =
  let soi_sec = Tag_v.sole_index_off_tag tag_sff in
  let sym_sff = Tag_v.entity_off_tag tag_sff in
  make sym_sff soi_sec 
;; 

(** {6 Builder_tag_listing} *)

let group_tag_list_off_section_for_formula_formula for_sff =
  match for_sff with 
  | Section_for_formula_formula_t.Section_for_formula_body_formula for_cc1 ->
        Section_for_formula_body_formula_v.group_tag_list_off_section_for_formula_body_formula for_cc1

  | Section_for_formula_formula_t.Section_for_formula_header_formula for_cc2 ->
        Section_for_formula_header_formula_v.group_tag_list_off_section_for_formula_header_formula for_cc2
;;

let group_tag_list_off_section_for_formula_tag tag_sff =
  let for_sff = retrieve tag_sff in
  group_tag_list_off_section_for_formula_formula for_sff
;;
    
let camlline_tag_list_off_section_for_formula_formula for_sff =
  let tag_gro_l = 
    group_tag_list_off_section_for_formula_formula 
      for_sff 
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

let camlline_tag_list_off_section_for_formula_tag tag_sff =
  let for_sff = retrieve tag_sff in
  camlline_tag_list_off_section_for_formula_formula for_sff
;;

(** {6 Iterating_for_formula} *)

let map f_of_tag_cal for_sff = 
  let tag_cal_l = camlline_tag_list_off_section_for_formula_formula for_sff in
  List.map f_of_tag_cal tag_cal_l
;;

let iter f_of_tag_cal for_sff = 
  let tag_cal_l = camlline_tag_list_off_section_for_formula_formula for_sff in
  List.iter f_of_tag_cal tag_cal_l ;;

let map2 f_of_tag_cal for_sff_1 for_sff_2  = 
  let tag_cal_l_1 = camlline_tag_list_off_section_for_formula_formula for_sff_1 in
  let tag_cal_l_2 = camlline_tag_list_off_section_for_formula_formula for_sff_2 in
  List.map2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2
;;

let iter2 f_of_tag_cal for_sff_1 for_sff_2 = 
  let tag_cal_l_1 = camlline_tag_list_off_section_for_formula_formula for_sff_1 in
  let tag_cal_l_2 = camlline_tag_list_off_section_for_formula_formula for_sff_2 in
  List.iter2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2 
;;

