(** {3 Semi_closed_left_block_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Semi_closed_left_block_formula_t.Z_ch3_s _ ->
      Semi_closed_left_block_symbol_t.Z_ch3_s
  | Semi_closed_left_block_formula_t.Z_ch2_d _ ->
      Semi_closed_left_block_symbol_t.Z_ch2_d
  | Semi_closed_left_block_formula_t.Z_ch2_ss _ ->
      Semi_closed_left_block_symbol_t.Z_ch2_ss
  | Semi_closed_left_block_formula_t.Z_ch_t _ ->
      Semi_closed_left_block_symbol_t.Z_ch_t
  | Semi_closed_left_block_formula_t.Z_ch_sd _ ->
      Semi_closed_left_block_symbol_t.Z_ch_sd
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_slb soi_scl =
  let sym_scl = Semi_closed_symbol_v.semi_closed_symbol_of_semi_closed_left_block_symbol sym_slb in
  let tag_scl = Tag_v.make sym_scl soi_scl in
  let sym_str_l = String_symbol_list_by_semi_closed_tag_provider_v.provide tag_scl in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_scl in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_slb soi_scl =
  match sym_slb with
  | Semi_closed_left_block_symbol_t.Z_ch3_s ->
      let tag_str_l = build_n_store sym_slb soi_scl in
        Semi_closed_left_block_formula_t.Z_ch3_s tag_str_l
  | Semi_closed_left_block_symbol_t.Z_ch2_d ->
      let tag_str_l = build_n_store sym_slb soi_scl in
        Semi_closed_left_block_formula_t.Z_ch2_d tag_str_l
  | Semi_closed_left_block_symbol_t.Z_ch2_ss ->
      let tag_str_l = build_n_store sym_slb soi_scl in
        Semi_closed_left_block_formula_t.Z_ch2_ss tag_str_l
  | Semi_closed_left_block_symbol_t.Z_ch_t ->
      let tag_str_l = build_n_store sym_slb soi_scl in
        Semi_closed_left_block_formula_t.Z_ch_t tag_str_l
  | Semi_closed_left_block_symbol_t.Z_ch_sd ->
      let tag_str_l = build_n_store sym_slb soi_scl in
        Semi_closed_left_block_formula_t.Z_ch_sd tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_slb =
  let soi_scl = Tag_v.sole_index_off_tag tag_slb in
  let sym_slb = Tag_v.symbol_off_tag tag_slb in
  make sym_slb soi_scl
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_semi_closed_left_block_formula = function
  | Semi_closed_left_block_formula_t.Z_ch3_s tag_str_l -> tag_str_l
  | Semi_closed_left_block_formula_t.Z_ch2_d tag_str_l -> tag_str_l
  | Semi_closed_left_block_formula_t.Z_ch2_ss tag_str_l -> tag_str_l
  | Semi_closed_left_block_formula_t.Z_ch_t tag_str_l -> tag_str_l
  | Semi_closed_left_block_formula_t.Z_ch_sd tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_semi_closed_left_block_tag tag_slb =
  let for_slb = retrieve tag_slb in
  string_tag_list_off_semi_closed_left_block_formula for_slb
;;


(** Semi_closed_left_block_formula_v at 15:38:55 on 24 Jun 2013. created by version v2.3 of generator *)



