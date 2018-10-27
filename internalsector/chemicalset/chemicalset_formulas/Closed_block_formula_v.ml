(** {3 Closed_block_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Closed_block_formula_t.Closed_block_anion_formula for_cba ->
  Closed_block_symbol_t.Closed_block_anion_symbol
      (Closed_block_anion_formula_v.symbol_of_formula for_cba)
  | Closed_block_formula_t.Closed_block_cation_formula for_cbc ->
  Closed_block_symbol_t.Closed_block_cation_symbol
      (Closed_block_cation_formula_v.symbol_of_formula for_cbc)
  | Closed_block_formula_t.Closed_block_neutral_formula for_cbn ->
  Closed_block_symbol_t.Closed_block_neutral_symbol
      (Closed_block_neutral_formula_v.symbol_of_formula for_cbn)
;;


(** {6 Making_for_formula} *)

let make sym_cbl soi_cbl =
  match sym_cbl with
  | Closed_block_symbol_t.Closed_block_anion_symbol sym_cba ->
    Closed_block_formula_t.Closed_block_anion_formula
      (Closed_block_anion_formula_v.make sym_cba soi_cbl)
  | Closed_block_symbol_t.Closed_block_cation_symbol sym_cbc ->
    Closed_block_formula_t.Closed_block_cation_formula
      (Closed_block_cation_formula_v.make sym_cbc soi_cbl)
  | Closed_block_symbol_t.Closed_block_neutral_symbol sym_cbn ->
    Closed_block_formula_t.Closed_block_neutral_formula
      (Closed_block_neutral_formula_v.make sym_cbn soi_cbl)
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_cbl =
  let soi_cbl = Tag_v.sole_index_off_tag tag_cbl in
  let sym_cbl = Tag_v.symbol_off_tag tag_cbl in
  make sym_cbl soi_cbl
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_closed_block_formula = function
  | Closed_block_formula_t.Closed_block_anion_formula for_cba ->
      Closed_block_anion_formula_v.string_tag_list_off_closed_block_anion_formula for_cba
  | Closed_block_formula_t.Closed_block_cation_formula for_cbc ->
      Closed_block_cation_formula_v.string_tag_list_off_closed_block_cation_formula for_cbc
  | Closed_block_formula_t.Closed_block_neutral_formula for_cbn ->
      Closed_block_neutral_formula_v.string_tag_list_off_closed_block_neutral_formula for_cbn
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_closed_block_tag tag_cbl =
  let for_cbl = retrieve tag_cbl in
  string_tag_list_off_closed_block_formula for_cbl
;;


(** Closed_block_formula_v at 12:33:10 on 24 Jun 2013. created by version v2.3 of generator *)



