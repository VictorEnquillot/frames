(** {3 Mp3_file_id3v1_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Mp3_file_id3v1_formula_t.Mp3_file_id3v1_1 _ ->
      Mp3_file_id3v1_symbol_t.Mp3_file_id3v1_1
  | Mp3_file_id3v1_formula_t.Mp3_file_id3v1_2 _ ->
      Mp3_file_id3v1_symbol_t.Mp3_file_id3v1_2
  | Mp3_file_id3v1_formula_t.Mp3_file_id3v1_2_5 _ ->
      Mp3_file_id3v1_symbol_t.Mp3_file_id3v1_2_5
;;


(** {6 Building_and_storing_proper_sons} *)

let build_n_store sym_mfi soi_mfi =
  let sym_mfi = Mp3_file_symbol_v.mp3_file_symbol_of_mp3_file_id3v1_symbol sym_mfi in
  let tag_mfi = Tag_v.make sym_mfi soi_mfi in
  let sym_tid_l = Tag_id3_symbol_list_by_mp3_file_tag_provider_v.provide tag_mfi in
  let soi_tid_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_tid_l) soi_mfi in
  let dss_of_sym = Music_symbol_v.music_symbol_of_tag_id3_symbol in
  let dss_tid_l = List.map dss_of_sym sym_tid_l in
  List.iter2 Music_symbol_by_sole_index_register_v.store soi_tid_l dss_tid_l;
  List.map2 Tag_v.make sym_tid_l soi_tid_l
;;


(** {6 Making_for_formula} *)

let make sym_mfi soi_mfi =
  match sym_mfi with
  | Mp3_file_id3v1_symbol_t.Mp3_file_id3v1_1 ->
      let tag_tid_l = build_n_store sym_mfi soi_mfi in
        Mp3_file_id3v1_formula_t.Mp3_file_id3v1_1 tag_tid_l
  | Mp3_file_id3v1_symbol_t.Mp3_file_id3v1_2 ->
      let tag_tid_l = build_n_store sym_mfi soi_mfi in
        Mp3_file_id3v1_formula_t.Mp3_file_id3v1_2 tag_tid_l
  | Mp3_file_id3v1_symbol_t.Mp3_file_id3v1_2_5 ->
      let tag_tid_l = build_n_store sym_mfi soi_mfi in
        Mp3_file_id3v1_formula_t.Mp3_file_id3v1_2_5 tag_tid_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_mfi =
  let soi_mfi = Tag_v.sole_index_off_tag tag_mfi in
  let sym_mfi = Tag_v.symbol_off_tag tag_mfi in
  make sym_mfi soi_mfi
;;


(** {6 Builder_tag_listing_off_formula} *)

let tag_id3_tag_list_off_mp3_file_id3v1_formula = function
  | Mp3_file_id3v1_formula_t.Mp3_file_id3v1_1 tag_tid_l -> tag_tid_l
  | Mp3_file_id3v1_formula_t.Mp3_file_id3v1_2 tag_tid_l -> tag_tid_l
  | Mp3_file_id3v1_formula_t.Mp3_file_id3v1_2_5 tag_tid_l -> tag_tid_l
;;


(** {6 Builder_tag_listing_off_tag} *)

let tag_id3_tag_list_off_mp3_file_id3v1_tag tag_mfi =
  let for_mfi = retrieve tag_mfi in
  tag_id3_tag_list_off_mp3_file_id3v1_formula for_mfi
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_mp3_file_id3v1_formula = function
  | Mp3_file_id3v1_formula_t.Mp3_file_id3v1_1 tag_str_l -> tag_str_l
  | Mp3_file_id3v1_formula_t.Mp3_file_id3v1_2 tag_str_l -> tag_str_l
  | Mp3_file_id3v1_formula_t.Mp3_file_id3v1_2_5 tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_mp3_file_id3v1_tag tag_mfi =
  let for_mfi = retrieve tag_mfi in
  string_tag_list_off_mp3_file_id3v1_formula for_mfi
;;


(** Mp3_file_id3v1_formula_v at 19:14:24 on 1 Jul 2013. created by version v2.3 of generator *)



