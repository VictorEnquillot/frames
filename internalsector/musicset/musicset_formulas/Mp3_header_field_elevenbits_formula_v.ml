(** {3 Mp3_header_field_elevenbits_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Mp3_header_field_elevenbits_formula_t.Sync_word _ ->
      Mp3_header_field_elevenbits_symbol_t.Sync_word
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_mfe soi_mhe =
  let sym_mhe = Mp3_header_symbol_v.mp3_header_symbol_of_mp3_header_field_elevenbits_symbol sym_mfe in
  let tag_mhe = Tag_v.make sym_mhe soi_mhe in
  let sym_str_l = String_symbol_list_by_mp3_header_tag_provider_v.provide tag_mhe in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_mhe in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_mfe soi_mhe =
  match sym_mfe with
  | Mp3_header_field_elevenbits_symbol_t.Sync_word ->
      let tag_str_l = build_n_store sym_mfe soi_mhe in
        Mp3_header_field_elevenbits_formula_t.Sync_word tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_mfe =
  let soi_mhe = Tag_v.sole_index_off_tag tag_mfe in
  let sym_mfe = Tag_v.symbol_off_tag tag_mfe in
  make sym_mfe soi_mhe
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_mp3_header_field_elevenbits_formula = function
  | Mp3_header_field_elevenbits_formula_t.Sync_word tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_mp3_header_field_elevenbits_tag tag_mfe =
  let for_mfe = retrieve tag_mfe in
  string_tag_list_off_mp3_header_field_elevenbits_formula for_mfe
;;


(** Mp3_header_field_elevenbits_formula_v at 18:19:39 on 27 Jun 2013. created by version v2.3 of generator *)



