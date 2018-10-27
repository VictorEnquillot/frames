(** {3 Camlline_for_formula_uno_main_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_formula_uno_main_value_v";
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
    Camlline_for_formula_uno_main_formula_v.entity_tag_list_off_camlline_for_formula_uno_main_tag 
      tag_cut 
  in
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_uno_main_symbol sym_cut 	
  in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let sym_ent = uno_off_list nam_cod "make" sym_cal sym_ent_l in

  match sym_cut with
  | Camlline_for_formula_uno_main_symbol_t.Let_tag_am_equal_tag_vdot_make_sym_am_soi_am_in ->

      Format.sprintf "  let tag_%s = Tag_v.make sym_%s soi_%s in"
	(abbreviation_argument sym_ent)
	(abbreviation_argument sym_ent)
	(abbreviation_argument sym_ent)

;;

(** {6 Making_of_value} *)

let make sym_cut soi_cal =
  let str = string_of sym_cut soi_cal in
  match sym_cut with
  | Camlline_for_formula_uno_main_symbol_t.Let_tag_am_equal_tag_vdot_make_sym_am_soi_am_in ->
     Camlline_for_formula_uno_main_value_t.Let_tag_am_equal_tag_vdot_make_sym_am_soi_am_in str
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
  | Camlline_for_formula_uno_main_value_t.Let_tag_am_equal_tag_vdot_make_sym_am_soi_am_in str -> str 
;;

