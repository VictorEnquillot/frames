(** {3 Section_for_formula_body_formula_v} *)

(** {3 Section_for_formula_body_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Section_for_formula_body_formula_v";
   "Needed-by : FGNR:Section_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Builders : Camlparagraph";
   "Builder_data : Camlline";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_sss = 
  match for_sss with
  | Section_for_formula_body_formula_t.Section_for_formula_body_builder_data_formula for_cc2 ->
      Section_for_formula_body_symbol_t.Section_for_formula_body_builder_data_symbol
        (Section_for_formula_body_builder_data_formula_v.symbol_of_formula for_cc2)

  | Section_for_formula_body_formula_t.Section_for_formula_body_localset_builder_formula for_cc3 ->
      Section_for_formula_body_symbol_t.Section_for_formula_body_localset_builder_symbol
        (Section_for_formula_body_localset_builder_formula_v.symbol_of_formula for_cc3)

  | Section_for_formula_body_formula_t.Section_for_formula_body_localset_data_formula for_cc3 ->
      Section_for_formula_body_symbol_t.Section_for_formula_body_localset_data_symbol
        (Section_for_formula_body_localset_data_formula_v.symbol_of_formula for_cc3)

  | Section_for_formula_body_formula_t.Section_for_formula_body_son_builder_formula for_cc3 ->
      Section_for_formula_body_symbol_t.Section_for_formula_body_son_builder_symbol
        (Section_for_formula_body_son_builder_formula_v.symbol_of_formula for_cc3)

  | Section_for_formula_body_formula_t.Section_for_formula_body_son_top_formula for_cc4 ->
      Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_symbol
        (Section_for_formula_body_son_top_formula_v.symbol_of_formula for_cc4)

  | Section_for_formula_body_formula_t.Section_for_formula_body_son_top_builder_formula for_cc5 ->
      Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_builder_symbol
        (Section_for_formula_body_son_top_builder_formula_v.symbol_of_formula for_cc5)

  | Section_for_formula_body_formula_t.Section_for_formula_body_son_top_data_formula for_cc5 ->
      Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_data_symbol
        (Section_for_formula_body_son_top_data_formula_v.symbol_of_formula for_cc5)

  | Section_for_formula_body_formula_t.Section_for_formula_body_son_top_main_formula for_cc6 ->
      Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_main_symbol
        (Section_for_formula_body_son_top_main_formula_v.symbol_of_formula for_cc6)


  | Section_for_formula_body_formula_t.Section_for_formula_body_son_top_main_builder_formula for_cc7 ->
      Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_main_builder_symbol
        (Section_for_formula_body_son_top_main_builder_formula_v.symbol_of_formula for_cc7)

  | Section_for_formula_body_formula_t.Section_for_formula_body_top_formula for_cc8 ->
      Section_for_formula_body_symbol_t.Section_for_formula_body_top_symbol
        (Section_for_formula_body_top_formula_v.symbol_of_formula for_cc8)

  | Section_for_formula_body_formula_t.Section_for_formula_body_top_builder_formula for_cc8 ->
      Section_for_formula_body_symbol_t.Section_for_formula_body_top_builder_symbol
        (Section_for_formula_body_top_builder_formula_v.symbol_of_formula for_cc8)

  | Section_for_formula_body_formula_t.Section_for_formula_body_top_builder_data_formula for_cc9 ->
      Section_for_formula_body_symbol_t.Section_for_formula_body_top_builder_data_symbol
        (Section_for_formula_body_top_builder_data_formula_v.symbol_of_formula for_cc9)

  | Section_for_formula_body_formula_t.Section_for_formula_body_top_data_formula for_cc10 ->
      Section_for_formula_body_symbol_t.Section_for_formula_body_top_data_symbol
        (Section_for_formula_body_top_data_formula_v.symbol_of_formula for_cc10)

  | Section_for_formula_body_formula_t.Section_for_formula_body_top_main_builder_formula for_cc11 ->
      Section_for_formula_body_symbol_t.Section_for_formula_body_top_main_builder_symbol
        (Section_for_formula_body_top_main_builder_formula_v.symbol_of_formula for_cc11)

  | Section_for_formula_body_formula_t.Section_for_formula_body_top_main_data_formula for_cc11 ->
      Section_for_formula_body_symbol_t.Section_for_formula_body_top_main_data_symbol
        (Section_for_formula_body_top_main_data_formula_v.symbol_of_formula for_cc11)
;;

(** {6 Naming_for_formula} *)

let name for_sfb =
  let sym_sfb = symbol_of_formula for_sfb in
  Section_for_formula_body_symbol_v.name sym_sfb
;;
(* ***
let longname for_sfb =
  let sym_sfb = symbol_of_formula for_sfb in
  Section_for_formula_body_symbol_v.longname sym_sfb
;;

let string_off for_sfb =
  let sym_sfb = symbol_of_formula for_sfb in
  Section_for_formula_body_symbol_v.string_off sym_sfb
;;

let fullname for_sfb =
  let sym_sfb = symbol_of_formula for_sfb in
  Section_for_formula_body_symbol_v.longname sym_sfb
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_sfb soi_sec =
  match sym_sfb with 
  | Section_for_formula_body_symbol_t.Section_for_formula_body_builder_data_symbol sym_cc2 ->
      Section_for_formula_body_formula_t.Section_for_formula_body_builder_data_formula 
        (Section_for_formula_body_builder_data_formula_v.make sym_cc2 soi_sec)

  | Section_for_formula_body_symbol_t.Section_for_formula_body_localset_builder_symbol sym_cc3 ->
      Section_for_formula_body_formula_t.Section_for_formula_body_localset_builder_formula 
        (Section_for_formula_body_localset_builder_formula_v.make sym_cc3 soi_sec)

  | Section_for_formula_body_symbol_t.Section_for_formula_body_localset_data_symbol sym_cc3 ->
      Section_for_formula_body_formula_t.Section_for_formula_body_localset_data_formula 
        (Section_for_formula_body_localset_data_formula_v.make sym_cc3 soi_sec)

  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_builder_symbol sym_cc3 ->
      Section_for_formula_body_formula_t.Section_for_formula_body_son_builder_formula 
        (Section_for_formula_body_son_builder_formula_v.make sym_cc3 soi_sec)

  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_symbol sym_cc4 ->
      Section_for_formula_body_formula_t.Section_for_formula_body_son_top_formula 
        (Section_for_formula_body_son_top_formula_v.make sym_cc4 soi_sec)

  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_builder_symbol sym_cc5 ->
      Section_for_formula_body_formula_t.Section_for_formula_body_son_top_builder_formula 
        (Section_for_formula_body_son_top_builder_formula_v.make sym_cc5 soi_sec)

  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_data_symbol sym_cc5 ->
      Section_for_formula_body_formula_t.Section_for_formula_body_son_top_data_formula 
        (Section_for_formula_body_son_top_data_formula_v.make sym_cc5 soi_sec)

  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_main_symbol sym_cc6 ->
      Section_for_formula_body_formula_t.Section_for_formula_body_son_top_main_formula 
        (Section_for_formula_body_son_top_main_formula_v.make sym_cc6 soi_sec)

  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_main_builder_symbol sym_cc7 ->
      Section_for_formula_body_formula_t.Section_for_formula_body_son_top_main_builder_formula 
        (Section_for_formula_body_son_top_main_builder_formula_v.make sym_cc7 soi_sec)

  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_symbol sym_cc8 ->
      Section_for_formula_body_formula_t.Section_for_formula_body_top_formula 
        (Section_for_formula_body_top_formula_v.make sym_cc8 soi_sec)

  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_builder_symbol sym_cc8 ->
      Section_for_formula_body_formula_t.Section_for_formula_body_top_builder_formula 
        (Section_for_formula_body_top_builder_formula_v.make sym_cc8 soi_sec)

  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_builder_data_symbol sym_cc9 ->
      Section_for_formula_body_formula_t.Section_for_formula_body_top_builder_data_formula 
        (Section_for_formula_body_top_builder_data_formula_v.make sym_cc9 soi_sec)

  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_data_symbol sym_cc10 ->
      Section_for_formula_body_formula_t.Section_for_formula_body_top_data_formula 
        (Section_for_formula_body_top_data_formula_v.make sym_cc10 soi_sec)

  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_main_builder_symbol sym_cc11 ->
      Section_for_formula_body_formula_t.Section_for_formula_body_top_main_builder_formula 
        (Section_for_formula_body_top_main_builder_formula_v.make sym_cc11 soi_sec)

  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_main_data_symbol sym_cc11 ->
      Section_for_formula_body_formula_t.Section_for_formula_body_top_main_data_formula 
        (Section_for_formula_body_top_main_data_formula_v.make sym_cc11 soi_sec)

;;

(** {6 Retrieving} *)

let retrieve tag_sfb =
  let soi_sec = Tag_v.sole_index_off_tag tag_sfb in
  let sym_sfb = Tag_v.entity_off_tag tag_sfb in
  make sym_sfb soi_sec 
;; 

(** {6 Builder_tag_listing} *)

let group_tag_list_off_section_for_formula_body_formula for_sfb =
  match for_sfb with 
  | Section_for_formula_body_formula_t.Section_for_formula_body_builder_data_formula for_cc2 ->
        Section_for_formula_body_builder_data_formula_v.group_tag_list_off_section_for_formula_body_builder_data_formula for_cc2

  | Section_for_formula_body_formula_t.Section_for_formula_body_localset_builder_formula for_cc3 ->
        Section_for_formula_body_localset_builder_formula_v.group_tag_list_off_section_for_formula_body_localset_builder_formula for_cc3

  | Section_for_formula_body_formula_t.Section_for_formula_body_localset_data_formula for_cc3 ->
        Section_for_formula_body_localset_data_formula_v.group_tag_list_off_section_for_formula_body_localset_data_formula for_cc3

  | Section_for_formula_body_formula_t.Section_for_formula_body_son_builder_formula for_cc3 ->
        Section_for_formula_body_son_builder_formula_v.group_tag_list_off_section_for_formula_body_son_builder_formula for_cc3

  | Section_for_formula_body_formula_t.Section_for_formula_body_son_top_formula for_cc4 ->
        Section_for_formula_body_son_top_formula_v.group_tag_list_off_section_for_formula_body_son_top_formula for_cc4

  | Section_for_formula_body_formula_t.Section_for_formula_body_son_top_builder_formula for_cc5 ->
        Section_for_formula_body_son_top_builder_formula_v.group_tag_list_off_section_for_formula_body_son_top_builder_formula for_cc5

  | Section_for_formula_body_formula_t.Section_for_formula_body_son_top_data_formula for_cc5 ->
        Section_for_formula_body_son_top_data_formula_v.group_tag_list_off_section_for_formula_body_son_top_data_formula for_cc5

  | Section_for_formula_body_formula_t.Section_for_formula_body_son_top_main_formula for_cc6 ->
        Section_for_formula_body_son_top_main_formula_v.group_tag_list_off_section_for_formula_body_son_top_main_formula for_cc6

  | Section_for_formula_body_formula_t.Section_for_formula_body_son_top_main_builder_formula for_cc7 ->
        Section_for_formula_body_son_top_main_builder_formula_v.group_tag_list_off_section_for_formula_body_son_top_main_builder_formula for_cc7

  | Section_for_formula_body_formula_t.Section_for_formula_body_top_formula for_cc8 ->
        Section_for_formula_body_top_formula_v.group_tag_list_off_section_for_formula_body_top_formula for_cc8

  | Section_for_formula_body_formula_t.Section_for_formula_body_top_builder_formula for_cc8 ->
        Section_for_formula_body_top_builder_formula_v.group_tag_list_off_section_for_formula_body_top_builder_formula for_cc8

  | Section_for_formula_body_formula_t.Section_for_formula_body_top_builder_data_formula for_cc9 ->
        Section_for_formula_body_top_builder_data_formula_v.group_tag_list_off_section_for_formula_body_top_builder_data_formula for_cc9

  | Section_for_formula_body_formula_t.Section_for_formula_body_top_data_formula for_cc10 ->
        Section_for_formula_body_top_data_formula_v.group_tag_list_off_section_for_formula_body_top_data_formula for_cc10

  | Section_for_formula_body_formula_t.Section_for_formula_body_top_main_builder_formula for_cc11 ->
        Section_for_formula_body_top_main_builder_formula_v.group_tag_list_off_section_for_formula_body_top_main_builder_formula for_cc11

  | Section_for_formula_body_formula_t.Section_for_formula_body_top_main_data_formula for_cc11 ->
        Section_for_formula_body_top_main_data_formula_v.group_tag_list_off_section_for_formula_body_top_main_data_formula for_cc11

;;

let group_tag_list_off_section_for_formula_body_tag tag_sfb =
  let for_sfb = retrieve tag_sfb in
  group_tag_list_off_section_for_formula_body_formula for_sfb
;;
    
let camlline_tag_list_off_section_for_formula_body_formula for_sfb =
  let tag_gro_l = 
    group_tag_list_off_section_for_formula_body_formula 
      for_sfb 
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

let camlline_tag_list_off_section_for_formula_body_tag tag_sfb =
  let for_sfb = retrieve tag_sfb in
  camlline_tag_list_off_section_for_formula_body_formula for_sfb
;;

(** {6 Iterating_for_formula} *)

let map f_of_tag_cal for_sfb = 
  let tag_ent_l = camlline_tag_list_off_section_for_formula_body_formula for_sfb in
  List.map f_of_tag_cal tag_ent_l
;;

let iter f_of_tag_cal for_sfb = 
  let tag_ent_l = camlline_tag_list_off_section_for_formula_body_formula for_sfb in
  List.iter f_of_tag_cal tag_ent_l ;;

let map2 f_of_tag_cal for_sfb_1 for_sfb_2  = 
  let tag_ent_l_1 = camlline_tag_list_off_section_for_formula_body_formula for_sfb_1 in
  let tag_ent_l_2 = camlline_tag_list_off_section_for_formula_body_formula for_sfb_2 in
  List.map2 f_of_tag_cal tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_cal for_sfb_1 for_sfb_2 = 
  let tag_ent_l_1 = camlline_tag_list_off_section_for_formula_body_formula for_sfb_1 in
  let tag_ent_l_2 = camlline_tag_list_off_section_for_formula_body_formula for_sfb_2 in
  List.iter2 f_of_tag_cal tag_ent_l_1 tag_ent_l_2 
;;

