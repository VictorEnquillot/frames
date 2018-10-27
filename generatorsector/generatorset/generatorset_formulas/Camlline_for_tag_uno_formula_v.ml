(** {3 Camlline_for_tag_uno_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_tag_uno_formula_v";
   "Needed-by : FGNR:Camlline_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_ctu = 
  match for_ctu with
  | Camlline_for_tag_uno_formula_t.Camlline_for_tag_uno_camltype_formula for_cc2 ->
      Camlline_for_tag_uno_symbol_t.Camlline_for_tag_uno_camltype_symbol
        (Camlline_for_tag_uno_camltype_formula_v.symbol_of_formula for_cc2)

  | Camlline_for_tag_uno_formula_t.Camlline_for_tag_uno_top_formula for_cc3 ->
      Camlline_for_tag_uno_symbol_t.Camlline_for_tag_uno_top_symbol
        (Camlline_for_tag_uno_top_formula_v.symbol_of_formula for_cc3)
;;

(** {6 Naming_for_formula} *)

let name for_ctu =
  let sym_ctu = symbol_of_formula for_ctu in
  Camlline_for_tag_uno_symbol_v.name sym_ctu
;;
(* ***
let longname for_ctu =
  let sym_ctu = symbol_of_formula for_ctu in
  Camlline_for_tag_uno_symbol_v.longname sym_ctu
;;

let string_off for_ctu =
  let sym_ctu = symbol_of_formula for_ctu in
  Camlline_for_tag_uno_symbol_v.string_off sym_ctu
;;

let fullname for_ctu =
  let sym_ctu = symbol_of_formula for_ctu in
  Camlline_for_tag_uno_symbol_v.longname sym_ctu
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_ctu soi_cal =
  match sym_ctu with 
  | Camlline_for_tag_uno_symbol_t.Camlline_for_tag_uno_camltype_symbol sym_cc2 ->
      Camlline_for_tag_uno_formula_t.Camlline_for_tag_uno_camltype_formula 
        (Camlline_for_tag_uno_camltype_formula_v.make sym_cc2 soi_cal)

  | Camlline_for_tag_uno_symbol_t.Camlline_for_tag_uno_top_symbol sym_cc3 ->
      Camlline_for_tag_uno_formula_t.Camlline_for_tag_uno_top_formula 
        (Camlline_for_tag_uno_top_formula_v.make sym_cc3 soi_cal)
;;

(** {6 Retrieving} *)

let retrieve tag_ctu =
  let soi_cal = Tag_v.sole_index_off_tag tag_ctu in
  let sym_ctu = Tag_v.entity_off_tag tag_ctu in
  make sym_ctu soi_cal 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_tag_uno_formula for_ctu =
  match for_ctu with 
  | Camlline_for_tag_uno_formula_t.Camlline_for_tag_uno_camltype_formula for_cc2 ->
        Camlline_for_tag_uno_camltype_formula_v.entity_tag_list_off_camlline_for_tag_uno_camltype_formula for_cc2

  | Camlline_for_tag_uno_formula_t.Camlline_for_tag_uno_top_formula for_cc3 ->
        Camlline_for_tag_uno_top_formula_v.entity_tag_list_off_camlline_for_tag_uno_top_formula for_cc3
;;

let entity_tag_list_off_camlline_for_tag_uno_tag tag_ctu =
  let for_ctu = retrieve tag_ctu in
  entity_tag_list_off_camlline_for_tag_uno_formula for_ctu
;;

(** {6 Iterating_for_formula} *)

let map f for_ctu = 
  let tag_ent_l = entity_tag_list_off_camlline_for_tag_uno_formula for_ctu in
  List.map f tag_ent_l
;;

let iter f for_ctu = 
  let tag_ent_l = entity_tag_list_off_camlline_for_tag_uno_formula for_ctu in
  List.iter f tag_ent_l ;;

let map2 f for_ctu_1 for_ctu_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_tag_uno_formula for_ctu_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_tag_uno_formula for_ctu_2 in
  List.map2 f tag_ent_l_1 tag_ent_l_2
;;

let iter2 f for_ctu_1 for_ctu_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_tag_uno_formula for_ctu_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_tag_uno_formula for_ctu_2 in
  List.iter2 f tag_ent_l_1 tag_ent_l_2 
;;

