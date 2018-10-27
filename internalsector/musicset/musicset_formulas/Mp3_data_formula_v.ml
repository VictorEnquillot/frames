(** {3 Mp3_data_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Mp3_data_formula_t.Mp3_data_audio _ ->
      Mp3_data_symbol_t.Mp3_data_audio
  | Mp3_data_formula_t.Mp3_data_video _ ->
      Mp3_data_symbol_t.Mp3_data_video
  | Mp3_data_formula_t.Mp3_data_closed_caption _ ->
      Mp3_data_symbol_t.Mp3_data_closed_caption
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_mda soi_mda =
  
  let tag_mda = Tag_v.make sym_mda soi_mda in
  let sym_str_l = String_symbol_list_by_mp3_data_tag_provider_v.provide tag_mda in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_mda in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_mda soi_mda =
  match sym_mda with
  | Mp3_data_symbol_t.Mp3_data_audio ->
      let tag_str_l = build_n_store sym_mda soi_mda in
        Mp3_data_formula_t.Mp3_data_audio tag_str_l
  | Mp3_data_symbol_t.Mp3_data_video ->
      let tag_str_l = build_n_store sym_mda soi_mda in
        Mp3_data_formula_t.Mp3_data_video tag_str_l
  | Mp3_data_symbol_t.Mp3_data_closed_caption ->
      let tag_str_l = build_n_store sym_mda soi_mda in
        Mp3_data_formula_t.Mp3_data_closed_caption tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_mda =
  let soi_mda = Tag_v.sole_index_off_tag tag_mda in
  let sym_mda = Tag_v.symbol_off_tag tag_mda in
  make sym_mda soi_mda
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_mp3_data_formula = function
  | Mp3_data_formula_t.Mp3_data_audio tag_str_l -> tag_str_l
  | Mp3_data_formula_t.Mp3_data_video tag_str_l -> tag_str_l
  | Mp3_data_formula_t.Mp3_data_closed_caption tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_mp3_data_tag tag_mda =
  let for_mda = retrieve tag_mda in
  string_tag_list_off_mp3_data_formula for_mda
;;


(** Mp3_data_formula_v at 10:34:59 on 25 Jun 2013. created by version v2.3 of generator *)



