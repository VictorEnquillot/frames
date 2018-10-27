(** {3 Opened_forked_block_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Opened_forked_block_formula_t.S_c_sd _ ->
      Opened_forked_block_symbol_t.S_c_sd
  | Opened_forked_block_formula_t.S_ch_ss _ ->
      Opened_forked_block_symbol_t.S_ch_ss
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_ofb soi_ope =
  let sym_ope = Opened_symbol_v.opened_symbol_of_opened_forked_block_symbol sym_ofb in
  let tag_ope = Tag_v.make sym_ope soi_ope in
  let sym_str_l = String_symbol_list_by_opened_tag_provider_v.provide tag_ope in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_ope in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_ofb soi_ope =
  match sym_ofb with
  | Opened_forked_block_symbol_t.S_c_sd ->
      let tag_str_l = build_n_store sym_ofb soi_ope in
        Opened_forked_block_formula_t.S_c_sd tag_str_l
  | Opened_forked_block_symbol_t.S_ch_ss ->
      let tag_str_l = build_n_store sym_ofb soi_ope in
        Opened_forked_block_formula_t.S_ch_ss tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_ofb =
  let soi_ope = Tag_v.sole_index_off_tag tag_ofb in
  let sym_ofb = Tag_v.symbol_off_tag tag_ofb in
  make sym_ofb soi_ope
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_opened_forked_block_formula = function
  | Opened_forked_block_formula_t.S_c_sd tag_str_l -> tag_str_l
  | Opened_forked_block_formula_t.S_ch_ss tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_opened_forked_block_tag tag_ofb =
  let for_ofb = retrieve tag_ofb in
  string_tag_list_off_opened_forked_block_formula for_ofb
;;


(** Opened_forked_block_formula_v at 16:15:39 on 24 Jun 2013. created by version v2.3 of generator *)



