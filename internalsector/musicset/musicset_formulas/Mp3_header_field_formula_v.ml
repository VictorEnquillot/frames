(** {3 Mp3_header_field_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Mp3_header_field_formula_t.Mp3_header_field_onebit_formula for_mf1 ->
  Mp3_header_field_symbol_t.Mp3_header_field_onebit_symbol
      (Mp3_header_field_onebit_formula_v.symbol_of_formula for_mf1)
  | Mp3_header_field_formula_t.Mp3_header_field_twobits_formula for_mf2 ->
  Mp3_header_field_symbol_t.Mp3_header_field_twobits_symbol
      (Mp3_header_field_twobits_formula_v.symbol_of_formula for_mf2)
  | Mp3_header_field_formula_t.Mp3_header_field_fourbits_formula for_mf4 ->
  Mp3_header_field_symbol_t.Mp3_header_field_fourbits_symbol
      (Mp3_header_field_fourbits_formula_v.symbol_of_formula for_mf4)
  | Mp3_header_field_formula_t.Mp3_header_field_elevenbits_formula for_mfe ->
  Mp3_header_field_symbol_t.Mp3_header_field_elevenbits_symbol
      (Mp3_header_field_elevenbits_formula_v.symbol_of_formula for_mfe)
;;


(** {6 Making_for_formula} *)

let make sym_mhf soi_mhe =
  match sym_mhf with
  | Mp3_header_field_symbol_t.Mp3_header_field_onebit_symbol sym_mf1 ->
    Mp3_header_field_formula_t.Mp3_header_field_onebit_formula
      (Mp3_header_field_onebit_formula_v.make sym_mf1 soi_mhe)
  | Mp3_header_field_symbol_t.Mp3_header_field_twobits_symbol sym_mf2 ->
    Mp3_header_field_formula_t.Mp3_header_field_twobits_formula
      (Mp3_header_field_twobits_formula_v.make sym_mf2 soi_mhe)
  | Mp3_header_field_symbol_t.Mp3_header_field_fourbits_symbol sym_mf4 ->
    Mp3_header_field_formula_t.Mp3_header_field_fourbits_formula
      (Mp3_header_field_fourbits_formula_v.make sym_mf4 soi_mhe)
  | Mp3_header_field_symbol_t.Mp3_header_field_elevenbits_symbol sym_mfe ->
    Mp3_header_field_formula_t.Mp3_header_field_elevenbits_formula
      (Mp3_header_field_elevenbits_formula_v.make sym_mfe soi_mhe)
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_mhf =
  let soi_mhe = Tag_v.sole_index_off_tag tag_mhf in
  let sym_mhf = Tag_v.symbol_off_tag tag_mhf in
  make sym_mhf soi_mhe
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_mp3_header_field_formula = function
  | Mp3_header_field_formula_t.Mp3_header_field_onebit_formula for_mf1 ->
      Mp3_header_field_onebit_formula_v.string_tag_list_off_mp3_header_field_onebit_formula for_mf1
  | Mp3_header_field_formula_t.Mp3_header_field_twobits_formula for_mf2 ->
      Mp3_header_field_twobits_formula_v.string_tag_list_off_mp3_header_field_twobits_formula for_mf2
  | Mp3_header_field_formula_t.Mp3_header_field_fourbits_formula for_mf4 ->
      Mp3_header_field_fourbits_formula_v.string_tag_list_off_mp3_header_field_fourbits_formula for_mf4
  | Mp3_header_field_formula_t.Mp3_header_field_elevenbits_formula for_mfe ->
      Mp3_header_field_elevenbits_formula_v.string_tag_list_off_mp3_header_field_elevenbits_formula for_mfe
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_mp3_header_field_tag tag_mhf =
  let for_mhf = retrieve tag_mhf in
  string_tag_list_off_mp3_header_field_formula for_mhf
;;


(** Mp3_header_field_formula_v at 18:19:39 on 27 Jun 2013. created by version v2.3 of generator *)



