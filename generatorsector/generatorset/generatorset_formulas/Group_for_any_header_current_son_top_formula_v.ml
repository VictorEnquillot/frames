(** {3 Group_for_any_header_current_son_top_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Group_for_any_header_current_son_top_interface_v";
   "Current : FGNR:Group_for_any_header_current_son_top_formula_v";
   "Needed-by : FGNR:Group_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_gst =
  match for_gst with
  | Group_for_any_header_current_son_top_formula_t.Group_for_any_header_current_son_top_empty _ -> 
      Group_for_any_header_current_son_top_symbol_t.Group_for_any_header_current_son_top_empty
;;

(** {6 Naming_for_formula} *)

let name for_gst = 
  let sym_gst = symbol_of_formula for_gst in
  Group_for_any_header_current_son_top_symbol_v.name sym_gst
;;
(* ***

let string_off for_gst =
  let sym_gst = symbol_of_formula for_gst in
  Group_for_any_header_current_son_top_symbol_v.string_off sym_gst
;;

let longname for_gst =
  Format.sprintf "Group_for_any_header_current_son_top_formula_t.%s" 
    (String.capitalize (name for_gst))

let fullname for_gst =
  Format.sprintf "%s \"%s\"" (longname for_gst) (string_off for_gst)
;;
*** *)

(** {6 Building_and_storing} *)

(** {6 Making_for_formula} *)

let make sym_gst soi_gro =
  let tag_cal_l = [] in

  match sym_gst with 
  | Group_for_any_header_current_son_top_symbol_t.Group_for_any_header_current_son_top_empty -> 
      Group_for_any_header_current_son_top_formula_t.Group_for_any_header_current_son_top_empty tag_cal_l
;;

(** {6 Retrieving} *)

let retrieve tag_gst =
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  make sym_gst soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let camlline_tag_list_off_group_for_any_header_current_son_top_formula for_gst =
  match for_gst with
  | Group_for_any_header_current_son_top_formula_t.Group_for_any_header_current_son_top_empty tag_cal_l -> 
      tag_cal_l
;;

let camlline_tag_list_off_group_for_any_header_current_son_top_tag tag_gst =
  let for_gst = retrieve tag_gst in
  camlline_tag_list_off_group_for_any_header_current_son_top_formula for_gst
;; 

(** {6 Iterating_for_formula_for_any_header_current_son_top.} *)

let map f_of_tag_cal for_gst = 
  let tag_cal_l = camlline_tag_list_off_group_for_any_header_current_son_top_formula for_gst in
  List.map f_of_tag_cal tag_cal_l
;;

let iter f_of_tag_cal for_gst = 
  let tag_cal_l = camlline_tag_list_off_group_for_any_header_current_son_top_formula for_gst in
  List.iter f_of_tag_cal tag_cal_l ;;

let map2 f_of_tag_cal for_gst_1 for_gst_2  = 
  let tag_cal_l_1 = camlline_tag_list_off_group_for_any_header_current_son_top_formula for_gst_1 in
  let tag_cal_l_2 = camlline_tag_list_off_group_for_any_header_current_son_top_formula for_gst_2 in
  List.map2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2
;;

let iter2 f_of_tag_cal for_gst_1 for_gst_2 = 
  let tag_cal_l_1 = camlline_tag_list_off_group_for_any_header_current_son_top_formula for_gst_1 in
  let tag_cal_l_2 = camlline_tag_list_off_group_for_any_header_current_son_top_formula for_gst_2 in
  List.iter2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2 
;;

