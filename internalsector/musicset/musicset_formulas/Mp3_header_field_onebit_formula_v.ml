(** {3 Mp3_header_field_onebit_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Mp3_header_field_onebit_formula_t.Version_formula for_ver ->
  Mp3_header_field_onebit_symbol_t.Version_symbol
      (Version_formula_v.symbol_of_formula for_ver)
  | Mp3_header_field_onebit_formula_t.Error_protection _ ->
      Mp3_header_field_onebit_symbol_t.Error_protection
  | Mp3_header_field_onebit_formula_t.Pad_bit _ ->
      Mp3_header_field_onebit_symbol_t.Pad_bit
  | Mp3_header_field_onebit_formula_t.Intensity_stereo _ ->
      Mp3_header_field_onebit_symbol_t.Intensity_stereo
  | Mp3_header_field_onebit_formula_t.Ms_stereo _ ->
      Mp3_header_field_onebit_symbol_t.Ms_stereo
  | Mp3_header_field_onebit_formula_t.Private_bit _ ->
      Mp3_header_field_onebit_symbol_t.Private_bit
  | Mp3_header_field_onebit_formula_t.Copyright _ ->
      Mp3_header_field_onebit_symbol_t.Copyright
  | Mp3_header_field_onebit_formula_t.Original _ ->
      Mp3_header_field_onebit_symbol_t.Original
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_mf1 soi_mhe =
  let sym_mhe = Mp3_header_symbol_v.mp3_header_symbol_of_mp3_header_field_onebit_symbol sym_mf1 in
  let tag_mhe = Tag_v.make sym_mhe soi_mhe in
  let sym_str_l = String_symbol_list_by_mp3_header_tag_provider_v.provide tag_mhe in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_mhe in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_mf1 soi_mhe =
  match sym_mf1 with
  | Mp3_header_field_onebit_symbol_t.Version_symbol sym_ver ->
    Mp3_header_field_onebit_formula_t.Version_formula
      (Version_formula_v.make sym_ver soi_mhe)
  | Mp3_header_field_onebit_symbol_t.Error_protection ->
      let tag_str_l = build_n_store sym_mf1 soi_mhe in
        Mp3_header_field_onebit_formula_t.Error_protection tag_str_l
  | Mp3_header_field_onebit_symbol_t.Pad_bit ->
      let tag_str_l = build_n_store sym_mf1 soi_mhe in
        Mp3_header_field_onebit_formula_t.Pad_bit tag_str_l
  | Mp3_header_field_onebit_symbol_t.Intensity_stereo ->
      let tag_str_l = build_n_store sym_mf1 soi_mhe in
        Mp3_header_field_onebit_formula_t.Intensity_stereo tag_str_l
  | Mp3_header_field_onebit_symbol_t.Ms_stereo ->
      let tag_str_l = build_n_store sym_mf1 soi_mhe in
        Mp3_header_field_onebit_formula_t.Ms_stereo tag_str_l
  | Mp3_header_field_onebit_symbol_t.Private_bit ->
      let tag_str_l = build_n_store sym_mf1 soi_mhe in
        Mp3_header_field_onebit_formula_t.Private_bit tag_str_l
  | Mp3_header_field_onebit_symbol_t.Copyright ->
      let tag_str_l = build_n_store sym_mf1 soi_mhe in
        Mp3_header_field_onebit_formula_t.Copyright tag_str_l
  | Mp3_header_field_onebit_symbol_t.Original ->
      let tag_str_l = build_n_store sym_mf1 soi_mhe in
        Mp3_header_field_onebit_formula_t.Original tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_mf1 =
  let soi_mhe = Tag_v.sole_index_off_tag tag_mf1 in
  let sym_mf1 = Tag_v.symbol_off_tag tag_mf1 in
  make sym_mf1 soi_mhe
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_mp3_header_field_onebit_formula = function
  | Mp3_header_field_onebit_formula_t.Version_formula for_ver ->
      Version_formula_v.string_tag_list_off_version_formula for_ver
  | Mp3_header_field_onebit_formula_t.Error_protection tag_str_l -> tag_str_l
  | Mp3_header_field_onebit_formula_t.Pad_bit tag_str_l -> tag_str_l
  | Mp3_header_field_onebit_formula_t.Intensity_stereo tag_str_l -> tag_str_l
  | Mp3_header_field_onebit_formula_t.Ms_stereo tag_str_l -> tag_str_l
  | Mp3_header_field_onebit_formula_t.Private_bit tag_str_l -> tag_str_l
  | Mp3_header_field_onebit_formula_t.Copyright tag_str_l -> tag_str_l
  | Mp3_header_field_onebit_formula_t.Original tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_mp3_header_field_onebit_tag tag_mf1 =
  let for_mf1 = retrieve tag_mf1 in
  string_tag_list_off_mp3_header_field_onebit_formula for_mf1
;;


(** Mp3_header_field_onebit_formula_v at 18:19:39 on 27 Jun 2013. created by version v2.3 of generator *)



