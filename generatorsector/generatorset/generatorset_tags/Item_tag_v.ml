(** {3 The Functionalities for a Tag for an Item}  *)

let nam_cod = "Item_tag_v.ml";;

(** {6 Naming} *)

let name tag_ite =
  let sym_ite = Tag_v.entity_off_tag tag_ite in
  Item_symbol_v.name sym_ite
;;

(** {6 Extracting} *)

let usagefile_tag_off_item_tag tag_ite =
  let sym_upp_off_gss = Generatorset_symbol_v.usagefile_symbol_off_generatorset_symbol in
  Tools_tgen_v.upper_tag_off_any_tag sym_upp_off_gss tag_ite
;;

let contentfile_tag_off_item_tag tag_ite =
  let tag_usf = usagefile_tag_off_item_tag tag_ite in
  Usagefile_tag_v.contentfile_tag_off_usagefile_tag tag_usf
;;

let entity_tag_off_item_tag tag_ite =
  let tag_usf = usagefile_tag_off_item_tag tag_ite in
  Usagefile_tag_v.entity_tag_off_usagefile_tag tag_usf
;;

let category_tag_off_item_tag tag_ite =
  let tag_usf = usagefile_tag_off_item_tag tag_ite in
  Usagefile_tag_v.category_tag_off_usagefile_tag tag_usf
;;

let domain_tag_off_item_tag tag_ite =
  let tag_usf = usagefile_tag_off_item_tag tag_ite in
  Usagefile_tag_v.domain_tag_off_usagefile_tag tag_usf
;;

let item_symbol_off_item_tag tag_ite =
  Tag_v.entity_off_tag tag_ite
;;

let domain_symbol_off_item_tag tag_ite =
  let tag_dos = domain_tag_off_item_tag tag_ite in
  Tag_v.entity_off_tag tag_dos
;;

let category_symbol_off_item_tag tag_ite =
  let tag_cat = category_tag_off_item_tag tag_ite in
  Tag_v.entity_off_tag tag_cat
;;

let entity_symbol_off_item_tag tag_ite =
  let tag_enp = entity_tag_off_item_tag tag_ite in
  Tag_v.entity_off_tag tag_enp
;;

let usagefile_symbol_off_item_tag tag_ite =
  let tag_usf = usagefile_tag_off_item_tag tag_ite in
  Tag_v.entity_off_tag tag_usf
;;

let contentfile_symbol_off_item_tag tag_ite =
  let tag_cof = contentfile_tag_off_item_tag tag_ite in
  Tag_v.entity_off_tag tag_cof
;;

(* item_..._off_ *)

let item_for_symbol_only_top_tag_off_item_tag tag_ite =
  let soi_ite = Tag_v.sole_index_off_tag tag_ite in
  let sym_ite = Tag_v.entity_off_tag tag_ite in
  let sym_iot = 
    Item_symbol_v.item_for_symbol_only_top_symbol_off_item_symbol
      sym_ite in
  Tag_v.make sym_iot soi_ite 
;;

let item_for_symbol_each_grandson_notleaf_tag_off_item_tag tag_ite =
  let soi_ite = Tag_v.sole_index_off_tag tag_ite in
  let sym_ite = Tag_v.entity_off_tag tag_ite in
  let sym_ign = 
    Item_symbol_v.item_for_symbol_each_grandson_notleaf_symbol_off_item_symbol
      sym_ite in
  Tag_v.make sym_ign soi_ite 
;;

let item_for_symbol_each_topson_notleaf_tag_off_item_tag tag_ite =
  let soi_ite = Tag_v.sole_index_off_tag tag_ite in
  let sym_ite = Tag_v.entity_off_tag tag_ite in
  let sym_itn = 
    Item_symbol_v.item_for_symbol_each_topson_notleaf_symbol_off_item_symbol
      sym_ite in
  Tag_v.make sym_itn soi_ite 
;;

let item_for_symbol_each_grandson_bare_tag_off_item_tag tag_ite =
  let soi_ite = Tag_v.sole_index_off_tag tag_ite in
  let sym_ite = Tag_v.entity_off_tag tag_ite in
  let sym_ign = 
    Item_symbol_v.item_for_symbol_each_grandson_bare_symbol_off_item_symbol
      sym_ite in
  Tag_v.make sym_ign soi_ite 
;;

let item_for_symbol_each_topson_bare_tag_off_item_tag tag_ite =
  let soi_ite = Tag_v.sole_index_off_tag tag_ite in
  let sym_ite = Tag_v.entity_off_tag tag_ite in
  let sym_itn = 
    Item_symbol_v.item_for_symbol_each_topson_bare_symbol_off_item_symbol
      sym_ite in
  Tag_v.make sym_itn soi_ite 
;;

