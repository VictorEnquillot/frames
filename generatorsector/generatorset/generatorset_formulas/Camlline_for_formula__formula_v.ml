(** {3 Camlline_node_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_node_formula_v";
   "Needed-by : FGNR:Camlline_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_ccc = 
  match for_ccc with
  | Camlline_node_formula_t.Camlline_node_sub_1_formula for_cc1 ->
      Camlline_node_symbol_t.Camlline_node_sub_1_symbol
        (Camlline_node_sub_1_formula_v.symbol_of_formula for_cc1)

  | Camlline_node_formula_t.Camlline_node_sub_2_formula for_cc2 ->
      Camlline_node_symbol_t.Camlline_node_sub_2_symbol
        (Camlline_node_sub_2_formula_v.symbol_of_formula for_cc2)

  | Camlline_node_formula_t.Camlline_node_sub_3_formula for_cc3 ->
      Camlline_node_symbol_t.Camlline_node_sub_3_symbol
        (Camlline_node_sub_3_formula_v.symbol_of_formula for_cc3)

  | Camlline_node_formula_t.Camlline_node_sub_4_formula for_cc4 ->
      Camlline_node_symbol_t.Camlline_node_sub_4_symbol
        (Camlline_node_sub_4_formula_v.symbol_of_formula for_cc4)

  | Camlline_node_formula_t.Camlline_node_sub_5_formula for_cc5 ->
      Camlline_node_symbol_t.Camlline_node_sub_5_symbol
        (Camlline_node_sub_5_formula_v.symbol_of_formula for_cc5)

  | Camlline_node_formula_t.Camlline_node_sub_6_formula for_cc6 ->
      Camlline_node_symbol_t.Camlline_node_sub_6_symbol
        (Camlline_node_sub_6_formula_v.symbol_of_formula for_cc6)
;;

(** {6 Naming_for_formula} *)

let name for_ccc =
  let sym_ccc = symbol_of_formula for_ccc in
  Camlline_node_symbol_v.name sym_ccc
;;
(* ***
let longname for_ccc =
  let sym_ccc = symbol_of_formula for_ccc in
  Camlline_node_symbol_v.longname sym_ccc
;;

let string_off for_ccc =
  let sym_ccc = symbol_of_formula for_ccc in
  Camlline_node_symbol_v.string_off sym_ccc
;;

let fullname for_ccc =
  let sym_ccc = symbol_of_formula for_ccc in
  Camlline_node_symbol_v.longname sym_ccc
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_ccc soi_cal =
  match sym_ccc with 
  | Camlline_node_symbol_t.Camlline_node_sub_1_symbol sym_cc1 ->
      Camlline_node_formula_t.Camlline_node_sub_1_formula 
        (Camlline_node_sub_1_formula_v.make sym_cc1 soi_cal)

  | Camlline_node_symbol_t.Camlline_node_sub_2_symbol sym_cc2 ->
      Camlline_node_formula_t.Camlline_node_sub_2_formula 
        (Camlline_node_sub_2_formula_v.make sym_cc2 soi_cal)

  | Camlline_node_symbol_t.Camlline_node_sub_3_symbol sym_cc3 ->
      Camlline_node_formula_t.Camlline_node_sub_3_formula 
        (Camlline_node_sub_3_formula_v.make sym_cc3 soi_cal)

  | Camlline_node_symbol_t.Camlline_node_sub_4_symbol sym_cc4 ->
      Camlline_node_formula_t.Camlline_node_sub_4_formula 
        (Camlline_node_sub_4_formula_v.make sym_cc4 soi_cal)

  | Camlline_node_symbol_t.Camlline_node_sub_5_symbol sym_cc5 ->
      Camlline_node_formula_t.Camlline_node_sub_5_formula 
        (Camlline_node_sub_5_formula_v.make sym_cc5 soi_cal)

  | Camlline_node_symbol_t.Camlline_node_sub_6_symbol sym_cc6 ->
      Camlline_node_formula_t.Camlline_node_sub_6_formula 
        (Camlline_node_sub_6_formula_v.make sym_cc6 soi_cal)
;;

(** {6 Retrieving} *)

let retrieve tag_ccc =
  let soi_cal = Tag_v.sole_index_off_tag tag_ccc in
  let sym_ccc = Tag_v.entity_off_tag tag_ccc in
  make sym_ccc soi_cal 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_node_formula for_ccc =
  match for_ccc with 
  | Camlline_node_formula_t.Camlline_node_sub_1_formula for_cc1 ->
        Camlline_node_sub_1_formula_v.entity_tag_list_off_camlline_node_sub_1_formula for_cc1

  | Camlline_node_formula_t.Camlline_node_sub_2_formula for_cc2 ->
        Camlline_node_sub_2_formula_v.entity_tag_list_off_camlline_node_sub_2_formula for_cc2

  | Camlline_node_formula_t.Camlline_node_sub_3_formula for_cc3 ->
        Camlline_node_sub_3_formula_v.entity_tag_list_off_camlline_node_sub_3_formula for_cc3

  | Camlline_node_formula_t.Camlline_node_sub_4_formula for_cc4 ->
        Camlline_node_sub_4_formula_v.entity_tag_list_off_camlline_node_sub_4_formula for_cc4

  | Camlline_node_formula_t.Camlline_node_sub_5_formula for_cc5 ->
        Camlline_node_sub_5_formula_v.entity_tag_list_off_camlline_node_sub_5_formula for_cc5

  | Camlline_node_formula_t.Camlline_node_sub_6_formula for_cc6 ->
        Camlline_node_sub_6_formula_v.entity_tag_list_off_camlline_node_sub_6_formula for_cc6
;;

let entity_tag_list_off_camlline_node_tag tag_ccc =
  let for_ccc = retrieve tag_ccc in
  entity_tag_list_off_camlline_node_formula for_ccc
;;

(** {6 Iterating_for_formula} *)

let map f for_ccc = 
  let tag_ent_l = entity_tag_list_off_camlline_node_formula for_ccc in
  List.map f tag_ent_l
;;

let iter f for_ccc = 
  let tag_ent_l = entity_tag_list_off_camlline_node_formula for_ccc in
  List.iter f tag_ent_l ;;

let map2 f for_ccc_1 for_ccc_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_node_formula for_ccc_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_node_formula for_ccc_2 in
  List.map2 f tag_ent_l_1 tag_ent_l_2
;;

let iter2 f for_ccc_1 for_ccc_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_node_formula for_ccc_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_node_formula for_ccc_2 in
  List.iter2 f tag_ent_l_1 tag_ent_l_2 
;;

