(** {3 The functionalities for a Tag for a Section}  *)

let nam_cod = "Section_tag_v.ml";;

(** {6 Getting tag upwards along BT-path from tag} *)

let camlparagraph_tag_off_section_tag tag_sec =
  let sym_upp_off_gss = Generatorset_symbol_v.camlparagraph_symbol_off_generatorset_symbol in
  Tools_tgen_v.upper_tag_off_any_tag sym_upp_off_gss tag_sec
;;

let usagefile_tag_off_section_tag tag_sec =
  let tag_cap = camlparagraph_tag_off_section_tag tag_sec in
  Camlparagraph_tag_v.usagefile_tag_off_camlparagraph_tag tag_cap
;;

let item_tag_off_section_tag tag_sec =
  let tag_cap = camlparagraph_tag_off_section_tag tag_sec in
  Camlparagraph_tag_v.item_tag_off_camlparagraph_tag tag_cap
;;

let category_tag_off_section_tag tag_sec =
  let tag_cap = camlparagraph_tag_off_section_tag tag_sec in
  Camlparagraph_tag_v.category_tag_off_camlparagraph_tag tag_cap
;;

let contentfile_tag_off_section_tag tag_sec =
  let tag_cap = camlparagraph_tag_off_section_tag tag_sec in
  Camlparagraph_tag_v.contentfile_tag_off_camlparagraph_tag tag_cap
;;

let entity_tag_off_section_tag tag_sec =
  let tag_cap = camlparagraph_tag_off_section_tag tag_sec in
  Camlparagraph_tag_v.entity_tag_off_camlparagraph_tag tag_cap
;;

let domain_tag_off_section_tag tag_sec =
  let tag_cap = camlparagraph_tag_off_section_tag tag_sec in
  Camlparagraph_tag_v.domain_tag_off_camlparagraph_tag tag_cap
;;

(** {6 Extracting symbol} *)

let section_symbol_off_section_tag tag_sec =
  Tag_v.entity_off_tag tag_sec
;;

let camlparagraph_symbol_off_section_tag tag_sec =
  let tag_cap = camlparagraph_tag_off_section_tag tag_sec in
  Tag_v.entity_off_tag tag_cap
;;

let item_symbol_off_section_tag tag_sec =
  let tag_ite = item_tag_off_section_tag tag_sec in
  Tag_v.entity_off_tag tag_ite
;;

let contentfile_symbol_off_section_tag tag_sec =
  let tag_cof = contentfile_tag_off_section_tag tag_sec in
  Tag_v.entity_off_tag tag_cof
;;

let usagefile_symbol_off_section_tag tag_sec =
  let tag_usf = usagefile_tag_off_section_tag tag_sec in
  Tag_v.entity_off_tag tag_usf
;;

let category_symbol_off_section_tag tag_sec =
  let tag_cat = category_tag_off_section_tag tag_sec in
  Tag_v.entity_off_tag tag_cat
;;

let entity_symbol_off_section_tag tag_sec =
  let tag_enp = entity_tag_off_section_tag tag_sec in
  Tag_v.entity_off_tag tag_enp
;;

let domain_symbol_off_section_tag tag_sec =
  let tag_dos = domain_tag_off_section_tag tag_sec in
  Tag_v.entity_off_tag tag_dos
;;

(** {6 Extracting tuple} *)

let section_octtup_off_section_tag tag_sec =
  let sym_sec = Tag_v.entity_off_tag tag_sec in
  let tag_cap = camlparagraph_tag_off_section_tag tag_sec in
  let sep_cap = Camlparagraph_tag_v.camlparagraph_septup_off_camlparagraph_tag tag_cap in
  Octuplet_v.make_of_left_of_septuplet sym_sec sep_cap
;;

(** Section ... _tag *)
(** Section_for_any *)
(** Section_for_any_body *)

