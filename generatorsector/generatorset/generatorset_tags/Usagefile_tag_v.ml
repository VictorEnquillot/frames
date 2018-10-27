(** {3 The functionalities for a Tag for a Usagefile}  *)

let nam_cod = "Usagefile_tag_v.ml";;

(** {6 Aliasing} *)


(** {6 Making} *)

let make sym_cat soi_cat =
  Tag_v.make sym_cat soi_cat
;;

(** {6 Naming} *)

let name tag_cat =
  let sym_cat = Tag_v.entity_off_tag tag_cat in
  Usagefile_symbol_v.name sym_cat
;;

(** {6 Extracting} *)

let contentfile_tag_off_usagefile_tag tag_usf =
  let sym_upp_off_gss = Generatorset_symbol_v.contentfile_symbol_off_generatorset_symbol in
  Tools_tgen_v.upper_tag_off_any_tag sym_upp_off_gss tag_usf
;;

let entity_tag_off_usagefile_tag tag_usf =
  let tag_cat = contentfile_tag_off_usagefile_tag tag_usf in
  Contentfile_tag_v.entity_tag_off_contentfile_tag tag_cat
;;

let category_tag_off_usagefile_tag tag_usf =
  let tag_cat = contentfile_tag_off_usagefile_tag tag_usf in
  Contentfile_tag_v.category_tag_off_contentfile_tag tag_cat
;;

let domain_tag_off_usagefile_tag tag_usf =
  let tag_cat = contentfile_tag_off_usagefile_tag tag_usf in
  Contentfile_tag_v.domain_tag_off_contentfile_tag tag_cat
;;

let usagefile_symbol_off_usagefile_tag tag_usf =
  Tag_v.entity_off_tag tag_usf
;;

let contentfile_symbol_off_usagefile_tag tag_usf =
  let tag_cof = contentfile_tag_off_usagefile_tag tag_usf in
  Tag_v.entity_off_tag tag_cof
;;

let entity_symbol_off_usagefile_tag tag_usf =
  let tag_usf = entity_tag_off_usagefile_tag tag_usf in
  Tag_v.entity_off_tag tag_usf
;;

let category_symbol_off_usagefile_tag tag_usf =
  let tag_cat = category_tag_off_usagefile_tag tag_usf in
  Tag_v.entity_off_tag tag_cat
;;

let domain_symbol_off_usagefile_tag tag_usf =
  let tag_dos = domain_tag_off_usagefile_tag tag_usf in
  Tag_v.entity_off_tag tag_dos
;;

(** {6 Tupling} *)

let usagefile_quitup_off_usagefile_tag tag_usf =
  let sym_usf = Tag_v.entity_off_tag tag_usf in
  let tag_usf = contentfile_tag_off_usagefile_tag tag_usf in
  let qua_usf = Contentfile_tag_v.contentfile_quatup_off_contentfile_tag tag_usf in
  Quintuplet_v.make_of_left_of_quadruplet sym_usf qua_usf
;;

(** {6 Upgrading Tags} *)

(* _of_usagefile_for_symbol *)

let usagefile_tag_of_usagefile_for_symbol_tag tag_uim =
  let soi_usf = Tag_v.sole_index_off_tag tag_uim in
  let sym_uim = Tag_v.entity_off_tag tag_uim in
  let sym_usf = 
    Usagefile_symbol_v.usagefile_symbol_of_usagefile_for_symbol_symbol
      sym_uim in
  Tag_v.make sym_usf soi_usf 
;;

(* _of_usagefile_for_formula *)

let usagefile_tag_of_usagefile_for_formula_tag tag_uim =
  let soi_usf = Tag_v.sole_index_off_tag tag_uim in
  let sym_uim = Tag_v.entity_off_tag tag_uim in
  let sym_usf = 
    Usagefile_symbol_v.usagefile_symbol_of_usagefile_for_formula_symbol
      sym_uim in
  Tag_v.make sym_usf soi_usf 
;;

