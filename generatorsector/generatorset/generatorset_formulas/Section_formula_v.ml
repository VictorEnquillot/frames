(** {3 Section_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Section_formula_v";
   "Needed-by : FGNR:Section_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Builders : Camlparagraph";
   "Builder_data : Camlline";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_sec = 
  match for_sec with
  | Section_formula_t.Section_for_any_formula for_cc1 ->
      Section_symbol_t.Section_for_any_symbol
        (Section_for_any_formula_v.symbol_of_formula for_cc1)

  | Section_formula_t.Section_for_formula_formula for_cc3 ->
      Section_symbol_t.Section_for_formula_symbol
        (Section_for_formula_formula_v.symbol_of_formula for_cc3)


  | Section_formula_t.Section_for_symbol_formula for_cc3 ->
      Section_symbol_t.Section_for_symbol_symbol
        (Section_for_symbol_formula_v.symbol_of_formula for_cc3)

;;

(** {6 Naming_for_formula} *)

let name for_sec =
  let sym_sec = symbol_of_formula for_sec in
  Section_symbol_v.name sym_sec
;;
(* ***
let longname for_sec =
  let sym_sec = symbol_of_formula for_sec in
  Section_symbol_v.longname sym_sec
;;

let string_off for_sec =
  let sym_sec = symbol_of_formula for_sec in
  Section_symbol_v.string_off sym_sec
;;

let fullname for_sec =
  let sym_sec = symbol_of_formula for_sec in
  Section_symbol_v.longname sym_sec
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_sec soi_sec =
  match sym_sec with 
  | Section_symbol_t.Section_for_any_symbol sym_cc1 ->
      Section_formula_t.Section_for_any_formula 
        (Section_for_any_formula_v.make sym_cc1 soi_sec)

  | Section_symbol_t.Section_for_formula_symbol sym_cc3 ->
      Section_formula_t.Section_for_formula_formula 
        (Section_for_formula_formula_v.make sym_cc3 soi_sec)

  | Section_symbol_t.Section_for_symbol_symbol sym_cc3 ->
      Section_formula_t.Section_for_symbol_formula 
        (Section_for_symbol_formula_v.make sym_cc3 soi_sec)

;;

(** {6 Retrieving} *)

let retrieve tag_sec =
  let soi_sec = Tag_v.sole_index_off_tag tag_sec in
  let sym_sec = Tag_v.entity_off_tag tag_sec in
  make sym_sec soi_sec 
;; 

(** {6 Builder_tag_listing} *)

let group_tag_list_off_section_formula for_sec =
  match for_sec with 
  | Section_formula_t.Section_for_any_formula for_cc1 ->
        Section_for_any_formula_v.group_tag_list_off_section_for_any_formula for_cc1

  | Section_formula_t.Section_for_formula_formula for_cc3 ->
        Section_for_formula_formula_v.group_tag_list_off_section_for_formula_formula for_cc3

  | Section_formula_t.Section_for_symbol_formula for_cc3 ->
        Section_for_symbol_formula_v.group_tag_list_off_section_for_symbol_formula for_cc3
;;

let group_tag_list_off_section_tag tag_sec =
  let for_sec = retrieve tag_sec in
  group_tag_list_off_section_formula for_sec
;;
    
let camlline_tag_list_off_section_formula for_sec =
  let tag_gro_l = 
    group_tag_list_off_section_formula 
      for_sec 
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

let camlline_tag_list_off_section_tag tag_sec =
  let for_sec = retrieve tag_sec in
  camlline_tag_list_off_section_formula for_sec
;;

(** {6 Iterating_for_formula} *)

let map f_of_tag_cal for_sec = 
  let tag_cal_l = camlline_tag_list_off_section_formula for_sec in
  List.map f_of_tag_cal tag_cal_l
;;

let iter f_of_tag_cal for_sec = 
  let tag_cal_l = camlline_tag_list_off_section_formula for_sec in
  List.iter f_of_tag_cal tag_cal_l ;;

let map2 f_of_tag_cal for_sec_1 for_sec_2  = 
  let tag_cal_l_1 = camlline_tag_list_off_section_formula for_sec_1 in
  let tag_cal_l_2 = camlline_tag_list_off_section_formula for_sec_2 in
  List.map2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2
;;

let iter2 f_of_tag_cal for_sec_1 for_sec_2 = 
  let tag_cal_l_1 = camlline_tag_list_off_section_formula for_sec_1 in
  let tag_cal_l_2 = camlline_tag_list_off_section_formula for_sec_2 in
  List.iter2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2 
;;
