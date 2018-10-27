(** {3 Camlline_for_formula_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_formula_formula_v";
   "Needed-by : FGNR:Camlline_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_cff = 
  match for_cff with
  | Camlline_for_formula_formula_t.Camlline_for_formula_datastructure_formula for_cc1 ->
      Camlline_for_formula_symbol_t.Camlline_for_formula_datastructure_symbol
        (Camlline_for_formula_datastructure_formula_v.symbol_of_formula for_cc1)

  | Camlline_for_formula_formula_t.Camlline_for_formula_duo_formula for_cc2 ->
      Camlline_for_formula_symbol_t.Camlline_for_formula_duo_symbol
        (Camlline_for_formula_duo_formula_v.symbol_of_formula for_cc2)

  | Camlline_for_formula_formula_t.Camlline_for_formula_trio_formula for_cc3 ->
      Camlline_for_formula_symbol_t.Camlline_for_formula_trio_symbol
        (Camlline_for_formula_trio_formula_v.symbol_of_formula for_cc3)

  | Camlline_for_formula_formula_t.Camlline_for_formula_uno_formula for_cc4 ->
      Camlline_for_formula_symbol_t.Camlline_for_formula_uno_symbol
        (Camlline_for_formula_uno_formula_v.symbol_of_formula for_cc4)

;;

(** {6 Naming_for_formula} *)

let name for_cff =
  let sym_cff = symbol_of_formula for_cff in
  Camlline_for_formula_symbol_v.name sym_cff
;;
(* ***
let longname for_cff =
  let sym_cff = symbol_of_formula for_cff in
  Camlline_for_formula_symbol_v.longname sym_cff
;;

let string_off for_cff =
  let sym_cff = symbol_of_formula for_cff in
  Camlline_for_formula_symbol_v.string_off sym_cff
;;

let fullname for_cff =
  let sym_cff = symbol_of_formula for_cff in
  Camlline_for_formula_symbol_v.longname sym_cff
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_cff soi_cal =
  match sym_cff with 
  | Camlline_for_formula_symbol_t.Camlline_for_formula_datastructure_symbol sym_cc1 ->
      Camlline_for_formula_formula_t.Camlline_for_formula_datastructure_formula 
        (Camlline_for_formula_datastructure_formula_v.make sym_cc1 soi_cal)

  | Camlline_for_formula_symbol_t.Camlline_for_formula_duo_symbol sym_cc2 ->
      Camlline_for_formula_formula_t.Camlline_for_formula_duo_formula 
        (Camlline_for_formula_duo_formula_v.make sym_cc2 soi_cal)

  | Camlline_for_formula_symbol_t.Camlline_for_formula_trio_symbol sym_cc3 ->
      Camlline_for_formula_formula_t.Camlline_for_formula_trio_formula 
        (Camlline_for_formula_trio_formula_v.make sym_cc3 soi_cal)

  | Camlline_for_formula_symbol_t.Camlline_for_formula_uno_symbol sym_cc4 ->
      Camlline_for_formula_formula_t.Camlline_for_formula_uno_formula 
        (Camlline_for_formula_uno_formula_v.make sym_cc4 soi_cal)
;;

(** {6 Retrieving} *)

let retrieve tag_cff =
  let soi_cal = Tag_v.sole_index_off_tag tag_cff in
  let sym_cff = Tag_v.entity_off_tag tag_cff in
  make sym_cff soi_cal 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_formula_formula for_cff =
  match for_cff with 
  | Camlline_for_formula_formula_t.Camlline_for_formula_datastructure_formula for_cc1 ->
        Camlline_for_formula_datastructure_formula_v.entity_tag_list_off_camlline_for_formula_datastructure_formula for_cc1

  | Camlline_for_formula_formula_t.Camlline_for_formula_duo_formula for_cc2 ->
        Camlline_for_formula_duo_formula_v.entity_tag_list_off_camlline_for_formula_duo_formula for_cc2

  | Camlline_for_formula_formula_t.Camlline_for_formula_trio_formula for_cc3 ->
        Camlline_for_formula_trio_formula_v.entity_tag_list_off_camlline_for_formula_trio_formula for_cc3

  | Camlline_for_formula_formula_t.Camlline_for_formula_uno_formula for_cc4 ->
        Camlline_for_formula_uno_formula_v.entity_tag_list_off_camlline_for_formula_uno_formula for_cc4
;;

let entity_tag_list_off_camlline_for_formula_tag tag_cff =
  let for_cff = retrieve tag_cff in
  entity_tag_list_off_camlline_for_formula_formula for_cff
;;

(** {6 Iterating_for_formula} *)

let map f for_cff = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_formula for_cff in
  List.map f tag_ent_l
;;

let iter f for_cff = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_formula for_cff in
  List.iter f tag_ent_l ;;

let map2 f for_cff_1 for_cff_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_formula for_cff_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_formula for_cff_2 in
  List.map2 f tag_ent_l_1 tag_ent_l_2
;;

let iter2 f for_cff_1 for_cff_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_formula for_cff_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_formula for_cff_2 in
  List.iter2 f tag_ent_l_1 tag_ent_l_2 
;;

