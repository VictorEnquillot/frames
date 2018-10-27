(** {3 Tag_id3v2_base_multiple_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Tag_id3v2_base_multiple_formula_t.Tpe1 _ ->
      Tag_id3v2_base_multiple_symbol_t.Tpe1
  | Tag_id3v2_base_multiple_formula_t.Tcom _ ->
      Tag_id3v2_base_multiple_symbol_t.Tcom
  | Tag_id3v2_base_multiple_formula_t.Text _ ->
      Tag_id3v2_base_multiple_symbol_t.Text
  | Tag_id3v2_base_multiple_formula_t.Toly _ ->
      Tag_id3v2_base_multiple_symbol_t.Toly
  | Tag_id3v2_base_multiple_formula_t.Tope _ ->
      Tag_id3v2_base_multiple_symbol_t.Tope
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_tbm soi_tid =
  let sym_tid = Tag_id3_symbol_v.tag_id3_symbol_of_tag_id3v2_base_multiple_symbol sym_tbm in
  let tag_tid = Tag_v.make sym_tid soi_tid in
  let sym_str_l = String_symbol_list_by_tag_id3_tag_provider_v.provide tag_tid in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_tid in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_tbm soi_tid =
  match sym_tbm with
  | Tag_id3v2_base_multiple_symbol_t.Tpe1 ->
      let tag_str_l = build_n_store sym_tbm soi_tid in
        Tag_id3v2_base_multiple_formula_t.Tpe1 tag_str_l
  | Tag_id3v2_base_multiple_symbol_t.Tcom ->
      let tag_str_l = build_n_store sym_tbm soi_tid in
        Tag_id3v2_base_multiple_formula_t.Tcom tag_str_l
  | Tag_id3v2_base_multiple_symbol_t.Text ->
      let tag_str_l = build_n_store sym_tbm soi_tid in
        Tag_id3v2_base_multiple_formula_t.Text tag_str_l
  | Tag_id3v2_base_multiple_symbol_t.Toly ->
      let tag_str_l = build_n_store sym_tbm soi_tid in
        Tag_id3v2_base_multiple_formula_t.Toly tag_str_l
  | Tag_id3v2_base_multiple_symbol_t.Tope ->
      let tag_str_l = build_n_store sym_tbm soi_tid in
        Tag_id3v2_base_multiple_formula_t.Tope tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_tbm =
  let soi_tid = Tag_v.sole_index_off_tag tag_tbm in
  let sym_tbm = Tag_v.symbol_off_tag tag_tbm in
  make sym_tbm soi_tid
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_tag_id3v2_base_multiple_formula = function
  | Tag_id3v2_base_multiple_formula_t.Tpe1 tag_str_l -> tag_str_l
  | Tag_id3v2_base_multiple_formula_t.Tcom tag_str_l -> tag_str_l
  | Tag_id3v2_base_multiple_formula_t.Text tag_str_l -> tag_str_l
  | Tag_id3v2_base_multiple_formula_t.Toly tag_str_l -> tag_str_l
  | Tag_id3v2_base_multiple_formula_t.Tope tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_tag_id3v2_base_multiple_tag tag_tbm =
  let for_tbm = retrieve tag_tbm in
  string_tag_list_off_tag_id3v2_base_multiple_formula for_tbm
;;


(** Tag_id3v2_base_multiple_formula_v at 18:19:41 on 27 Jun 2013. created by version v2.3 of generator *)



