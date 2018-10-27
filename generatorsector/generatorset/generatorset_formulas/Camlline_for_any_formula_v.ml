(** {3 Camlline_for_any_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_any_formula_v";
   "Needed-by : FGNR:Camlline_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_cfa = 
  match for_cfa with
  | Camlline_for_any_formula_t.Camlline_for_any_duo_formula for_cc1 ->
      Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol
        (Camlline_for_any_duo_formula_v.symbol_of_formula for_cc1)

  | Camlline_for_any_formula_t.Camlline_for_any_uno_formula for_cc2 ->
      Camlline_for_any_symbol_t.Camlline_for_any_uno_symbol
        (Camlline_for_any_uno_formula_v.symbol_of_formula for_cc2)

  | Camlline_for_any_formula_t.Camlline_for_any_trio_formula for_cc2 ->
      Camlline_for_any_symbol_t.Camlline_for_any_trio_symbol
        (Camlline_for_any_trio_formula_v.symbol_of_formula for_cc2)
;;

(** {6 Naming_for_formula} *)

let name for_cfa =
  let sym_cfa = symbol_of_formula for_cfa in
  Camlline_for_any_symbol_v.name sym_cfa
;;
(* ***
let longname for_cfa =
  let sym_cfa = symbol_of_formula for_cfa in
  Camlline_for_any_symbol_v.longname sym_cfa
;;

let string_off for_cfa =
  let sym_cfa = symbol_of_formula for_cfa in
  Camlline_for_any_symbol_v.string_off sym_cfa
;;

let fullname for_cfa =
  let sym_cfa = symbol_of_formula for_cfa in
  Camlline_for_any_symbol_v.longname sym_cfa
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_cfa soi_cal =
  match sym_cfa with 
  | Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol sym_cc1 ->
      Camlline_for_any_formula_t.Camlline_for_any_duo_formula 
        (Camlline_for_any_duo_formula_v.make sym_cc1 soi_cal)

  | Camlline_for_any_symbol_t.Camlline_for_any_uno_symbol sym_cc2 ->
      Camlline_for_any_formula_t.Camlline_for_any_uno_formula 
        (Camlline_for_any_uno_formula_v.make sym_cc2 soi_cal)

  | Camlline_for_any_symbol_t.Camlline_for_any_trio_symbol sym_cc2 ->
      Camlline_for_any_formula_t.Camlline_for_any_trio_formula 
        (Camlline_for_any_trio_formula_v.make sym_cc2 soi_cal)
;;

(** {6 Retrieving} *)

let retrieve tag_cfa =
  let soi_cal = Tag_v.sole_index_off_tag tag_cfa in
  let sym_cfa = Tag_v.entity_off_tag tag_cfa in
  make sym_cfa soi_cal 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_any_formula for_cfa =
  match for_cfa with 
  | Camlline_for_any_formula_t.Camlline_for_any_duo_formula for_cc1 ->
        Camlline_for_any_duo_formula_v.entity_tag_list_off_camlline_for_any_duo_formula for_cc1

  | Camlline_for_any_formula_t.Camlline_for_any_uno_formula for_cc2 ->
        Camlline_for_any_uno_formula_v.entity_tag_list_off_camlline_for_any_uno_formula for_cc2

  | Camlline_for_any_formula_t.Camlline_for_any_trio_formula for_cc2 ->
        Camlline_for_any_trio_formula_v.entity_tag_list_off_camlline_for_any_trio_formula for_cc2

;;

let entity_tag_list_off_camlline_for_any_tag tag_cfa =
  let for_cfa = retrieve tag_cfa in
  entity_tag_list_off_camlline_for_any_formula for_cfa
;;

(** {6 Iterating_for_formula} *)

let map f for_cfa = 
  let tag_ent_l = entity_tag_list_off_camlline_for_any_formula for_cfa in
  List.map f tag_ent_l
;;

let iter f for_cfa = 
  let tag_ent_l = entity_tag_list_off_camlline_for_any_formula for_cfa in
  List.iter f tag_ent_l ;;

let map2 f for_cfa_1 for_cfa_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_any_formula for_cfa_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_any_formula for_cfa_2 in
  List.map2 f tag_ent_l_1 tag_ent_l_2
;;

let iter2 f for_cfa_1 for_cfa_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_any_formula for_cfa_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_any_formula for_cfa_2 in
  List.iter2 f tag_ent_l_1 tag_ent_l_2 
;;

