(** {3 Camlline_for_any_duo_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_any_duo_formula_v";
   "Needed-by : FGNR:Camlline_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_cad = 
  match for_cad with
  | Camlline_for_any_duo_formula_t.Camlline_for_any_duo_datastructure_formula for_cc1 ->
      Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_datastructure_symbol
        (Camlline_for_any_duo_datastructure_formula_v.symbol_of_formula for_cc1)

  | Camlline_for_any_duo_formula_t.Camlline_for_any_duo_current_son_formula for_cc2 ->
      Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_current_son_symbol
        (Camlline_for_any_duo_current_son_formula_v.symbol_of_formula for_cc2)

  | Camlline_for_any_duo_formula_t.Camlline_for_any_duo_current_top_formula for_cc2 ->
      Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_current_top_symbol
        (Camlline_for_any_duo_current_top_formula_v.symbol_of_formula for_cc2)

  | Camlline_for_any_duo_formula_t.Camlline_for_any_duo_son_top_bare_formula for_cc2 ->
      Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_bare_symbol
        (Camlline_for_any_duo_son_top_bare_formula_v.symbol_of_formula for_cc2)

  | Camlline_for_any_duo_formula_t.Camlline_for_any_duo_son_top_notleaf_formula for_cc2 ->
      Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_notleaf_symbol
        (Camlline_for_any_duo_son_top_notleaf_formula_v.symbol_of_formula for_cc2)

  | Camlline_for_any_duo_formula_t.Camlline_for_any_duo_son_top_ofstring_formula for_cc2 ->
      Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_ofstring_symbol
        (Camlline_for_any_duo_son_top_ofstring_formula_v.symbol_of_formula for_cc2)

  | Camlline_for_any_duo_formula_t.Camlline_for_any_duo_top_main_formula for_cc2 ->
      Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_top_main_symbol
        (Camlline_for_any_duo_top_main_formula_v.symbol_of_formula for_cc2)
;;

(** {6 Naming_for_formula} *)

let name for_cad =
  let sym_cad = symbol_of_formula for_cad in
  Camlline_for_any_duo_symbol_v.name sym_cad
;;
(* ***
let longname for_cad =
  let sym_cad = symbol_of_formula for_cad in
  Camlline_for_any_duo_symbol_v.longname sym_cad
;;

let string_off for_cad =
  let sym_cad = symbol_of_formula for_cad in
  Camlline_for_any_duo_symbol_v.string_off sym_cad
;;

let fullname for_cad =
  let sym_cad = symbol_of_formula for_cad in
  Camlline_for_any_duo_symbol_v.longname sym_cad
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_ccc soi_cap =
  match sym_ccc with 
  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_datastructure_symbol sym_cc1 ->
      Camlline_for_any_duo_formula_t.Camlline_for_any_duo_datastructure_formula 
        (Camlline_for_any_duo_datastructure_formula_v.make sym_cc1 soi_cap)

  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_current_son_symbol sym_cc2 ->
      Camlline_for_any_duo_formula_t.Camlline_for_any_duo_current_son_formula 
        (Camlline_for_any_duo_current_son_formula_v.make sym_cc2 soi_cap)

  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_current_top_symbol sym_cc2 ->
      Camlline_for_any_duo_formula_t.Camlline_for_any_duo_current_top_formula 
        (Camlline_for_any_duo_current_top_formula_v.make sym_cc2 soi_cap)

  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_bare_symbol sym_cc2 ->
      Camlline_for_any_duo_formula_t.Camlline_for_any_duo_son_top_bare_formula 
        (Camlline_for_any_duo_son_top_bare_formula_v.make sym_cc2 soi_cap)

  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_notleaf_symbol sym_cc2 ->
      Camlline_for_any_duo_formula_t.Camlline_for_any_duo_son_top_notleaf_formula 
        (Camlline_for_any_duo_son_top_notleaf_formula_v.make sym_cc2 soi_cap)

  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_ofstring_symbol sym_cc2 ->
      Camlline_for_any_duo_formula_t.Camlline_for_any_duo_son_top_ofstring_formula 
        (Camlline_for_any_duo_son_top_ofstring_formula_v.make sym_cc2 soi_cap)

  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_top_main_symbol sym_cc2 ->
      Camlline_for_any_duo_formula_t.Camlline_for_any_duo_top_main_formula 
        (Camlline_for_any_duo_top_main_formula_v.make sym_cc2 soi_cap)
;;

(** {6 Retrieving} *)

let retrieve tag_ccc =
  let soi_cap = Tag_v.sole_index_off_tag tag_ccc in
  let sym_ccc = Tag_v.entity_off_tag tag_ccc in
  make sym_ccc soi_cap 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_any_duo_formula for_ccc =
  match for_ccc with 
  | Camlline_for_any_duo_formula_t.Camlline_for_any_duo_datastructure_formula for_cc1 ->
        Camlline_for_any_duo_datastructure_formula_v.entity_tag_list_off_camlline_for_any_duo_datastructure_formula for_cc1

  | Camlline_for_any_duo_formula_t.Camlline_for_any_duo_current_son_formula for_cc2 ->
        Camlline_for_any_duo_current_son_formula_v.entity_tag_list_off_camlline_for_any_duo_current_son_formula for_cc2

  | Camlline_for_any_duo_formula_t.Camlline_for_any_duo_current_top_formula for_cc2 ->
        Camlline_for_any_duo_current_top_formula_v.entity_tag_list_off_camlline_for_any_duo_current_top_formula for_cc2

  | Camlline_for_any_duo_formula_t.Camlline_for_any_duo_son_top_bare_formula for_cc2 ->
        Camlline_for_any_duo_son_top_bare_formula_v.entity_tag_list_off_camlline_for_any_duo_son_top_bare_formula for_cc2

  | Camlline_for_any_duo_formula_t.Camlline_for_any_duo_son_top_notleaf_formula for_cc2 ->
        Camlline_for_any_duo_son_top_notleaf_formula_v.entity_tag_list_off_camlline_for_any_duo_son_top_notleaf_formula for_cc2

  | Camlline_for_any_duo_formula_t.Camlline_for_any_duo_son_top_ofstring_formula for_cc2 ->
        Camlline_for_any_duo_son_top_ofstring_formula_v.entity_tag_list_off_camlline_for_any_duo_son_top_ofstring_formula for_cc2

  | Camlline_for_any_duo_formula_t.Camlline_for_any_duo_top_main_formula for_cc2 ->
        Camlline_for_any_duo_top_main_formula_v.entity_tag_list_off_camlline_for_any_duo_top_main_formula for_cc2
;;

let entity_tag_list_off_camlline_for_any_duo_tag tag_ccc =
  let for_ccc = retrieve tag_ccc in
  entity_tag_list_off_camlline_for_any_duo_formula for_ccc
;;

(** {6 Iterating_for_formula} *)

let map f for_ccc = 
  let tag_ent_l = entity_tag_list_off_camlline_for_any_duo_formula for_ccc in
  List.map f tag_ent_l
;;

let iter f for_ccc = 
  let tag_ent_l = entity_tag_list_off_camlline_for_any_duo_formula for_ccc in
  List.iter f tag_ent_l ;;

let map2 f for_ccc_1 for_ccc_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_any_duo_formula for_ccc_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_any_duo_formula for_ccc_2 in
  List.map2 f tag_ent_l_1 tag_ent_l_2
;;

let iter2 f for_ccc_1 for_ccc_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_any_duo_formula for_ccc_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_any_duo_formula for_ccc_2 in
  List.iter2 f tag_ent_l_1 tag_ent_l_2 
;;

