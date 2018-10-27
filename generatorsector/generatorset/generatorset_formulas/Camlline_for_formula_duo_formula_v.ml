(** {3 Camlline_for_formula_duo_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_formula_duo_formula_v";
   "Needed-by : FGNR:Camlline_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_cfd = 
  match for_cfd with
  | Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_builder_data_formula for_cc1 ->
      Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_builder_data_symbol
        (Camlline_for_formula_duo_builder_data_formula_v.symbol_of_formula for_cc1)

  | Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_localset_builder_formula for_cc3 ->
      Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_localset_builder_symbol
        (Camlline_for_formula_duo_localset_builder_formula_v.symbol_of_formula for_cc3)

  | Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_localset_data_formula for_cc3 ->
      Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_localset_data_symbol
        (Camlline_for_formula_duo_localset_data_formula_v.symbol_of_formula for_cc3)

  | Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_main_builder_formula for_cc3 ->
      Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_main_builder_symbol
        (Camlline_for_formula_duo_main_builder_formula_v.symbol_of_formula for_cc3)

  | Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_main_data_formula for_cc3 ->
      Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_main_data_symbol
        (Camlline_for_formula_duo_main_data_formula_v.symbol_of_formula for_cc3)

  | Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_son_builder_formula for_cc4 ->
      Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_son_builder_symbol
        (Camlline_for_formula_duo_son_builder_formula_v.symbol_of_formula for_cc4)

  | Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_son_data_formula for_cc4 ->
      Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_son_data_symbol
        (Camlline_for_formula_duo_son_data_formula_v.symbol_of_formula for_cc4)

  | Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_son_main_formula for_cc5 ->
      Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_son_main_symbol
        (Camlline_for_formula_duo_son_main_formula_v.symbol_of_formula for_cc5)

  | Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_son_top_formula for_cc6 ->
      Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_son_top_symbol
        (Camlline_for_formula_duo_son_top_formula_v.symbol_of_formula for_cc6)

  | Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_top_builder_formula for_cc7 ->
      Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_top_builder_symbol
        (Camlline_for_formula_duo_top_builder_formula_v.symbol_of_formula for_cc7)

  | Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_top_data_formula for_cc8 ->
      Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_top_data_symbol
        (Camlline_for_formula_duo_top_data_formula_v.symbol_of_formula for_cc8)

  | Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_top_main_formula for_cc9 ->
      Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_top_main_symbol
        (Camlline_for_formula_duo_top_main_formula_v.symbol_of_formula for_cc9)

;;

(** {6 Naming_for_formula} *)

let name for_cfd =
  let sym_cfd = symbol_of_formula for_cfd in
  Camlline_for_formula_duo_symbol_v.name sym_cfd
;;
(* ***
let longname for_cfd =
  let sym_cfd = symbol_of_formula for_cfd in
  Camlline_for_formula_duo_symbol_v.longname sym_cfd
;;

let string_off for_cfd =
  let sym_cfd = symbol_of_formula for_cfd in
  Camlline_for_formula_duo_symbol_v.string_off sym_cfd
;;

let fullname for_cfd =
  let sym_cfd = symbol_of_formula for_cfd in
  Camlline_for_formula_duo_symbol_v.longname sym_cfd
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_cfd soi_cal =
  match sym_cfd with 
  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_builder_data_symbol sym_cc1 ->
      Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_builder_data_formula 
        (Camlline_for_formula_duo_builder_data_formula_v.make sym_cc1 soi_cal)

  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_localset_builder_symbol sym_cc3 ->
      Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_localset_builder_formula 
        (Camlline_for_formula_duo_localset_builder_formula_v.make sym_cc3 soi_cal)

  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_localset_data_symbol sym_cc3 ->
      Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_localset_data_formula 
        (Camlline_for_formula_duo_localset_data_formula_v.make sym_cc3 soi_cal)

  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_main_builder_symbol sym_cc3 ->
      Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_main_builder_formula 
        (Camlline_for_formula_duo_main_builder_formula_v.make sym_cc3 soi_cal)

  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_main_data_symbol sym_cc3 ->
      Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_main_data_formula 
        (Camlline_for_formula_duo_main_data_formula_v.make sym_cc3 soi_cal)

  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_son_builder_symbol sym_cc4 ->
      Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_son_builder_formula 
        (Camlline_for_formula_duo_son_builder_formula_v.make sym_cc4 soi_cal)

  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_son_data_symbol sym_cc4 ->
      Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_son_data_formula 
        (Camlline_for_formula_duo_son_data_formula_v.make sym_cc4 soi_cal)

  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_son_main_symbol sym_cc5 ->
      Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_son_main_formula 
        (Camlline_for_formula_duo_son_main_formula_v.make sym_cc5 soi_cal)

  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_son_top_symbol sym_cc6 ->
      Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_son_top_formula 
        (Camlline_for_formula_duo_son_top_formula_v.make sym_cc6 soi_cal)

  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_top_builder_symbol sym_cc7 ->
      Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_top_builder_formula 
        (Camlline_for_formula_duo_top_builder_formula_v.make sym_cc7 soi_cal)

  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_top_data_symbol sym_cc8 ->
      Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_top_data_formula 
        (Camlline_for_formula_duo_top_data_formula_v.make sym_cc8 soi_cal)

  | Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_top_main_symbol sym_cc9 ->
      Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_top_main_formula 
        (Camlline_for_formula_duo_top_main_formula_v.make sym_cc9 soi_cal)

;;

(** {6 Retrieving} *)

let retrieve tag_cfd =
  let soi_cal = Tag_v.sole_index_off_tag tag_cfd in
  let sym_cfd = Tag_v.entity_off_tag tag_cfd in
  make sym_cfd soi_cal 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_formula_duo_formula for_cfd =
  match for_cfd with 
  | Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_builder_data_formula for_cc1 ->
        Camlline_for_formula_duo_builder_data_formula_v.entity_tag_list_off_camlline_for_formula_duo_builder_data_formula for_cc1

  | Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_localset_builder_formula for_cc3 ->
        Camlline_for_formula_duo_localset_builder_formula_v.entity_tag_list_off_camlline_for_formula_duo_localset_builder_formula for_cc3

  | Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_localset_data_formula for_cc3 ->
        Camlline_for_formula_duo_localset_data_formula_v.entity_tag_list_off_camlline_for_formula_duo_localset_data_formula for_cc3

  | Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_main_builder_formula for_cc3 ->
        Camlline_for_formula_duo_main_builder_formula_v.entity_tag_list_off_camlline_for_formula_duo_main_builder_formula for_cc3

  | Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_main_data_formula for_cc3 ->
        Camlline_for_formula_duo_main_data_formula_v.entity_tag_list_off_camlline_for_formula_duo_main_data_formula for_cc3

  | Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_son_builder_formula for_cc4 ->
        Camlline_for_formula_duo_son_builder_formula_v.entity_tag_list_off_camlline_for_formula_duo_son_builder_formula for_cc4

  | Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_son_data_formula for_cc4 ->
        Camlline_for_formula_duo_son_data_formula_v.entity_tag_list_off_camlline_for_formula_duo_son_data_formula for_cc4

  | Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_son_main_formula for_cc5 ->
        Camlline_for_formula_duo_son_main_formula_v.entity_tag_list_off_camlline_for_formula_duo_son_main_formula for_cc5

  | Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_son_top_formula for_cc6 ->
        Camlline_for_formula_duo_son_top_formula_v.entity_tag_list_off_camlline_for_formula_duo_son_top_formula for_cc6

  | Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_top_builder_formula for_cc7 ->
        Camlline_for_formula_duo_top_builder_formula_v.entity_tag_list_off_camlline_for_formula_duo_top_builder_formula for_cc7

  | Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_top_data_formula for_cc8 ->
        Camlline_for_formula_duo_top_data_formula_v.entity_tag_list_off_camlline_for_formula_duo_top_data_formula for_cc8

  | Camlline_for_formula_duo_formula_t.Camlline_for_formula_duo_top_main_formula for_cc9 ->
        Camlline_for_formula_duo_top_main_formula_v.entity_tag_list_off_camlline_for_formula_duo_top_main_formula for_cc9

;;

let entity_tag_list_off_camlline_for_formula_duo_tag tag_cfd =
  let for_cfd = retrieve tag_cfd in
  entity_tag_list_off_camlline_for_formula_duo_formula for_cfd
;;

(** {6 Iterating_for_formula} *)

let map f for_cfd = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_duo_formula for_cfd in
  List.map f tag_ent_l
;;

let iter f for_cfd = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_duo_formula for_cfd in
  List.iter f tag_ent_l ;;

let map2 f for_cfd_1 for_cfd_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_duo_formula for_cfd_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_duo_formula for_cfd_2 in
  List.map2 f tag_ent_l_1 tag_ent_l_2
;;

let iter2 f for_cfd_1 for_cfd_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_duo_formula for_cfd_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_duo_formula for_cfd_2 in
  List.iter2 f tag_ent_l_1 tag_ent_l_2 
;;

