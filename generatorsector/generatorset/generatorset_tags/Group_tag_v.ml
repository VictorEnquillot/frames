(** {3 The functionalities for a Tag for a Group}  *)

let nam_cod = "Group_tag_v.ml";;

(** {6 Getting tag upwards along BT-path from tag} *)

let section_tag_off_group_tag tag_gro =
  let sym_upp_off_gss = Generatorset_symbol_v.section_symbol_off_generatorset_symbol in
  Tools_tgen_v.upper_tag_off_any_tag sym_upp_off_gss tag_gro
;;

let camlparagraph_tag_off_group_tag tag_gro =
  let tag_sec = section_tag_off_group_tag tag_gro in
  Section_tag_v.camlparagraph_tag_off_section_tag tag_sec
;;

let item_tag_off_group_tag tag_gro =
  let tag_sec = section_tag_off_group_tag tag_gro in
  Section_tag_v.item_tag_off_section_tag tag_sec
;;

let usagefile_tag_off_group_tag tag_gro =
  let tag_sec = section_tag_off_group_tag tag_gro in
  Section_tag_v.usagefile_tag_off_section_tag tag_sec
;;

let contentfile_tag_off_group_tag tag_gro =
  let tag_sec = section_tag_off_group_tag tag_gro in
  Section_tag_v.contentfile_tag_off_section_tag tag_sec
;;

let category_tag_off_group_tag tag_gro =
  let tag_sec = section_tag_off_group_tag tag_gro in
  Section_tag_v.category_tag_off_section_tag tag_sec
;;

let entity_tag_off_group_tag tag_gro =
  let tag_sec = section_tag_off_group_tag tag_gro in
  Section_tag_v.entity_tag_off_section_tag tag_sec
;;

let domain_tag_off_group_tag tag_gro =
  let tag_sec = section_tag_off_group_tag tag_gro in
  Section_tag_v.domain_tag_off_section_tag tag_sec
;;

(** Symbols *)

let group_symbol_off_group_tag tag_gro =
  Tag_v.entity_off_tag tag_gro
;;

let camlparagraph_symbol_off_group_tag tag_gro =
  let tag_cap = camlparagraph_tag_off_group_tag tag_gro in
  Tag_v.entity_off_tag tag_cap
;;

let item_symbol_off_group_tag tag_gro =
  let tag_ite = item_tag_off_group_tag tag_gro in
  Tag_v.entity_off_tag tag_ite
;;

let contentfile_symbol_off_group_tag tag_gro =
  let tag_cof = contentfile_tag_off_group_tag tag_gro in
  Tag_v.entity_off_tag tag_cof
;;

let usagefile_symbol_off_group_tag tag_gro =
  let tag_usf = usagefile_tag_off_group_tag tag_gro in
  Tag_v.entity_off_tag tag_usf
;;

let category_symbol_off_group_tag tag_gro =
  let tag_cat = category_tag_off_group_tag tag_gro in
  Tag_v.entity_off_tag tag_cat
;;

let entity_symbol_off_group_tag tag_gro =
  let tag_enp = entity_tag_off_group_tag tag_gro in
  Tag_v.entity_off_tag tag_enp
;;

let domain_symbol_off_group_tag tag_gro =
  let tag_dos = domain_tag_off_group_tag tag_gro in
  Tag_v.entity_off_tag tag_dos
;;

(** Group tuple *)

let group_nontup_off_group_tag tag_gro =
  let sym_gro = Tag_v.entity_off_tag tag_gro in
  let tag_sec = section_tag_off_group_tag tag_gro in
  let oct_sec = Section_tag_v.section_octtup_off_section_tag tag_sec in
  Nonuplet_v.make_of_left_of_octuplet sym_gro oct_sec
;;

(** Group_for_symbol *)
(** Group_for_symbol_body *)
(* ***
let group_tag_of_group_for_symbol_body_constant_tag tag_gbc =
  let sym_gbc = Tag_v.entity_off_tag tag_gbc in
  let soi_gro = Tag_v.sole_index_off_tag tag_gbc in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_symbol_body_constant_symbol sym_gbc in
  Tag_v.make sym_gro soi_gro
;;
*** *)
let group_tag_of_group_for_symbol_body_current_son_top_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_symbol_body_current_son_top_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_symbol_body_son_tag tag_gbs =
  let sym_gbs = Tag_v.entity_off_tag tag_gbs in
  let soi_gro = Tag_v.sole_index_off_tag tag_gbs in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_symbol_body_son_symbol sym_gbs in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_symbol_body_son_top_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_symbol_body_son_top_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_symbol_body_top_tag tag_gbt =
  let sym_gbt = Tag_v.entity_off_tag tag_gbt in
  let soi_gro = Tag_v.sole_index_off_tag tag_gbt in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_symbol_body_top_symbol sym_gbt in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_symbol_body_tag tag_gsb =
  let sym_gsb = Tag_v.entity_off_tag tag_gsb in
  let soi_gro = Tag_v.sole_index_off_tag tag_gsb in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_symbol_body_symbol sym_gsb in
  Tag_v.make sym_gro soi_gro
