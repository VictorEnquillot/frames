(** {3 Group_for_symbol_footer_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Group_for_symbol_footer_formula_v";
   "Needed-by : FGNR:Group_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Builders : Camlline";
   "Builder_data : Camlline";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_ggg = 
  match for_ggg with
  | Group_for_symbol_footer_formula_t.Group_for_symbol_footer_top_formula for_cc1 ->
      Group_for_symbol_footer_symbol_t.Group_for_symbol_footer_top_symbol
        (Group_for_symbol_footer_top_formula_v.symbol_of_formula for_cc1)
;;

(** {6 Naming_for_formula} *)

let name for_ggg =
  let sym_ggg = symbol_of_formula for_ggg in
  Group_for_symbol_footer_symbol_v.name sym_ggg
;;
(* ***
let longname for_ggg =
  let sym_ggg = symbol_of_formula for_ggg in
  Group_for_symbol_footer_symbol_v.longname sym_ggg
;;

let string_off for_ggg =
  let sym_ggg = symbol_of_formula for_ggg in
  Group_for_symbol_footer_symbol_v.string_off sym_ggg
;;

let fullname for_ggg =
  let sym_ggg = symbol_of_formula for_ggg in
  Group_for_symbol_footer_symbol_v.longname sym_ggg
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_ggg soi_gro =
  match sym_ggg with 
  | Group_for_symbol_footer_symbol_t.Group_for_symbol_footer_top_symbol sym_cc1 ->
      Group_for_symbol_footer_formula_t.Group_for_symbol_footer_top_formula 
        (Group_for_symbol_footer_top_formula_v.make sym_cc1 soi_gro)
;;

(** {6 Retrieving} *)

let retrieve tag_ggg =
  let soi_gro = Tag_v.sole_index_off_tag tag_ggg in
  let sym_ggg = Tag_v.entity_off_tag tag_ggg in
  make sym_ggg soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let camlline_tag_list_off_group_for_symbol_footer_formula for_ggg =
  match for_ggg with 
  | Group_for_symbol_footer_formula_t.Group_for_symbol_footer_top_formula for_cc1 ->
      Group_for_symbol_footer_top_formula_v.camlline_tag_list_off_group_for_symbol_footer_top_formula for_cc1
	
;;

let camlline_tag_list_off_group_for_symbol_footer_tag tag_ite =
  let for_ite = retrieve tag_ite in
  camlline_tag_list_off_group_for_symbol_footer_formula for_ite
;;
    
(** {6 Iterating_for_formula_for_symbol_footer} *)

let map f_of_tag_cal for_ggg = 
  match for_ggg with 
  | Group_for_symbol_footer_formula_t.Group_for_symbol_footer_top_formula for_cc1 ->
        Group_for_symbol_footer_top_formula_v.map f_of_tag_cal for_cc1
;;

let iter f_of_tag_cal for_ggg = 
  match for_ggg with 
  | Group_for_symbol_footer_formula_t.Group_for_symbol_footer_top_formula for_cc1 ->
        Group_for_symbol_footer_top_formula_v.iter f_of_tag_cal for_cc1

;;

let map2 f_of_tag_cal for_ggg1 for_ggg2 = 
  match (for_ggg1, for_ggg2) with
  | (Group_for_symbol_footer_formula_t.Group_for_symbol_footer_top_formula for_cc11, 
     Group_for_symbol_footer_formula_t.Group_for_symbol_footer_top_formula for_cc12) ->
	 Group_for_symbol_footer_top_formula_v.map2 f_of_tag_cal for_cc11 for_cc12
;;

let iter2 f_of_tag_cal for_ggg1 for_ggg2 = 
  match (for_ggg1, for_ggg2) with
  | (Group_for_symbol_footer_formula_t.Group_for_symbol_footer_top_formula for_cc11, 
     Group_for_symbol_footer_formula_t.Group_for_symbol_footer_top_formula for_cc12) ->
	 Group_for_symbol_footer_top_formula_v.iter2 f_of_tag_cal for_cc11 for_cc12
	 
;;

