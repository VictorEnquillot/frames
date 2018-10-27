(** {3 Semi_closed_left_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Semi_closed_left_formula_t.Semi_closed_left_block_formula for_slb ->
  Semi_closed_left_symbol_t.Semi_closed_left_block_symbol
      (Semi_closed_left_block_formula_v.symbol_of_formula for_slb)
  | Semi_closed_left_formula_t.Semi_closed_left_segment_formula for_sls ->
  Semi_closed_left_symbol_t.Semi_closed_left_segment_symbol
      (Semi_closed_left_segment_formula_v.symbol_of_formula for_sls)
  | Semi_closed_left_formula_t.Semi_closed_left_fragment_formula for_slf ->
  Semi_closed_left_symbol_t.Semi_closed_left_fragment_symbol
      (Semi_closed_left_fragment_formula_v.symbol_of_formula for_slf)
;;


(** {6 Making_for_formula} *)

let make sym_scl soi_scl =
  match sym_scl with
  | Semi_closed_left_symbol_t.Semi_closed_left_block_symbol sym_slb ->
    Semi_closed_left_formula_t.Semi_closed_left_block_formula
      (Semi_closed_left_block_formula_v.make sym_slb soi_scl)
  | Semi_closed_left_symbol_t.Semi_closed_left_segment_symbol sym_sls ->
    Semi_closed_left_formula_t.Semi_closed_left_segment_formula
      (Semi_closed_left_segment_formula_v.make sym_sls soi_scl)
  | Semi_closed_left_symbol_t.Semi_closed_left_fragment_symbol sym_slf ->
    Semi_closed_left_formula_t.Semi_closed_left_fragment_formula
      (Semi_closed_left_fragment_formula_v.make sym_slf soi_scl)
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_scl =
  let soi_scl = Tag_v.sole_index_off_tag tag_scl in
  let sym_scl = Tag_v.symbol_off_tag tag_scl in
  make sym_scl soi_scl
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_semi_closed_left_formula = function
  | Semi_closed_left_formula_t.Semi_closed_left_block_formula for_slb ->
      Semi_closed_left_block_formula_v.string_tag_list_off_semi_closed_left_block_formula for_slb
  | Semi_closed_left_formula_t.Semi_closed_left_segment_formula for_sls ->
      Semi_closed_left_segment_formula_v.string_tag_list_off_semi_closed_left_segment_formula for_sls
  | Semi_closed_left_formula_t.Semi_closed_left_fragment_formula for_slf ->
      Semi_closed_left_fragment_formula_v.string_tag_list_off_semi_closed_left_fragment_formula for_slf
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_semi_closed_left_tag tag_scl =
  let for_scl = retrieve tag_scl in
  string_tag_list_off_semi_closed_left_formula for_scl
;;


(** Semi_closed_left_formula_v at 15:38:55 on 24 Jun 2013. created by version v2.3 of generator *)



