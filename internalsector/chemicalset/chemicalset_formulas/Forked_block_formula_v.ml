(** {3 Forked_block_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Forked_block_formula_t.S_c_sd _ ->
      Forked_block_symbol_t.S_c_sd
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_fbl soi_for =
  let sym_for = Forked_symbol_v.forked_symbol_of_forked_block_symbol sym_fbl in
  let tag_for = Tag_v.make sym_for soi_for in
  let sym_str_l = String_symbol_list_by_forked_tag_provider_v.provide tag_for in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_for in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_fbl soi_for =
  match sym_fbl with
  | Forked_block_symbol_t.S_c_sd ->
      let tag_str_l = build_n_store sym_fbl soi_for in
        Forked_block_formula_t.S_c_sd tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_fbl =
  let soi_for = Tag_v.sole_index_off_tag tag_fbl in
  let sym_fbl = Tag_v.symbol_off_tag tag_fbl in
  make sym_fbl soi_for
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_forked_block_formula = function
  | Forked_block_formula_t.S_c_sd tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_forked_block_tag tag_fbl =
  let for_fbl = retrieve tag_fbl in
  string_tag_list_off_forked_block_formula for_fbl
;;


(** Forked_block_formula_v at 15:38:55 on 24 Jun 2013. created by version v2.3 of generator *)