let item_for_symbol_by_group_topsons_tag_off_item_tag tag_ite =
  let soi_ite = Tag_v.sole_index_off_tag tag_ite in
  let sym_ite = Tag_v.entity_off_tag tag_ite in
  let sym_iat = 
    Item_symbol_v.item_for_symbol_by_group_topsons_symbol_off_item_symbol
      sym_ite in
  Tag_v.make sym_iat soi_ite 
;;

(** {6 Upgrading Tags} *)

let item_tag_of_item_for_symbol_tag tag_ifs =
  let soi_ite = Tag_v.sole_index_off_tag tag_ifs in
  let sym_ifs = Tag_v.entity_off_tag tag_ifs in
  let sym_ite = 
    Item_symbol_v.item_symbol_of_item_for_symbol_symbol
      sym_ifs in
  Tag_v.make sym_ite soi_ite 
;;

(* _of_item_only_top *)

let item_tag_of_item_for_symbol_only_top_tag tag_iot =
  let soi_ite = Tag_v.sole_index_off_tag tag_iot in
  let sym_iot = Tag_v.entity_off_tag tag_iot in
  let sym_ite = 
    Item_symbol_v.item_symbol_of_item_for_symbol_only_top_symbol
      sym_iot in
  Tag_v.make sym_ite soi_ite 
;;

let item_tag_of_item_for_any_only_top_tag tag_nnl =
  let soi_ite = Tag_v.sole_index_off_tag tag_nnl in
  let sym_nnl = Tag_v.entity_off_tag tag_nnl in
  let sym_ite = 
    Item_symbol_v.item_symbol_of_item_for_any_only_top_symbol
      sym_nnl in
  Tag_v.make sym_ite soi_ite 
;;

(* _of_item_for_symbol_each_grandson_notleaf *)

let item_tag_of_item_for_symbol_each_grandson_notleaf_tag tag_nnl =
  let soi_ite = Tag_v.sole_index_off_tag tag_nnl in
  let sym_nnl = Tag_v.entity_off_tag tag_nnl in
  let sym_ite = 
    Item_symbol_v.item_symbol_of_item_for_symbol_each_grandson_notleaf_symbol
      sym_nnl in
  Tag_v.make sym_ite soi_ite 
;;

let item_tag_of_item_for_symbol_each_grandson_notleaf_tag tag_nnl =
  let soi_ite = Tag_v.sole_index_off_tag tag_nnl in
  let sym_nnl = Tag_v.entity_off_tag tag_nnl in
  let sym_ite = 
    Item_symbol_v.item_symbol_of_item_for_symbol_each_grandson_notleaf_symbol
      sym_nnl in
  Tag_v.make sym_ite soi_ite 
;;

(* _of_item_for_symbol_each_grandson_bare *)

let item_tag_of_item_for_symbol_each_grandson_bare_tag tag_nnl =
  let soi_ite = Tag_v.sole_index_off_tag tag_nnl in
  let sym_nnl = Tag_v.entity_off_tag tag_nnl in
  let sym_ite = 
    Item_symbol_v.item_symbol_of_item_for_symbol_each_grandson_bare_symbol
      sym_nnl in
  Tag_v.make sym_ite soi_ite 
;;

let item_tag_of_item_for_symbol_each_grandson_bare_tag tag_nnl =
  let soi_ite = Tag_v.sole_index_off_tag tag_nnl in
  let sym_nnl = Tag_v.entity_off_tag tag_nnl in
  let sym_ite = 
    Item_symbol_v.item_symbol_of_item_for_symbol_each_grandson_bare_symbol
      sym_nnl in
  Tag_v.make sym_ite soi_ite 
;;

(* _of_item_for_symbol_each_topson_bare *)

let item_tag_of_item_for_symbol_each_topson_bare_tag tag_ens =
  let soi_ite = Tag_v.sole_index_off_tag tag_ens in
  let sym_ens = Tag_v.entity_off_tag tag_ens in
  let sym_ite = 
    Item_symbol_v.item_symbol_of_item_for_symbol_each_topson_bare_symbol
      sym_ens in
  Tag_v.make sym_ite soi_ite 
;;

let item_tag_of_item_for_symbol_each_topson_bare_tag tag_nnl =
  let soi_ite = Tag_v.sole_index_off_tag tag_nnl in
  let sym_nnl = Tag_v.entity_off_tag tag_nnl in
  let sym_ite = 
    Item_symbol_v.item_symbol_of_item_for_symbol_each_topson_bare_symbol
      sym_nnl in
  Tag_v.make sym_ite soi_ite 
;;

(* _of_item_for_symbol_each_grandson_ofstring *)

let item_tag_of_item_for_symbol_each_grandson_ofstring_tag tag_nnl =
  let soi_ite = Tag_v.sole_index_off_tag tag_nnl in
  let sym_nnl = Tag_v.entity_off_tag tag_nnl in
  let sym_ite = 
    Item_symbol_v.item_symbol_of_item_for_symbol_each_grandson_ofstring_symbol
      sym_nnl in
  Tag_v.make sym_ite soi_ite 
;;

