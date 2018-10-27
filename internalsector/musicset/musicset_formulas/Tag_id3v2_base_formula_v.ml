(** {3 Tag_id3v2_base_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Tag_id3v2_base_formula_t.Tag_id3v2_base_unique_formula for_tbu ->
  Tag_id3v2_base_symbol_t.Tag_id3v2_base_unique_symbol
      (Tag_id3v2_base_unique_formula_v.symbol_of_formula for_tbu)
  | Tag_id3v2_base_formula_t.Tag_id3v2_base_multiple_formula for_tbm ->
  Tag_id3v2_base_symbol_t.Tag_id3v2_base_multiple_symbol
      (Tag_id3v2_base_multiple_formula_v.symbol_of_formula for_tbm)
;;


(** {6 Making_for_formula} *)

let make sym_tib soi_tid =
  match sym_tib with
  | Tag_id3v2_base_symbol_t.Tag_id3v2_base_unique_symbol sym_tbu ->
    Tag_id3v2_base_formula_t.Tag_id3v2_base_unique_formula
      (Tag_id3v2_base_unique_formula_v.make sym_tbu soi_tid)
  | Tag_id3v2_base_symbol_t.Tag_id3v2_base_multiple_symbol sym_tbm ->
    Tag_id3v2_base_formula_t.Tag_id3v2_base_multiple_formula
      (Tag_id3v2_base_multiple_formula_v.make sym_tbm soi_tid)
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_tib =
  let soi_tid = Tag_v.sole_index_off_tag tag_tib in
  let sym_tib = Tag_v.symbol_off_tag tag_tib in
  make sym_tib soi_tid
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_tag_id3v2_base_formula = function
  | Tag_id3v2_base_formula_t.Tag_id3v2_base_unique_formula for_tbu ->
      Tag_id3v2_base_unique_formula_v.string_tag_list_off_tag_id3v2_base_unique_formula for_tbu
  | Tag_id3v2_base_formula_t.Tag_id3v2_base_multiple_formula for_tbm ->
      Tag_id3v2_base_multiple_formula_v.string_tag_list_off_tag_id3v2_base_multiple_formula for_tbm
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_tag_id3v2_base_tag tag_tib =
  let for_tib = retrieve tag_tib in
  string_tag_list_off_tag_id3v2_base_formula for_tib
;;


(** Tag_id3v2_base_formula_v at 18:19:40 on 27 Jun 2013. created by version v2.3 of generator *)



