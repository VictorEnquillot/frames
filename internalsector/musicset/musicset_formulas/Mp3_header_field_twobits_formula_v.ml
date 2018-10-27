(** {3 Mp3_header_field_twobits_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Mp3_header_field_twobits_formula_t.Layer _ ->
      Mp3_header_field_twobits_symbol_t.Layer
  | Mp3_header_field_twobits_formula_t.Frequency _ ->
      Mp3_header_field_twobits_symbol_t.Frequency
  | Mp3_header_field_twobits_formula_t.Mode _ ->
      Mp3_header_field_twobits_symbol_t.Mode
  | Mp3_header_field_twobits_formula_t.Mode_extension _ ->
      Mp3_header_field_twobits_symbol_t.Mode_extension
  | Mp3_header_field_twobits_formula_t.Emphasis _ ->
      Mp3_header_field_twobits_symbol_t.Emphasis
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_mf2 soi_mhe =
  let sym_mhe = Mp3_header_symbol_v.mp3_header_symbol_of_mp3_header_field_twobits_symbol sym_mf2 in
  let tag_mhe = Tag_v.make sym_mhe soi_mhe in
  let sym_str_l = String_symbol_list_by_mp3_header_tag_provider_v.provide tag_mhe in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_mhe in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_mf2 soi_mhe =
  match sym_mf2 with
  | Mp3_header_field_twobits_symbol_t.Layer ->
      let tag_str_l = build_n_store sym_mf2 soi_mhe in
        Mp3_header_field_twobits_formula_t.Layer tag_str_l
  | Mp3_header_field_twobits_symbol_t.Frequency ->
      let tag_str_l = build_n_store sym_mf2 soi_mhe in
        Mp3_header_field_twobits_formula_t.Frequency tag_str_l
  | Mp3_header_field_twobits_symbol_t.Mode ->
      let tag_str_l = build_n_store sym_mf2 soi_mhe in
        Mp3_header_field_twobits_formula_t.Mode tag_str_l
  | Mp3_header_field_twobits_symbol_t.Mode_extension ->
      let tag_str_l = build_n_store sym_mf2 soi_mhe in
        Mp3_header_field_twobits_formula_t.Mode_extension tag_str_l
  | Mp3_header_field_twobits_symbol_t.Emphasis ->
      let tag_str_l = build_n_store sym_mf2 soi_mhe in
        Mp3_header_field_twobits_formula_t.Emphasis tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_mf2 =
  let soi_mhe = Tag_v.sole_index_off_tag tag_mf2 in
  let sym_mf2 = Tag_v.symbol_off_tag tag_mf2 in
  make sym_mf2 soi_mhe
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_mp3_header_field_twobits_formula = function
  | Mp3_header_field_twobits_formula_t.Layer tag_str_l -> tag_str_l
  | Mp3_header_field_twobits_formula_t.Frequency tag_str_l -> tag_str_l
  | Mp3_header_field_twobits_formula_t.Mode tag_str_l -> tag_str_l
  | Mp3_header_field_twobits_formula_t.Mode_extension tag_str_l -> tag_str_l
  | Mp3_header_field_twobits_formula_t.Emphasis tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_mp3_header_field_twobits_tag tag_mf2 =
  let for_mf2 = retrieve tag_mf2 in
  string_tag_list_off_mp3_header_field_twobits_formula for_mf2
;;


(** Mp3_header_field_twobits_formula_v at 18:19:39 on 27 Jun 2013. created by version v2.3 of generator *)



