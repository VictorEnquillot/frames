(** {3 Mp3_header_field_fourbits_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Mp3_header_field_fourbits_formula_t.Bit_rate _ ->
      Mp3_header_field_fourbits_symbol_t.Bit_rate
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_mf4 soi_mhe =
  let sym_mhe = Mp3_header_symbol_v.mp3_header_symbol_of_mp3_header_field_fourbits_symbol sym_mf4 in
  let tag_mhe = Tag_v.make sym_mhe soi_mhe in
  let sym_str_l = String_symbol_list_by_mp3_header_tag_provider_v.provide tag_mhe in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_mhe in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_mf4 soi_mhe =
  match sym_mf4 with
  | Mp3_header_field_fourbits_symbol_t.Bit_rate ->
      let tag_str_l = build_n_store sym_mf4 soi_mhe in
        Mp3_header_field_fourbits_formula_t.Bit_rate tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_mf4 =
  let soi_mhe = Tag_v.sole_index_off_tag tag_mf4 in
  let sym_mf4 = Tag_v.symbol_off_tag tag_mf4 in
  make sym_mf4 soi_mhe
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_mp3_header_field_fourbits_formula = function
  | Mp3_header_field_fourbits_formula_t.Bit_rate tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_mp3_header_field_fourbits_tag tag_mf4 =
  let for_mf4 = retrieve tag_mf4 in
  string_tag_list_off_mp3_header_field_fourbits_formula for_mf4
;;


(** Mp3_header_field_fourbits_formula_v at 18:19:39 on 27 Jun 2013. created by version v2.3 of generator *)



