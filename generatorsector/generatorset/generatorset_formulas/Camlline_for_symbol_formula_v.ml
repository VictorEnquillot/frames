(** {3 Camlline_for_symbol_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_symbol_formula_v";
   "Needed-by : FGNR:Camlline_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_cfs = 
  match for_cfs with
  | Camlline_for_symbol_formula_t.Camlline_for_symbol_duo_formula for_cc1 ->
      Camlline_for_symbol_symbol_t.Camlline_for_symbol_duo_symbol
        (Camlline_for_symbol_duo_formula_v.symbol_of_formula for_cc1)

  | Camlline_for_symbol_formula_t.Camlline_for_symbol_uno_formula for_cc2 ->
      Camlline_for_symbol_symbol_t.Camlline_for_symbol_uno_symbol
        (Camlline_for_symbol_uno_formula_v.symbol_of_formula for_cc2)
;;

(** {6 Naming_for_formula} *)

let name for_cfs =
  let sym_cfs = symbol_of_formula for_cfs in
  Camlline_for_symbol_symbol_v.name sym_cfs
;;
(* ***
let longname for_cfs =
  let sym_cfs = symbol_of_formula for_cfs in
  Camlline_for_symbol_symbol_v.longname sym_cfs
;;

let string_off for_cfs =
  let sym_cfs = symbol_of_formula for_cfs in
  Camlline_for_symbol_symbol_v.string_off sym_cfs
;;

let fullname for_cfs =
  let sym_cfs = symbol_of_formula for_cfs in
  Camlline_for_symbol_symbol_v.longname sym_cfs
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_cfs soi_cal =
  match sym_cfs with 
  | Camlline_for_symbol_symbol_t.Camlline_for_symbol_duo_symbol sym_cc1 ->
      Camlline_for_symbol_formula_t.Camlline_for_symbol_duo_formula 
        (Camlline_for_symbol_duo_formula_v.make sym_cc1 soi_cal)

  | Camlline_for_symbol_symbol_t.Camlline_for_symbol_uno_symbol sym_cc2 ->
      Camlline_for_symbol_formula_t.Camlline_for_symbol_uno_formula 
        (Camlline_for_symbol_uno_formula_v.make sym_cc2 soi_cal)
;;

(** {6 Retrieving} *)

let retrieve tag_cfs =
  let soi_cal = Tag_v.sole_index_off_tag tag_cfs in
  let sym_cfs = Tag_v.entity_off_tag tag_cfs in
  make sym_cfs soi_cal 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_symbol_formula for_cfs =
  match for_cfs with 
  | Camlline_for_symbol_formula_t.Camlline_for_symbol_duo_formula for_cc1 ->
        Camlline_for_symbol_duo_formula_v.entity_tag_list_off_camlline_for_symbol_duo_formula for_cc1

  | Camlline_for_symbol_formula_t.Camlline_for_symbol_uno_formula for_cc2 ->
        Camlline_for_symbol_uno_formula_v.entity_tag_list_off_camlline_for_symbol_uno_formula for_cc2
;;

let entity_tag_list_off_camlline_for_symbol_tag tag_cfs =
  let for_cfs = retrieve tag_cfs in
  entity_tag_list_off_camlline_for_symbol_formula for_cfs
;;

(** {6 Iterating_for_formula} *)

let map f for_cfs = 
  let tag_ent_l = entity_tag_list_off_camlline_for_symbol_formula for_cfs in
  List.map f tag_ent_l
;;

let iter f for_cfs = 
  let tag_ent_l = entity_tag_list_off_camlline_for_symbol_formula for_cfs in
  List.iter f tag_ent_l ;;

let map2 f for_cfs_1 for_cfs_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_symbol_formula for_cfs_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_symbol_formula for_cfs_2 in
  List.map2 f tag_ent_l_1 tag_ent_l_2
;;

let iter2 f for_cfs_1 for_cfs_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_symbol_formula for_cfs_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_symbol_formula for_cfs_2 in
  List.iter2 f tag_ent_l_1 tag_ent_l_2 
;;

