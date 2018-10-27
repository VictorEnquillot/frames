(** {3 The functionalities for a Tag for a Category}  *)

let nam_cod = "Category_tag_v.ml";;

(** {6 Making} *)

let make sym_cat soi_cat =
  Tag_v.make sym_cat soi_cat
;;

(** {6 Naming} *)

let name tag_cat =
  let sym_cat = Tag_v.entity_off_tag tag_cat in
  Category_symbol_v.name sym_cat
;;

(** {6 Extracting} *)

let category_symbol_off_category_tag tag_cat =
  Tag_v.entity_off_tag tag_cat
;;

(** {6 Upgrading} *)

let domain_tag_off_category_tag tag_cat =
  let sym_upp_off_gss = Generatorset_symbol_v.domain_symbol_off_generatorset_symbol in
  Tools_tgen_v.upper_tag_off_any_tag sym_upp_off_gss tag_cat
;;

(** {6 Tupling} *)

let category_doutup_off_category_tag tag_cat =
  let sym_cat = Tag_v.entity_off_tag tag_cat in
  let tag_dom = domain_tag_off_category_tag tag_cat in
  let sym_dom = Tag_v.entity_off_tag tag_dom in
  Doublet_v.make sym_cat sym_dom
;;