;;

(** Group_for_symbol_footer *)
(* ***
let group_tag_of_group_for_symbol_footer_constant_tag tag_gfc =
  let sym_gfc = Tag_v.entity_off_tag tag_gfc in
  let soi_gro = Tag_v.sole_index_off_tag tag_gfc in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_symbol_footer_constant_symbol sym_gfc in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_symbol_footer_current_son_top_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_symbol_footer_current_son_top_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_symbol_footer_son_tag tag_gfs =
  let sym_gfs = Tag_v.entity_off_tag tag_gfs in
  let soi_gro = Tag_v.sole_index_off_tag tag_gfs in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_symbol_footer_son_symbol sym_gfs in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_symbol_footer_son_top_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_symbol_footer_son_top_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;
*** *)
let group_tag_of_group_for_symbol_footer_top_tag tag_gft =
  let sym_gft = Tag_v.entity_off_tag tag_gft in
  let soi_gro = Tag_v.sole_index_off_tag tag_gft in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_symbol_footer_top_symbol sym_gft in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_symbol_footer_tag tag_gsh =
  let sym_gsh = Tag_v.entity_off_tag tag_gsh in
  let soi_gro = Tag_v.sole_index_off_tag tag_gsh in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_symbol_footer_symbol sym_gsh in
  Tag_v.make sym_gro soi_gro
;;

(** Group_for_symbol_header *)

let group_tag_of_group_for_symbol_header_constant_tag tag_ghc =
  let sym_ghc = Tag_v.entity_off_tag tag_ghc in
  let soi_gro = Tag_v.sole_index_off_tag tag_ghc in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_symbol_header_constant_symbol sym_ghc in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_symbol_header_current_top_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_symbol_header_current_top_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_symbol_header_current_son_top_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_symbol_header_current_son_top_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_symbol_header_son_tag tag_ghs =
  let sym_ghs = Tag_v.entity_off_tag tag_ghs in
  let soi_gro = Tag_v.sole_index_off_tag tag_ghs in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_symbol_header_son_symbol sym_ghs in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_symbol_header_son_top_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_symbol_header_son_top_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;
(***
let group_tag_of_group_for_symbol_header_top_tag tag_ght =
  let sym_ght = Tag_v.entity_off_tag tag_ght in
  let soi_gro = Tag_v.sole_index_off_tag tag_ght in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_symbol_header_top_symbol sym_ght in
  Tag_v.make sym_gro soi_gro
;;
***)

let group_tag_of_group_for_symbol_header_tag tag_gsh =
  let sym_gsh = Tag_v.entity_off_tag tag_gsh in
  let soi_gro = Tag_v.sole_index_off_tag tag_gsh in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_symbol_header_symbol sym_gsh in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_symbol_tag tag_gfs =
  let sym_gfs = Tag_v.entity_off_tag tag_gfs in
  let soi_gro = Tag_v.sole_index_off_tag tag_gfs in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_symbol_symbol sym_gfs in
  Tag_v.make sym_gro soi_gro
;;

(** Group_for_any *)
(** Group_for_any_body *)
(* ***
let group_tag_of_group_for_any_body_constant_tag tag_gbc =
  let sym_gbc = Tag_v.entity_off_tag tag_gbc in
  let soi_gro = Tag_v.sole_index_off_tag tag_gbc in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_any_body_constant_symbol sym_gbc in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_any_body_current_son_top_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_any_body_current_son_top_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;
*** *)
let group_tag_of_group_for_any_body_son_tag tag_gbs =
  let sym_gbs = Tag_v.entity_off_tag tag_gbs in
  let soi_gro = Tag_v.sole_index_off_tag tag_gbs in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_any_body_son_symbol sym_gbs in
  Tag_v.make sym_gro soi_gro
;;
(* ***
let group_tag_of_group_for_any_body_son_top_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_any_body_son_top_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;

*** *)

let group_tag_of_group_for_any_body_top_tag tag_gbt =
  let sym_gbt = Tag_v.entity_off_tag tag_gbt in
  let soi_gro = Tag_v.sole_index_off_tag tag_gbt in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_any_body_top_symbol sym_gbt in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_any_body_top_main_tag tag_gbt =
  let sym_gbt = Tag_v.entity_off_tag tag_gbt in
  let soi_gro = Tag_v.sole_index_off_tag tag_gbt in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_any_body_top_main_symbol sym_gbt in
  Tag_v.make sym_gro soi_gro
