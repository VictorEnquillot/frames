(** {3 Camlline_for_symbol_duo_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_symbol_duo_formula_v";
   "Needed-by : FGNR:Camlline_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_csd = 
  match for_csd with
  | Camlline_for_symbol_duo_formula_t.Camlline_for_symbol_duo_current_top_formula for_cc2 ->
      Camlline_for_symbol_duo_symbol_t.Camlline_for_symbol_duo_current_top_symbol
        (Camlline_for_symbol_duo_current_top_formula_v.symbol_of_formula for_cc2)

  | Camlline_for_symbol_duo_formula_t.Camlline_for_symbol_duo_son_top_formula for_cc2 ->
      Camlline_for_symbol_duo_symbol_t.Camlline_for_symbol_duo_son_top_symbol
        (Camlline_for_symbol_duo_son_top_formula_v.symbol_of_formula for_cc2)
;;

(** {6 Naming_for_formula} *)

let name for_csd =
  let sym_csd = symbol_of_formula for_csd in
  Camlline_for_symbol_duo_symbol_v.name sym_csd
;;
(* ***
let longname for_csd =
  let sym_csd = symbol_of_formula for_csd in
  Camlline_for_symbol_duo_symbol_v.longname sym_csd
;;

let string_off for_csd =
  let sym_csd = symbol_of_formula for_csd in
  Camlline_for_symbol_duo_symbol_v.string_off sym_csd
;;

let fullname for_csd =
  let sym_csd = symbol_of_formula for_csd in
  Camlline_for_symbol_duo_symbol_v.longname sym_csd
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_csd soi_cap =
  match sym_csd with 
  | Camlline_for_symbol_duo_symbol_t.Camlline_for_symbol_duo_current_top_symbol sym_cc2 ->
      Camlline_for_symbol_duo_formula_t.Camlline_for_symbol_duo_current_top_formula 
        (Camlline_for_symbol_duo_current_top_formula_v.make sym_cc2 soi_cap)

  | Camlline_for_symbol_duo_symbol_t.Camlline_for_symbol_duo_son_top_symbol sym_cc2 ->
      Camlline_for_symbol_duo_formula_t.Camlline_for_symbol_duo_son_top_formula 
        (Camlline_for_symbol_duo_son_top_formula_v.make sym_cc2 soi_cap)
;;

(** {6 Retrieving} *)

let retrieve tag_csd =
  let soi_cap = Tag_v.sole_index_off_tag tag_csd in
  let sym_csd = Tag_v.entity_off_tag tag_csd in
  make sym_csd soi_cap 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_symbol_duo_formula for_csd =
  match for_csd with 
  | Camlline_for_symbol_duo_formula_t.Camlline_for_symbol_duo_current_top_formula for_cc2 ->
        Camlline_for_symbol_duo_current_top_formula_v.entity_tag_list_off_camlline_for_symbol_duo_current_top_formula for_cc2

  | Camlline_for_symbol_duo_formula_t.Camlline_for_symbol_duo_son_top_formula for_cc2 ->
        Camlline_for_symbol_duo_son_top_formula_v.entity_tag_list_off_camlline_for_symbol_duo_son_top_formula for_cc2
;;

let entity_tag_list_off_camlline_for_symbol_duo_tag tag_csd =
  let for_csd = retrieve tag_csd in
  entity_tag_list_off_camlline_for_symbol_duo_formula for_csd
;;

(** {6 Iterating_for_formula} *)

let map f for_csd = 
  let tag_ent_l = entity_tag_list_off_camlline_for_symbol_duo_formula for_csd in
  List.map f tag_ent_l
;;

let iter f for_csd = 
  let tag_ent_l = entity_tag_list_off_camlline_for_symbol_duo_formula for_csd in
  List.iter f tag_ent_l ;;

let map2 f for_csd_1 for_csd_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_symbol_duo_formula for_csd_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_symbol_duo_formula for_csd_2 in
  List.map2 f tag_ent_l_1 tag_ent_l_2
;;

let iter2 f for_csd_1 for_csd_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_symbol_duo_formula for_csd_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_symbol_duo_formula for_csd_2 in
  List.iter2 f tag_ent_l_1 tag_ent_l_2 
;;