let section_tag_of_section_for_any_body_son_tag tag_sbt =
  let sym_sbt = Tag_v.entity_off_tag tag_sbt in
  let soi_sec = Tag_v.sole_index_off_tag tag_sbt in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_any_body_son_symbol sym_sbt in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_any_body_top_main_tag tag_sbt =
  let sym_sbt = Tag_v.entity_off_tag tag_sbt in
  let soi_sec = Tag_v.sole_index_off_tag tag_sbt in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_any_body_top_main_symbol sym_sbt in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_any_body_top_tag tag_sbt =
  let sym_sbt = Tag_v.entity_off_tag tag_sbt in
  let soi_sec = Tag_v.sole_index_off_tag tag_sbt in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_any_body_top_symbol sym_sbt in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_any_body_tag tag_ssb =
  let sym_ssb = Tag_v.entity_off_tag tag_ssb in
  let soi_sec = Tag_v.sole_index_off_tag tag_ssb in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_any_body_symbol sym_ssb in
  Tag_v.make sym_sec soi_sec
;;

(** Section_for_any_footer *)

(* let section_tag_of_section_for_any_footer_constant_tag tag_sfc = *)
(*   let sym_sfc = Tag_v.entity_off_tag tag_sfc in *)
(*   let soi_sec = Tag_v.sole_index_off_tag tag_sfc in *)
(*   let sym_sec = Section_symbol_v.section_symbol_of_section_for_any_footer_constant_symbol sym_sfc in *)
(*   Tag_v.make sym_sec soi_sec *)
(* ;; *)

let section_tag_of_section_for_any_footer_tag tag_ssh =
  let sym_ssh = Tag_v.entity_off_tag tag_ssh in
  let soi_sec = Tag_v.sole_index_off_tag tag_ssh in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_ssh in
  Tag_v.make sym_sec soi_sec
;;

(** Section_for_any_header *)

let section_tag_of_section_for_any_header_constant_tag tag_shc =
  let sym_shc = Tag_v.entity_off_tag tag_shc in
  let soi_sec = Tag_v.sole_index_off_tag tag_shc in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_any_header_constant_symbol sym_shc in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_any_header_top_tag tag_sht =
  let sym_sht = Tag_v.entity_off_tag tag_sht in
  let soi_sec = Tag_v.sole_index_off_tag tag_sht in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_any_header_top_symbol sym_sht in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_any_header_tag tag_ssh =
  let sym_ssh = Tag_v.entity_off_tag tag_ssh in
  let soi_sec = Tag_v.sole_index_off_tag tag_ssh in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_any_header_symbol sym_ssh in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_any_tag tag_sfs =
  let sym_sfs = Tag_v.entity_off_tag tag_sfs in
  let soi_sec = Tag_v.sole_index_off_tag tag_sfs in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_any_symbol sym_sfs in
  Tag_v.make sym_sec soi_sec
;;

(** Section_for_formula *)
(** Section_for_formula_body *)


(* let section_tag_of_section_for_formula_body_constant_tag tag_sbc = *)
(*   let sym_sbc = Tag_v.entity_off_tag tag_sbc in *)
(*   let soi_sec = Tag_v.sole_index_off_tag tag_sbc in *)
(*   let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_body_constant_symbol sym_sbc in *)
(*   Tag_v.make sym_sec soi_sec *)
(* ;; *)

(* let section_tag_of_section_for_formula_body_current_son_top_tag tag_sst = *)
(*   let sym_sst = Tag_v.entity_off_tag tag_sst in *)
(*   let soi_sec = Tag_v.sole_index_off_tag tag_sst in *)
(*   let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_body_current_son_top_symbol sym_sst in *)
(*   Tag_v.make sym_sec soi_sec *)
(* ;; *)

(* let section_tag_of_section_for_formula_body_son_tag tag_sbs = *)
(*   let sym_sbs = Tag_v.entity_off_tag tag_sbs in *)
(*   let soi_sec = Tag_v.sole_index_off_tag tag_sbs in *)
(*   let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_body_son_symbol sym_sbs in *)
(*   Tag_v.make sym_sec soi_sec *)
(* ;; *)

