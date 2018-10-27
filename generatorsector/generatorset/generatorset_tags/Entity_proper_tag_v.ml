(** {3 The functionalities for a Tag for a Entity_proper}  *)

let nam_cod = "Entity_proper_tag_v.ml";;

(** {6 Making} *)

let make sym_enp soi_enp =
  Tag_v.make sym_enp soi_enp
;;

(** {6 Naming} *)

let name tag_enp =
  let sym_enp = Tag_v.entity_off_tag tag_enp in
  Entity_proper_symbol_v.name sym_enp
;;

let longname tag_enp =
  Format.sprintf "Entity_proper_tag_t.%s" (String.capitalize (name tag_enp))
;;

let string_off tag_enp =
  let sym_enp = Tag_v.entity_off_tag tag_enp in
  Entity_proper_symbol_v.string_off sym_enp
;;

let fullname tag_enp =
  Format.sprintf "%s \"%s\"" (longname tag_enp) (string_off tag_enp)
;;

(** {6 Getting tag upwards along BT-path from tag} *)

let category_tag_off_entity_proper_tag tag_enp =
  let sym_upp_off_gss = Generatorset_symbol_v.category_symbol_off_generatorset_symbol in
  Tools_tgen_v.upper_tag_off_any_tag sym_upp_off_gss tag_enp
;;

let domain_tag_off_entity_proper_tag tag_enp =
  let tag_cat = category_tag_off_entity_proper_tag tag_enp in
  Category_tag_v.domain_tag_off_category_tag tag_cat 
;;

let entity_symbol_off_entity_proper_tag tag_enp =
  let sym_enp = Tag_v.entity_off_tag tag_enp in
  Entity_symbol_v.entity_symbol_of_entity_proper_symbol sym_enp 
;;

let entity_tag_off_entity_proper_tag tag_enp =
  let soi_enp = Tag_v.sole_index_off_tag tag_enp in
  let sym_ent = entity_symbol_off_entity_proper_tag tag_enp in
  Tag_v.make sym_ent soi_enp
;;

let category_symbol_off_entity_proper_tag tag_enp =
  let tag_cat = category_tag_off_entity_proper_tag tag_enp in
  Tag_v.entity_off_tag tag_cat
;;

(** {6 Tupling} *)

let entity_proper_tritup_off_entity_proper_tag tag_enp =
  let sym_enp = Tag_v.entity_off_tag tag_enp in
  let tag_cat = category_tag_off_entity_proper_tag tag_enp in
  let dou_cat = Category_tag_v.category_doutup_off_category_tag tag_cat in
  Triplet_v.make_of_left_of_doublet sym_enp dou_cat
;;

