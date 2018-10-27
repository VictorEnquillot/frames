(** {3 Camlline_for_formula_datastructure_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_formula_datastructure_formula_v";
   "Needed-by : FGNR:Camlline_formula_v";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "Remark : It is a Stem type";
   "Improve : ";
   "Example : ";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_cfd = 
  match for_cfd with
  | Camlline_for_formula_datastructure_formula_t.Camlline_for_formula_datastructure_uno_formula for_cc1 ->
      Camlline_for_formula_datastructure_symbol_t.Camlline_for_formula_datastructure_uno_symbol
        (Camlline_for_formula_datastructure_uno_formula_v.symbol_of_formula for_cc1)

  | Camlline_for_formula_datastructure_formula_t.Camlline_for_formula_datastructure_duo_formula for_cc2 ->
      Camlline_for_formula_datastructure_symbol_t.Camlline_for_formula_datastructure_duo_symbol
        (Camlline_for_formula_datastructure_duo_formula_v.symbol_of_formula for_cc2)

  | Camlline_for_formula_datastructure_formula_t.Camlline_for_formula_datastructure_trio_formula for_cc3 ->
      Camlline_for_formula_datastructure_symbol_t.Camlline_for_formula_datastructure_trio_symbol
        (Camlline_for_formula_datastructure_trio_formula_v.symbol_of_formula for_cc3)







;;

(** {6 Naming_for_formula} *)

let name for_cfd =
  let sym_cfd = symbol_of_formula for_cfd in
  Camlline_for_formula_datastructure_symbol_v.name sym_cfd
;;
(* ***
let longname for_cfd =
  let sym_cfd = symbol_of_formula for_cfd in
  Camlline_for_formula_datastructure_symbol_v.longname sym_cfd
;;

let string_off for_cfd =
  let sym_cfd = symbol_of_formula for_cfd in
  Camlline_for_formula_datastructure_symbol_v.string_off sym_cfd
;;

let fullname for_cfd =
  let sym_cfd = symbol_of_formula for_cfd in
  Camlline_for_formula_datastructure_symbol_v.longname sym_cfd
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_cfd soi_cal =
  match sym_cfd with 
  | Camlline_for_formula_datastructure_symbol_t.Camlline_for_formula_datastructure_uno_symbol sym_cc1 ->
      Camlline_for_formula_datastructure_formula_t.Camlline_for_formula_datastructure_uno_formula 
        (Camlline_for_formula_datastructure_uno_formula_v.make sym_cc1 soi_cal)

  | Camlline_for_formula_datastructure_symbol_t.Camlline_for_formula_datastructure_duo_symbol sym_cc2 ->
      Camlline_for_formula_datastructure_formula_t.Camlline_for_formula_datastructure_duo_formula 
        (Camlline_for_formula_datastructure_duo_formula_v.make sym_cc2 soi_cal)

  | Camlline_for_formula_datastructure_symbol_t.Camlline_for_formula_datastructure_trio_symbol sym_cc3 ->
      Camlline_for_formula_datastructure_formula_t.Camlline_for_formula_datastructure_trio_formula 
        (Camlline_for_formula_datastructure_trio_formula_v.make sym_cc3 soi_cal)







;;

(** {6 Retrieving} *)

let retrieve tag_cfd =
  let soi_cal = Tag_v.sole_index_off_tag tag_cfd in
  let sym_cfd = Tag_v.entity_off_tag tag_cfd in
  make sym_cfd soi_cal 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_formula_datastructure_formula for_cfd =
  match for_cfd with 
  | Camlline_for_formula_datastructure_formula_t.Camlline_for_formula_datastructure_uno_formula for_cc1 ->
        Camlline_for_formula_datastructure_uno_formula_v.entity_tag_list_off_camlline_for_formula_datastructure_uno_formula for_cc1

  | Camlline_for_formula_datastructure_formula_t.Camlline_for_formula_datastructure_duo_formula for_cc2 ->
        Camlline_for_formula_datastructure_duo_formula_v.entity_tag_list_off_camlline_for_formula_datastructure_duo_formula for_cc2

  | Camlline_for_formula_datastructure_formula_t.Camlline_for_formula_datastructure_trio_formula for_cc3 ->
        Camlline_for_formula_datastructure_trio_formula_v.entity_tag_list_off_camlline_for_formula_datastructure_trio_formula for_cc3







;;

let entity_tag_list_off_camlline_for_formula_datastructure_tag tag_cfd =
  let for_cfd = retrieve tag_cfd in
  entity_tag_list_off_camlline_for_formula_datastructure_formula for_cfd
;;

(** {6 Iterating_for_formula} *)

let map f for_cfd = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_datastructure_formula for_cfd in
  List.map f tag_ent_l
;;

let iter f for_cfd = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_datastructure_formula for_cfd in
  List.iter f tag_ent_l ;;

let map2 f for_cfd_1 for_cfd_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_datastructure_formula for_cfd_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_datastructure_formula for_cfd_2 in
  List.map2 f tag_ent_l_1 tag_ent_l_2
;;

let iter2 f for_cfd_1 for_cfd_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_datastructure_formula for_cfd_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_datastructure_formula for_cfd_2 in
  List.iter2 f tag_ent_l_1 tag_ent_l_2 
;;