let section_tag_of_section_for_formula_body_localset_builder_tag tag_sst =
  let sym_sst = Tag_v.entity_off_tag tag_sst in
  let soi_sec = Tag_v.sole_index_off_tag tag_sst in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_body_localset_builder_symbol sym_sst in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_formula_body_localset_data_tag tag_sst =
  let sym_sst = Tag_v.entity_off_tag tag_sst in
  let soi_sec = Tag_v.sole_index_off_tag tag_sst in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_body_localset_data_symbol sym_sst in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_formula_body_builder_data_tag tag_sst =
  let sym_sst = Tag_v.entity_off_tag tag_sst in
  let soi_sec = Tag_v.sole_index_off_tag tag_sst in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_body_builder_data_symbol sym_sst in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_formula_body_son_builder_tag tag_sst =
  let sym_sst = Tag_v.entity_off_tag tag_sst in
  let soi_sec = Tag_v.sole_index_off_tag tag_sst in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_body_son_builder_symbol sym_sst in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_formula_body_son_top_tag tag_sst =
  let sym_sst = Tag_v.entity_off_tag tag_sst in
  let soi_sec = Tag_v.sole_index_off_tag tag_sst in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_body_son_top_symbol sym_sst in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_formula_body_son_top_main_tag tag_sst =
  let sym_sst = Tag_v.entity_off_tag tag_sst in
  let soi_sec = Tag_v.sole_index_off_tag tag_sst in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_body_son_top_main_symbol sym_sst in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_formula_body_son_top_builder_tag tag_sst =
  let sym_sst = Tag_v.entity_off_tag tag_sst in
  let soi_sec = Tag_v.sole_index_off_tag tag_sst in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_body_son_top_builder_symbol sym_sst in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_formula_body_son_top_data_tag tag_sst =
  let sym_sst = Tag_v.entity_off_tag tag_sst in
  let soi_sec = Tag_v.sole_index_off_tag tag_sst in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_body_son_top_data_symbol sym_sst in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_formula_body_son_top_main_builder_tag tag_sst =
  let sym_sst = Tag_v.entity_off_tag tag_sst in
  let soi_sec = Tag_v.sole_index_off_tag tag_sst in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_body_son_top_main_builder_symbol sym_sst in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_formula_body_top_tag tag_sbt =
  let sym_sbt = Tag_v.entity_off_tag tag_sbt in
  let soi_sec = Tag_v.sole_index_off_tag tag_sbt in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_body_top_symbol sym_sbt in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_formula_body_tag tag_ssb =
  let sym_ssb = Tag_v.entity_off_tag tag_ssb in
  let soi_sec = Tag_v.sole_index_off_tag tag_ssb in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_body_symbol sym_ssb in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_formula_body_top_main_builder_tag tag_sbt =
  let sym_sbt = Tag_v.entity_off_tag tag_sbt in
  let soi_sec = Tag_v.sole_index_off_tag tag_sbt in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_body_top_main_builder_symbol sym_sbt in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_formula_body_top_main_data_tag tag_sbt =
  let sym_sbt = Tag_v.entity_off_tag tag_sbt in
  let soi_sec = Tag_v.sole_index_off_tag tag_sbt in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_body_top_main_data_symbol sym_sbt in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_formula_body_top_builder_tag tag_sbt =
  let sym_sbt = Tag_v.entity_off_tag tag_sbt in
  let soi_sec = Tag_v.sole_index_off_tag tag_sbt in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_body_top_builder_symbol sym_sbt in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_formula_body_top_builder_data_tag tag_sbt =
  let sym_sbt = Tag_v.entity_off_tag tag_sbt in
  let soi_sec = Tag_v.sole_index_off_tag tag_sbt in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_body_top_builder_data_symbol sym_sbt in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_formula_body_top_data_tag tag_sbt =
  let sym_sbt = Tag_v.entity_off_tag tag_sbt in
  let soi_sec = Tag_v.sole_index_off_tag tag_sbt in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_body_top_data_symbol sym_sbt in
  Tag_v.make sym_sec soi_sec
;;

(** Section_for_formula_footer *)


(* let section_tag_of_section_for_formula_footer_constant_tag tag_sfc = *)
(*   let sym_sfc = Tag_v.entity_off_tag tag_sfc in *)
(*   let soi_sec = Tag_v.sole_index_off_tag tag_sfc in *)
(*   let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_footer_constant_symbol sym_sfc in *)
(*   Tag_v.make sym_sec soi_sec *)
(* ;; *)

