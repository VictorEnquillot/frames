(** {3 The functionalities for a Tag for a Camlline}  *)

let nam_cod = "Camlline_tag_v.ml";;

(** {6 Getting tag upwards along BT-path from tag} *)

let group_tag_off_camlline_tag tag_cal =
  let sym_upp_off_sym_gss = Generatorset_symbol_v.group_symbol_off_generatorset_symbol in
  Tools_tgen_v.upper_tag_off_any_tag sym_upp_off_sym_gss tag_cal
;;

let section_tag_off_camlline_tag tag_cal =
  let tag_gro = group_tag_off_camlline_tag tag_cal in
  Group_tag_v.section_tag_off_group_tag tag_gro
;;

let camlparagraph_tag_off_camlline_tag tag_cal =
  let tag_gro = group_tag_off_camlline_tag tag_cal in
  Group_tag_v.camlparagraph_tag_off_group_tag tag_gro
;;

let item_tag_off_camlline_tag tag_cal =
  let tag_gro = group_tag_off_camlline_tag tag_cal in
  Group_tag_v.item_tag_off_group_tag tag_gro
;;

let usagefile_tag_off_camlline_tag tag_cal =
  let tag_cap = group_tag_off_camlline_tag tag_cal in
  Group_tag_v.usagefile_tag_off_group_tag tag_cap
;;

let contentfile_tag_off_camlline_tag tag_cal =
  let tag_cap = group_tag_off_camlline_tag tag_cal in
  Group_tag_v.contentfile_tag_off_group_tag tag_cap
;;

let entity_tag_off_camlline_tag tag_cal =
  let tag_cap = group_tag_off_camlline_tag tag_cal in
  Group_tag_v.entity_tag_off_group_tag tag_cap
;;

let category_tag_off_camlline_tag tag_cal =
  let tag_cap = group_tag_off_camlline_tag tag_cal in
  Group_tag_v.category_tag_off_group_tag tag_cap
;;

let domain_tag_off_camlline_tag tag_cal =
  let tag_cap = group_tag_off_camlline_tag tag_cal in
  Group_tag_v.domain_tag_off_group_tag tag_cap
;;

(** Symbols *)

let camlline_symbol_off_camlline_tag tag_cal =
  Tag_v.entity_off_tag tag_cal
;;

let group_symbol_off_camlline_tag tag_cal =
  let tag_gro = group_tag_off_camlline_tag tag_cal in
  Tag_v.entity_off_tag tag_gro
;;

let section_symbol_off_camlline_tag tag_cal =
  let tag_sec = group_tag_off_camlline_tag tag_cal in
  Tag_v.entity_off_tag tag_sec
;;

let camlparagraph_symbol_off_camlline_tag tag_cal =
  let tag_cap = camlparagraph_tag_off_camlline_tag tag_cal in
  Tag_v.entity_off_tag tag_cap
;;

let item_symbol_off_camlline_tag tag_cal =
  let tag_ite = item_tag_off_camlline_tag tag_cal in
  Tag_v.entity_off_tag tag_ite
;;

let contentfile_symbol_off_camlline_tag tag_cal =
  let tag_cof = contentfile_tag_off_camlline_tag tag_cal in
  Tag_v.entity_off_tag tag_cof
;;

let usagefile_symbol_off_camlline_tag tag_cal =
  let tag_usf = usagefile_tag_off_camlline_tag tag_cal in
  Tag_v.entity_off_tag tag_usf
;;

let category_symbol_off_camlline_tag tag_cal =
  let tag_cat = category_tag_off_camlline_tag tag_cal in
  Tag_v.entity_off_tag tag_cat
;;

let entity_symbol_off_camlline_tag tag_cal =
  let tag_enp = entity_tag_off_camlline_tag tag_cal in
  Tag_v.entity_off_tag tag_enp
;;

let domain_symbol_off_camlline_tag tag_cal =
  let tag_dos = domain_tag_off_camlline_tag tag_cal in
  Tag_v.entity_off_tag tag_dos
;;

let camlline_dectup_off_camlline_tag tag_cal =
  let sym_cal = Tag_v.entity_off_tag tag_cal in
  let tag_gro = group_tag_off_camlline_tag tag_cal in
  let non_gro = Group_tag_v.group_nontup_off_group_tag tag_gro in
  Decuplet_v.make_of_left_of_nonuplet sym_cal non_gro
;;
