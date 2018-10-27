(** {3 Tag_id3v1_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Tag_id3v1_formula_t.Tag_id3v1_128_formula for_ti1 ->
  Tag_id3v1_symbol_t.Tag_id3v1_128_symbol
      (Tag_id3v1_128_formula_v.symbol_of_formula for_ti1)
  | Tag_id3v1_formula_t.Tag_id3v1_227_formula for_ti2 ->
  Tag_id3v1_symbol_t.Tag_id3v1_227_symbol
      (Tag_id3v1_227_formula_v.symbol_of_formula for_ti2)
  | Tag_id3v1_formula_t.Tag_id3v1_0 _ ->
      Tag_id3v1_symbol_t.Tag_id3v1_0
  | Tag_id3v1_formula_t.Tag_id3v1_1 _ ->
      Tag_id3v1_symbol_t.Tag_id3v1_1
  | Tag_id3v1_formula_t.Tag_id3v1_extended _ ->
      Tag_id3v1_symbol_t.Tag_id3v1_extended
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_tid soi_tid =
  let sym_tid = Tag_id3_symbol_v.tag_id3_symbol_of_tag_id3v1_symbol sym_tid in
  let tag_tid = Tag_v.make sym_tid soi_tid in
  let sym_str_l = String_symbol_list_by_tag_id3_tag_provider_v.provide tag_tid in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_tid in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_tid soi_tid =
  match sym_tid with
  | Tag_id3v1_symbol_t.Tag_id3v1_128_symbol sym_ti1 ->
    Tag_id3v1_formula_t.Tag_id3v1_128_formula
      (Tag_id3v1_128_formula_v.make sym_ti1 soi_tid)
  | Tag_id3v1_symbol_t.Tag_id3v1_227_symbol sym_ti2 ->
    Tag_id3v1_formula_t.Tag_id3v1_227_formula
      (Tag_id3v1_227_formula_v.make sym_ti2 soi_tid)
  | Tag_id3v1_symbol_t.Tag_id3v1_0 ->
      let tag_str_l = build_n_store sym_tid soi_tid in
        Tag_id3v1_formula_t.Tag_id3v1_0 tag_str_l
  | Tag_id3v1_symbol_t.Tag_id3v1_1 ->
      let tag_str_l = build_n_store sym_tid soi_tid in
        Tag_id3v1_formula_t.Tag_id3v1_1 tag_str_l
  | Tag_id3v1_symbol_t.Tag_id3v1_extended ->
      let tag_str_l = build_n_store sym_tid soi_tid in
        Tag_id3v1_formula_t.Tag_id3v1_extended tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_tid =
  let soi_tid = Tag_v.sole_index_off_tag tag_tid in
  let sym_tid = Tag_v.symbol_off_tag tag_tid in
  make sym_tid soi_tid
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_tag_id3v1_formula = function
  | Tag_id3v1_formula_t.Tag_id3v1_128_formula for_ti1 ->
      Tag_id3v1_128_formula_v.string_tag_list_off_tag_id3v1_128_formula for_ti1
  | Tag_id3v1_formula_t.Tag_id3v1_227_formula for_ti2 ->
      Tag_id3v1_227_formula_v.string_tag_list_off_tag_id3v1_227_formula for_ti2
  | Tag_id3v1_formula_t.Tag_id3v1_0 tag_str_l -> tag_str_l
  | Tag_id3v1_formula_t.Tag_id3v1_1 tag_str_l -> tag_str_l
  | Tag_id3v1_formula_t.Tag_id3v1_extended tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_tag_id3v1_tag tag_tid =
  let for_tid = retrieve tag_tid in
  string_tag_list_off_tag_id3v1_formula for_tid
;;


(** Tag_id3v1_formula_v at 18:19:40 on 27 Jun 2013. created by version v2.3 of generator *)



