(** {3 Group_for_any_footer_son_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Group_for_any_footer_son_interface_v";
   "Current : FGNR:Group_for_any_footer_son_formula_v";
   "Needed-by : FGNR:Group_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_gfs =
  match for_gfs with
  | Group_for_any_footer_son_formula_t.Group_for_any_footer_son_empty _ -> 
      Group_for_any_footer_son_symbol_t.Group_for_any_footer_son_empty
;;

(** {6 Naming_for_formula} *)

let name for_gfs = 
  let sym_gfs = symbol_of_formula for_gfs in
  Group_for_any_footer_son_symbol_v.name sym_gfs
;;
(* ***

let string_off for_gfs =
  let sym_gfs = symbol_of_formula for_gfs in
  Group_for_any_footer_son_symbol_v.string_off sym_gfs
;;

let longname for_gfs =
  Format.sprintf "Group_for_any_footer_son_formula_t.%s" 
    (String.capitalize (name for_gfs))

let fullname for_gfs =
  Format.sprintf "%s \"%s\"" (longname for_gfs) (string_off for_gfs)
;;
*** *)

(** {6 Building_and_storing} *)

(** {6 Making_for_formula} *)

let make sym_gfs soi_gro =
  let tag_cal_l = [] in

  match sym_gfs with 
  | Group_for_any_footer_son_symbol_t.Group_for_any_footer_son_empty -> 
      Group_for_any_footer_son_formula_t.Group_for_any_footer_son_empty tag_cal_l
;;

(** {6 Retrieving} *)

let retrieve tag_gfs =
  let soi_gro = Tag_v.sole_index_off_tag tag_gfs in
  let sym_gfs = Tag_v.entity_off_tag tag_gfs in
  make sym_gfs soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let camlline_tag_list_off_group_for_any_footer_son_formula for_gfs =
  match for_gfs with
  | Group_for_any_footer_son_formula_t.Group_for_any_footer_son_empty tag_cal_l -> 
      tag_cal_l
;;

let camlline_tag_list_off_group_for_any_footer_son_tag tag_gfs =
  let for_gfs = retrieve tag_gfs in
  camlline_tag_list_off_group_for_any_footer_son_formula for_gfs
;; 

(** {6 Iterating_for_formula_for_any_footer_son.} *)

let map f_of_tag_cal for_gfs = 
  let tag_cal_l = camlline_tag_list_off_group_for_any_footer_son_formula for_gfs in
  List.map f_of_tag_cal tag_cal_l
;;

let iter f_of_tag_cal for_gfs = 
  let tag_cal_l = camlline_tag_list_off_group_for_any_footer_son_formula for_gfs in
  List.iter f_of_tag_cal tag_cal_l ;;

let map2 f_of_tag_cal for_gfs_1 for_gfs_2  = 
  let tag_cal_l_1 = camlline_tag_list_off_group_for_any_footer_son_formula for_gfs_1 in
  let tag_cal_l_2 = camlline_tag_list_off_group_for_any_footer_son_formula for_gfs_2 in
  List.map2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2
;;

let iter2 f_of_tag_cal for_gfs_1 for_gfs_2 = 
  let tag_cal_l_1 = camlline_tag_list_off_group_for_any_footer_son_formula for_gfs_1 in
  let tag_cal_l_2 = camlline_tag_list_off_group_for_any_footer_son_formula for_gfs_2 in
  List.iter2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2 
;;