(* let section_tag_of_section_for_formula_footer_current_son_top_tag tag_sst = *)
(*   let sym_sst = Tag_v.entity_off_tag tag_sst in *)
(*   let soi_sec = Tag_v.sole_index_off_tag tag_sst in *)
(*   let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_footer_current_son_top_symbol sym_sst in *)
(*   Tag_v.make sym_sec soi_sec *)
(* ;; *)

(* let section_tag_of_section_for_formula_footer_son_tag tag_sfs = *)
(*   let sym_sfs = Tag_v.entity_off_tag tag_sfs in *)
(*   let soi_sec = Tag_v.sole_index_off_tag tag_sfs in *)
(*   let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_footer_son_symbol sym_sfs in *)
(*   Tag_v.make sym_sec soi_sec *)
(* ;; *)

(* let section_tag_of_section_for_formula_footer_son_top_tag tag_sst = *)
(*   let sym_sst = Tag_v.entity_off_tag tag_sst in *)
(*   let soi_sec = Tag_v.sole_index_off_tag tag_sst in *)
(*   let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_footer_son_top_symbol sym_sst in *)
(*   Tag_v.make sym_sec soi_sec *)
(* ;; *)

(* let section_tag_of_section_for_formula_footer_top_tag tag_sft = *)
(*   let sym_sft = Tag_v.entity_off_tag tag_sft in *)
(*   let soi_sec = Tag_v.sole_index_off_tag tag_sft in *)
(*   let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_footer_top_symbol sym_sft in *)
(*   Tag_v.make sym_sec soi_sec *)
(* ;; *)

(* let section_tag_of_section_for_formula_footer_tag tag_ssh = *)
(*   let sym_ssh = Tag_v.entity_off_tag tag_ssh in *)
(*   let soi_sec = Tag_v.sole_index_off_tag tag_ssh in *)
(*   let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_footer_symbol sym_ssh in *)
(*   Tag_v.make sym_sec soi_sec *)
(* ;; *)

(** Section_for_formula_header *)

let section_tag_of_section_for_formula_header_constant_tag tag_shc =
  let sym_shc = Tag_v.entity_off_tag tag_shc in
  let soi_sec = Tag_v.sole_index_off_tag tag_shc in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_header_constant_symbol sym_shc in
  Tag_v.make sym_sec soi_sec
;;

(* let section_tag_of_section_for_formula_header_current_son_top_tag tag_sst = *)
(*   let sym_sst = Tag_v.entity_off_tag tag_sst in *)
(*   let soi_sec = Tag_v.sole_index_off_tag tag_sst in *)
(*   let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_header_current_son_top_symbol sym_sst in *)
(*   Tag_v.make sym_sec soi_sec *)
(* ;; *)

(* let section_tag_of_section_for_formula_header_son_tag tag_shs = *)
(*   let sym_shs = Tag_v.entity_off_tag tag_shs in *)
(*   let soi_sec = Tag_v.sole_index_off_tag tag_shs in *)
(*   let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_header_son_symbol sym_shs in *)
(*   Tag_v.make sym_sec soi_sec *)
(* ;; *)

(* let section_tag_of_section_for_formula_header_son_top_tag tag_sst = *)
(*   let sym_sst = Tag_v.entity_off_tag tag_sst in *)
(*   let soi_sec = Tag_v.sole_index_off_tag tag_sst in *)
(*   let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_header_son_top_symbol sym_sst in *)
(*   Tag_v.make sym_sec soi_sec *)
(* ;; *)

(* let section_tag_of_section_for_formula_header_top_tag tag_sht = *)
(*   let sym_sht = Tag_v.entity_off_tag tag_sht in *)
(*   let soi_sec = Tag_v.sole_index_off_tag tag_sht in *)
(*   let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_header_top_symbol sym_sht in *)
(*   Tag_v.make sym_sec soi_sec *)
(* ;; *)


