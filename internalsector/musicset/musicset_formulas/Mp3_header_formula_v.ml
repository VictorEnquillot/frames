(** {3 Mp3_header_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Mp3_header_formula_t.Mp3_header_field_formula for_mhf ->
  Mp3_header_symbol_t.Mp3_header_field_symbol
      (Mp3_header_field_formula_v.symbol_of_formula for_mhf)
  | Mp3_header_formula_t.Mp3_header_tag_formula for_mht ->
  Mp3_header_symbol_t.Mp3_header_tag_symbol
      (Mp3_header_tag_formula_v.symbol_of_formula for_mht)
  | Mp3_header_formula_t.Mp3_header_1 _ ->
      Mp3_header_symbol_t.Mp3_header_1
  | Mp3_header_formula_t.Mp3_header_2 _ ->
      Mp3_header_symbol_t.Mp3_header_2
  | Mp3_header_formula_t.Mp3_header_2_5 _ ->
      Mp3_header_symbol_t.Mp3_header_2_5
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_mhe soi_mhe =
  
  let tag_mhe = Tag_v.make sym_mhe soi_mhe in
  let sym_str_l = String_symbol_list_by_mp3_header_tag_provider_v.provide tag_mhe in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_mhe in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_mhe soi_mhe =
  match sym_mhe with
  | Mp3_header_symbol_t.Mp3_header_field_symbol sym_mhf ->
    Mp3_header_formula_t.Mp3_header_field_formula
      (Mp3_header_field_formula_v.make sym_mhf soi_mhe)
  | Mp3_header_symbol_t.Mp3_header_tag_symbol sym_mht ->
    Mp3_header_formula_t.Mp3_header_tag_formula
      (Mp3_header_tag_formula_v.make sym_mht soi_mhe)
  | Mp3_header_symbol_t.Mp3_header_1 ->
      let tag_str_l = build_n_store sym_mhe soi_mhe in
        Mp3_header_formula_t.Mp3_header_1 tag_str_l
  | Mp3_header_symbol_t.Mp3_header_2 ->
      let tag_str_l = build_n_store sym_mhe soi_mhe in
        Mp3_header_formula_t.Mp3_header_2 tag_str_l
  | Mp3_header_symbol_t.Mp3_header_2_5 ->
      let tag_str_l = build_n_store sym_mhe soi_mhe in
        Mp3_header_formula_t.Mp3_header_2_5 tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_mhe =
  let soi_mhe = Tag_v.sole_index_off_tag tag_mhe in
  let sym_mhe = Tag_v.symbol_off_tag tag_mhe in
  make sym_mhe soi_mhe
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_mp3_header_formula = function
  | Mp3_header_formula_t.Mp3_header_field_formula for_mhf ->
      Mp3_header_field_formula_v.string_tag_list_off_mp3_header_field_formula for_mhf
  | Mp3_header_formula_t.Mp3_header_tag_formula for_mht ->
      Mp3_header_tag_formula_v.string_tag_list_off_mp3_header_tag_formula for_mht
  | Mp3_header_formula_t.Mp3_header_1 tag_str_l -> tag_str_l
  | Mp3_header_formula_t.Mp3_header_2 tag_str_l -> tag_str_l
  | Mp3_header_formula_t.Mp3_header_2_5 tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_mp3_header_tag tag_mhe =
  let for_mhe = retrieve tag_mhe in
  string_tag_list_off_mp3_header_formula for_mhe
;;


(** Mp3_header_formula_v at 18:19:39 on 27 Jun 2013. created by version v2.3 of generator *)



