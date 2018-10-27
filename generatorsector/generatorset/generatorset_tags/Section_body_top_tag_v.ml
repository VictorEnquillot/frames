(** {3 Section_body_top_tag_v} *)

let nam_cod = "Section_body_top_v.ml";;

(** {6 Tupling} *)

let section_body_top_octtup_off_section_body_top_tag tag_sec =
  let sym_upp_off_gss = Generatorset_symbol_v.camlparagraph_symbol_off_generatorset_symbol in
  let tag_cap = Tools_tgen_v.upper_tag_off_any_tag sym_upp_off_gss tag_sec in
  let sep_cap = Camlparagraph_tag_v.camlparagraph_septup_off_camlparagraph_tag tag_cap in
  let sym_sec = Tag_v.entity_off_tag tag_sec in
  Octuplet_v.make_of_left_of_septuplet sym_sec sep_cap
;;

