(** {3 Semi_closed_right_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Semi_closed_right_formula_t.Semi_closed_right_block_formula for_srb ->
  Semi_closed_right_symbol_t.Semi_closed_right_block_symbol
      (Semi_closed_right_block_formula_v.symbol_of_formula for_srb)
  | Semi_closed_right_formula_t.Semi_closed_right_grouping_formula for_srg ->
  Semi_closed_right_symbol_t.Semi_closed_right_grouping_symbol
      (Semi_closed_right_grouping_formula_v.symbol_of_formula for_srg)
  | Semi_closed_right_formula_t.Semi_closed_right_segment _ ->
      Semi_closed_right_symbol_t.Semi_closed_right_segment
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_scr soi_scl =
  let sym_scl = Semi_closed_symbol_v.semi_closed_symbol_of_semi_closed_right_symbol sym_scr in
  let tag_scl = Tag_v.make sym_scl soi_scl in
  let sym_str_l = String_symbol_list_by_semi_closed_tag_provider_v.provide tag_scl in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_scl in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_scr soi_scl =
  match sym_scr with
  | Semi_closed_right_symbol_t.Semi_closed_right_block_symbol sym_srb ->
    Semi_closed_right_formula_t.Semi_closed_right_block_formula
      (Semi_closed_right_block_formula_v.make sym_srb soi_scl)
  | Semi_closed_right_symbol_t.Semi_closed_right_grouping_symbol sym_srg ->
    Semi_closed_right_formula_t.Semi_closed_right_grouping_formula
      (Semi_closed_right_grouping_formula_v.make sym_srg soi_scl)
  | Semi_closed_right_symbol_t.Semi_closed_right_segment ->
      let tag_str_l = build_n_store sym_scr soi_scl in
        Semi_closed_right_formula_t.Semi_closed_right_segment tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_scr =
  let soi_scl = Tag_v.sole_index_off_tag tag_scr in
  let sym_scr = Tag_v.symbol_off_tag tag_scr in
  make sym_scr soi_scl
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_semi_closed_right_formula = function
  | Semi_closed_right_formula_t.Semi_closed_right_block_formula for_srb ->
      Semi_closed_right_block_formula_v.string_tag_list_off_semi_closed_right_block_formula for_srb
  | Semi_closed_right_formula_t.Semi_closed_right_grouping_formula for_srg ->
      Semi_closed_right_grouping_formula_v.string_tag_list_off_semi_closed_right_grouping_formula for_srg
  | Semi_closed_right_formula_t.Semi_closed_right_segment tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_semi_closed_right_tag tag_scr =
  let for_scr = retrieve tag_scr in
  string_tag_list_off_semi_closed_right_formula for_scr
;;


(** Semi_closed_right_formula_v at 15:38:55 on 24 Jun 2013. created by version v2.3 of generator *)



