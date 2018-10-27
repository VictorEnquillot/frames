(** {3 Closed_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Closed_formula_t.Closed_atom_formula for_cat ->
  Closed_symbol_t.Closed_atom_symbol
      (Closed_atom_formula_v.symbol_of_formula for_cat)
  | Closed_formula_t.Closed_block_formula for_cbl ->
  Closed_symbol_t.Closed_block_symbol
      (Closed_block_formula_v.symbol_of_formula for_cbl)
  | Closed_formula_t.Closed_segment_formula for_cse ->
  Closed_symbol_t.Closed_segment_symbol
      (Closed_segment_formula_v.symbol_of_formula for_cse)
  | Closed_formula_t.Closed_grouping_formula for_cgr ->
  Closed_symbol_t.Closed_grouping_symbol
      (Closed_grouping_formula_v.symbol_of_formula for_cgr)
;;


(** {6 Making_for_formula} *)

let make sym_clo soi_clo =
  match sym_clo with
  | Closed_symbol_t.Closed_atom_symbol sym_cat ->
    Closed_formula_t.Closed_atom_formula
      (Closed_atom_formula_v.make sym_cat soi_clo)
  | Closed_symbol_t.Closed_block_symbol sym_cbl ->
    Closed_formula_t.Closed_block_formula
      (Closed_block_formula_v.make sym_cbl soi_clo)
  | Closed_symbol_t.Closed_segment_symbol sym_cse ->
    Closed_formula_t.Closed_segment_formula
      (Closed_segment_formula_v.make sym_cse soi_clo)
  | Closed_symbol_t.Closed_grouping_symbol sym_cgr ->
    Closed_formula_t.Closed_grouping_formula
      (Closed_grouping_formula_v.make sym_cgr soi_clo)
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_clo =
  let soi_clo = Tag_v.sole_index_off_tag tag_clo in
  let sym_clo = Tag_v.symbol_off_tag tag_clo in
  make sym_clo soi_clo
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_closed_formula = function
  | Closed_formula_t.Closed_atom_formula for_cat ->
      Closed_atom_formula_v.string_tag_list_off_closed_atom_formula for_cat
  | Closed_formula_t.Closed_block_formula for_cbl ->
      Closed_block_formula_v.string_tag_list_off_closed_block_formula for_cbl
  | Closed_formula_t.Closed_segment_formula for_cse ->
      Closed_segment_formula_v.string_tag_list_off_closed_segment_formula for_cse
  | Closed_formula_t.Closed_grouping_formula for_cgr ->
      Closed_grouping_formula_v.string_tag_list_off_closed_grouping_formula for_cgr
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_closed_tag tag_clo =
  let for_clo = retrieve tag_clo in
  string_tag_list_off_closed_formula for_clo
;;


(** Closed_formula_v at 15:38:55 on 24 Jun 2013. created by version v2.3 of generator *)



