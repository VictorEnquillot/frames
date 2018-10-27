(** {3 Forked_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Forked_formula_t.Forked_block_formula for_fbl ->
  Forked_symbol_t.Forked_block_symbol
      (Forked_block_formula_v.symbol_of_formula for_fbl)
  | Forked_formula_t.Forked_fragment_formula for_ffr ->
  Forked_symbol_t.Forked_fragment_symbol
      (Forked_fragment_formula_v.symbol_of_formula for_ffr)
;;


(** {6 Making_for_formula} *)

let make sym_for soi_for =
  match sym_for with
  | Forked_symbol_t.Forked_block_symbol sym_fbl ->
    Forked_formula_t.Forked_block_formula
      (Forked_block_formula_v.make sym_fbl soi_for)
  | Forked_symbol_t.Forked_fragment_symbol sym_ffr ->
    Forked_formula_t.Forked_fragment_formula
      (Forked_fragment_formula_v.make sym_ffr soi_for)
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_for =
  let soi_for = Tag_v.sole_index_off_tag tag_for in
  let sym_for = Tag_v.symbol_off_tag tag_for in
  make sym_for soi_for
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_forked_formula = function
  | Forked_formula_t.Forked_block_formula for_fbl ->
      Forked_block_formula_v.string_tag_list_off_forked_block_formula for_fbl
  | Forked_formula_t.Forked_fragment_formula for_ffr ->
      Forked_fragment_formula_v.string_tag_list_off_forked_fragment_formula for_ffr
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_forked_tag tag_for =
  let for_for = retrieve tag_for in
  string_tag_list_off_forked_formula for_for
;;


(** Forked_formula_v at 15:38:55 on 24 Jun 2013. created by version v2.3 of generator *)



