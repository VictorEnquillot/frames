(** {3 The functionalities for a Tag for a Entity}  *)

let nam_cod = "Entity_tag_v.ml";;

(** {6 Aliasing} *)


(** {6 Making} *)

let make sym_ent soi_ent =
  Tag_v.make sym_ent soi_ent
;;

(** {6 Naming} *)

let name tag_ent =
  let sym_ent = Tag_v.entity_off_tag tag_ent in
  Entity_symbol_v.name sym_ent
;;

let longname tag_ent =
  Format.sprintf "Entity_tag_t.%s" (String.capitalize (name tag_ent))
;;

let string_off tag_ent =
  let sym_ent = Tag_v.entity_off_tag tag_ent in
  Entity_symbol_v.string_off sym_ent
;;

let fullname tag_ent =
  Format.sprintf "%s \"%s\"" (longname tag_ent) (string_off tag_ent)
;;

(** {6 Getting tag upwards along BT-path from tag} *)

let category_tag_off_entity_tag tag_ent =
  let sym_upp_off_gss = Generatorset_symbol_v.category_symbol_off_generatorset_symbol in
  Tools_tgen_v.upper_tag_off_any_tag sym_upp_off_gss tag_ent
;;

let domain_tag_off_entity_tag tag_ent =
  let tag_cat = category_tag_off_entity_tag tag_ent in
  Category_tag_v.domain_tag_off_category_tag tag_cat 
;;

let category_symbol_off_entity_tag tag_ent =
  let tag_cat = category_tag_off_entity_tag tag_ent in
  Tag_v.entity_off_tag tag_cat
;;

let domain_symbol_off_entity_tag tag_ent =
  let tag_dos = domain_tag_off_entity_tag tag_ent in
  Tag_v.entity_off_tag tag_dos
;;

(** {6 Tupling} *)

let entity_tritup_off_entity_tag tag_ent =
  let sym_ent = Tag_v.entity_off_tag tag_ent in
  let tag_cat = category_tag_off_entity_tag tag_ent in
  let dou_cat = Category_tag_v.category_doutup_off_category_tag tag_cat in
  Triplet_v.make_of_left_of_doublet sym_ent dou_cat
;;
