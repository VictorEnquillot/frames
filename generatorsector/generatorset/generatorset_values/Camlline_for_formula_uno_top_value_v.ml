(** {3 Camlline_for_formula_uno_top_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_formula_uno_top_value_v";
   "Needed-by : VGNR:Camlline_uno_function_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

(** {6 Opening} *)

open Tools_vgnr_v;;

(** {6 String_ofing} *)

let string_of sym_cut soi_cal =
  let tag_cut = Tag_v.make sym_cut soi_cal in
  let tag_ent_l = 
    Camlline_for_formula_uno_top_formula_v.entity_tag_list_off_camlline_for_formula_uno_top_tag 
      tag_cut 
  in
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_uno_top_symbol sym_cut 	
  in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let sym_ent = uno_off_list nam_cod "make" sym_cal sym_ent_l in

  match sym_cut with
  | Camlline_for_formula_uno_top_symbol_t.For_at ->

      Format.sprintf "  for_%s" 
	(abbreviation_argument sym_ent)

  | Camlline_for_formula_uno_top_symbol_t.Let_for_at_equal_retrieve_tag_at_in ->

      Format.sprintf "  let for_%s = retrieve tag_%s in" 
	(abbreviation_argument sym_ent)
	(abbreviation_argument sym_ent)

  | Camlline_for_formula_uno_top_symbol_t.Let_make_soi_at_equal_function ->

      Format.sprintf "  let make soi_%s = function" 
	(abbreviation_argument sym_ent)

  | Camlline_for_formula_uno_top_symbol_t.Let_make_tag_at_equal ->

      Format.sprintf "  let make tag_%s =" 
	(abbreviation_argument sym_ent)

  | Camlline_for_formula_uno_top_symbol_t.Let_name_for_at_equal ->

      Format.sprintf "  let name for_%s =" 
	(abbreviation_argument sym_ent)

  | Camlline_for_formula_uno_top_symbol_t.Let_sym_at_equal_symbol_of_formula_for_at_in ->

      Format.sprintf "  let sym_%s = symbol_of_formula for_%s in"
	(abbreviation_argument sym_ent)
	(abbreviation_argument sym_ent)

  | Camlline_for_formula_uno_top_symbol_t.Et_formula_vdot_name ->

      Format.sprintf "  %s_formula_v.name"
	(entity_name_capitalized sym_ent)

  | Camlline_for_formula_uno_top_symbol_t.Let_for_das_equal_das_vdot_make_tag_at_builder_list_in ->

    Utilities_v.not_yet_implemented nam_cod "string_of Let_for_das_equal_das_vdot_make_tag_at_builder_list_in"


  | Camlline_for_formula_uno_top_symbol_t.Let_soi_at_equal_tag_vdot_sole_index_off_tag_tag_at_in ->

      Format.sprintf "  let_soi_%s = Tag_v.sole_index_off_tag tag_%s in"
	(abbreviation_argument sym_ent)
	(abbreviation_argument sym_ent)
;;

(** {6 Making_of_value} *)

let make sym_cut soi_cal =
  let str = string_of sym_cut soi_cal in
  match sym_cut with
  | Camlline_for_formula_uno_top_symbol_t.For_at ->
     Camlline_for_formula_uno_top_value_t.For_at str
  | Camlline_for_formula_uno_top_symbol_t.Let_for_at_equal_retrieve_tag_at_in ->
     Camlline_for_formula_uno_top_value_t.Let_for_at_equal_retrieve_tag_at_in str
  | Camlline_for_formula_uno_top_symbol_t.Let_make_soi_at_equal_function ->
     Camlline_for_formula_uno_top_value_t.Let_make_soi_at_equal_function str
  | Camlline_for_formula_uno_top_symbol_t.Let_make_tag_at_equal ->
     Camlline_for_formula_uno_top_value_t.Let_make_tag_at_equal str
  | Camlline_for_formula_uno_top_symbol_t.Let_name_for_at_equal ->
     Camlline_for_formula_uno_top_value_t.Let_name_for_at_equal str
  | Camlline_for_formula_uno_top_symbol_t.Let_sym_at_equal_symbol_of_formula_for_at_in ->
     Camlline_for_formula_uno_top_value_t.Let_sym_at_equal_symbol_of_formula_for_at_in str
  | Camlline_for_formula_uno_top_symbol_t.Et_formula_vdot_name ->
     Camlline_for_formula_uno_top_value_t.Et_formula_vdot_name str
  | Camlline_for_formula_uno_top_symbol_t.Let_for_das_equal_das_vdot_make_tag_at_builder_list_in ->
     Camlline_for_formula_uno_top_value_t.Let_for_das_equal_das_vdot_make_tag_at_builder_list_in str
  | Camlline_for_formula_uno_top_symbol_t.Let_soi_at_equal_tag_vdot_sole_index_off_tag_tag_at_in ->
     Camlline_for_formula_uno_top_value_t.Let_soi_at_equal_tag_vdot_sole_index_off_tag_tag_at_in str

;;

(** {6 Retrieving} *)

let retrieve tag_cut =
  let sym_cut = Tag_v.entity_off_tag tag_cut in
  let soi_cal = Tag_v.sole_index_off_tag tag_cut in
  make sym_cut soi_cal
;;

(** {6 String_offing} *)

let string_off val_cut =
  match val_cut with
  | Camlline_for_formula_uno_top_value_t.For_at str -> str 
  | Camlline_for_formula_uno_top_value_t.Let_for_at_equal_retrieve_tag_at_in str -> str 
  | Camlline_for_formula_uno_top_value_t.Let_make_soi_at_equal_function str -> str 
  | Camlline_for_formula_uno_top_value_t.Let_make_tag_at_equal str -> str 
  | Camlline_for_formula_uno_top_value_t.Let_name_for_at_equal str -> str 
  | Camlline_for_formula_uno_top_value_t.Let_sym_at_equal_symbol_of_formula_for_at_in str -> str 
  | Camlline_for_formula_uno_top_value_t.Et_formula_vdot_name str -> str 
  | Camlline_for_formula_uno_top_value_t.Let_for_das_equal_das_vdot_make_tag_at_builder_list_in str -> str 
  | Camlline_for_formula_uno_top_value_t.Let_soi_at_equal_tag_vdot_sole_index_off_tag_tag_at_in str -> str 

;;

