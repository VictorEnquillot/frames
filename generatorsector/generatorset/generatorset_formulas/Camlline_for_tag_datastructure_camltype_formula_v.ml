(** {3 Camlline_for_tag_datastructure_camltype_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_tag_datastructure_camltype_formula_v";
   "Needed-by : FGNR:Camlline_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_cdc = 
  match for_cdc with
  | Camlline_for_tag_datastructure_camltype_formula_t.Camlline_for_tag_datastructure_camltype_uno_formula for_cc1 ->
      Camlline_for_tag_datastructure_camltype_symbol_t.Camlline_for_tag_datastructure_camltype_uno_symbol
        (Camlline_for_tag_datastructure_camltype_uno_formula_v.symbol_of_formula for_cc1)

  | Camlline_for_tag_datastructure_camltype_formula_t.Camlline_for_tag_datastructure_camltype_duo_formula for_cc2 ->
      Camlline_for_tag_datastructure_camltype_symbol_t.Camlline_for_tag_datastructure_camltype_duo_symbol
        (Camlline_for_tag_datastructure_camltype_duo_formula_v.symbol_of_formula for_cc2)
;;

(** {6 Naming_for_formula} *)

let name for_cdc =
  let sym_cdc = symbol_of_formula for_cdc in
  Camlline_for_tag_datastructure_camltype_symbol_v.name sym_cdc
;;
(* ***
let longname for_cdc =
  let sym_cdc = symbol_of_formula for_cdc in
  Camlline_for_tag_datastructure_camltype_symbol_v.longname sym_cdc
;;

let string_off for_cdc =
  let sym_cdc = symbol_of_formula for_cdc in
  Camlline_for_tag_datastructure_camltype_symbol_v.string_off sym_cdc
;;

let fullname for_cdc =
  let sym_cdc = symbol_of_formula for_cdc in
  Camlline_for_tag_datastructure_camltype_symbol_v.longname sym_cdc
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_cdc soi_cal =
  match sym_cdc with 
  | Camlline_for_tag_datastructure_camltype_symbol_t.Camlline_for_tag_datastructure_camltype_uno_symbol sym_cc1 ->
      Camlline_for_tag_datastructure_camltype_formula_t.Camlline_for_tag_datastructure_camltype_uno_formula 
        (Camlline_for_tag_datastructure_camltype_uno_formula_v.make sym_cc1 soi_cal)

  | Camlline_for_tag_datastructure_camltype_symbol_t.Camlline_for_tag_datastructure_camltype_duo_symbol sym_cc2 ->
      Camlline_for_tag_datastructure_camltype_formula_t.Camlline_for_tag_datastructure_camltype_duo_formula 
        (Camlline_for_tag_datastructure_camltype_duo_formula_v.make sym_cc2 soi_cal)
;;

(** {6 Retrieving} *)

let retrieve tag_cdc =
  let soi_cal = Tag_v.sole_index_off_tag tag_cdc in
  let sym_cdc = Tag_v.entity_off_tag tag_cdc in
  make sym_cdc soi_cal 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_tag_datastructure_camltype_formula for_cdc =
  match for_cdc with 
  | Camlline_for_tag_datastructure_camltype_formula_t.Camlline_for_tag_datastructure_camltype_uno_formula for_cc1 ->
        Camlline_for_tag_datastructure_camltype_uno_formula_v.entity_tag_list_off_camlline_for_tag_datastructure_camltype_uno_formula for_cc1

  | Camlline_for_tag_datastructure_camltype_formula_t.Camlline_for_tag_datastructure_camltype_duo_formula for_cc2 ->
        Camlline_for_tag_datastructure_camltype_duo_formula_v.entity_tag_list_off_camlline_for_tag_datastructure_camltype_duo_formula for_cc2
;;

let entity_tag_list_off_camlline_for_tag_datastructure_camltype_tag tag_cdc =
  let for_cdc = retrieve tag_cdc in
  entity_tag_list_off_camlline_for_tag_datastructure_camltype_formula for_cdc
;;

(** {6 Iterating_for_formula} *)

let map f for_cdc = 
  let tag_ent_l = entity_tag_list_off_camlline_for_tag_datastructure_camltype_formula for_cdc in
  List.map f tag_ent_l
;;

let iter f for_cdc = 
  let tag_ent_l = entity_tag_list_off_camlline_for_tag_datastructure_camltype_formula for_cdc in
  List.iter f tag_ent_l ;;

let map2 f for_cdc_1 for_cdc_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_tag_datastructure_camltype_formula for_cdc_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_tag_datastructure_camltype_formula for_cdc_2 in
  List.map2 f tag_ent_l_1 tag_ent_l_2
;;

let iter2 f for_cdc_1 for_cdc_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_tag_datastructure_camltype_formula for_cdc_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_tag_datastructure_camltype_formula for_cdc_2 in
  List.iter2 f tag_ent_l_1 tag_ent_l_2 
;;