let section_tag_of_section_for_formula_header_top_builder_tag tag_sht =
  let sym_sht = Tag_v.entity_off_tag tag_sht in
  let soi_sec = Tag_v.sole_index_off_tag tag_sht in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_header_top_builder_symbol sym_sht in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_formula_header_top_data_tag tag_sht =
  let sym_sht = Tag_v.entity_off_tag tag_sht in
  let soi_sec = Tag_v.sole_index_off_tag tag_sht in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_header_top_data_symbol sym_sht in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_formula_header_top_main_tag tag_sht =
  let sym_sht = Tag_v.entity_off_tag tag_sht in
  let soi_sec = Tag_v.sole_index_off_tag tag_sht in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_header_top_main_symbol sym_sht in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_formula_header_tag tag_ssh =
  let sym_ssh = Tag_v.entity_off_tag tag_ssh in
  let soi_sec = Tag_v.sole_index_off_tag tag_ssh in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_header_symbol sym_ssh in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_formula_tag tag_sfs =
  let sym_sfs = Tag_v.entity_off_tag tag_sfs in
  let soi_sec = Tag_v.sole_index_off_tag tag_sfs in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_formula_symbol sym_sfs in
  Tag_v.make sym_sec soi_sec
;;

(** Section_for_symbol *)
(** Section_for_symbol_body *)

let section_tag_of_section_for_symbol_body_current_son_top_tag tag_sst =
  let sym_sst = Tag_v.entity_off_tag tag_sst in
  let soi_sec = Tag_v.sole_index_off_tag tag_sst in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_symbol_body_current_son_top_symbol sym_sst in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_symbol_body_son_bare_tag tag_ssb =
  let sym_ssb = Tag_v.entity_off_tag tag_ssb in
  let soi_sec = Tag_v.sole_index_off_tag tag_ssb in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_symbol_body_son_bare_symbol sym_ssb in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_symbol_body_son_ofstring_tag tag_sso =
  let sym_sso = Tag_v.entity_off_tag tag_sso in
  let soi_sec = Tag_v.sole_index_off_tag tag_sso in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_symbol_body_son_ofstring_symbol sym_sso in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_symbol_body_son_tag tag_sbs =
  let sym_sbs = Tag_v.entity_off_tag tag_sbs in
  let soi_sec = Tag_v.sole_index_off_tag tag_sbs in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_symbol_body_son_symbol sym_sbs in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_symbol_body_son_top_tag tag_sst =
  let sym_sst = Tag_v.entity_off_tag tag_sst in
  let soi_sec = Tag_v.sole_index_off_tag tag_sst in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_symbol_body_son_top_symbol sym_sst in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_symbol_body_top_tag tag_sbt =
  let sym_sbt = Tag_v.entity_off_tag tag_sbt in
  let soi_sec = Tag_v.sole_index_off_tag tag_sbt in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_symbol_body_top_symbol sym_sbt in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_symbol_body_tag tag_ssb =
  let sym_ssb = Tag_v.entity_off_tag tag_ssb in
  let soi_sec = Tag_v.sole_index_off_tag tag_ssb in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_symbol_body_symbol sym_ssb in
  Tag_v.make sym_sec soi_sec
;;

(** Section_for_symbol_footer *)
(*
let section_tag_of_section_for_symbol_footer_constant_tag tag_sfc =
  let sym_sfc = Tag_v.entity_off_tag tag_sfc in
  let soi_sec = Tag_v.sole_index_off_tag tag_sfc in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_symbol_footer_constant_symbol sym_sfc in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_symbol_footer_current_son_top_tag tag_sst =
  let sym_sst = Tag_v.entity_off_tag tag_sst in
  let soi_sec = Tag_v.sole_index_off_tag tag_sst in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_symbol_footer_current_son_top_symbol sym_sst in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_symbol_footer_son_tag tag_sfs =
  let sym_sfs = Tag_v.entity_off_tag tag_sfs in
  let soi_sec = Tag_v.sole_index_off_tag tag_sfs in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_symbol_footer_son_symbol sym_sfs in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_symbol_footer_son_top_tag tag_sst =
  let sym_sst = Tag_v.entity_off_tag tag_sst in
  let soi_sec = Tag_v.sole_index_off_tag tag_sst in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_symbol_footer_son_top_symbol sym_sst in
  Tag_v.make sym_sec soi_sec
;;
*)