let item_tag_of_item_for_symbol_each_grandson_ofstring_tag tag_nnl =
  let soi_ite = Tag_v.sole_index_off_tag tag_nnl in
  let sym_nnl = Tag_v.entity_off_tag tag_nnl in
  let sym_ite = 
    Item_symbol_v.item_symbol_of_item_for_symbol_each_grandson_ofstring_symbol
      sym_nnl in
  Tag_v.make sym_ite soi_ite 
;;

(* _of_item_for_symbol_each_topson_ofstring *)

let item_tag_of_item_for_symbol_each_topson_ofstring_tag tag_ens =
  let soi_ite = Tag_v.sole_index_off_tag tag_ens in
  let sym_ens = Tag_v.entity_off_tag tag_ens in
  let sym_ite = 
    Item_symbol_v.item_symbol_of_item_for_symbol_each_topson_ofstring_symbol
      sym_ens in
  Tag_v.make sym_ite soi_ite 
;;

let item_tag_of_item_for_symbol_each_topson_ofstring_tag tag_nnl =
  let soi_ite = Tag_v.sole_index_off_tag tag_nnl in
  let sym_nnl = Tag_v.entity_off_tag tag_nnl in
  let sym_ite = 
    Item_symbol_v.item_symbol_of_item_for_symbol_each_topson_ofstring_symbol
      sym_nnl in
  Tag_v.make sym_ite soi_ite 
;;

(* _of_item_for_symbol_each_topson_notleaf *)

let item_tag_of_item_for_symbol_each_topson_notleaf_tag tag_ens =
  let soi_ite = Tag_v.sole_index_off_tag tag_ens in
  let sym_ens = Tag_v.entity_off_tag tag_ens in
  let sym_ite = 
    Item_symbol_v.item_symbol_of_item_for_symbol_each_topson_notleaf_symbol
      sym_ens in
  Tag_v.make sym_ite soi_ite 
;;

let item_tag_of_item_for_symbol_each_topson_notleaf_tag tag_nnl =
  let soi_ite = Tag_v.sole_index_off_tag tag_nnl in
  let sym_nnl = Tag_v.entity_off_tag tag_nnl in
  let sym_ite = 
    Item_symbol_v.item_symbol_of_item_for_symbol_each_topson_notleaf_symbol
      sym_nnl in
  Tag_v.make sym_ite soi_ite 
;;

(* _of_item_by_group_topsons *)

let item_tag_of_item_for_symbol_by_group_topsons_tag tag_itl =
  let soi_ite = Tag_v.sole_index_off_tag tag_itl in
  let sym_itl = Tag_v.entity_off_tag tag_itl in
  let sym_ite = 
    Item_symbol_v.item_symbol_of_item_for_symbol_by_group_topsons_symbol
      sym_itl in
  Tag_v.make sym_ite soi_ite 
;;

let item_tag_of_item_for_symbol_by_group_topsons_for_symbol_tag tag_nnl =
  let soi_ite = Tag_v.sole_index_off_tag tag_nnl in
  let sym_nnl = Tag_v.entity_off_tag tag_nnl in
  let sym_ite = 
    Item_symbol_v.item_symbol_of_item_for_symbol_by_group_topsons_symbol
      sym_nnl in
  Tag_v.make sym_ite soi_ite 
;;

(** for_formula *)

let item_tag_of_item_for_formula_tag tag_iff =
  let soi_ite = Tag_v.sole_index_off_tag tag_iff in
  let sym_iff = Tag_v.entity_off_tag tag_iff in
  let sym_ite = 
    Item_symbol_v.item_symbol_of_item_for_formula_symbol
      sym_iff in
  Tag_v.make sym_ite soi_ite 
;;

let item_tag_of_item_for_formula_only_top_tag tag_iot =
  let soi_ite = Tag_v.sole_index_off_tag tag_iot in
  let sym_iot = Tag_v.entity_off_tag tag_iot in
  let sym_ite = 
    Item_symbol_v.item_symbol_of_item_for_formula_only_top_symbol
      sym_iot in
  Tag_v.make sym_ite soi_ite 
;;

let item_tag_of_item_for_formula_by_group_topsons_tag tag_igt =
  let soi_ite = Tag_v.sole_index_off_tag tag_igt in
  let sym_igt = Tag_v.entity_off_tag tag_igt in
  let sym_ite = 
    Item_symbol_v.item_symbol_of_item_for_formula_by_group_topsons_symbol
      sym_igt in
  Tag_v.make sym_ite soi_ite 
;;

(** {6 Tupling} *)

let item_sextup_off_item_tag tag_ite =
  let sym_ite = Tag_v.entity_off_tag tag_ite in
  let tag_usf = usagefile_tag_off_item_tag tag_ite in
  let qui_usf = Usagefile_tag_v.usagefile_quitup_off_usagefile_tag tag_usf in
  Sextuplet_v.make_of_left_of_quintuplet sym_ite qui_usf
;;

