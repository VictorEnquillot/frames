(** {3 Camlline_for_symbol_uno_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_symbol_uno_formula_v";
   "Needed-by : FGNR:Camlline_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_csu = 
  match for_csu with
  | Camlline_for_symbol_uno_formula_t.Camlline_for_symbol_uno_builder_formula for_cc2 ->
      Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_builder_symbol
        (Camlline_for_symbol_uno_builder_formula_v.symbol_of_formula for_cc2)

  | Camlline_for_symbol_uno_formula_t.Camlline_for_symbol_uno_current_formula for_cc2 ->
      Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_current_symbol
        (Camlline_for_symbol_uno_current_formula_v.symbol_of_formula for_cc2)

  | Camlline_for_symbol_uno_formula_t.Camlline_for_symbol_uno_son_formula for_cc2 ->
      Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_son_symbol
        (Camlline_for_symbol_uno_son_formula_v.symbol_of_formula for_cc2)

  | Camlline_for_symbol_uno_formula_t.Camlline_for_symbol_uno_top_formula for_cc2 ->
      Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_top_symbol
        (Camlline_for_symbol_uno_top_formula_v.symbol_of_formula for_cc2)
;;

(** {6 Naming_for_formula} *)

let name for_csu =
  let sym_csu = symbol_of_formula for_csu in
  Camlline_for_symbol_uno_symbol_v.name sym_csu
;;
(* ***
let longname for_csu =
  let sym_csu = symbol_of_formula for_csu in
  Camlline_for_symbol_uno_symbol_v.longname sym_csu
;;

let string_off for_csu =
  let sym_csu = symbol_of_formula for_csu in
  Camlline_for_symbol_uno_symbol_v.string_off sym_csu
;;

let fullname for_csu =
  let sym_csu = symbol_of_formula for_csu in
  Camlline_for_symbol_uno_symbol_v.longname sym_csu
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_csu soi_cap =
  match sym_csu with 
  | Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_builder_symbol sym_cc2 ->
      Camlline_for_symbol_uno_formula_t.Camlline_for_symbol_uno_builder_formula 
        (Camlline_for_symbol_uno_builder_formula_v.make sym_cc2 soi_cap)

  | Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_current_symbol sym_cc2 ->
      Camlline_for_symbol_uno_formula_t.Camlline_for_symbol_uno_current_formula 
        (Camlline_for_symbol_uno_current_formula_v.make sym_cc2 soi_cap)

  | Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_son_symbol sym_cc2 ->
      Camlline_for_symbol_uno_formula_t.Camlline_for_symbol_uno_son_formula 
        (Camlline_for_symbol_uno_son_formula_v.make sym_cc2 soi_cap)

  | Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_top_symbol sym_cc2 ->
      Camlline_for_symbol_uno_formula_t.Camlline_for_symbol_uno_top_formula 
        (Camlline_for_symbol_uno_top_formula_v.make sym_cc2 soi_cap)
;;

(** {6 Retrieving} *)

let retrieve tag_csu =
  let soi_cap = Tag_v.sole_index_off_tag tag_csu in
  let sym_csu = Tag_v.entity_off_tag tag_csu in
  make sym_csu soi_cap 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_symbol_uno_formula for_csu =
  match for_csu with 
  | Camlline_for_symbol_uno_formula_t.Camlline_for_symbol_uno_builder_formula for_cc2 ->
        Camlline_for_symbol_uno_builder_formula_v.entity_tag_list_off_camlline_for_symbol_uno_builder_formula for_cc2

  | Camlline_for_symbol_uno_formula_t.Camlline_for_symbol_uno_current_formula for_cc2 ->
        Camlline_for_symbol_uno_current_formula_v.entity_tag_list_off_camlline_for_symbol_uno_current_formula for_cc2

  | Camlline_for_symbol_uno_formula_t.Camlline_for_symbol_uno_son_formula for_cc2 ->
        Camlline_for_symbol_uno_son_formula_v.entity_tag_list_off_camlline_for_symbol_uno_son_formula for_cc2

  | Camlline_for_symbol_uno_formula_t.Camlline_for_symbol_uno_top_formula for_cc2 ->
        Camlline_for_symbol_uno_top_formula_v.entity_tag_list_off_camlline_for_symbol_uno_top_formula for_cc2
;;

let entity_tag_list_off_camlline_for_symbol_uno_tag tag_csu =
  let for_csu = retrieve tag_csu in
  entity_tag_list_off_camlline_for_symbol_uno_formula for_csu
;;

(** {6 Iterating_for_formula} *)

let map f for_csu = 
  let tag_ent_l = entity_tag_list_off_camlline_for_symbol_uno_formula for_csu in
  List.map f tag_ent_l
;;

let iter f for_csu = 
  let tag_ent_l = entity_tag_list_off_camlline_for_symbol_uno_formula for_csu in
  List.iter f tag_ent_l ;;

let map2 f for_csu_1 for_csu_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_symbol_uno_formula for_csu_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_symbol_uno_formula for_csu_2 in
  List.map2 f tag_ent_l_1 tag_ent_l_2
;;

let iter2 f for_csu_1 for_csu_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_symbol_uno_formula for_csu_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_symbol_uno_formula for_csu_2 in
  List.iter2 f tag_ent_l_1 tag_ent_l_2 
;;

