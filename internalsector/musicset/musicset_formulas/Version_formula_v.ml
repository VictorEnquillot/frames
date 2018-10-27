(** {3 Version_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Version_formula_t.Version_1 _ ->
      Version_symbol_t.Version_1
  | Version_formula_t.Version_2 _ ->
      Version_symbol_t.Version_2
  | Version_formula_t.Version_2_5 _ ->
      Version_symbol_t.Version_2_5
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_ver soi_mhe =
  let sym_mhe = Mp3_header_symbol_v.mp3_header_symbol_of_version_symbol sym_ver in
  let tag_mhe = Tag_v.make sym_mhe soi_mhe in
  let sym_str_l = String_symbol_list_by_mp3_header_tag_provider_v.provide tag_mhe in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_mhe in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_ver soi_mhe =
  match sym_ver with
  | Version_symbol_t.Version_1 ->
      let tag_str_l = build_n_store sym_ver soi_mhe in
        Version_formula_t.Version_1 tag_str_l
  | Version_symbol_t.Version_2 ->
      let tag_str_l = build_n_store sym_ver soi_mhe in
        Version_formula_t.Version_2 tag_str_l
  | Version_symbol_t.Version_2_5 ->
      let tag_str_l = build_n_store sym_ver soi_mhe in
        Version_formula_t.Version_2_5 tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_ver =
  let soi_mhe = Tag_v.sole_index_off_tag tag_ver in
  let sym_ver = Tag_v.symbol_off_tag tag_ver in
  make sym_ver soi_mhe
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_version_formula = function
  | Version_formula_t.Version_1 tag_str_l -> tag_str_l
  | Version_formula_t.Version_2 tag_str_l -> tag_str_l
  | Version_formula_t.Version_2_5 tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_version_tag tag_ver =
  let for_ver = retrieve tag_ver in
  string_tag_list_off_version_formula for_ver
;;


(** Version_formula_v at 18:19:41 on 27 Jun 2013. created by version v2.3 of generator *)



