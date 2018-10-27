(** {3 Tag_id3v2_specific_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Tag_id3v2_specific_formula_t.Tag_id3v2_3_specific_formula for_t3s ->
  Tag_id3v2_specific_symbol_t.Tag_id3v2_3_specific_symbol
      (Tag_id3v2_3_specific_formula_v.symbol_of_formula for_t3s)
  | Tag_id3v2_specific_formula_t.Tag_id3v2_4_specific_formula for_t4s ->
  Tag_id3v2_specific_symbol_t.Tag_id3v2_4_specific_symbol
      (Tag_id3v2_4_specific_formula_v.symbol_of_formula for_t4s)
;;


(** {6 Making_for_formula} *)

let make sym_tis soi_tid =
  match sym_tis with
  | Tag_id3v2_specific_symbol_t.Tag_id3v2_3_specific_symbol sym_t3s ->
    Tag_id3v2_specific_formula_t.Tag_id3v2_3_specific_formula
      (Tag_id3v2_3_specific_formula_v.make sym_t3s soi_tid)
  | Tag_id3v2_specific_symbol_t.Tag_id3v2_4_specific_symbol sym_t4s ->
    Tag_id3v2_specific_formula_t.Tag_id3v2_4_specific_formula
      (Tag_id3v2_4_specific_formula_v.make sym_t4s soi_tid)
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_tis =
  let soi_tid = Tag_v.sole_index_off_tag tag_tis in
  let sym_tis = Tag_v.symbol_off_tag tag_tis in
  make sym_tis soi_tid
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_tag_id3v2_specific_formula = function
  | Tag_id3v2_specific_formula_t.Tag_id3v2_3_specific_formula for_t3s ->
      Tag_id3v2_3_specific_formula_v.string_tag_list_off_tag_id3v2_3_specific_formula for_t3s
  | Tag_id3v2_specific_formula_t.Tag_id3v2_4_specific_formula for_t4s ->
      Tag_id3v2_4_specific_formula_v.string_tag_list_off_tag_id3v2_4_specific_formula for_t4s
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_tag_id3v2_specific_tag tag_tis =
  let for_tis = retrieve tag_tis in
  string_tag_list_off_tag_id3v2_specific_formula for_tis
;;


(** Tag_id3v2_specific_formula_v at 18:19:41 on 27 Jun 2013. created by version v2.3 of generator *)



