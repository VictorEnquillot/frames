(** {3 Group_for_formula_header_tag_v} *)

let nam_cod = "Group_for_formula_header_tag_v.ml";;

(** {6 Tupling} *)

let group_for_formula_header_nontup_off_group_for_formula_header_tag tag_gro =
  let sym_upp_off_gss = Generatorset_symbol_v.section_symbol_off_generatorset_symbol in
  let tag_sec = Tools_tgen_v.upper_tag_off_any_tag sym_upp_off_gss tag_gro in
  let oct_sec = Section_tag_v.section_octtup_off_section_tag tag_sec in
  let sym_gro = Tag_v.entity_off_tag tag_gro in
  Nonuplet_v.make_of_left_of_octuplet sym_gro oct_sec
;;

