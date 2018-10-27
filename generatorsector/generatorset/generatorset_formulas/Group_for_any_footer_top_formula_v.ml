(** {3 Group_for_any_footer_top_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Group_for_any_footer_top_interface_v";
   "Current : FGNR:Group_for_any_footer_top_formula_v";
   "Needed-by : FGNR:Group_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_gbt =
  match for_gbt with
  | Group_for_any_footer_top_formula_t.Group_for_any_footer_top_empty _ -> 
      Group_for_any_footer_top_symbol_t.Group_for_any_footer_top_empty

;;

(** {6 Naming_for_formula} *)

let name for_gbt = 
  let sym_gft = symbol_of_formula for_gbt in
  Group_for_any_footer_top_symbol_v.name sym_gft
;;
(* ***

let string_off for_gbt =
  let sym_gft = symbol_of_formula for_gbt in
  Group_for_any_footer_top_symbol_v.string_off sym_gft
;;

let longname for_gbt =
  Format.sprintf "Group_for_any_footer_top_formula_t.%s" 
    (String.capitalize (name for_gbt))

let fullname for_gbt =
  Format.sprintf "%s \"%s\"" (longname for_gbt) (string_off for_gbt)
;;
*** *)

(** {6 Building_and_storing} *)

(** {6 Making_for_formula} *)

let make sym_gft soi_gro =
  let tag_cal_l = [] in

  match sym_gft with 
  | Group_for_any_footer_top_symbol_t.Group_for_any_footer_top_empty -> 
      Group_for_any_footer_top_formula_t.Group_for_any_footer_top_empty tag_cal_l
;;

(** {6 Retrieving} *)

let retrieve tag_gft =
  let soi_gro = Tag_v.sole_index_off_tag tag_gft in
  let sym_gft = Tag_v.entity_off_tag tag_gft in
  make sym_gft soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let camlline_tag_list_off_group_for_any_footer_top_formula for_gbt =
  match for_gbt with
  | Group_for_any_footer_top_formula_t.Group_for_any_footer_top_empty tag_cal_l -> 
      tag_cal_l
;;

let camlline_tag_list_off_group_for_any_footer_top_tag tag_gft =
  let for_gbt = retrieve tag_gft in
  camlline_tag_list_off_group_for_any_footer_top_formula for_gbt
;; 

(** {6 Iterating_for_formulaGroup_for_any_footer_top.} *)

let map f_of_tag_cal for_gbt = 
  let tag_cal_l = camlline_tag_list_off_group_for_any_footer_top_formula for_gbt in
  List.map f_of_tag_cal tag_cal_l
;;

let iter f_of_tag_cal for_gbt = 
  let tag_cal_l = camlline_tag_list_off_group_for_any_footer_top_formula for_gbt in
  List.iter f_of_tag_cal tag_cal_l ;;

let map2 f_of_tag_cal for_gbt_1 for_gbt_2  = 
  let tag_cal_l_1 = camlline_tag_list_off_group_for_any_footer_top_formula for_gbt_1 in
  let tag_cal_l_2 = camlline_tag_list_off_group_for_any_footer_top_formula for_gbt_2 in
  List.map2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2
;;

let iter2 f_of_tag_cal for_gbt_1 for_gbt_2 = 
  let tag_cal_l_1 = camlline_tag_list_off_group_for_any_footer_top_formula for_gbt_1 in
  let tag_cal_l_2 = camlline_tag_list_off_group_for_any_footer_top_formula for_gbt_2 in
  List.iter2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2 
;;

