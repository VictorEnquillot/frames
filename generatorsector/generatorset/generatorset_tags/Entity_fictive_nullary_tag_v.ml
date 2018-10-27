(** {3 The functionalities for a Tag for an Entity_fictive_nullary}  *)

let nam_cod = "Entity_fictive_nullary_tag_v.ml";;

(** {6 Making} *)

let make sym_efn soi_efn =
  Tag_v.make sym_efn soi_efn
;;

(** {6 Naming} *)

let name tag_efn =
  let sym_efn = Tag_v.entity_off_tag tag_efn in
  Entity_fictive_nullary_symbol_v.name sym_efn
;;

let longname tag_efn =
  Format.sprintf "Entity_fictive_nullary_tag_t.%s" (String.capitalize (name tag_efn))
;;

let string_off tag_efn =
  let sym_efn = Tag_v.entity_off_tag tag_efn in
  Entity_fictive_nullary_symbol_v.string_off sym_efn
;;

let fullname tag_efn =
  Format.sprintf "%s \"%s\"" (longname tag_efn) (string_off tag_efn)
;;

(* (\** {6 Extracting upwards in BT-Generatorset i.e. Sole_index} *\) *)

(* let category_tag_off_entity_fictive_nullary_tag tag_efn = *)
(*   let pre_gss = Generatorset_symbol_v.is_category_symbol_off_generatorset_symbol in *)
(*   let (dss_cat, soi_cat) =  *)
(*     Localset_tag_v.upwards_localset_tag_of_localset_symbol_predicate_off_current_tag *)
(*       pre_gss  *)
(*       tag_efn  *)
(*   in *)
(*   let gss_cat = Localset_symbol_v.generatorset_symbol_off_localset_symbol dss_cat in *)
(*   let sym_cat = Generatorset_symbol_v.category_symbol_off_generatorset_symbol gss_cat in *)
(*   Tag_v.make sym_cat soi_cat *)
(* ;; *)

(* let domain_tag_off_entity_fictive_nullary_tag tag_efn = *)
(*   let tag_cat = category_tag_off_entity_fictive_nullary_tag tag_efn in *)
(*   Category_tag_v.localset_tag_off_category_tag tag_cat *)
(* ;; *)

(* (\** {6 Extracting upwards in CT} *\) *)

(* let entity_symbol_off_entity_fictive_nullary_tag tag_efn = *)
(*   let sym_efn = Tag_v.entity_off_tag tag_efn in *)
(*   Entity_symbol_v.entity_symbol_of_entity_fictive_nullary_symbol sym_efn  *)
(* ;; *)

(* let entity_tag_off_entity_fictive_nullary_tag tag_efn = *)
(*   let soi_efn = Tag_v.sole_index_off_tag tag_efn in *)
(*   let sym_ent = entity_symbol_off_entity_fictive_nullary_tag tag_efn in *)
(*   Tag_v.make sym_ent soi_efn *)
(* ;; *)

(** {6 Tupling} *)

let entity_fictive_nullary_tritup_off_entity_fictive_nullary_tag tag_efn =
  let sym_efn = Tag_v.entity_off_tag tag_efn in
  let soi_ent = Tag_v.sole_index_off_tag tag_efn in
  let soi_cat = List.tl soi_ent in
  let gss_cat = Generatorset_symbol_by_sole_index_provider_v.provide soi_cat in
  let sym_cat = Generatorset_symbol_v.category_symbol_off_generatorset_symbol gss_cat in
  let tag_cat = Tag_v.make sym_cat soi_cat in
  let dou_cat = Category_tag_v.category_doutup_off_category_tag tag_cat in
  Triplet_v.make_of_left_of_doublet sym_efn dou_cat
;;
