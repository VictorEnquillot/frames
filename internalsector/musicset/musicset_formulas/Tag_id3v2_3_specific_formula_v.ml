(** {3 Tag_id3v2_3_specific_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Tag_id3v2_3_specific_formula_t.Equa _ ->
      Tag_id3v2_3_specific_symbol_t.Equa
  | Tag_id3v2_3_specific_formula_t.Ipls _ ->
      Tag_id3v2_3_specific_symbol_t.Ipls
  | Tag_id3v2_3_specific_formula_t.Rvad _ ->
      Tag_id3v2_3_specific_symbol_t.Rvad
  | Tag_id3v2_3_specific_formula_t.Tdat _ ->
      Tag_id3v2_3_specific_symbol_t.Tdat
  | Tag_id3v2_3_specific_formula_t.Time _ ->
      Tag_id3v2_3_specific_symbol_t.Time
  | Tag_id3v2_3_specific_formula_t.Tory _ ->
      Tag_id3v2_3_specific_symbol_t.Tory
  | Tag_id3v2_3_specific_formula_t.Trda _ ->
      Tag_id3v2_3_specific_symbol_t.Trda
  | Tag_id3v2_3_specific_formula_t.Tyer _ ->
      Tag_id3v2_3_specific_symbol_t.Tyer
  | Tag_id3v2_3_specific_formula_t.Tsiz _ ->
      Tag_id3v2_3_specific_symbol_t.Tsiz
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_t3s soi_tid =
  let sym_tid = Tag_id3_symbol_v.tag_id3_symbol_of_tag_id3v2_3_specific_symbol sym_t3s in
  let tag_tid = Tag_v.make sym_tid soi_tid in
  let sym_str_l = String_symbol_list_by_tag_id3_tag_provider_v.provide tag_tid in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_tid in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_t3s soi_tid =
  match sym_t3s with
  | Tag_id3v2_3_specific_symbol_t.Equa ->
      let tag_str_l = build_n_store sym_t3s soi_tid in
        Tag_id3v2_3_specific_formula_t.Equa tag_str_l
  | Tag_id3v2_3_specific_symbol_t.Ipls ->
      let tag_str_l = build_n_store sym_t3s soi_tid in
        Tag_id3v2_3_specific_formula_t.Ipls tag_str_l
  | Tag_id3v2_3_specific_symbol_t.Rvad ->
      let tag_str_l = build_n_store sym_t3s soi_tid in
        Tag_id3v2_3_specific_formula_t.Rvad tag_str_l
  | Tag_id3v2_3_specific_symbol_t.Tdat ->
      let tag_str_l = build_n_store sym_t3s soi_tid in
        Tag_id3v2_3_specific_formula_t.Tdat tag_str_l
  | Tag_id3v2_3_specific_symbol_t.Time ->
      let tag_str_l = build_n_store sym_t3s soi_tid in
        Tag_id3v2_3_specific_formula_t.Time tag_str_l
  | Tag_id3v2_3_specific_symbol_t.Tory ->
      let tag_str_l = build_n_store sym_t3s soi_tid in
        Tag_id3v2_3_specific_formula_t.Tory tag_str_l
  | Tag_id3v2_3_specific_symbol_t.Trda ->
      let tag_str_l = build_n_store sym_t3s soi_tid in
        Tag_id3v2_3_specific_formula_t.Trda tag_str_l
  | Tag_id3v2_3_specific_symbol_t.Tyer ->
      let tag_str_l = build_n_store sym_t3s soi_tid in
        Tag_id3v2_3_specific_formula_t.Tyer tag_str_l
  | Tag_id3v2_3_specific_symbol_t.Tsiz ->
      let tag_str_l = build_n_store sym_t3s soi_tid in
        Tag_id3v2_3_specific_formula_t.Tsiz tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_t3s =
  let soi_tid = Tag_v.sole_index_off_tag tag_t3s in
  let sym_t3s = Tag_v.symbol_off_tag tag_t3s in
  make sym_t3s soi_tid
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_tag_id3v2_3_specific_formula = function
  | Tag_id3v2_3_specific_formula_t.Equa tag_str_l -> tag_str_l
  | Tag_id3v2_3_specific_formula_t.Ipls tag_str_l -> tag_str_l
  | Tag_id3v2_3_specific_formula_t.Rvad tag_str_l -> tag_str_l
  | Tag_id3v2_3_specific_formula_t.Tdat tag_str_l -> tag_str_l
  | Tag_id3v2_3_specific_formula_t.Time tag_str_l -> tag_str_l
  | Tag_id3v2_3_specific_formula_t.Tory tag_str_l -> tag_str_l
  | Tag_id3v2_3_specific_formula_t.Trda tag_str_l -> tag_str_l
  | Tag_id3v2_3_specific_formula_t.Tyer tag_str_l -> tag_str_l
  | Tag_id3v2_3_specific_formula_t.Tsiz tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_tag_id3v2_3_specific_tag tag_t3s =
  let for_t3s = retrieve tag_t3s in
  string_tag_list_off_tag_id3v2_3_specific_formula for_t3s
;;


(** Tag_id3v2_3_specific_formula_v at 18:19:40 on 27 Jun 2013. created by version v2.3 of generator *)



