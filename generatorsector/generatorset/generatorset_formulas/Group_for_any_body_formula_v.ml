(** {3 Group_for_any_body_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Group_for_any_body_formula_v";
   "Needed-by : FGNR:Group_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Builders : Camlline";
   "Builder_data : Camlline";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_gab = 
  match for_gab with
  | Group_for_any_body_formula_t.Group_for_any_body_son_formula for_cc3 ->
      Group_for_any_body_symbol_t.Group_for_any_body_son_symbol
        (Group_for_any_body_son_formula_v.symbol_of_formula for_cc3)

  | Group_for_any_body_formula_t.Group_for_any_body_top_formula for_cc3 ->
      Group_for_any_body_symbol_t.Group_for_any_body_top_symbol
        (Group_for_any_body_top_formula_v.symbol_of_formula for_cc3)

  | Group_for_any_body_formula_t.Group_for_any_body_top_main_formula for_cc5 ->
      Group_for_any_body_symbol_t.Group_for_any_body_top_main_symbol
        (Group_for_any_body_top_main_formula_v.symbol_of_formula for_cc5)

;;

(** {6 Naming_for_formula} *)

let name for_gab =
  let sym_gab = symbol_of_formula for_gab in
  Group_for_any_body_symbol_v.name sym_gab
;;
(* ***
let longname for_gab =
  let sym_gab = symbol_of_formula for_gab in
  Group_for_any_body_symbol_v.longname sym_gab
;;

let string_off for_gab =
  let sym_gab = symbol_of_formula for_gab in
  Group_for_any_body_symbol_v.string_off sym_gab
;;

let fullname for_gab =
  let sym_gab = symbol_of_formula for_gab in
  Group_for_any_body_symbol_v.longname sym_gab
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_gab soi_gro =
  match sym_gab with 
  | Group_for_any_body_symbol_t.Group_for_any_body_son_symbol sym_cc3 ->
      Group_for_any_body_formula_t.Group_for_any_body_son_formula 
        (Group_for_any_body_son_formula_v.make sym_cc3 soi_gro)

  | Group_for_any_body_symbol_t.Group_for_any_body_top_symbol sym_cc3 ->
      Group_for_any_body_formula_t.Group_for_any_body_top_formula 
        (Group_for_any_body_top_formula_v.make sym_cc3 soi_gro)

  | Group_for_any_body_symbol_t.Group_for_any_body_top_main_symbol sym_cc5 ->
      Group_for_any_body_formula_t.Group_for_any_body_top_main_formula 
        (Group_for_any_body_top_main_formula_v.make sym_cc5 soi_gro)
;;

(** {6 Retrieving} *)

let retrieve tag_gab =
  let soi_gro = Tag_v.sole_index_off_tag tag_gab in
  let sym_gab = Tag_v.entity_off_tag tag_gab in
  make sym_gab soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let camlline_tag_list_off_group_for_any_body_formula for_gab =
  match for_gab with 
  | Group_for_any_body_formula_t.Group_for_any_body_son_formula for_cc3 ->
      Group_for_any_body_son_formula_v.camlline_tag_list_off_group_for_any_body_son_formula for_cc3
	
  | Group_for_any_body_formula_t.Group_for_any_body_top_formula for_cc3 ->
      Group_for_any_body_top_formula_v.camlline_tag_list_off_group_for_any_body_top_formula for_cc3
	
  | Group_for_any_body_formula_t.Group_for_any_body_top_main_formula for_cc5 ->
      Group_for_any_body_top_main_formula_v.camlline_tag_list_off_group_for_any_body_top_main_formula for_cc5
;;

let camlline_tag_list_off_group_for_any_body_tag tag_ite =
  let for_ite = retrieve tag_ite in
  camlline_tag_list_off_group_for_any_body_formula for_ite
;;
    
(** {6 Iterating_for_formula_for_any_body} *)

let map f_of_tag_cal for_gab = 
  match for_gab with 
  | Group_for_any_body_formula_t.Group_for_any_body_son_formula for_cc3 ->
        Group_for_any_body_son_formula_v.map f_of_tag_cal for_cc3

  | Group_for_any_body_formula_t.Group_for_any_body_top_formula for_cc3 ->
        Group_for_any_body_top_formula_v.map f_of_tag_cal for_cc3

  | Group_for_any_body_formula_t.Group_for_any_body_top_main_formula for_cc5 ->
        Group_for_any_body_top_main_formula_v.map f_of_tag_cal for_cc5
;;

let iter f_of_tag_cal for_gab = 
  match for_gab with 
  | Group_for_any_body_formula_t.Group_for_any_body_son_formula for_cc3 ->
        Group_for_any_body_son_formula_v.iter f_of_tag_cal for_cc3

  | Group_for_any_body_formula_t.Group_for_any_body_top_formula for_cc3 ->
        Group_for_any_body_top_formula_v.iter f_of_tag_cal for_cc3

  | Group_for_any_body_formula_t.Group_for_any_body_top_main_formula for_cc4 ->
        Group_for_any_body_top_main_formula_v.iter f_of_tag_cal for_cc4
;;

let map2 f_of_tag_cal for_gab1 for_gab2 = 
  match (for_gab1, for_gab2) with
  | (Group_for_any_body_formula_t.Group_for_any_body_son_formula for_cc31, 
     Group_for_any_body_formula_t.Group_for_any_body_son_formula for_cc32) ->
	 Group_for_any_body_son_formula_v.map2 f_of_tag_cal for_cc31 for_cc32
	 
  | (Group_for_any_body_formula_t.Group_for_any_body_top_formula for_cc31, 
     Group_for_any_body_formula_t.Group_for_any_body_top_formula for_cc32) ->
	 Group_for_any_body_top_formula_v.map2 f_of_tag_cal for_cc31 for_cc32
	 
  | (Group_for_any_body_formula_t.Group_for_any_body_top_main_formula for_cc51, 
     Group_for_any_body_formula_t.Group_for_any_body_top_main_formula for_cc52) ->
	 Group_for_any_body_top_main_formula_v.map2 f_of_tag_cal for_cc51 for_cc52
	 
  | _ ->
      Error_messages_v.print_fatal_error nam_cod "map2"
	"both map2 arguments had the same Group type" 
	(Format.sprintf "couple (%s, %s)" (name for_gab1) (name for_gab2))
	"Check"
;;

let iter2 f_of_tag_cal for_gab1 for_gab2 = 
  match (for_gab1, for_gab2) with
  | (Group_for_any_body_formula_t.Group_for_any_body_son_formula for_cc31, 
     Group_for_any_body_formula_t.Group_for_any_body_son_formula for_cc32) ->
	 Group_for_any_body_son_formula_v.iter2 f_of_tag_cal for_cc31 for_cc32
	 
  | (Group_for_any_body_formula_t.Group_for_any_body_top_formula for_cc31, 
     Group_for_any_body_formula_t.Group_for_any_body_top_formula for_cc32) ->
	 Group_for_any_body_top_formula_v.iter2 f_of_tag_cal for_cc31 for_cc32
	 
  | (Group_for_any_body_formula_t.Group_for_any_body_top_main_formula for_cc51, 
     Group_for_any_body_formula_t.Group_for_any_body_top_main_formula for_cc52) ->
	 Group_for_any_body_top_main_formula_v.iter2 f_of_tag_cal for_cc51 for_cc52
	 
  | _ ->
      Error_messages_v.print_fatal_error nam_cod "iter2"
	"both iter2 arguments had the same Group type" 
	(Format.sprintf "couple (%s, %s)" (name for_gab1) (name for_gab2))
	"Check"
;;

