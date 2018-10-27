(** {3 Camlline_for_any_duo_datastructure_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_any_duo_datastructure_formula_v";
   "Needed-by : FGNR:Camlline_formula_v";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "Remark : It is a For_any_duo_datastructure type";
   "Improve : ";
   "Example : ";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_cdd =
  match for_cdd with
  | Camlline_for_any_duo_datastructure_formula_t.Pipe_a_b_datastructure_of_a_b_datastructure _ -> 
      Camlline_for_any_duo_datastructure_symbol_t.Pipe_a_b_datastructure_of_a_b_datastructure

;;

(** {6 Naming_for_formula} *)

let name for_cdd = 
  let sym_cdd = symbol_of_formula for_cdd in
  Camlline_for_any_duo_datastructure_symbol_v.name sym_cdd
;;
(* ***

let string_off for_cdd =
  let sym_cdd = symbol_of_formula for_cdd in
  Camlline_for_any_duo_datastructure_symbol_v.string_off sym_cdd
;;

let longname for_cdd =
  Format.sprintf "Camlline_for_any_duo_datastructure_formula_t.%s" 
    (String.capitalize (name for_cdd))

let fullname for_cdd =
  Format.sprintf "%s \"%s\"" (longname for_cdd) (string_off for_cdd)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_cdd soi_cal =
    Utilities_v.not_yet_implemented nam_cod "build_n_store"
;;

(** {6 Making_for_formula} *)

let make sym_cdd soi_cal =
  let tag_ent_l = build_n_store sym_cdd soi_cal in

  match sym_cdd with 
  | Camlline_for_any_duo_datastructure_symbol_t.Pipe_a_b_datastructure_of_a_b_datastructure -> 
      Camlline_for_any_duo_datastructure_formula_t.Pipe_a_b_datastructure_of_a_b_datastructure tag_ent_l

;;

(** {6 Retrieving} *)

let retrieve tag_cdd =
  let soi_gro = Tag_v.sole_index_off_tag tag_cdd in
  let sym_cdd = Tag_v.entity_off_tag tag_cdd in
  make sym_cdd soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_any_duo_datastructure_formula for_cdd =
  match for_cdd with
  | Camlline_for_any_duo_datastructure_formula_t.Pipe_a_b_datastructure_of_a_b_datastructure tag_ent_l -> tag_ent_l
;;

let entity_tag_list_off_camlline_for_any_duo_datastructure_tag tag_cdd =
  let for_cdd = retrieve tag_cdd in
  entity_tag_list_off_camlline_for_any_duo_datastructure_formula for_cdd
;; 

(** {6 Iterating_for_formula_for_any_duo_datastructure.} *)

let map f_of_tag_ent for_cdd = 
  let tag_ent_l = entity_tag_list_off_camlline_for_any_duo_datastructure_formula for_cdd in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_cdd = 
  let tag_ent_l = entity_tag_list_off_camlline_for_any_duo_datastructure_formula for_cdd in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_cdd_1 for_cdd_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_any_duo_datastructure_formula for_cdd_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_any_duo_datastructure_formula for_cdd_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_cdd_1 for_cdd_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_any_duo_datastructure_formula for_cdd_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_any_duo_datastructure_formula for_cdd_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

