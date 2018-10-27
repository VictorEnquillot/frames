(** {3 Onetied_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Onetied_formula_t.Onetied_single_formula for_osi ->
  Onetied_symbol_t.Onetied_single_symbol
      (Onetied_single_formula_v.symbol_of_formula for_osi)
  | Onetied_formula_t.Onetied_double_formula for_odo ->
  Onetied_symbol_t.Onetied_double_symbol
      (Onetied_double_formula_v.symbol_of_formula for_odo)
  | Onetied_formula_t.Onetied_triple_formula for_otr ->
  Onetied_symbol_t.Onetied_triple_symbol
      (Onetied_triple_formula_v.symbol_of_formula for_otr)
  | Onetied_formula_t.Onetied_biconjugated_formula for_obi ->
  Onetied_symbol_t.Onetied_biconjugated_symbol
      (Onetied_biconjugated_formula_v.symbol_of_formula for_obi)
;;


(** {6 Making_for_formula} *)

let make sym_one soi_one =
  match sym_one with
  | Onetied_symbol_t.Onetied_single_symbol sym_osi ->
    Onetied_formula_t.Onetied_single_formula
      (Onetied_single_formula_v.make sym_osi soi_one)
  | Onetied_symbol_t.Onetied_double_symbol sym_odo ->
    Onetied_formula_t.Onetied_double_formula
      (Onetied_double_formula_v.make sym_odo soi_one)
  | Onetied_symbol_t.Onetied_triple_symbol sym_otr ->
    Onetied_formula_t.Onetied_triple_formula
      (Onetied_triple_formula_v.make sym_otr soi_one)
  | Onetied_symbol_t.Onetied_biconjugated_symbol sym_obi ->
    Onetied_formula_t.Onetied_biconjugated_formula
      (Onetied_biconjugated_formula_v.make sym_obi soi_one)
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_one =
  let soi_one = Tag_v.sole_index_off_tag tag_one in
  let sym_one = Tag_v.symbol_off_tag tag_one in
  make sym_one soi_one
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_onetied_formula = function
  | Onetied_formula_t.Onetied_single_formula for_osi ->
      Onetied_single_formula_v.string_tag_list_off_onetied_single_formula for_osi
  | Onetied_formula_t.Onetied_double_formula for_odo ->
      Onetied_double_formula_v.string_tag_list_off_onetied_double_formula for_odo
  | Onetied_formula_t.Onetied_triple_formula for_otr ->
      Onetied_triple_formula_v.string_tag_list_off_onetied_triple_formula for_otr
  | Onetied_formula_t.Onetied_biconjugated_formula for_obi ->
      Onetied_biconjugated_formula_v.string_tag_list_off_onetied_biconjugated_formula for_obi
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_onetied_tag tag_one =
  let for_one = retrieve tag_one in
  string_tag_list_off_onetied_formula for_one
;;


(** Onetied_formula_v at 12:18:0 on 23 Jun 2013. created by version v2.2 of generator *)



