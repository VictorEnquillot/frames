(** {3 Linear_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Linear_formula_t.Linear_block_formula for_lbl ->
  Linear_symbol_t.Linear_block_symbol
      (Linear_block_formula_v.symbol_of_formula for_lbl)
  | Linear_formula_t.Linear_segment_formula for_lse ->
  Linear_symbol_t.Linear_segment_symbol
      (Linear_segment_formula_v.symbol_of_formula for_lse)
;;


(** {6 Making_for_formula} *)

let make sym_lin soi_lin =
  match sym_lin with
  | Linear_symbol_t.Linear_block_symbol sym_lbl ->
    Linear_formula_t.Linear_block_formula
      (Linear_block_formula_v.make sym_lbl soi_lin)
  | Linear_symbol_t.Linear_segment_symbol sym_lse ->
    Linear_formula_t.Linear_segment_formula
      (Linear_segment_formula_v.make sym_lse soi_lin)
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_lin =
  let soi_lin = Tag_v.sole_index_off_tag tag_lin in
  let sym_lin = Tag_v.symbol_off_tag tag_lin in
  make sym_lin soi_lin
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_linear_formula = function
  | Linear_formula_t.Linear_block_formula for_lbl ->
      Linear_block_formula_v.string_tag_list_off_linear_block_formula for_lbl
  | Linear_formula_t.Linear_segment_formula for_lse ->
      Linear_segment_formula_v.string_tag_list_off_linear_segment_formula for_lse
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_linear_tag tag_lin =
  let for_lin = retrieve tag_lin in
  string_tag_list_off_linear_formula for_lin
;;


(** Linear_formula_v at 15:38:55 on 24 Jun 2013. created by version v2.3 of generator *)



