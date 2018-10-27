(** {3 Group_for_formula_body_son_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Group_for_formula_body_son_formula_v";
   "Needed-by : FGNR:Group_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Builders : Camlline";
   "Builder_data : Camlline";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_gbs = 
  match for_gbs with
  | Group_for_formula_body_son_formula_t.Group_for_formula_body_son_builder_formula for_cc1 ->
      Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_builder_symbol
        (Group_for_formula_body_son_builder_formula_v.symbol_of_formula for_cc1)

  | Group_for_formula_body_son_formula_t.Group_for_formula_body_son_top_formula for_cc2 ->
      Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_symbol
        (Group_for_formula_body_son_top_formula_v.symbol_of_formula for_cc2)

  | Group_for_formula_body_son_formula_t.Group_for_formula_body_son_top_builder_formula for_cc3 ->
      Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_builder_symbol
        (Group_for_formula_body_son_top_builder_formula_v.symbol_of_formula for_cc3)

  | Group_for_formula_body_son_formula_t.Group_for_formula_body_son_top_data_formula for_cc3 ->
      Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_data_symbol
        (Group_for_formula_body_son_top_data_formula_v.symbol_of_formula for_cc3)

  | Group_for_formula_body_son_formula_t.Group_for_formula_body_son_top_main_formula for_cc4 ->
      Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_main_symbol
        (Group_for_formula_body_son_top_main_formula_v.symbol_of_formula for_cc4)

  | Group_for_formula_body_son_formula_t.Group_for_formula_body_son_top_main_builder_formula for_cc5 ->
      Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_main_builder_symbol
        (Group_for_formula_body_son_top_main_builder_formula_v.symbol_of_formula for_cc5)
;;

(** {6 Naming_for_formula} *)

let name for_gbs =
  let sym_gbs = symbol_of_formula for_gbs in
  Group_for_formula_body_son_symbol_v.name sym_gbs
;;
(* ***
let longname for_gbs =
  let sym_gbs = symbol_of_formula for_gbs in
  Group_for_formula_body_son_symbol_v.longname sym_gbs
;;

let string_off for_gbs =
  let sym_gbs = symbol_of_formula for_gbs in
  Group_for_formula_body_son_symbol_v.string_off sym_gbs
;;

let fullname for_gbs =
  let sym_gbs = symbol_of_formula for_gbs in
  Group_for_formula_body_son_symbol_v.longname sym_gbs
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_gbs soi_gro =
  match sym_gbs with 
  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_builder_symbol sym_cc1 ->
      Group_for_formula_body_son_formula_t.Group_for_formula_body_son_builder_formula 
        (Group_for_formula_body_son_builder_formula_v.make sym_cc1 soi_gro)

  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_symbol sym_cc2 ->
      Group_for_formula_body_son_formula_t.Group_for_formula_body_son_top_formula 
        (Group_for_formula_body_son_top_formula_v.make sym_cc2 soi_gro)

  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_builder_symbol sym_cc3 ->
      Group_for_formula_body_son_formula_t.Group_for_formula_body_son_top_builder_formula 
        (Group_for_formula_body_son_top_builder_formula_v.make sym_cc3 soi_gro)

  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_data_symbol sym_cc3 ->
      Group_for_formula_body_son_formula_t.Group_for_formula_body_son_top_data_formula 
        (Group_for_formula_body_son_top_data_formula_v.make sym_cc3 soi_gro)

  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_main_symbol sym_cc4 ->
      Group_for_formula_body_son_formula_t.Group_for_formula_body_son_top_main_formula 
        (Group_for_formula_body_son_top_main_formula_v.make sym_cc4 soi_gro)

  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_main_builder_symbol sym_cc5 ->
      Group_for_formula_body_son_formula_t.Group_for_formula_body_son_top_main_builder_formula 
        (Group_for_formula_body_son_top_main_builder_formula_v.make sym_cc5 soi_gro)






;;

(** {6 Retrieving} *)

let retrieve tag_gbs =
  let soi_gro = Tag_v.sole_index_off_tag tag_gbs in
  let sym_gbs = Tag_v.entity_off_tag tag_gbs in
  make sym_gbs soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let camlline_tag_list_off_group_for_formula_body_son_formula for_gbs =
  match for_gbs with 
  | Group_for_formula_body_son_formula_t.Group_for_formula_body_son_builder_formula for_cc1 ->
        Group_for_formula_body_son_builder_formula_v.camlline_tag_list_off_group_for_formula_body_son_builder_formula for_cc1

  | Group_for_formula_body_son_formula_t.Group_for_formula_body_son_top_formula for_cc2 ->
        Group_for_formula_body_son_top_formula_v.camlline_tag_list_off_group_for_formula_body_son_top_formula for_cc2

  | Group_for_formula_body_son_formula_t.Group_for_formula_body_son_top_builder_formula for_cc3 ->
        Group_for_formula_body_son_top_builder_formula_v.camlline_tag_list_off_group_for_formula_body_son_top_builder_formula for_cc3

  | Group_for_formula_body_son_formula_t.Group_for_formula_body_son_top_data_formula for_cc3 ->
        Group_for_formula_body_son_top_data_formula_v.camlline_tag_list_off_group_for_formula_body_son_top_data_formula for_cc3

  | Group_for_formula_body_son_formula_t.Group_for_formula_body_son_top_main_formula for_cc4 ->
        Group_for_formula_body_son_top_main_formula_v.camlline_tag_list_off_group_for_formula_body_son_top_main_formula for_cc4

  | Group_for_formula_body_son_formula_t.Group_for_formula_body_son_top_main_builder_formula for_cc5 ->
        Group_for_formula_body_son_top_main_builder_formula_v.camlline_tag_list_off_group_for_formula_body_son_top_main_builder_formula for_cc5

;;

let camlline_tag_list_off_group_for_formula_body_son_tag tag_gbs =
  let for_gbs = retrieve tag_gbs in
  camlline_tag_list_off_group_for_formula_body_son_formula for_gbs
;;
    
(** {6 Iterating_for_formula_for_formula_body_son} *)

let map f_of_tag_cal for_csd = 
  let tag_ent_l = camlline_tag_list_off_group_for_formula_body_son_formula for_csd in
  List.map f_of_tag_cal tag_ent_l
;;

let iter f_of_tag_cal for_csd = 
  let tag_ent_l = camlline_tag_list_off_group_for_formula_body_son_formula for_csd in
  List.iter f_of_tag_cal tag_ent_l ;;

let map2 f_of_tag_cal for_csd_1 for_csd_2  = 
  let tag_ent_l_1 = camlline_tag_list_off_group_for_formula_body_son_formula for_csd_1 in
  let tag_ent_l_2 = camlline_tag_list_off_group_for_formula_body_son_formula for_csd_2 in
  List.map2 f_of_tag_cal tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_cal for_csd_1 for_csd_2 = 
  let tag_ent_l_1 = camlline_tag_list_off_group_for_formula_body_son_formula for_csd_1 in
  let tag_ent_l_2 = camlline_tag_list_off_group_for_formula_body_son_formula for_csd_2 in
  List.iter2 f_of_tag_cal tag_ent_l_1 tag_ent_l_2 
;;

