(** {3 Camlline_for_formula_uno_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_formula_uno_formula_v";
   "Needed-by : FGNR:Camlline_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_cfu = 
  match for_cfu with
  | Camlline_for_formula_uno_formula_t.Camlline_for_formula_uno_builder_formula for_cc1 ->
      Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_builder_symbol
        (Camlline_for_formula_uno_builder_formula_v.symbol_of_formula for_cc1)

  | Camlline_for_formula_uno_formula_t.Camlline_for_formula_uno_data_formula for_cc3 ->
      Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_data_symbol
        (Camlline_for_formula_uno_data_formula_v.symbol_of_formula for_cc3)

  | Camlline_for_formula_uno_formula_t.Camlline_for_formula_uno_main_formula for_cc3 ->
      Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_main_symbol
        (Camlline_for_formula_uno_main_formula_v.symbol_of_formula for_cc3)

  | Camlline_for_formula_uno_formula_t.Camlline_for_formula_uno_son_formula for_cc4 ->
      Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_son_symbol
        (Camlline_for_formula_uno_son_formula_v.symbol_of_formula for_cc4)

  | Camlline_for_formula_uno_formula_t.Camlline_for_formula_uno_top_formula for_cc5 ->
      Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_top_symbol
        (Camlline_for_formula_uno_top_formula_v.symbol_of_formula for_cc5)

;;

(** {6 Naming_for_formula} *)

let name for_cfu =
  let sym_cfu = symbol_of_formula for_cfu in
  Camlline_for_formula_uno_symbol_v.name sym_cfu
;;
(* ***
let longname for_cfu =
  let sym_cfu = symbol_of_formula for_cfu in
  Camlline_for_formula_uno_symbol_v.longname sym_cfu
;;

let string_off for_cfu =
  let sym_cfu = symbol_of_formula for_cfu in
  Camlline_for_formula_uno_symbol_v.string_off sym_cfu
;;

let fullname for_cfu =
  let sym_cfu = symbol_of_formula for_cfu in
  Camlline_for_formula_uno_symbol_v.longname sym_cfu
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_cfu soi_cal =
  match sym_cfu with 
  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_builder_symbol sym_cc1 ->
      Camlline_for_formula_uno_formula_t.Camlline_for_formula_uno_builder_formula 
        (Camlline_for_formula_uno_builder_formula_v.make sym_cc1 soi_cal)

  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_data_symbol sym_cc3 ->
      Camlline_for_formula_uno_formula_t.Camlline_for_formula_uno_data_formula 
        (Camlline_for_formula_uno_data_formula_v.make sym_cc3 soi_cal)

  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_main_symbol sym_cc3 ->
      Camlline_for_formula_uno_formula_t.Camlline_for_formula_uno_main_formula 
        (Camlline_for_formula_uno_main_formula_v.make sym_cc3 soi_cal)

  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_son_symbol sym_cc4 ->
      Camlline_for_formula_uno_formula_t.Camlline_for_formula_uno_son_formula 
        (Camlline_for_formula_uno_son_formula_v.make sym_cc4 soi_cal)

  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_top_symbol sym_cc5 ->
      Camlline_for_formula_uno_formula_t.Camlline_for_formula_uno_top_formula 
        (Camlline_for_formula_uno_top_formula_v.make sym_cc5 soi_cal)
;;

(** {6 Retrieving} *)

let retrieve tag_cfu =
  let soi_cal = Tag_v.sole_index_off_tag tag_cfu in
  let sym_cfu = Tag_v.entity_off_tag tag_cfu in
  make sym_cfu soi_cal 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_formula_uno_formula for_cfu =
  match for_cfu with 
  | Camlline_for_formula_uno_formula_t.Camlline_for_formula_uno_builder_formula for_cc1 ->
        Camlline_for_formula_uno_builder_formula_v.entity_tag_list_off_camlline_for_formula_uno_builder_formula for_cc1

  | Camlline_for_formula_uno_formula_t.Camlline_for_formula_uno_data_formula for_cc3 ->
        Camlline_for_formula_uno_data_formula_v.entity_tag_list_off_camlline_for_formula_uno_data_formula for_cc3

  | Camlline_for_formula_uno_formula_t.Camlline_for_formula_uno_main_formula for_cc3 ->
        Camlline_for_formula_uno_main_formula_v.entity_tag_list_off_camlline_for_formula_uno_main_formula for_cc3

  | Camlline_for_formula_uno_formula_t.Camlline_for_formula_uno_son_formula for_cc4 ->
        Camlline_for_formula_uno_son_formula_v.entity_tag_list_off_camlline_for_formula_uno_son_formula for_cc4

  | Camlline_for_formula_uno_formula_t.Camlline_for_formula_uno_top_formula for_cc5 ->
        Camlline_for_formula_uno_top_formula_v.entity_tag_list_off_camlline_for_formula_uno_top_formula for_cc5

;;

let entity_tag_list_off_camlline_for_formula_uno_tag tag_cfu =
  let for_cfu = retrieve tag_cfu in
  entity_tag_list_off_camlline_for_formula_uno_formula for_cfu
;;

(** {6 Iterating_for_formula} *)

let map f for_cfu = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_uno_formula for_cfu in
  List.map f tag_ent_l
;;

let iter f for_cfu = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_uno_formula for_cfu in
  List.iter f tag_ent_l ;;

let map2 f for_cfu_1 for_cfu_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_uno_formula for_cfu_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_uno_formula for_cfu_2 in
  List.map2 f tag_ent_l_1 tag_ent_l_2
;;

let iter2 f for_cfu_1 for_cfu_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_uno_formula for_cfu_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_uno_formula for_cfu_2 in
  List.iter2 f tag_ent_l_1 tag_ent_l_2 
;;

