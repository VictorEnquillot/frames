(** {3 The functionalities for a Tag for a Camlline_duo_function}  *)

let nam_cod = "Camlline_duo_function_tag_v.ml";;

(** {6 Tupling} *)

let camlline_duo_function_dectup_off_camlline_duo_function_tag tag_cdf =
  let sym_cdf = Tag_v.entity_off_tag tag_cdf in
  let soi_cal = Tag_v.sole_index_off_tag tag_cdf in
  let soi_gro = List.tl soi_cal in
  let gss_gro = Generatorset_symbol_by_sole_index_provider_v.provide soi_gro in
  let sym_gro = Generatorset_symbol_v.group_symbol_off_generatorset_symbol gss_gro in
  let tag_gro = Tag_v.make sym_gro soi_gro in
  let non_gro = Group_tag_v.group_nontup_off_group_tag tag_gro in
  Decuplet_v.make_of_left_of_nonuplet sym_cdf non_gro
;;
