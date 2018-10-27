(** {3 Group_for_any_header_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Group_for_any_header_formula_v";
   "Needed-by : FGNR:Group_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Builders : Camlline";
   "Builder_data : Camlline";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_gah = 
  match for_gah with
  | Group_for_any_header_formula_t.Group_for_any_header_constant_formula for_cc1 ->
      Group_for_any_header_symbol_t.Group_for_any_header_constant_symbol
        (Group_for_any_header_constant_formula_v.symbol_of_formula for_cc1)

  | Group_for_any_header_formula_t.Group_for_any_header_top_formula for_cc5 ->
      Group_for_any_header_symbol_t.Group_for_any_header_top_symbol
        (Group_for_any_header_top_formula_v.symbol_of_formula for_cc5)

;;

(** {6 Naming_for_formula} *)

let name for_gah =
  let sym_gah = symbol_of_formula for_gah in
  Group_for_any_header_symbol_v.name sym_gah
;;
(* ***
let longname for_gah =
  let sym_gah = symbol_of_formula for_gah in
  Group_for_any_header_symbol_v.longname sym_gah
;;

let string_off for_gah =
  let sym_gah = symbol_of_formula for_gah in
  Group_for_any_header_symbol_v.string_off sym_gah
;;

let fullname for_gah =
  let sym_gah = symbol_of_formula for_gah in
  Group_for_any_header_symbol_v.longname sym_gah
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_gah soi_gro =
  match sym_gah with 
  | Group_for_any_header_symbol_t.Group_for_any_header_constant_symbol sym_cc1 ->
      Group_for_any_header_formula_t.Group_for_any_header_constant_formula 
        (Group_for_any_header_constant_formula_v.make sym_cc1 soi_gro)

  | Group_for_any_header_symbol_t.Group_for_any_header_top_symbol sym_cc5 ->
      Group_for_any_header_formula_t.Group_for_any_header_top_formula 
        (Group_for_any_header_top_formula_v.make sym_cc5 soi_gro)
;;

(** {6 Retrieving} *)

let retrieve tag_gah =
  let soi_gro = Tag_v.sole_index_off_tag tag_gah in
  let sym_gah = Tag_v.entity_off_tag tag_gah in
  make sym_gah soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let camlline_tag_list_off_group_for_any_header_formula for_gah =
  match for_gah with 
  | Group_for_any_header_formula_t.Group_for_any_header_constant_formula for_cc1 ->
      Group_for_any_header_constant_formula_v.camlline_tag_list_off_group_for_any_header_constant_formula for_cc1
  | Group_for_any_header_formula_t.Group_for_any_header_top_formula for_cc5 ->
      Group_for_any_header_top_formula_v.camlline_tag_list_off_group_for_any_header_top_formula for_cc5
;;

let camlline_tag_list_off_group_for_any_header_tag tag_gah =
  let for_gah = retrieve tag_gah in
  camlline_tag_list_off_group_for_any_header_formula for_gah
;;
    
(** {6 Iterating_for_formula_for_any_header} *)

let map f_of_tag_cap for_gah = 
  match for_gah with 
  | Group_for_any_header_formula_t.Group_for_any_header_constant_formula for_cc1 ->
        Group_for_any_header_constant_formula_v.map f_of_tag_cap for_cc1

  | Group_for_any_header_formula_t.Group_for_any_header_top_formula for_cc5 ->
        Group_for_any_header_top_formula_v.map f_of_tag_cap for_cc5
;;

let iter f_of_tag_cap for_gah = 
  match for_gah with 
  | Group_for_any_header_formula_t.Group_for_any_header_constant_formula for_cc1 ->
        Group_for_any_header_constant_formula_v.iter f_of_tag_cap for_cc1

  | Group_for_any_header_formula_t.Group_for_any_header_top_formula for_cc5 ->
        Group_for_any_header_top_formula_v.iter f_of_tag_cap for_cc5

;;

let map2 f_of_tag_cap for_gah1 for_gah2 = 
  match (for_gah1, for_gah2) with
  | (Group_for_any_header_formula_t.Group_for_any_header_constant_formula for_cc11, 
     Group_for_any_header_formula_t.Group_for_any_header_constant_formula for_cc12) ->
	 Group_for_any_header_constant_formula_v.map2 f_of_tag_cap for_cc11 for_cc12
	 
  | (Group_for_any_header_formula_t.Group_for_any_header_top_formula for_cc51, 
     Group_for_any_header_formula_t.Group_for_any_header_top_formula for_cc52) ->
	 Group_for_any_header_top_formula_v.map2 f_of_tag_cap for_cc51 for_cc52
	 
  | _ ->
      Error_messages_v.print_fatal_error nam_cod "map2"
	"both map2 arguments had the same Group type" 
	(Format.sprintf "couple (%s, %s)" (name for_gah1) (name for_gah2))
	"Check"
;;

let iter2 f_of_tag_cap for_gah1 for_gah2 = 
  match (for_gah1, for_gah2) with
  | (Group_for_any_header_formula_t.Group_for_any_header_constant_formula for_cc11, 
     Group_for_any_header_formula_t.Group_for_any_header_constant_formula for_cc12) ->
	 Group_for_any_header_constant_formula_v.iter2 f_of_tag_cap for_cc11 for_cc12
	 
  | (Group_for_any_header_formula_t.Group_for_any_header_top_formula for_cc51, 
     Group_for_any_header_formula_t.Group_for_any_header_top_formula for_cc52) ->
	 Group_for_any_header_top_formula_v.iter2 f_of_tag_cap for_cc51 for_cc52
	 
  | _ ->
      Error_messages_v.print_fatal_error nam_cod "iter2"
	"both iter2 arguments had the same Group type" 
	(Format.sprintf "couple (%s, %s)" (name for_gah1) (name for_gah2))
	"Check"
;;

