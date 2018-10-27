(** {3 The functionalities for a Tag for a Contentfile}  *)

let nam_cod = "Contentfile_tag_v.ml";;

(** {6 Making} *)

let make sym_cof soi_cof =
  Tag_v.make sym_cof soi_cof
;;

(** {6 Naming} *)

let name tag_cof =
  let sym_cof = Tag_v.entity_off_tag tag_cof in
  Contentfile_symbol_v.name sym_cof
;;

(** {6 Getting tag upwards along BT-path from tag} *)

let entity_tag_off_contentfile_tag tag_cof =
  let sym_upp_off_gss = Generatorset_symbol_v.entity_symbol_off_generatorset_symbol in
  Tools_tgen_v.upper_tag_off_any_tag sym_upp_off_gss tag_cof
;;

let category_tag_off_contentfile_tag tag_cof =
  let tag_ent = entity_tag_off_contentfile_tag tag_cof in
  Entity_tag_v.category_tag_off_entity_tag tag_ent
;;

let domain_tag_off_contentfile_tag tag_cof =
  let tag_ent = entity_tag_off_contentfile_tag tag_cof in
  Entity_tag_v.domain_tag_off_entity_tag tag_ent
;;

(** Symbols *)

let entity_symbol_off_contentfile_tag tag_cof =
  let tag_ent = entity_tag_off_contentfile_tag tag_cof in
  Tag_v.entity_off_tag tag_ent
;;

let category_symbol_off_contentfile_tag tag_cof =
  let tag_cat = category_tag_off_contentfile_tag tag_cof in
  Tag_v.entity_off_tag tag_cat
;;

let domain_symbol_off_contentfile_tag tag_cof =
  let tag_dos = domain_tag_off_contentfile_tag tag_cof in
  Tag_v.entity_off_tag tag_dos
;;

(** {6 Tupling} *)

let contentfile_quatup_off_contentfile_tag tag_cof =
  let sym_cof = Tag_v.entity_off_tag tag_cof in
  let tag_ent = entity_tag_off_contentfile_tag tag_cof in
  let tri_ent = Entity_tag_v.entity_tritup_off_entity_tag tag_ent in
  Quadruplet_v.make_of_left_of_triplet sym_cof tri_ent
;;

