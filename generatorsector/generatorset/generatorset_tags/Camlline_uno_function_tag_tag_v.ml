(** {3 Camlline_uno_function_symbol_tag_v}  *)

let nam_cod = "Camlline_uno_function_tag_tag_v.ml";;

(** {6 Aliasing} *)

(** {6 Naming} *)

(** {6 Tupling} *)

let camlline_uno_function_tag_dectup_off_camlline_uno_function_tag_tag tag_cfa =
  let sym_cfa = Tag_v.entity_off_tag tag_cfa in
  let soi_cal = Tag_v.sole_index_off_tag tag_cfa in
  let soi_cap = List.tl soi_cal in
  let sym_cap = Generatorset_symbol_by_sole_index_provider_v.camlparagraph_symbol_off_sole_index soi_cap in
  let tag_cap = Tag_v.make sym_cap soi_cap in
  let non_gro = Group_tag_v.group_nontup_off_group_tag tag_cap in
  Decuplet_v.make_of_left_of_nonuplet sym_cfa non_gro
;;