let section_tag_of_section_for_symbol_footer_top_tag tag_sft =
  let sym_sft = Tag_v.entity_off_tag tag_sft in
  let soi_sec = Tag_v.sole_index_off_tag tag_sft in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_symbol_footer_top_symbol sym_sft in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_symbol_footer_tag tag_ssh =
  let sym_ssh = Tag_v.entity_off_tag tag_ssh in
  let soi_sec = Tag_v.sole_index_off_tag tag_ssh in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_symbol_footer_symbol sym_ssh in
  Tag_v.make sym_sec soi_sec
;;

(** Section_for_symbol_header *)

let section_tag_of_section_for_symbol_header_constant_tag tag_shc =
  let sym_shc = Tag_v.entity_off_tag tag_shc in
  let soi_sec = Tag_v.sole_index_off_tag tag_shc in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_symbol_header_constant_symbol sym_shc in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_symbol_header_current_son_top_tag tag_sst =
  let sym_sst = Tag_v.entity_off_tag tag_sst in
  let soi_sec = Tag_v.sole_index_off_tag tag_sst in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_symbol_header_current_son_top_symbol sym_sst in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_symbol_header_current_top_tag tag_sst =
  let sym_sst = Tag_v.entity_off_tag tag_sst in
  let soi_sec = Tag_v.sole_index_off_tag tag_sst in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_symbol_header_current_top_symbol sym_sst in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_symbol_header_son_tag tag_shs =
  let sym_shs = Tag_v.entity_off_tag tag_shs in
  let soi_sec = Tag_v.sole_index_off_tag tag_shs in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_symbol_header_son_symbol sym_shs in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_symbol_header_son_top_tag tag_sst =
  let sym_sst = Tag_v.entity_off_tag tag_sst in
  let soi_sec = Tag_v.sole_index_off_tag tag_sst in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_symbol_header_son_top_symbol sym_sst in
  Tag_v.make sym_sec soi_sec
;;

(**
let section_tag_of_section_for_symbol_header_top_tag tag_sht =
  let sym_sht = Tag_v.entity_off_tag tag_sht in
  let soi_sec = Tag_v.sole_index_off_tag tag_sht in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_symbol_header_top_symbol sym_sht in
  Tag_v.make sym_sec soi_sec
;;
**)
let section_tag_of_section_for_symbol_header_tag tag_ssh =
  let sym_ssh = Tag_v.entity_off_tag tag_ssh in
  let soi_sec = Tag_v.sole_index_off_tag tag_ssh in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_symbol_header_symbol sym_ssh in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_symbol_tag tag_sfs =
  let sym_sfs = Tag_v.entity_off_tag tag_sfs in
  let soi_sec = Tag_v.sole_index_off_tag tag_sfs in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_symbol_symbol sym_sfs in
  Tag_v.make sym_sec soi_sec
;;

