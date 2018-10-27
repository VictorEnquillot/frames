(** {3 The functionalities for a Tag for a Camlline_duo_value}  *)

let nam_cod = "Camlline_duo_value_tag_v.ml";;

(** {6 Aliasing} *)

(** {6 Naming} *)

(** {6 Tupling} *)

let camlline_duo_value_dectup_off_camlline_duo_value_tag tag_cuf =
  let sym_cuf = Tag_v.entity_off_tag tag_cuf in
  let soi_cal = Tag_v.sole_index_off_tag tag_cuf in
  let soi_gro = List.tl soi_cal in
  let sym_gro = Generatorset_symbol_by_sole_index_provider_v.group_symbol_off_sole_index soi_gro in
  let tag_gro = Tag_v.make sym_gro soi_gro in
  let non_gro = Group_tag_v.group_nontup_off_group_tag tag_gro in
  Decuplet_v.make_of_left_of_nonuplet sym_cuf non_gro
;;
