(** {3 Tag_id3_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Tag_id3_formula_t.Tag_id3v1_formula for_tid ->
  Tag_id3_symbol_t.Tag_id3v1_symbol
      (Tag_id3v1_formula_v.symbol_of_formula for_tid)
  | Tag_id3_formula_t.Tag_id3v2_formula for_tid ->
  Tag_id3_symbol_t.Tag_id3v2_symbol
      (Tag_id3v2_formula_v.symbol_of_formula for_tid)
;;


(** {6 Making_for_formula} *)

let make sym_tid soi_tid =
  match sym_tid with
  | Tag_id3_symbol_t.Tag_id3v1_symbol sym_tid ->
    Tag_id3_formula_t.Tag_id3v1_formula
      (Tag_id3v1_formula_v.make sym_tid soi_tid)
  | Tag_id3_symbol_t.Tag_id3v2_symbol sym_tid ->
    Tag_id3_formula_t.Tag_id3v2_formula
      (Tag_id3v2_formula_v.make sym_tid soi_tid)
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_tid =
  let soi_tid = Tag_v.sole_index_off_tag tag_tid in
  let sym_tid = Tag_v.symbol_off_tag tag_tid in
  make sym_tid soi_tid
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_tag_id3_formula = function
  | Tag_id3_formula_t.Tag_id3v1_formula for_tid ->
      Tag_id3v1_formula_v.string_tag_list_off_tag_id3v1_formula for_tid
  | Tag_id3_formula_t.Tag_id3v2_formula for_tid ->
      Tag_id3v2_formula_v.string_tag_list_off_tag_id3v2_formula for_tid
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_tag_id3_tag tag_tid =
  let for_tid = retrieve tag_tid in
  string_tag_list_off_tag_id3_formula for_tid
;;


(** Tag_id3_formula_v at 18:19:40 on 27 Jun 2013. created by version v2.3 of generator *)