(** Section_for_tag 
(** Section_for_tag_body *)

let section_tag_of_section_for_tag_body_constant_tag tag_sbc =
  let sym_sbc = Tag_v.entity_off_tag tag_sbc in
  let soi_sec = Tag_v.sole_index_off_tag tag_sbc in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_tag_body_constant_symbol sym_sbc in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_tag_body_current_son_top_tag tag_sst =
  let sym_sst = Tag_v.entity_off_tag tag_sst in
  let soi_sec = Tag_v.sole_index_off_tag tag_sst in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_tag_body_current_son_top_symbol sym_sst in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_tag_body_son_tag tag_sbs =
  let sym_sbs = Tag_v.entity_off_tag tag_sbs in
  let soi_sec = Tag_v.sole_index_off_tag tag_sbs in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_tag_body_son_symbol sym_sbs in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_tag_body_son_top_tag tag_sst =
  let sym_sst = Tag_v.entity_off_tag tag_sst in
  let soi_sec = Tag_v.sole_index_off_tag tag_sst in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_tag_body_son_top_symbol sym_sst in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_tag_body_top_tag tag_sbt =
  let sym_sbt = Tag_v.entity_off_tag tag_sbt in
  let soi_sec = Tag_v.sole_index_off_tag tag_sbt in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_tag_body_top_symbol sym_sbt in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_tag_body_tag tag_ssb =
  let sym_ssb = Tag_v.entity_off_tag tag_ssb in
  let soi_sec = Tag_v.sole_index_off_tag tag_ssb in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_tag_body_symbol sym_ssb in
  Tag_v.make sym_sec soi_sec
;;

(** Section_for_tag_footer *)

let section_tag_of_section_for_tag_footer_constant_tag tag_sfc =
  let sym_sfc = Tag_v.entity_off_tag tag_sfc in
  let soi_sec = Tag_v.sole_index_off_tag tag_sfc in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_tag_footer_constant_symbol sym_sfc in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_tag_footer_current_son_top_tag tag_sst =
  let sym_sst = Tag_v.entity_off_tag tag_sst in
  let soi_sec = Tag_v.sole_index_off_tag tag_sst in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_tag_footer_current_son_top_symbol sym_sst in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_tag_footer_son_tag tag_sfs =
  let sym_sfs = Tag_v.entity_off_tag tag_sfs in
  let soi_sec = Tag_v.sole_index_off_tag tag_sfs in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_tag_footer_son_symbol sym_sfs in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_tag_footer_son_top_tag tag_sst =
  let sym_sst = Tag_v.entity_off_tag tag_sst in
  let soi_sec = Tag_v.sole_index_off_tag tag_sst in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_tag_footer_son_top_symbol sym_sst in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_tag_footer_top_tag tag_sft =
  let sym_sft = Tag_v.entity_off_tag tag_sft in
  let soi_sec = Tag_v.sole_index_off_tag tag_sft in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_tag_footer_top_symbol sym_sft in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_tag_footer_tag tag_ssh =
  let sym_ssh = Tag_v.entity_off_tag tag_ssh in
  let soi_sec = Tag_v.sole_index_off_tag tag_ssh in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_tag_footer_symbol sym_ssh in
  Tag_v.make sym_sec soi_sec
;;

(** Section_for_tag_header *)

let section_tag_of_section_for_tag_header_constant_tag tag_shc =
  let sym_shc = Tag_v.entity_off_tag tag_shc in
  let soi_sec = Tag_v.sole_index_off_tag tag_shc in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_tag_header_constant_symbol sym_shc in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_tag_header_current_son_top_tag tag_sst =
  let sym_sst = Tag_v.entity_off_tag tag_sst in
  let soi_sec = Tag_v.sole_index_off_tag tag_sst in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_tag_header_current_son_top_symbol sym_sst in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_tag_header_son_tag tag_shs =
  let sym_shs = Tag_v.entity_off_tag tag_shs in
  let soi_sec = Tag_v.sole_index_off_tag tag_shs in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_tag_header_son_symbol sym_shs in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_tag_header_son_top_tag tag_sst =
  let sym_sst = Tag_v.entity_off_tag tag_sst in
  let soi_sec = Tag_v.sole_index_off_tag tag_sst in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_tag_header_son_top_symbol sym_sst in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_tag_header_top_tag tag_sht =
  let sym_sht = Tag_v.entity_off_tag tag_sht in
  let soi_sec = Tag_v.sole_index_off_tag tag_sht in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_tag_header_top_symbol sym_sht in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_tag_header_tag tag_ssh =
  let sym_ssh = Tag_v.entity_off_tag tag_ssh in
  let soi_sec = Tag_v.sole_index_off_tag tag_ssh in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_tag_header_symbol sym_ssh in
  Tag_v.make sym_sec soi_sec
;;

let section_tag_of_section_for_tag_tag tag_sfs =
  let sym_sfs = Tag_v.entity_off_tag tag_sfs in
  let soi_sec = Tag_v.sole_index_off_tag tag_sfs in
  let sym_sec = Section_symbol_v.section_symbol_of_section_for_tag_symbol sym_sfs in
  Tag_v.make sym_sec soi_sec
;;

*)
