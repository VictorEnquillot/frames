(** {3 Tag_id3v2_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Tag_id3v2_formula_t.Tag_id3v2_base_formula for_tib ->
  Tag_id3v2_symbol_t.Tag_id3v2_base_symbol
      (Tag_id3v2_base_formula_v.symbol_of_formula for_tib)
  | Tag_id3v2_formula_t.Tag_id3v2_specific_formula for_tis ->
  Tag_id3v2_symbol_t.Tag_id3v2_specific_symbol
      (Tag_id3v2_specific_formula_v.symbol_of_formula for_tis)
;;


(** {6 Making_for_formula} *)

let make sym_tid soi_tid =
  match sym_tid with
  | Tag_id3v2_symbol_t.Tag_id3v2_base_symbol sym_tib ->
    Tag_id3v2_formula_t.Tag_id3v2_base_formula
      (Tag_id3v2_base_formula_v.make sym_tib soi_tid)
  | Tag_id3v2_symbol_t.Tag_id3v2_specific_symbol sym_tis ->
    Tag_id3v2_formula_t.Tag_id3v2_specific_formula
      (Tag_id3v2_specific_formula_v.make sym_tis soi_tid)
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_tid =
  let soi_tid = Tag_v.sole_index_off_tag tag_tid in
  let sym_tid = Tag_v.symbol_off_tag tag_tid in
  make sym_tid soi_tid
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_tag_id3v2_formula = function
  | Tag_id3v2_formula_t.Tag_id3v2_base_formula for_tib ->
      Tag_id3v2_base_formula_v.string_tag_list_off_tag_id3v2_base_formula for_tib
  | Tag_id3v2_formula_t.Tag_id3v2_specific_formula for_tis ->
      Tag_id3v2_specific_formula_v.string_tag_list_off_tag_id3v2_specific_formula for_tis
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_tag_id3v2_tag tag_tid =
  let for_tid = retrieve tag_tid in
  string_tag_list_off_tag_id3v2_formula for_tid
;;


(** Tag_id3v2_formula_v at 18:19:40 on 27 Jun 2013. created by version v2.3 of generator *)



