(** {3 Group_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Group_formula_v";
   "Needed-by : FGNR:Group_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Builders : Camlline";
   "Builder_data : Camlline";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_gro = 
  match for_gro with
  | Group_formula_t.Group_for_any_formula for_cc1 ->
      Group_symbol_t.Group_for_any_symbol
        (Group_for_any_formula_v.symbol_of_formula for_cc1)

  | Group_formula_t.Group_for_formula_formula for_cc2 ->
      Group_symbol_t.Group_for_formula_symbol
        (Group_for_formula_formula_v.symbol_of_formula for_cc2)

  | Group_formula_t.Group_for_symbol_formula for_cc2 ->
      Group_symbol_t.Group_for_symbol_symbol
        (Group_for_symbol_formula_v.symbol_of_formula for_cc2)
;;

(** {6 Naming_for_formula} *)

let name for_gro =
  let sym_gro = symbol_of_formula for_gro in
  Group_symbol_v.name sym_gro
;;
(* ***
let longname for_gro =
  let sym_gro = symbol_of_formula for_gro in
  Group_symbol_v.longname sym_gro
;;

let string_off for_gro =
  let sym_gro = symbol_of_formula for_gro in
  Group_symbol_v.string_off sym_gro
;;

let fullname for_gro =
  let sym_gro = symbol_of_formula for_gro in
  Group_symbol_v.longname sym_gro
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_gro soi_gro =
  match sym_gro with 
  | Group_symbol_t.Group_for_any_symbol sym_cc1 ->
      Group_formula_t.Group_for_any_formula 
        (Group_for_any_formula_v.make sym_cc1 soi_gro)

  | Group_symbol_t.Group_for_formula_symbol sym_cc2 ->
      Group_formula_t.Group_for_formula_formula 
        (Group_for_formula_formula_v.make sym_cc2 soi_gro)

  | Group_symbol_t.Group_for_symbol_symbol sym_cc2 ->
      Group_formula_t.Group_for_symbol_formula 
        (Group_for_symbol_formula_v.make sym_cc2 soi_gro)
;;

(** {6 Retrieving} *)

let retrieve tag_gro =
  let soi_gro = Tag_v.sole_index_off_tag tag_gro in
  let sym_gro = Tag_v.entity_off_tag tag_gro in
  make sym_gro soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let camlline_tag_list_off_group_formula for_gro =
  match for_gro with 
  | Group_formula_t.Group_for_any_formula for_cc1 ->
        Group_for_any_formula_v.camlline_tag_list_off_group_for_any_formula for_cc1

  | Group_formula_t.Group_for_formula_formula for_cc2 ->
        Group_for_formula_formula_v.camlline_tag_list_off_group_for_formula_formula for_cc2

  | Group_formula_t.Group_for_symbol_formula for_cc2 ->
        Group_for_symbol_formula_v.camlline_tag_list_off_group_for_symbol_formula for_cc2
;;

let camlline_tag_list_off_group_tag tag_ite =
  let for_ite = retrieve tag_ite in
  camlline_tag_list_off_group_formula for_ite
;;
    
(** {6 Iterating_for_formula} *)

let map f_of_tag_cap for_gro = 
  match for_gro with 
  | Group_formula_t.Group_for_any_formula for_cc1 ->
        Group_for_any_formula_v.map f_of_tag_cap for_cc1

  | Group_formula_t.Group_for_formula_formula for_cc2 ->
        Group_for_formula_formula_v.map f_of_tag_cap for_cc2

  | Group_formula_t.Group_for_symbol_formula for_cc2 ->
        Group_for_symbol_formula_v.map f_of_tag_cap for_cc2
;;

let iter f_of_tag_cap for_gro = 
  match for_gro with 
  | Group_formula_t.Group_for_any_formula for_cc1 ->
        Group_for_any_formula_v.iter f_of_tag_cap for_cc1

  | Group_formula_t.Group_for_formula_formula for_cc2 ->
        Group_for_formula_formula_v.iter f_of_tag_cap for_cc2

  | Group_formula_t.Group_for_symbol_formula for_cc2 ->
        Group_for_symbol_formula_v.iter f_of_tag_cap for_cc2
;;

let map2 f_of_tag_cap for_gro1 for_gro2 = 
  match (for_gro1, for_gro2) with
  | (Group_formula_t.Group_for_any_formula for_cc11, 
     Group_formula_t.Group_for_any_formula for_cc12) ->
	 Group_for_any_formula_v.map2 f_of_tag_cap for_cc11 for_cc12
	 
  | (Group_formula_t.Group_for_formula_formula for_cc21,
     Group_formula_t.Group_for_formula_formula for_cc22) ->
	 Group_for_formula_formula_v.map2 f_of_tag_cap for_cc21 for_cc22
	 
  | (Group_formula_t.Group_for_symbol_formula for_cc21,
     Group_formula_t.Group_for_symbol_formula for_cc22) ->
	 Group_for_symbol_formula_v.map2 f_of_tag_cap for_cc21 for_cc22

  | _ ->
      Error_messages_v.print_fatal_error nam_cod "map2"
	"both map2 arguments had the same Group type" 
	(Format.sprintf "couple (%s, %s)" (name for_gro1) (name for_gro2))
	"Check"
;;

let iter2 f_of_tag_cap for_gro1 for_gro2 = 
  match (for_gro1, for_gro2) with
  | (Group_formula_t.Group_for_any_formula for_cc11, 
     Group_formula_t.Group_for_any_formula for_cc12) ->
	 Group_for_any_formula_v.iter2 f_of_tag_cap for_cc11 for_cc12
	 
  | (Group_formula_t.Group_for_formula_formula for_cc21,
     Group_formula_t.Group_for_formula_formula for_cc22) ->
	 Group_for_formula_formula_v.iter2 f_of_tag_cap for_cc21 for_cc22

	 
  | (Group_formula_t.Group_for_symbol_formula for_cc21,
     Group_formula_t.Group_for_symbol_formula for_cc22) ->
	 Group_for_symbol_formula_v.iter2 f_of_tag_cap for_cc21 for_cc22

  | _ ->
      Error_messages_v.print_fatal_error nam_cod "iter2"
	"both iter2 arguments had the same Group type" 
	(Format.sprintf "couple (%s, %s)" (name for_gro1) (name for_gro2))
	"Check"
;;

