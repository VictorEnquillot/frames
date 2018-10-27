(** {3 Camlline_for_tag_datastructure_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_tag_datastructure_formula_v";
   "Needed-by : FGNR:Camlline_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_ctd = 
  match for_ctd with
  | Camlline_for_tag_datastructure_formula_t.Camlline_for_tag_datastructure_camltype_formula for_cc1 ->
      Camlline_for_tag_datastructure_symbol_t.Camlline_for_tag_datastructure_camltype_symbol
        (Camlline_for_tag_datastructure_camltype_formula_v.symbol_of_formula for_cc1)

  | Camlline_for_tag_datastructure_formula_t.Camlline_for_tag_datastructure_function_formula for_cc2 ->
      Camlline_for_tag_datastructure_symbol_t.Camlline_for_tag_datastructure_function_symbol
        (Camlline_for_tag_datastructure_function_formula_v.symbol_of_formula for_cc2)
;;

(** {6 Naming_for_formula} *)

let name for_ctd =
  let sym_ctd = symbol_of_formula for_ctd in
  Camlline_for_tag_datastructure_symbol_v.name sym_ctd
;;
(* ***
let longname for_ctd =
  let sym_ctd = symbol_of_formula for_ctd in
  Camlline_for_tag_datastructure_symbol_v.longname sym_ctd
;;

let string_off for_ctd =
  let sym_ctd = symbol_of_formula for_ctd in
  Camlline_for_tag_datastructure_symbol_v.string_off sym_ctd
;;

let fullname for_ctd =
  let sym_ctd = symbol_of_formula for_ctd in
  Camlline_for_tag_datastructure_symbol_v.longname sym_ctd
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_ctd soi_cal =
  match sym_ctd with 
  | Camlline_for_tag_datastructure_symbol_t.Camlline_for_tag_datastructure_camltype_symbol sym_cc1 ->
      Camlline_for_tag_datastructure_formula_t.Camlline_for_tag_datastructure_camltype_formula 
        (Camlline_for_tag_datastructure_camltype_formula_v.make sym_cc1 soi_cal)

  | Camlline_for_tag_datastructure_symbol_t.Camlline_for_tag_datastructure_function_symbol sym_cc2 ->
      Camlline_for_tag_datastructure_formula_t.Camlline_for_tag_datastructure_function_formula 
        (Camlline_for_tag_datastructure_function_formula_v.make sym_cc2 soi_cal)








;;

(** {6 Retrieving} *)

let retrieve tag_ctd =
  let soi_cal = Tag_v.sole_index_off_tag tag_ctd in
  let sym_ctd = Tag_v.entity_off_tag tag_ctd in
  make sym_ctd soi_cal 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_tag_datastructure_formula for_ctd =
  match for_ctd with 
  | Camlline_for_tag_datastructure_formula_t.Camlline_for_tag_datastructure_camltype_formula for_cc1 ->
        Camlline_for_tag_datastructure_camltype_formula_v.entity_tag_list_off_camlline_for_tag_datastructure_camltype_formula for_cc1

  | Camlline_for_tag_datastructure_formula_t.Camlline_for_tag_datastructure_function_formula for_cc2 ->
        Camlline_for_tag_datastructure_function_formula_v.entity_tag_list_off_camlline_for_tag_datastructure_function_formula for_cc2








;;

let entity_tag_list_off_camlline_for_tag_datastructure_tag tag_ctd =
  let for_ctd = retrieve tag_ctd in
  entity_tag_list_off_camlline_for_tag_datastructure_formula for_ctd
;;

(** {6 Iterating_for_formula} *)

let map f for_ctd = 
  let tag_ent_l = entity_tag_list_off_camlline_for_tag_datastructure_formula for_ctd in
  List.map f tag_ent_l
;;

let iter f for_ctd = 
  let tag_ent_l = entity_tag_list_off_camlline_for_tag_datastructure_formula for_ctd in
  List.iter f tag_ent_l ;;

let map2 f for_ctd_1 for_ctd_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_tag_datastructure_formula for_ctd_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_tag_datastructure_formula for_ctd_2 in
  List.map2 f tag_ent_l_1 tag_ent_l_2
;;

let iter2 f for_ctd_1 for_ctd_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_tag_datastructure_formula for_ctd_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_tag_datastructure_formula for_ctd_2 in
  List.iter2 f tag_ent_l_1 tag_ent_l_2 
;;

