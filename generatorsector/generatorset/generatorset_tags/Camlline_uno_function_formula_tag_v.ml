(** {3 Camlline_uno_function_formula_tag_v}  *)

let nam_cod = "Camlline_uno_function_formula_tag_v.ml";;

(** {6 Aliasing} *)

(** {6 Naming} *)

(** {6 Tupling} *)

let camlline_uno_function_formula_dectup_off_camlline_uno_function_formula_tag tag_cfs =
  let sym_cfs = Tag_v.entity_off_tag tag_cfs in
  let soi_cal = Tag_v.sole_index_off_tag tag_cfs in
  let soi_gro = List.tl soi_cal in
  let sym_gro = Generatorset_symbol_by_sole_index_provider_v.group_symbol_off_sole_index soi_gro in
  let tag_gro = Tag_v.make sym_gro soi_gro in
  let non_gro = Group_tag_v.group_nontup_off_group_tag tag_gro in
  Decuplet_v.make_of_left_of_nonuplet sym_cfs non_gro
;;

