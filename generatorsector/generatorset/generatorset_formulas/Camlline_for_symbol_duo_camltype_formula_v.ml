(** {3 Camlline_for_symbol_duo_camltype_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_symbol_duo_camltype_formula_v";
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

let symbol_of_formula for_ccc =
  match for_ccc with
  | Camlline_for_symbol_duo_camltype_formula_t.Camlline_for_symbol_duo_camltype_empty _ -> 
      Camlline_for_symbol_duo_camltype_symbol_t.Camlline_for_symbol_duo_camltype_empty
;;

(** {6 Naming_for_formula} *)

let name for_ccc = 
  let sym_ccc = symbol_of_formula for_ccc in
  Camlline_for_symbol_duo_camltype_symbol_v.name sym_ccc
;;
(* ***

let string_off for_ccc =
  let sym_ccc = symbol_of_formula for_ccc in
  Camlline_for_symbol_duo_camltype_symbol_v.string_off sym_ccc
;;

let longname for_ccc =
  Format.sprintf "Camlline_for_symbol_duo_camltype_formula_t.%s" 
    (String.capitalize (name for_ccc))

let fullname for_ccc =
  Format.sprintf "%s \"%s\"" (longname for_ccc) (string_off for_ccc)
;;
*** *)

(** {6 Building_and_storing} *)

(** {6 Making_for_formula} *)

let make sym_ccc soi_cal =
  let tag_ent_l = [] in

  match sym_ccc with 
  | Camlline_for_symbol_duo_camltype_symbol_t.Camlline_for_symbol_duo_camltype_empty -> 
      Camlline_for_symbol_duo_camltype_formula_t.Camlline_for_symbol_duo_camltype_empty tag_ent_l
;;

(** {6 Retrieving} *)

let retrieve tag_ccc =
  let soi_gro = Tag_v.sole_index_off_tag tag_ccc in
  let sym_ccc = Tag_v.entity_off_tag tag_ccc in
  make sym_ccc soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_symbol_duo_camltype_formula for_ccc =
  match for_ccc with
  | Camlline_for_symbol_duo_camltype_formula_t.Camlline_for_symbol_duo_camltype_empty tag_ent_l -> 
      tag_ent_l
;;

let entity_tag_list_off_camlline_for_symbol_duo_camltype_tag tag_ccc =
  let for_ccc = retrieve tag_ccc in
  entity_tag_list_off_camlline_for_symbol_duo_camltype_formula for_ccc
;; 

(** {6 Iterating_for_formula_for_symbol_duo_camltype.} *)

let map f_of_tag_ent for_ccc = 
  let tag_ent_l = entity_tag_list_off_camlline_for_symbol_duo_camltype_formula for_ccc in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_ccc = 
  let tag_ent_l = entity_tag_list_off_camlline_for_symbol_duo_camltype_formula for_ccc in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_ccc_1 for_ccc_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_symbol_duo_camltype_formula for_ccc_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_symbol_duo_camltype_formula for_ccc_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_ccc_1 for_ccc_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_symbol_duo_camltype_formula for_ccc_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_symbol_duo_camltype_formula for_ccc_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

