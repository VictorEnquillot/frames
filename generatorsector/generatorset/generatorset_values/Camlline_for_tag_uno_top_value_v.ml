(** {3 Camlline_for_tag_uno_top_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_tag_uno_top_value_v";
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
    Camlline_for_tag_uno_top_formula_v.entity_tag_list_off_camlline_for_tag_uno_top_tag 
      tag_cut 
  in
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_tag_uno_top_symbol sym_cut 	
  in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let sym_ent_top = uno_off_list nam_cod "make" sym_cal sym_ent_l in

  match sym_cut with
  | Camlline_for_tag_uno_top_symbol_t.Let_make_soi_at_nam_at_s_equal ->

      Format.sprintf "let make soi_%s nam_%s s ="
	(abbreviation_argument sym_ent_top)
	(abbreviation_argument sym_ent_top)

  | Camlline_for_tag_uno_top_symbol_t.Let_make_sym_at_soi_at_equal ->

      Format.sprintf "let make sym_%s soi_%s ="
	(abbreviation_argument sym_ent_top)
	(abbreviation_argument sym_ent_top)

  | Camlline_for_tag_uno_top_symbol_t.Let_name_tag_at_equal ->

      Format.sprintf "let name tag_%s ="
	(abbreviation_argument sym_ent_top)

  | Camlline_for_tag_uno_top_symbol_t.Tag_vdot_make_sym_at_soi_at ->

      Format.sprintf "  Tag_v.make sym_%s soi_%s"
	(abbreviation_argument sym_ent_top)
	(abbreviation_argument sym_ent_top)

  | Camlline_for_tag_uno_top_symbol_t.Tag_vdot_name_et_symbol_vdot_name_tag_at ->

      Format.sprintf "  Tag_v.name %s_symbol_v.name tag_%s str"
       (entity_name_capitalized sym_ent_top)  
       (abbreviation_argument sym_ent_top)
;;
	

(** {6 Making_of_value} *)

let make sym_cut soi_cal =
  let str = string_of sym_cut soi_cal in
  match sym_cut with
  | Camlline_for_tag_uno_top_symbol_t.Let_make_soi_at_nam_at_s_equal ->
     Camlline_for_tag_uno_top_value_t.Let_make_soi_at_nam_at_s_equal str
  | Camlline_for_tag_uno_top_symbol_t.Let_make_sym_at_soi_at_equal ->
     Camlline_for_tag_uno_top_value_t.Let_make_sym_at_soi_at_equal str
  | Camlline_for_tag_uno_top_symbol_t.Let_name_tag_at_equal ->
     Camlline_for_tag_uno_top_value_t.Let_name_tag_at_equal str
  | Camlline_for_tag_uno_top_symbol_t.Tag_vdot_make_sym_at_soi_at ->
     Camlline_for_tag_uno_top_value_t.Tag_vdot_make_sym_at_soi_at str
  | Camlline_for_tag_uno_top_symbol_t.Tag_vdot_name_et_symbol_vdot_name_tag_at ->
     Camlline_for_tag_uno_top_value_t.Tag_vdot_name_et_symbol_vdot_name_tag_at str

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
  | Camlline_for_tag_uno_top_value_t.Let_make_soi_at_nam_at_s_equal str -> str 
  | Camlline_for_tag_uno_top_value_t.Let_make_sym_at_soi_at_equal str -> str 
  | Camlline_for_tag_uno_top_value_t.Let_name_tag_at_equal str -> str 
  | Camlline_for_tag_uno_top_value_t.Tag_vdot_make_sym_at_soi_at str -> str 
  | Camlline_for_tag_uno_top_value_t.Tag_vdot_name_et_symbol_vdot_name_tag_at str -> str 

;;

