(** {3 Group_for_formula_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Group_for_formula_formula_v";
   "Needed-by : FGNR:Group_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Builders : Camlline";
   "Builder_data : Camlline";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_gff = 
  match for_gff with
  | Group_for_formula_formula_t.Group_for_formula_body_formula for_cc1 ->
      Group_for_formula_symbol_t.Group_for_formula_body_symbol
        (Group_for_formula_body_formula_v.symbol_of_formula for_cc1)

  | Group_for_formula_formula_t.Group_for_formula_header_formula for_cc2 ->
      Group_for_formula_symbol_t.Group_for_formula_header_symbol
        (Group_for_formula_header_formula_v.symbol_of_formula for_cc2)




;;

(** {6 Naming_for_formula} *)

let name for_gff =
  let sym_gff = symbol_of_formula for_gff in
  Group_for_formula_symbol_v.name sym_gff
;;
(* ***
let longname for_gff =
  let sym_gff = symbol_of_formula for_gff in
  Group_for_formula_symbol_v.longname sym_gff
;;

let string_off for_gff =
  let sym_gff = symbol_of_formula for_gff in
  Group_for_formula_symbol_v.string_off sym_gff
;;

let fullname for_gff =
  let sym_gff = symbol_of_formula for_gff in
  Group_for_formula_symbol_v.longname sym_gff
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_gff soi_gro =
  match sym_gff with 
  | Group_for_formula_symbol_t.Group_for_formula_body_symbol sym_cc1 ->
      Group_for_formula_formula_t.Group_for_formula_body_formula 
        (Group_for_formula_body_formula_v.make sym_cc1 soi_gro)

  | Group_for_formula_symbol_t.Group_for_formula_header_symbol sym_cc2 ->
      Group_for_formula_formula_t.Group_for_formula_header_formula 
        (Group_for_formula_header_formula_v.make sym_cc2 soi_gro)
;;

(** {6 Retrieving} *)

let retrieve tag_gff =
  let soi_gro = Tag_v.sole_index_off_tag tag_gff in
  let sym_gff = Tag_v.entity_off_tag tag_gff in
  make sym_gff soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let camlline_tag_list_off_group_for_formula_formula for_gff =
  match for_gff with 
  | Group_for_formula_formula_t.Group_for_formula_body_formula for_cc1 ->
        Group_for_formula_body_formula_v.camlline_tag_list_off_group_for_formula_body_formula for_cc1

  | Group_for_formula_formula_t.Group_for_formula_header_formula for_cc2 ->
        Group_for_formula_header_formula_v.camlline_tag_list_off_group_for_formula_header_formula for_cc2




;;

let camlline_tag_list_off_group_for_formula_tag tag_gff =
  let for_gff = retrieve tag_gff in
  camlline_tag_list_off_group_for_formula_formula for_gff
;;
    
(** {6 Iterating_for_formula_for_formula} *)

let map f_of_tag_cal for_gff = 
  match for_gff with 
  | Group_for_formula_formula_t.Group_for_formula_body_formula for_cc1 ->
        Group_for_formula_body_formula_v.map f_of_tag_cal for_cc1

  | Group_for_formula_formula_t.Group_for_formula_header_formula for_cc2 ->
        Group_for_formula_header_formula_v.map f_of_tag_cal for_cc2




;;

let iter f_of_tag_cal for_gff = 
  match for_gff with 
  | Group_for_formula_formula_t.Group_for_formula_body_formula for_cc1 ->
        Group_for_formula_body_formula_v.iter f_of_tag_cal for_cc1

  | Group_for_formula_formula_t.Group_for_formula_header_formula for_cc2 ->
        Group_for_formula_header_formula_v.iter f_of_tag_cal for_cc2




;;

let map2 f_of_tag_cal for_gff1 for_gff2 = 
  match (for_gff1, for_gff2) with
  | (Group_for_formula_formula_t.Group_for_formula_body_formula for_cc11, 
     Group_for_formula_formula_t.Group_for_formula_body_formula for_cc12) ->
	 Group_for_formula_body_formula_v.map2 f_of_tag_cal for_cc11 for_cc12
	 
  | (Group_for_formula_formula_t.Group_for_formula_header_formula for_cc21,
     Group_for_formula_formula_t.Group_for_formula_header_formula for_cc22) ->
	 Group_for_formula_header_formula_v.map2 f_of_tag_cal for_cc21 for_cc22

	 

	 

  | _ ->
      Error_messages_v.print_fatal_error nam_cod "map2"
	"both map2 arguments had the same Group type" 
	(Format.sprintf "couple (%s, %s)" (name for_gff1) (name for_gff2))
	"Check"
;;

let iter2 f_of_tag_cal for_gff1 for_gff2 = 
  match (for_gff1, for_gff2) with
  | (Group_for_formula_formula_t.Group_for_formula_body_formula for_cc11, 
     Group_for_formula_formula_t.Group_for_formula_body_formula for_cc12) ->
	 Group_for_formula_body_formula_v.iter2 f_of_tag_cal for_cc11 for_cc12
	 
  | (Group_for_formula_formula_t.Group_for_formula_header_formula for_cc21,
     Group_for_formula_formula_t.Group_for_formula_header_formula for_cc22) ->
	 Group_for_formula_header_formula_v.iter2 f_of_tag_cal for_cc21 for_cc22

	 

	 

  | _ ->
      Error_messages_v.print_fatal_error nam_cod "iter2"
	"both iter2 arguments had the same Group type" 
	(Format.sprintf "couple (%s, %s)" (name for_gff1) (name for_gff2))
	"Check"
;;

