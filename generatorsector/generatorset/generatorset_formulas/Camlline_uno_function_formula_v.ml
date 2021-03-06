(** {3 Camlline_uno_function_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_uno_function_formula_v";
   "Needed-by : FGNR:Camlline_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_cuf = 
  match for_cuf with
  | Camlline_uno_function_formula_t.Camlline_uno_function_any_formula for_cc1 ->
      Camlline_uno_function_symbol_t.Camlline_uno_function_any_symbol
        (Camlline_uno_function_any_formula_v.symbol_of_formula for_cc1)

  | Camlline_uno_function_formula_t.Camlline_uno_function_formula_formula for_cc2 ->
      Camlline_uno_function_symbol_t.Camlline_uno_function_formula_symbol
        (Camlline_uno_function_formula_formula_v.symbol_of_formula for_cc2)

  | Camlline_uno_function_formula_t.Camlline_uno_function_symbol_formula for_cc3 ->
      Camlline_uno_function_symbol_t.Camlline_uno_function_symbol_symbol
        (Camlline_uno_function_symbol_formula_v.symbol_of_formula for_cc3)

  | Camlline_uno_function_formula_t.Camlline_uno_function_tag_formula for_cc4 ->
      Camlline_uno_function_symbol_t.Camlline_uno_function_tag_symbol
        (Camlline_uno_function_tag_formula_v.symbol_of_formula for_cc4)
;;

(** {6 Naming_for_formula} *)

let name for_cuf =
  let sym_cuf = symbol_of_formula for_cuf in
  Camlline_uno_function_symbol_v.name sym_cuf
;;
(* ***
let longname for_cuf =
  let sym_cuf = symbol_of_formula for_cuf in
  Camlline_uno_function_symbol_v.longname sym_cuf
;;

let string_off for_cuf =
  let sym_cuf = symbol_of_formula for_cuf in
  Camlline_uno_function_symbol_v.string_off sym_cuf
;;

let fullname for_cuf =
  let sym_cuf = symbol_of_formula for_cuf in
  Camlline_uno_function_symbol_v.longname sym_cuf
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_ccc soi_cap =
  match sym_ccc with 
  | Camlline_uno_function_symbol_t.Camlline_uno_function_any_symbol sym_cc1 ->
      Camlline_uno_function_formula_t.Camlline_uno_function_any_formula 
        (Camlline_uno_function_any_formula_v.make sym_cc1 soi_cap)

  | Camlline_uno_function_symbol_t.Camlline_uno_function_formula_symbol sym_cc2 ->
      Camlline_uno_function_formula_t.Camlline_uno_function_formula_formula 
        (Camlline_uno_function_formula_formula_v.make sym_cc2 soi_cap)

  | Camlline_uno_function_symbol_t.Camlline_uno_function_symbol_symbol sym_cc3 ->
      Camlline_uno_function_formula_t.Camlline_uno_function_symbol_formula 
        (Camlline_uno_function_symbol_formula_v.make sym_cc3 soi_cap)

  | Camlline_uno_function_symbol_t.Camlline_uno_function_tag_symbol sym_cc4 ->
      Camlline_uno_function_formula_t.Camlline_uno_function_tag_formula 
        (Camlline_uno_function_tag_formula_v.make sym_cc4 soi_cap)

;;

(** {6 Retrieving} *)

let retrieve tag_ccc =
  let soi_cap = Tag_v.sole_index_off_tag tag_ccc in
  let sym_ccc = Tag_v.entity_off_tag tag_ccc in
  make sym_ccc soi_cap 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_uno_function_formula for_ccc =
  match for_ccc with 
  | Camlline_uno_function_formula_t.Camlline_uno_function_any_formula for_cc1 ->
        Camlline_uno_function_any_formula_v.entity_tag_list_off_camlline_uno_function_any_formula for_cc1

  | Camlline_uno_function_formula_t.Camlline_uno_function_formula_formula for_cc2 ->
        Camlline_uno_function_formula_formula_v.entity_tag_list_off_camlline_uno_function_formula_formula for_cc2

  | Camlline_uno_function_formula_t.Camlline_uno_function_symbol_formula for_cc3 ->
        Camlline_uno_function_symbol_formula_v.entity_tag_list_off_camlline_uno_function_symbol_formula for_cc3

  | Camlline_uno_function_formula_t.Camlline_uno_function_tag_formula for_cc4 ->
        Camlline_uno_function_tag_formula_v.entity_tag_list_off_camlline_uno_function_tag_formula for_cc4

;;

let entity_tag_list_off_camlline_uno_function_tag tag_ccc =
  let for_ccc = retrieve tag_ccc in
  entity_tag_list_off_camlline_uno_function_formula for_ccc
;;

(** {6 Iterating_for_formula} *)

let map f for_ccc = 
  let tag_ent_l = entity_tag_list_off_camlline_uno_function_formula for_ccc in
  List.map f tag_ent_l
;;

let iter f for_ccc = 
  let tag_ent_l = entity_tag_list_off_camlline_uno_function_formula for_ccc in
  List.iter f tag_ent_l ;;

let map2 f for_ccc_1 for_ccc_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_uno_function_formula for_ccc_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_uno_function_formula for_ccc_2 in
  List.map2 f tag_ent_l_1 tag_ent_l_2
;;

let iter2 f for_ccc_1 for_ccc_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_uno_function_formula for_ccc_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_uno_function_formula for_ccc_2 in
  List.iter2 f tag_ent_l_1 tag_ent_l_2 
;;