;;


let group_tag_of_group_for_any_body_tag tag_gsb =
  let sym_gsb = Tag_v.entity_off_tag tag_gsb in
  let soi_gro = Tag_v.sole_index_off_tag tag_gsb in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_any_body_symbol sym_gsb in
  Tag_v.make sym_gro soi_gro
;;

(** Group_for_any_footer *)
(***
let group_tag_of_group_for_any_footer_constant_tag tag_gfc =
  let sym_gfc = Tag_v.entity_off_tag tag_gfc in
  let soi_gro = Tag_v.sole_index_off_tag tag_gfc in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_any_footer_constant_symbol sym_gfc in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_any_footer_current_son_top_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_any_footer_current_son_top_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_any_footer_son_tag tag_gfs =
  let sym_gfs = Tag_v.entity_off_tag tag_gfs in
  let soi_gro = Tag_v.sole_index_off_tag tag_gfs in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_any_footer_son_symbol sym_gfs in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_any_footer_son_top_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_any_footer_son_top_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_any_footer_top_tag tag_gft =
  let sym_gft = Tag_v.entity_off_tag tag_gft in
  let soi_gro = Tag_v.sole_index_off_tag tag_gft in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_any_footer_top_symbol sym_gft in
  Tag_v.make sym_gro soi_gro
;;
*** *)
let group_tag_of_group_for_any_footer_tag tag_gsh =
  let sym_gsh = Tag_v.entity_off_tag tag_gsh in
  let soi_gro = Tag_v.sole_index_off_tag tag_gsh in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_any_footer_symbol sym_gsh in
  Tag_v.make sym_gro soi_gro
;;

(** Group_for_any_header *)

let group_tag_of_group_for_any_header_constant_tag tag_ghc =
  let sym_ghc = Tag_v.entity_off_tag tag_ghc in
  let soi_gro = Tag_v.sole_index_off_tag tag_ghc in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_any_header_constant_symbol sym_ghc in
  Tag_v.make sym_gro soi_gro
;;
(* *** 
let group_tag_of_group_for_any_header_current_son_top_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_any_header_current_son_top_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_any_header_son_tag tag_ghs =
  let sym_ghs = Tag_v.entity_off_tag tag_ghs in
  let soi_gro = Tag_v.sole_index_off_tag tag_ghs in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_any_header_son_symbol sym_ghs in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_any_header_son_top_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_any_header_son_top_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;
*** *)
let group_tag_of_group_for_any_header_top_tag tag_ght =
  let sym_ght = Tag_v.entity_off_tag tag_ght in
  let soi_gro = Tag_v.sole_index_off_tag tag_ght in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_any_header_top_symbol sym_ght in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_any_header_tag tag_gsh =
  let sym_gsh = Tag_v.entity_off_tag tag_gsh in
  let soi_gro = Tag_v.sole_index_off_tag tag_gsh in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_any_header_symbol sym_gsh in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_any_tag tag_gfs =
  let sym_gfs = Tag_v.entity_off_tag tag_gfs in
  let soi_gro = Tag_v.sole_index_off_tag tag_gfs in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_any_symbol sym_gfs in
  Tag_v.make sym_gro soi_gro
;;

(* for_formula *)

let group_tag_of_group_for_formula_header_constant_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_header_constant_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_formula_header_top_main_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_header_top_main_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_formula_header_top_data_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_header_top_data_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_formula_header_top_builder_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_header_top_builder_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;




let group_tag_of_group_for_formula_body_builder_alone_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_body_builder_alone_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_formula_body_builder_data_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_body_builder_data_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_formula_body_data_alone_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_body_data_alone_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_formula_body_localset_builder_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_body_localset_builder_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_formula_body_localset_data_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_body_localset_data_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_formula_body_localset_builder_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_body_localset_builder_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_formula_body_main_builder_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_body_main_builder_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_formula_body_main_data_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_body_main_data_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_formula_body_top_alone_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_body_top_alone_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_formula_body_top_builder_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_body_top_builder_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_formula_body_top_builder_data_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_body_top_builder_data_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_formula_body_top_data_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_body_top_data_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_formula_body_top_main_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_body_top_main_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_formula_body_top_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_body_top_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;


let group_tag_of_group_for_formula_body_son_builder_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_body_son_builder_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_formula_body_son_top_builder_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_body_son_top_builder_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_formula_body_son_top_data_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_body_son_top_data_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_formula_body_son_top_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_body_son_top_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_formula_body_son_top_main_builder_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_body_son_top_main_builder_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;

let group_tag_of_group_for_formula_body_son_top_main_tag tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_gro = Tag_v.sole_index_off_tag tag_gst in
  let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_body_son_top_main_symbol sym_gst in
  Tag_v.make sym_gro soi_gro
;;

