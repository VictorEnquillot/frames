(** {3 Tag_id3v1_128_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Tag_id3v1_128_formula_t.Header_3 _ ->
      Tag_id3v1_128_symbol_t.Header_3
  | Tag_id3v1_128_formula_t.Title_30 _ ->
      Tag_id3v1_128_symbol_t.Title_30
  | Tag_id3v1_128_formula_t.Artist_30 _ ->
      Tag_id3v1_128_symbol_t.Artist_30
  | Tag_id3v1_128_formula_t.Album_30 _ ->
      Tag_id3v1_128_symbol_t.Album_30
  | Tag_id3v1_128_formula_t.Year_4 _ ->
      Tag_id3v1_128_symbol_t.Year_4
  | Tag_id3v1_128_formula_t.Comment_28 _ ->
      Tag_id3v1_128_symbol_t.Comment_28
  | Tag_id3v1_128_formula_t.Comment_30 _ ->
      Tag_id3v1_128_symbol_t.Comment_30
  | Tag_id3v1_128_formula_t.Zero_byte_1 _ ->
      Tag_id3v1_128_symbol_t.Zero_byte_1
  | Tag_id3v1_128_formula_t.Track_1 _ ->
      Tag_id3v1_128_symbol_t.Track_1
  | Tag_id3v1_128_formula_t.Genre_1 _ ->
      Tag_id3v1_128_symbol_t.Genre_1
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_ti1 soi_tid =
  let sym_tid = Tag_id3_symbol_v.tag_id3_symbol_of_tag_id3v1_128_symbol sym_ti1 in
  let tag_tid = Tag_v.make sym_tid soi_tid in
  let sym_str_l = String_symbol_list_by_tag_id3_tag_provider_v.provide tag_tid in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_tid in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_ti1 soi_tid =
  match sym_ti1 with
  | Tag_id3v1_128_symbol_t.Header_3 ->
      let tag_str_l = build_n_store sym_ti1 soi_tid in
        Tag_id3v1_128_formula_t.Header_3 tag_str_l
  | Tag_id3v1_128_symbol_t.Title_30 ->
      let tag_str_l = build_n_store sym_ti1 soi_tid in
        Tag_id3v1_128_formula_t.Title_30 tag_str_l
  | Tag_id3v1_128_symbol_t.Artist_30 ->
      let tag_str_l = build_n_store sym_ti1 soi_tid in
        Tag_id3v1_128_formula_t.Artist_30 tag_str_l
  | Tag_id3v1_128_symbol_t.Album_30 ->
      let tag_str_l = build_n_store sym_ti1 soi_tid in
        Tag_id3v1_128_formula_t.Album_30 tag_str_l
  | Tag_id3v1_128_symbol_t.Year_4 ->
      let tag_str_l = build_n_store sym_ti1 soi_tid in
        Tag_id3v1_128_formula_t.Year_4 tag_str_l
  | Tag_id3v1_128_symbol_t.Comment_28 ->
      let tag_str_l = build_n_store sym_ti1 soi_tid in
        Tag_id3v1_128_formula_t.Comment_28 tag_str_l
  | Tag_id3v1_128_symbol_t.Comment_30 ->
      let tag_str_l = build_n_store sym_ti1 soi_tid in
        Tag_id3v1_128_formula_t.Comment_30 tag_str_l
  | Tag_id3v1_128_symbol_t.Zero_byte_1 ->
      let tag_str_l = build_n_store sym_ti1 soi_tid in
        Tag_id3v1_128_formula_t.Zero_byte_1 tag_str_l
  | Tag_id3v1_128_symbol_t.Track_1 ->
      let tag_str_l = build_n_store sym_ti1 soi_tid in
        Tag_id3v1_128_formula_t.Track_1 tag_str_l
  | Tag_id3v1_128_symbol_t.Genre_1 ->
      let tag_str_l = build_n_store sym_ti1 soi_tid in
        Tag_id3v1_128_formula_t.Genre_1 tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_ti1 =
  let soi_tid = Tag_v.sole_index_off_tag tag_ti1 in
  let sym_ti1 = Tag_v.symbol_off_tag tag_ti1 in
  make sym_ti1 soi_tid
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_tag_id3v1_128_formula = function
  | Tag_id3v1_128_formula_t.Header_3 tag_str_l -> tag_str_l
  | Tag_id3v1_128_formula_t.Title_30 tag_str_l -> tag_str_l
  | Tag_id3v1_128_formula_t.Artist_30 tag_str_l -> tag_str_l
  | Tag_id3v1_128_formula_t.Album_30 tag_str_l -> tag_str_l
  | Tag_id3v1_128_formula_t.Year_4 tag_str_l -> tag_str_l
  | Tag_id3v1_128_formula_t.Comment_28 tag_str_l -> tag_str_l
  | Tag_id3v1_128_formula_t.Comment_30 tag_str_l -> tag_str_l
  | Tag_id3v1_128_formula_t.Zero_byte_1 tag_str_l -> tag_str_l
  | Tag_id3v1_128_formula_t.Track_1 tag_str_l -> tag_str_l
  | Tag_id3v1_128_formula_t.Genre_1 tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_tag_id3v1_128_tag tag_ti1 =
  let for_ti1 = retrieve tag_ti1 in
  string_tag_list_off_tag_id3v1_128_formula for_ti1
;;


(** Tag_id3v1_128_formula_v at 18:19:40 on 27 Jun 2013. created by version v2.3 of generator *)



