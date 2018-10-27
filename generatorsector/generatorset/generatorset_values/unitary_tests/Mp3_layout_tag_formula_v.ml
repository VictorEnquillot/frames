(** {3 Mp3_layout_tag_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Mp3_layout_tag_formula_t.String_1 _ ->
      Mp3_layout_tag_symbol_t.String_1
  | Mp3_layout_tag_formula_t.String_3 _ ->
      Mp3_layout_tag_symbol_t.String_3
  | Mp3_layout_tag_formula_t.String_4 _ ->
      Mp3_layout_tag_symbol_t.String_4
  | Mp3_layout_tag_formula_t.String_6 _ ->
      Mp3_layout_tag_symbol_t.String_6
  | Mp3_layout_tag_formula_t.String_30 _ ->
      Mp3_layout_tag_symbol_t.String_30
  | Mp3_layout_tag_formula_t.String_60 _ ->
      Mp3_layout_tag_symbol_t.String_60
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_mlt soi_mlt =
  
  let tag_mlt = Tag_v.make sym_mlt soi_mlt in
  let sym_str_l = String_symbol_list_by_mp3_layout_tag_tag_provider_v.provide tag_mlt in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_mlt in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_mlt soi_mlt =
  match sym_mlt with
  | Mp3_layout_tag_symbol_t.String_1 ->
      let tag_str_l = build_n_store sym_mlt soi_mlt in
        Mp3_layout_tag_formula_t.String_1 tag_str_l
  | Mp3_layout_tag_symbol_t.String_3 ->
      let tag_str_l = build_n_store sym_mlt soi_mlt in
        Mp3_layout_tag_formula_t.String_3 tag_str_l
  | Mp3_layout_tag_symbol_t.String_4 ->
      let tag_str_l = build_n_store sym_mlt soi_mlt in
        Mp3_layout_tag_formula_t.String_4 tag_str_l
  | Mp3_layout_tag_symbol_t.String_6 ->
      let tag_str_l = build_n_store sym_mlt soi_mlt in
        Mp3_layout_tag_formula_t.String_6 tag_str_l
  | Mp3_layout_tag_symbol_t.String_30 ->
      let tag_str_l = build_n_store sym_mlt soi_mlt in
        Mp3_layout_tag_formula_t.String_30 tag_str_l
  | Mp3_layout_tag_symbol_t.String_60 ->
      let tag_str_l = build_n_store sym_mlt soi_mlt in
        Mp3_layout_tag_formula_t.String_60 tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_mlt =
  let soi_mlt = Tag_v.sole_index_off_tag tag_mlt in
  let sym_mlt = Tag_v.entity_off_tag tag_mlt in
  make sym_mlt soi_mlt
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_mp3_layout_tag_formula = function
  | Mp3_layout_tag_formula_t.String_1 tag_str_l -> tag_str_l
  | Mp3_layout_tag_formula_t.String_3 tag_str_l -> tag_str_l
  | Mp3_layout_tag_formula_t.String_4 tag_str_l -> tag_str_l
  | Mp3_layout_tag_formula_t.String_6 tag_str_l -> tag_str_l
  | Mp3_layout_tag_formula_t.String_30 tag_str_l -> tag_str_l
  | Mp3_layout_tag_formula_t.String_60 tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_mp3_layout_tag_tag tag_mlt =
  let for_mlt = retrieve tag_mlt in
  string_tag_list_off_mp3_layout_tag_formula for_mlt
;;


(** Mp3_layout_tag_formula_v at 10:33:49 on 25 Jun 2013. created by version v2.3 of generator *)



