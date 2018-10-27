(** {3 Group_for_symbol_header_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Group_for_symbol_header_formula_v";
   "Needed-by : FGNR:Group_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Builders : Camlline";
   "Builder_data : Camlline";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_gsh = 
  match for_gsh with
  | Group_for_symbol_header_formula_t.Group_for_symbol_header_constant_formula for_cc1 ->
      Group_for_symbol_header_symbol_t.Group_for_symbol_header_constant_symbol
        (Group_for_symbol_header_constant_formula_v.symbol_of_formula for_cc1)

  | Group_for_symbol_header_formula_t.Group_for_symbol_header_current_top_formula for_cc3 ->
      Group_for_symbol_header_symbol_t.Group_for_symbol_header_current_top_symbol
        (Group_for_symbol_header_current_top_formula_v.symbol_of_formula for_cc3)

  | Group_for_symbol_header_formula_t.Group_for_symbol_header_current_son_top_formula for_cc2 ->
      Group_for_symbol_header_symbol_t.Group_for_symbol_header_current_son_top_symbol
        (Group_for_symbol_header_current_son_top_formula_v.symbol_of_formula for_cc2)

  | Group_for_symbol_header_formula_t.Group_for_symbol_header_son_formula for_cc4 ->
      Group_for_symbol_header_symbol_t.Group_for_symbol_header_son_symbol
        (Group_for_symbol_header_son_formula_v.symbol_of_formula for_cc4)

  | Group_for_symbol_header_formula_t.Group_for_symbol_header_son_top_formula for_cc4 ->
      Group_for_symbol_header_symbol_t.Group_for_symbol_header_son_top_symbol
        (Group_for_symbol_header_son_top_formula_v.symbol_of_formula for_cc4)

;;

(** {6 Naming_for_formula} *)

let name for_gsh =
  let sym_gsh = symbol_of_formula for_gsh in
  Group_for_symbol_header_symbol_v.name sym_gsh
;;
(* ***
let longname for_gsh =
  let sym_gsh = symbol_of_formula for_gsh in
  Group_for_symbol_header_symbol_v.longname sym_gsh
;;

let string_off for_gsh =
  let sym_gsh = symbol_of_formula for_gsh in
  Group_for_symbol_header_symbol_v.string_off sym_gsh
;;

let fullname for_gsh =
  let sym_gsh = symbol_of_formula for_gsh in
  Group_for_symbol_header_symbol_v.longname sym_gsh
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_gsh soi_gro =
  match sym_gsh with 
  | Group_for_symbol_header_symbol_t.Group_for_symbol_header_constant_symbol sym_cc1 ->
      Group_for_symbol_header_formula_t.Group_for_symbol_header_constant_formula 
        (Group_for_symbol_header_constant_formula_v.make sym_cc1 soi_gro)

  | Group_for_symbol_header_symbol_t.Group_for_symbol_header_current_son_top_symbol sym_cc2 ->
      Group_for_symbol_header_formula_t.Group_for_symbol_header_current_son_top_formula 
        (Group_for_symbol_header_current_son_top_formula_v.make sym_cc2 soi_gro)

  | Group_for_symbol_header_symbol_t.Group_for_symbol_header_current_top_symbol sym_cc2 ->
      Group_for_symbol_header_formula_t.Group_for_symbol_header_current_top_formula 
        (Group_for_symbol_header_current_top_formula_v.make sym_cc2 soi_gro)

  | Group_for_symbol_header_symbol_t.Group_for_symbol_header_son_symbol sym_cc4 ->
      Group_for_symbol_header_formula_t.Group_for_symbol_header_son_formula 
        (Group_for_symbol_header_son_formula_v.make sym_cc4 soi_gro)

  | Group_for_symbol_header_symbol_t.Group_for_symbol_header_son_top_symbol sym_cc4 ->
      Group_for_symbol_header_formula_t.Group_for_symbol_header_son_top_formula 
        (Group_for_symbol_header_son_top_formula_v.make sym_cc4 soi_gro)
;;

(** {6 Retrieving} *)

let retrieve tag_gsh =
  let soi_gro = Tag_v.sole_index_off_tag tag_gsh in
  let sym_gsh = Tag_v.entity_off_tag tag_gsh in
  make sym_gsh soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let camlline_tag_list_off_group_for_symbol_header_formula for_gsh =
  match for_gsh with 
  | Group_for_symbol_header_formula_t.Group_for_symbol_header_constant_formula for_cc1 ->
      Group_for_symbol_header_constant_formula_v.camlline_tag_list_off_group_for_symbol_header_constant_formula for_cc1
	
  | Group_for_symbol_header_formula_t.Group_for_symbol_header_current_son_top_formula for_cc2 ->
      Group_for_symbol_header_current_son_top_formula_v.camlline_tag_list_off_group_for_symbol_header_current_son_top_formula for_cc2
	
  | Group_for_symbol_header_formula_t.Group_for_symbol_header_current_top_formula for_cc2 ->
      Group_for_symbol_header_current_top_formula_v.camlline_tag_list_off_group_for_symbol_header_current_top_formula for_cc2
	
  | Group_for_symbol_header_formula_t.Group_for_symbol_header_son_formula for_cc4 ->
      Group_for_symbol_header_son_formula_v.camlline_tag_list_off_group_for_symbol_header_son_formula for_cc4
	
  | Group_for_symbol_header_formula_t.Group_for_symbol_header_son_top_formula for_cc4 ->
      Group_for_symbol_header_son_top_formula_v.camlline_tag_list_off_group_for_symbol_header_son_top_formula for_cc4
;;

let camlline_tag_list_off_group_for_symbol_header_tag tag_ite =
  let for_ite = retrieve tag_ite in
  camlline_tag_list_off_group_for_symbol_header_formula for_ite
;;
    
(** {6 Iterating_for_formula_for_symbol_header} *)

let map f_of_tag_cal for_gsh = 
  match for_gsh with 
  | Group_for_symbol_header_formula_t.Group_for_symbol_header_constant_formula for_cc1 ->
        Group_for_symbol_header_constant_formula_v.map f_of_tag_cal for_cc1

  | Group_for_symbol_header_formula_t.Group_for_symbol_header_current_son_top_formula for_cc2 ->
        Group_for_symbol_header_current_son_top_formula_v.map f_of_tag_cal for_cc2

  | Group_for_symbol_header_formula_t.Group_for_symbol_header_current_top_formula for_cc2 ->
        Group_for_symbol_header_current_top_formula_v.map f_of_tag_cal for_cc2

  | Group_for_symbol_header_formula_t.Group_for_symbol_header_son_formula for_cc4 ->
        Group_for_symbol_header_son_formula_v.map f_of_tag_cal for_cc4

  | Group_for_symbol_header_formula_t.Group_for_symbol_header_son_top_formula for_cc4 ->
        Group_for_symbol_header_son_top_formula_v.map f_of_tag_cal for_cc4
;;

let iter f_of_tag_cal for_gsh = 
  match for_gsh with 
  | Group_for_symbol_header_formula_t.Group_for_symbol_header_constant_formula for_cc1 ->
        Group_for_symbol_header_constant_formula_v.iter f_of_tag_cal for_cc1

  | Group_for_symbol_header_formula_t.Group_for_symbol_header_current_son_top_formula for_cc2 ->
        Group_for_symbol_header_current_son_top_formula_v.iter f_of_tag_cal for_cc2

  | Group_for_symbol_header_formula_t.Group_for_symbol_header_current_top_formula for_cc2 ->
        Group_for_symbol_header_current_top_formula_v.iter f_of_tag_cal for_cc2

  | Group_for_symbol_header_formula_t.Group_for_symbol_header_son_formula for_cc4 ->
        Group_for_symbol_header_son_formula_v.iter f_of_tag_cal for_cc4

  | Group_for_symbol_header_formula_t.Group_for_symbol_header_son_top_formula for_cc4 ->
        Group_for_symbol_header_son_top_formula_v.iter f_of_tag_cal for_cc4
;;

let map2 f_of_tag_cal for_gsh1 for_gsh2 = 
  match (for_gsh1, for_gsh2) with
  | (Group_for_symbol_header_formula_t.Group_for_symbol_header_constant_formula for_cc11, 
     Group_for_symbol_header_formula_t.Group_for_symbol_header_constant_formula for_cc12) ->
	 Group_for_symbol_header_constant_formula_v.map2 f_of_tag_cal for_cc11 for_cc12
	 
  | (Group_for_symbol_header_formula_t.Group_for_symbol_header_current_son_top_formula for_cc21,
     Group_for_symbol_header_formula_t.Group_for_symbol_header_current_son_top_formula for_cc22) ->
	 Group_for_symbol_header_current_son_top_formula_v.map2 f_of_tag_cal for_cc21 for_cc22

  | (Group_for_symbol_header_formula_t.Group_for_symbol_header_current_top_formula for_cc21,
     Group_for_symbol_header_formula_t.Group_for_symbol_header_current_top_formula for_cc22) ->
	 Group_for_symbol_header_current_top_formula_v.map2 f_of_tag_cal for_cc21 for_cc22

  | (Group_for_symbol_header_formula_t.Group_for_symbol_header_son_formula for_cc41,
     Group_for_symbol_header_formula_t.Group_for_symbol_header_son_formula for_cc42) ->
	 Group_for_symbol_header_son_formula_v.map2 f_of_tag_cal for_cc41 for_cc42

  | (Group_for_symbol_header_formula_t.Group_for_symbol_header_son_top_formula for_cc41,
     Group_for_symbol_header_formula_t.Group_for_symbol_header_son_top_formula for_cc42) ->
	 Group_for_symbol_header_son_top_formula_v.map2 f_of_tag_cal for_cc41 for_cc42
  | _ ->
      Error_messages_v.print_fatal_error nam_cod "map2"
	"both map2 arguments had the same Group type" 
	(Format.sprintf "couple (%s, %s)" (name for_gsh1) (name for_gsh2))
	"Check"
;;

let iter2 f_of_tag_cal for_gsh1 for_gsh2 = 
  match (for_gsh1, for_gsh2) with
  | (Group_for_symbol_header_formula_t.Group_for_symbol_header_constant_formula for_cc11, 
     Group_for_symbol_header_formula_t.Group_for_symbol_header_constant_formula for_cc12) ->
	 Group_for_symbol_header_constant_formula_v.iter2 f_of_tag_cal for_cc11 for_cc12
	 
  | (Group_for_symbol_header_formula_t.Group_for_symbol_header_current_son_top_formula for_cc21,
     Group_for_symbol_header_formula_t.Group_for_symbol_header_current_son_top_formula for_cc22) ->
	 Group_for_symbol_header_current_son_top_formula_v.iter2 f_of_tag_cal for_cc21 for_cc22

  | (Group_for_symbol_header_formula_t.Group_for_symbol_header_current_top_formula for_cc21,
     Group_for_symbol_header_formula_t.Group_for_symbol_header_current_top_formula for_cc22) ->
	 Group_for_symbol_header_current_top_formula_v.iter2 f_of_tag_cal for_cc21 for_cc22

  | (Group_for_symbol_header_formula_t.Group_for_symbol_header_son_formula for_cc41,
     Group_for_symbol_header_formula_t.Group_for_symbol_header_son_formula for_cc42) ->
	 Group_for_symbol_header_son_formula_v.iter2 f_of_tag_cal for_cc41 for_cc42

  | (Group_for_symbol_header_formula_t.Group_for_symbol_header_son_top_formula for_cc41,
     Group_for_symbol_header_formula_t.Group_for_symbol_header_son_top_formula for_cc42) ->
	 Group_for_symbol_header_son_top_formula_v.iter2 f_of_tag_cal for_cc41 for_cc42
	 
  | _ ->
      Error_messages_v.print_fatal_error nam_cod "iter2"
	"both iter2 arguments had the same Group type" 
	(Format.sprintf "couple (%s, %s)" (name for_gsh1) (name for_gsh2))
	"Check"
;;

