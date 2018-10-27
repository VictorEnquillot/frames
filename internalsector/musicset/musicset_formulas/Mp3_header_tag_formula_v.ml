(** {3 Mp3_header_tag_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Mp3_header_tag_formula_t.Mp3_header_tag_onebit _ ->
      Mp3_header_tag_symbol_t.Mp3_header_tag_onebit
  | Mp3_header_tag_formula_t.Mp3_header_tag_twobits _ ->
      Mp3_header_tag_symbol_t.Mp3_header_tag_twobits
  | Mp3_header_tag_formula_t.Id3v2 _ ->
      Mp3_header_tag_symbol_t.Id3v2
  | Mp3_header_tag_formula_t.Mp3_header_tag_fourbits _ ->
      Mp3_header_tag_symbol_t.Mp3_header_tag_fourbits
  | Mp3_header_tag_formula_t.Mp3_header_tag_twelvebits _ ->
      Mp3_header_tag_symbol_t.Mp3_header_tag_twelvebits
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_mht soi_mhe =
  let sym_mhe = Mp3_header_symbol_v.mp3_header_symbol_of_mp3_header_tag_symbol sym_mht in
  let tag_mhe = Tag_v.make sym_mhe soi_mhe in
  let sym_str_l = String_symbol_list_by_mp3_header_tag_provider_v.provide tag_mhe in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_mhe in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_mht soi_mhe =
  match sym_mht with
  | Mp3_header_tag_symbol_t.Mp3_header_tag_onebit ->
      let tag_str_l = build_n_store sym_mht soi_mhe in
        Mp3_header_tag_formula_t.Mp3_header_tag_onebit tag_str_l
  | Mp3_header_tag_symbol_t.Mp3_header_tag_twobits ->
      let tag_str_l = build_n_store sym_mht soi_mhe in
        Mp3_header_tag_formula_t.Mp3_header_tag_twobits tag_str_l
  | Mp3_header_tag_symbol_t.Id3v2 ->
      let tag_str_l = build_n_store sym_mht soi_mhe in
        Mp3_header_tag_formula_t.Id3v2 tag_str_l
  | Mp3_header_tag_symbol_t.Mp3_header_tag_fourbits ->
      let tag_str_l = build_n_store sym_mht soi_mhe in
        Mp3_header_tag_formula_t.Mp3_header_tag_fourbits tag_str_l
  | Mp3_header_tag_symbol_t.Mp3_header_tag_twelvebits ->
      let tag_str_l = build_n_store sym_mht soi_mhe in
        Mp3_header_tag_formula_t.Mp3_header_tag_twelvebits tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_mht =
  let soi_mhe = Tag_v.sole_index_off_tag tag_mht in
  let sym_mht = Tag_v.symbol_off_tag tag_mht in
  make sym_mht soi_mhe
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_mp3_header_tag_formula = function
  | Mp3_header_tag_formula_t.Mp3_header_tag_onebit tag_str_l -> tag_str_l
  | Mp3_header_tag_formula_t.Mp3_header_tag_twobits tag_str_l -> tag_str_l
  | Mp3_header_tag_formula_t.Id3v2 tag_str_l -> tag_str_l
  | Mp3_header_tag_formula_t.Mp3_header_tag_fourbits tag_str_l -> tag_str_l
  | Mp3_header_tag_formula_t.Mp3_header_tag_twelvebits tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_mp3_header_tag_tag tag_mht =
  let for_mht = retrieve tag_mht in
  string_tag_list_off_mp3_header_tag_formula for_mht
;;


(** Mp3_header_tag_formula_v at 18:19:39 on 27 Jun 2013. created by version v2.3 of generator *)



