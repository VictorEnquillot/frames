(** {3 Closed_segment_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Closed_segment_formula_t.Closed_segment_anion_formula for_csa ->
  Closed_segment_symbol_t.Closed_segment_anion_symbol
      (Closed_segment_anion_formula_v.symbol_of_formula for_csa)
  | Closed_segment_formula_t.Closed_segment_cation_formula for_csc ->
  Closed_segment_symbol_t.Closed_segment_cation_symbol
      (Closed_segment_cation_formula_v.symbol_of_formula for_csc)
  | Closed_segment_formula_t.Closed_segment_neutral_formula for_csn ->
  Closed_segment_symbol_t.Closed_segment_neutral_symbol
      (Closed_segment_neutral_formula_v.symbol_of_formula for_csn)
;;


(** {6 Making_for_formula} *)

let make sym_cse soi_cse =
  match sym_cse with
  | Closed_segment_symbol_t.Closed_segment_anion_symbol sym_csa ->
    Closed_segment_formula_t.Closed_segment_anion_formula
      (Closed_segment_anion_formula_v.make sym_csa soi_cse)
  | Closed_segment_symbol_t.Closed_segment_cation_symbol sym_csc ->
    Closed_segment_formula_t.Closed_segment_cation_formula
      (Closed_segment_cation_formula_v.make sym_csc soi_cse)
  | Closed_segment_symbol_t.Closed_segment_neutral_symbol sym_csn ->
    Closed_segment_formula_t.Closed_segment_neutral_formula
      (Closed_segment_neutral_formula_v.make sym_csn soi_cse)
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_cse =
  let soi_cse = Tag_v.sole_index_off_tag tag_cse in
  let sym_cse = Tag_v.symbol_off_tag tag_cse in
  make sym_cse soi_cse
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_closed_segment_formula = function
  | Closed_segment_formula_t.Closed_segment_anion_formula for_csa ->
      Closed_segment_anion_formula_v.string_tag_list_off_closed_segment_anion_formula for_csa
  | Closed_segment_formula_t.Closed_segment_cation_formula for_csc ->
      Closed_segment_cation_formula_v.string_tag_list_off_closed_segment_cation_formula for_csc
  | Closed_segment_formula_t.Closed_segment_neutral_formula for_csn ->
      Closed_segment_neutral_formula_v.string_tag_list_off_closed_segment_neutral_formula for_csn
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_closed_segment_tag tag_cse =
  let for_cse = retrieve tag_cse in
  string_tag_list_off_closed_segment_formula for_cse
;;


(** Closed_segment_formula_v at 12:33:10 on 24 Jun 2013. created by version v2.3 of generator *)



