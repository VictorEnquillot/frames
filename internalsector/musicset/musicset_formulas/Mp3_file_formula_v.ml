(** {3 Mp3_file_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Mp3_file_formula_t.Mp3_file_id3v1_formula for_mfi ->
  Mp3_file_symbol_t.Mp3_file_id3v1_symbol
      (Mp3_file_id3v1_formula_v.symbol_of_formula for_mfi)
  | Mp3_file_formula_t.Mp3_file_id3v2_formula for_mfi ->
  Mp3_file_symbol_t.Mp3_file_id3v2_symbol
      (Mp3_file_id3v2_formula_v.symbol_of_formula for_mfi)
;;


(** {6 Making_for_formula} *)

let make sym_mfi soi_mfi =
  match sym_mfi with
  | Mp3_file_symbol_t.Mp3_file_id3v1_symbol sym_mfi ->
    Mp3_file_formula_t.Mp3_file_id3v1_formula
      (Mp3_file_id3v1_formula_v.make sym_mfi soi_mfi)
  | Mp3_file_symbol_t.Mp3_file_id3v2_symbol sym_mfi ->
    Mp3_file_formula_t.Mp3_file_id3v2_formula
      (Mp3_file_id3v2_formula_v.make sym_mfi soi_mfi)
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_mfi =
  let soi_mfi = Tag_v.sole_index_off_tag tag_mfi in
  let sym_mfi = Tag_v.symbol_off_tag tag_mfi in
  make sym_mfi soi_mfi
;;


(** {6 Builder_tag_listing_off_formula} *)

let tag_id3_tag_list_off_mp3_file_formula = function
  | Mp3_file_formula_t.Mp3_file_id3v1_formula for_mfi ->
      Mp3_file_id3v1_formula_v.tag_id3_tag_list_off_mp3_file_id3v1_formula for_mfi
  | Mp3_file_formula_t.Mp3_file_id3v2_formula for_mfi ->
      Mp3_file_id3v2_formula_v.tag_id3_tag_list_off_mp3_file_id3v2_formula for_mfi
;;


(** {6 Builder_tag_listing_off_tag} *)

let tag_id3_tag_list_off_mp3_file_tag tag_mfi =
  let for_mfi = retrieve tag_mfi in
  tag_id3_tag_list_off_mp3_file_formula for_mfi
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_mp3_file_formula = function
  | Mp3_file_formula_t.Mp3_file_id3v1_formula for_mfi ->
      Mp3_file_id3v1_formula_v.string_tag_list_off_mp3_file_id3v1_formula for_mfi
  | Mp3_file_formula_t.Mp3_file_id3v2_formula for_mfi ->
      Mp3_file_id3v2_formula_v.string_tag_list_off_mp3_file_id3v2_formula for_mfi
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_mp3_file_tag tag_mfi =
  let for_mfi = retrieve tag_mfi in
  string_tag_list_off_mp3_file_formula for_mfi
;;


(** Mp3_file_formula_v at 18:45:8 on 27 Jun 2013. created by version v2.3 of generator *)



