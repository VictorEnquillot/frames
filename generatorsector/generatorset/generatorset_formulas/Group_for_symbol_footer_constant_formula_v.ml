(** {3 Group_for_symbol_footer_constant_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Group_for_symbol_footer_constant_interface_v";
   "Current : FGNR:Group_for_symbol_footer_constant_formula_v";
   "Needed-by : FGNR:Group_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_gbc =
  match for_gbc with
  | Group_for_symbol_footer_constant_formula_t.Group_for_symbol_footer_constant_empty _ -> 
      Group_for_symbol_footer_constant_symbol_t.Group_for_symbol_footer_constant_empty
;;

(** {6 Naming_for_formula} *)

let name for_gbc = 
  let sym_gbc = symbol_of_formula for_gbc in
  Group_for_symbol_footer_constant_symbol_v.name sym_gbc
;;
(* ***

let string_off for_gbc =
  let sym_gbc = symbol_of_formula for_gbc in
  Group_for_symbol_footer_constant_symbol_v.string_off sym_gbc
;;

let longname for_gbc =
  Format.sprintf "Group_for_symbol_footer_constant_formula_t.%s" 
    (String.capitalize (name for_gbc))

let fullname for_gbc =
  Format.sprintf "%s \"%s\"" (longname for_gbc) (string_off for_gbc)
;;
*** *)

(** {6 Building_and_storing} *)

(** {6 Making_for_formula} *)

let make sym_gbc soi_gro =
  let tag_cal_l = [] in

  match sym_gbc with 
  | Group_for_symbol_footer_constant_symbol_t.Group_for_symbol_footer_constant_empty -> 
      Group_for_symbol_footer_constant_formula_t.Group_for_symbol_footer_constant_empty tag_cal_l
;;

(** {6 Retrieving} *)

let retrieve tag_gbc =
  let soi_gro = Tag_v.sole_index_off_tag tag_gbc in
  let sym_gbc = Tag_v.entity_off_tag tag_gbc in
  make sym_gbc soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let camlline_tag_list_off_group_for_symbol_footer_constant_formula for_gbc =
  match for_gbc with
  | Group_for_symbol_footer_constant_formula_t.Group_for_symbol_footer_constant_empty tag_cal_l -> 
      tag_cal_l
;;

let camlline_tag_list_off_group_for_symbol_footer_constant_tag tag_gbc =
  let for_gbc = retrieve tag_gbc in
  camlline_tag_list_off_group_for_symbol_footer_constant_formula for_gbc
;; 

(** {6 Iterating_for_formula_for_symbol_footer_constant.} *)

let map f_of_tag_cal for_gbc = 
  let tag_cal_l = camlline_tag_list_off_group_for_symbol_footer_constant_formula for_gbc in
  List.map f_of_tag_cal tag_cal_l
;;

let iter f_of_tag_cal for_gbc = 
  let tag_cal_l = camlline_tag_list_off_group_for_symbol_footer_constant_formula for_gbc in
  List.iter f_of_tag_cal tag_cal_l ;;

let map2 f_of_tag_cal for_gbc_1 for_gbc_2  = 
  let tag_cal_l_1 = camlline_tag_list_off_group_for_symbol_footer_constant_formula for_gbc_1 in
  let tag_cal_l_2 = camlline_tag_list_off_group_for_symbol_footer_constant_formula for_gbc_2 in
  List.map2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2
;;

let iter2 f_of_tag_cal for_gbc_1 for_gbc_2 = 
  let tag_cal_l_1 = camlline_tag_list_off_group_for_symbol_footer_constant_formula for_gbc_1 in
  let tag_cal_l_2 = camlline_tag_list_off_group_for_symbol_footer_constant_formula for_gbc_2 in
  List.iter2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2 
;;

