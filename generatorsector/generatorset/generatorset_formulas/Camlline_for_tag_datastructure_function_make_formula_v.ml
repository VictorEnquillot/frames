(** {3 Camlline_for_tag_datastructure_function_make_formula_v} *)

(** {3 Camlline_for_tag_datastructure_function_make_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_tag_datastructure_function_make_formula_v";
   "Needed-by : FGNR:Camlline_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_cfm = 
  match for_cfm with
  | Camlline_for_tag_datastructure_function_make_formula_t.Camlline_for_tag_datastructure_function_make_uno_formula for_cc1 ->
      Camlline_for_tag_datastructure_function_make_symbol_t.Camlline_for_tag_datastructure_function_make_uno_symbol
        (Camlline_for_tag_datastructure_function_make_uno_formula_v.symbol_of_formula for_cc1)

  | Camlline_for_tag_datastructure_function_make_formula_t.Camlline_for_tag_datastructure_function_make_duo_formula for_cc2 ->
      Camlline_for_tag_datastructure_function_make_symbol_t.Camlline_for_tag_datastructure_function_make_duo_symbol
        (Camlline_for_tag_datastructure_function_make_duo_formula_v.symbol_of_formula for_cc2)

  | Camlline_for_tag_datastructure_function_make_formula_t.Camlline_for_tag_datastructure_function_make_trio_formula for_cc3 ->
      Camlline_for_tag_datastructure_function_make_symbol_t.Camlline_for_tag_datastructure_function_make_trio_symbol
        (Camlline_for_tag_datastructure_function_make_trio_formula_v.symbol_of_formula for_cc3)







;;

(** {6 Naming_for_formula} *)

let name for_cfm =
  let sym_cfm = symbol_of_formula for_cfm in
  Camlline_for_tag_datastructure_function_make_symbol_v.name sym_cfm
;;
(* ***
let longname for_cfm =
  let sym_cfm = symbol_of_formula for_cfm in
  Camlline_for_tag_datastructure_function_make_symbol_v.longname sym_cfm
;;

let string_off for_cfm =
  let sym_cfm = symbol_of_formula for_cfm in
  Camlline_for_tag_datastructure_function_make_symbol_v.string_off sym_cfm
;;

let fullname for_cfm =
  let sym_cfm = symbol_of_formula for_cfm in
  Camlline_for_tag_datastructure_function_make_symbol_v.longname sym_cfm
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_cfm soi_cal =
  match sym_cfm with 
  | Camlline_for_tag_datastructure_function_make_symbol_t.Camlline_for_tag_datastructure_function_make_uno_symbol sym_cc1 ->
      Camlline_for_tag_datastructure_function_make_formula_t.Camlline_for_tag_datastructure_function_make_uno_formula 
        (Camlline_for_tag_datastructure_function_make_uno_formula_v.make sym_cc1 soi_cal)

  | Camlline_for_tag_datastructure_function_make_symbol_t.Camlline_for_tag_datastructure_function_make_duo_symbol sym_cc2 ->
      Camlline_for_tag_datastructure_function_make_formula_t.Camlline_for_tag_datastructure_function_make_duo_formula 
        (Camlline_for_tag_datastructure_function_make_duo_formula_v.make sym_cc2 soi_cal)

  | Camlline_for_tag_datastructure_function_make_symbol_t.Camlline_for_tag_datastructure_function_make_trio_symbol sym_cc3 ->
      Camlline_for_tag_datastructure_function_make_formula_t.Camlline_for_tag_datastructure_function_make_trio_formula 
        (Camlline_for_tag_datastructure_function_make_trio_formula_v.make sym_cc3 soi_cal)







;;

(** {6 Retrieving} *)

let retrieve tag_cfm =
  let soi_cal = Tag_v.sole_index_off_tag tag_cfm in
  let sym_cfm = Tag_v.entity_off_tag tag_cfm in
  make sym_cfm soi_cal 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_tag_datastructure_function_make_formula for_cfm =
  match for_cfm with 
  | Camlline_for_tag_datastructure_function_make_formula_t.Camlline_for_tag_datastructure_function_make_uno_formula for_cc1 ->
        Camlline_for_tag_datastructure_function_make_uno_formula_v.entity_tag_list_off_camlline_for_tag_datastructure_function_make_uno_formula for_cc1

  | Camlline_for_tag_datastructure_function_make_formula_t.Camlline_for_tag_datastructure_function_make_duo_formula for_cc2 ->
        Camlline_for_tag_datastructure_function_make_duo_formula_v.entity_tag_list_off_camlline_for_tag_datastructure_function_make_duo_formula for_cc2

  | Camlline_for_tag_datastructure_function_make_formula_t.Camlline_for_tag_datastructure_function_make_trio_formula for_cc3 ->
        Camlline_for_tag_datastructure_function_make_trio_formula_v.entity_tag_list_off_camlline_for_tag_datastructure_function_make_trio_formula for_cc3







;;

let entity_tag_list_off_camlline_for_tag_datastructure_function_make_tag tag_cfm =
  let for_cfm = retrieve tag_cfm in
  entity_tag_list_off_camlline_for_tag_datastructure_function_make_formula for_cfm
;;

(** {6 Iterating_for_formula} *)

let map f for_cfm = 
  let tag_ent_l = entity_tag_list_off_camlline_for_tag_datastructure_function_make_formula for_cfm in
  List.map f tag_ent_l
;;

let iter f for_cfm = 
  let tag_ent_l = entity_tag_list_off_camlline_for_tag_datastructure_function_make_formula for_cfm in
  List.iter f tag_ent_l ;;

let map2 f for_cfm_1 for_cfm_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_tag_datastructure_function_make_formula for_cfm_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_tag_datastructure_function_make_formula for_cfm_2 in
  List.map2 f tag_ent_l_1 tag_ent_l_2
;;

let iter2 f for_cfm_1 for_cfm_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_tag_datastructure_function_make_formula for_cfm_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_tag_datastructure_function_make_formula for_cfm_2 in
  List.iter2 f tag_ent_l_1 tag_ent_l_2 
;;

