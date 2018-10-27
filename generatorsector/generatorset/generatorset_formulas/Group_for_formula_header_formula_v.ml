(** {3 Group_for_formula_header_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Group_for_formula_header_formula_v";
   "Needed-by : FGNR:Group_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Builders : Camlline";
   "Builder_data : Camlline";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_gfh = 
  match for_gfh with
  | Group_for_formula_header_formula_t.Group_for_formula_header_constant_formula for_cc1 ->
      Group_for_formula_header_symbol_t.Group_for_formula_header_constant_symbol
        (Group_for_formula_header_constant_formula_v.symbol_of_formula for_cc1)

  | Group_for_formula_header_formula_t.Group_for_formula_header_top_builder_formula for_cc1 ->
      Group_for_formula_header_symbol_t.Group_for_formula_header_top_builder_symbol
        (Group_for_formula_header_top_builder_formula_v.symbol_of_formula for_cc1)

  | Group_for_formula_header_formula_t.Group_for_formula_header_top_data_formula for_cc2 ->
      Group_for_formula_header_symbol_t.Group_for_formula_header_top_data_symbol
        (Group_for_formula_header_top_data_formula_v.symbol_of_formula for_cc2)

  | Group_for_formula_header_formula_t.Group_for_formula_header_top_main_formula for_cc3 ->
      Group_for_formula_header_symbol_t.Group_for_formula_header_top_main_symbol
        (Group_for_formula_header_top_main_formula_v.symbol_of_formula for_cc3)



;;

(** {6 Naming_for_formula} *)

let name for_gfh =
  let sym_gfh = symbol_of_formula for_gfh in
  Group_for_formula_header_symbol_v.name sym_gfh
;;
(* ***
let longname for_gfh =
  let sym_gfh = symbol_of_formula for_gfh in
  Group_for_formula_header_symbol_v.longname sym_gfh
;;

let string_off for_gfh =
  let sym_gfh = symbol_of_formula for_gfh in
  Group_for_formula_header_symbol_v.string_off sym_gfh
;;

let fullname for_gfh =
  let sym_gfh = symbol_of_formula for_gfh in
  Group_for_formula_header_symbol_v.longname sym_gfh
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_gfh soi_gro =
  match sym_gfh with 
  | Group_for_formula_header_symbol_t.Group_for_formula_header_constant_symbol sym_cc1 ->
      Group_for_formula_header_formula_t.Group_for_formula_header_constant_formula 
        (Group_for_formula_header_constant_formula_v.make sym_cc1 soi_gro)

  | Group_for_formula_header_symbol_t.Group_for_formula_header_top_builder_symbol sym_cc1 ->
      Group_for_formula_header_formula_t.Group_for_formula_header_top_builder_formula 
        (Group_for_formula_header_top_builder_formula_v.make sym_cc1 soi_gro)

  | Group_for_formula_header_symbol_t.Group_for_formula_header_top_data_symbol sym_cc2 ->
      Group_for_formula_header_formula_t.Group_for_formula_header_top_data_formula 
        (Group_for_formula_header_top_data_formula_v.make sym_cc2 soi_gro)

  | Group_for_formula_header_symbol_t.Group_for_formula_header_top_main_symbol sym_cc3 ->
      Group_for_formula_header_formula_t.Group_for_formula_header_top_main_formula 
        (Group_for_formula_header_top_main_formula_v.make sym_cc3 soi_gro)
;;

(** {6 Retrieving} *)

let retrieve tag_gfh =
  let soi_gro = Tag_v.sole_index_off_tag tag_gfh in
  let sym_gfh = Tag_v.entity_off_tag tag_gfh in
  make sym_gfh soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let camlline_tag_list_off_group_for_formula_header_formula for_gfh =
  match for_gfh with 
  | Group_for_formula_header_formula_t.Group_for_formula_header_constant_formula for_cc1 ->
        Group_for_formula_header_constant_formula_v.camlline_tag_list_off_group_for_formula_header_constant_formula for_cc1

  | Group_for_formula_header_formula_t.Group_for_formula_header_top_builder_formula for_cc1 ->
        Group_for_formula_header_top_builder_formula_v.camlline_tag_list_off_group_for_formula_header_top_builder_formula for_cc1

  | Group_for_formula_header_formula_t.Group_for_formula_header_top_data_formula for_cc2 ->
        Group_for_formula_header_top_data_formula_v.camlline_tag_list_off_group_for_formula_header_top_data_formula for_cc2

  | Group_for_formula_header_formula_t.Group_for_formula_header_top_main_formula for_cc3 ->
        Group_for_formula_header_top_main_formula_v.camlline_tag_list_off_group_for_formula_header_top_main_formula for_cc3



;;

let camlline_tag_list_off_group_for_formula_header_tag tag_gfh =
  let for_gfh = retrieve tag_gfh in
  camlline_tag_list_off_group_for_formula_header_formula for_gfh
;;
    
(** {6 Iterating_for_formula_for_formula_header} *)

let map f_of_tag_cal for_gfh = 
  match for_gfh with 
  | Group_for_formula_header_formula_t.Group_for_formula_header_constant_formula for_cc1 ->
        Group_for_formula_header_constant_formula_v.map f_of_tag_cal for_cc1

  | Group_for_formula_header_formula_t.Group_for_formula_header_top_builder_formula for_cc1 ->
        Group_for_formula_header_top_builder_formula_v.map f_of_tag_cal for_cc1

  | Group_for_formula_header_formula_t.Group_for_formula_header_top_data_formula for_cc2 ->
        Group_for_formula_header_top_data_formula_v.map f_of_tag_cal for_cc2

  | Group_for_formula_header_formula_t.Group_for_formula_header_top_main_formula for_cc3 ->
        Group_for_formula_header_top_main_formula_v.map f_of_tag_cal for_cc3



;;

let iter f_of_tag_cal for_gfh = 
  match for_gfh with 
  | Group_for_formula_header_formula_t.Group_for_formula_header_constant_formula for_cc1 ->
        Group_for_formula_header_constant_formula_v.iter f_of_tag_cal for_cc1

  | Group_for_formula_header_formula_t.Group_for_formula_header_top_builder_formula for_cc1 ->
        Group_for_formula_header_top_builder_formula_v.iter f_of_tag_cal for_cc1

  | Group_for_formula_header_formula_t.Group_for_formula_header_top_data_formula for_cc2 ->
        Group_for_formula_header_top_data_formula_v.iter f_of_tag_cal for_cc2

  | Group_for_formula_header_formula_t.Group_for_formula_header_top_main_formula for_cc3 ->
        Group_for_formula_header_top_main_formula_v.iter f_of_tag_cal for_cc3



;;

let map2 f_of_tag_cal for_gfh1 for_gfh2 = 
  match (for_gfh1, for_gfh2) with
   | (Group_for_formula_header_formula_t.Group_for_formula_header_constant_formula for_cc11, 
     Group_for_formula_header_formula_t.Group_for_formula_header_constant_formula for_cc12) ->
	 Group_for_formula_header_constant_formula_v.map2 f_of_tag_cal for_cc11 for_cc12
	 
   | (Group_for_formula_header_formula_t.Group_for_formula_header_top_builder_formula for_cc11, 
     Group_for_formula_header_formula_t.Group_for_formula_header_top_builder_formula for_cc12) ->
	 Group_for_formula_header_top_builder_formula_v.map2 f_of_tag_cal for_cc11 for_cc12
	 
  | (Group_for_formula_header_formula_t.Group_for_formula_header_top_data_formula for_cc21,
     Group_for_formula_header_formula_t.Group_for_formula_header_top_data_formula for_cc22) ->
	 Group_for_formula_header_top_data_formula_v.map2 f_of_tag_cal for_cc21 for_cc22

  | (Group_for_formula_header_formula_t.Group_for_formula_header_top_main_formula for_cc31, 
     Group_for_formula_header_formula_t.Group_for_formula_header_top_main_formula for_cc32) ->
	 Group_for_formula_header_top_main_formula_v.map2 f_of_tag_cal for_cc31 for_cc32
	 

	 

  | _ ->
      Error_messages_v.print_fatal_error nam_cod "map2"
	"both map2 arguments had the same Group type" 
	(Format.sprintf "couple (%s, %s)" (name for_gfh1) (name for_gfh2))
	"Check"
;;

let iter2 f_of_tag_cal for_gfh1 for_gfh2 = 
  match (for_gfh1, for_gfh2) with
  | (Group_for_formula_header_formula_t.Group_for_formula_header_constant_formula for_cc11, 
     Group_for_formula_header_formula_t.Group_for_formula_header_constant_formula for_cc12) ->
	 Group_for_formula_header_constant_formula_v.iter2 f_of_tag_cal for_cc11 for_cc12
	 
  | (Group_for_formula_header_formula_t.Group_for_formula_header_top_builder_formula for_cc11, 
     Group_for_formula_header_formula_t.Group_for_formula_header_top_builder_formula for_cc12) ->
	 Group_for_formula_header_top_builder_formula_v.iter2 f_of_tag_cal for_cc11 for_cc12
	 
  | (Group_for_formula_header_formula_t.Group_for_formula_header_top_data_formula for_cc21,
     Group_for_formula_header_formula_t.Group_for_formula_header_top_data_formula for_cc22) ->
	 Group_for_formula_header_top_data_formula_v.iter2 f_of_tag_cal for_cc21 for_cc22

  | (Group_for_formula_header_formula_t.Group_for_formula_header_top_main_formula for_cc31, 
     Group_for_formula_header_formula_t.Group_for_formula_header_top_main_formula for_cc32) ->
	 Group_for_formula_header_top_main_formula_v.iter2 f_of_tag_cal for_cc31 for_cc32
	 

	 

  | _ ->
      Error_messages_v.print_fatal_error nam_cod "iter2"
	"both iter2 arguments had the same Group type" 
	(Format.sprintf "couple (%s, %s)" (name for_gfh1) (name for_gfh2))
	"Check"
;;

