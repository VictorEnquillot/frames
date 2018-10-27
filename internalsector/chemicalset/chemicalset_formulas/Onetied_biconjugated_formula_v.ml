(** {3 Onetied_biconjugated_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Onetied_biconjugated_formula_t.Onetied_biconjugated_atom_formula for_1ba ->
  Onetied_biconjugated_symbol_t.Onetied_biconjugated_atom_symbol
      (Onetied_biconjugated_atom_formula_v.symbol_of_formula for_1ba)
;;


(** {6 Making_for_formula} *)

let make sym_obi soi_one =
  match sym_obi with
  | Onetied_biconjugated_symbol_t.Onetied_biconjugated_atom_symbol sym_1ba ->
    Onetied_biconjugated_formula_t.Onetied_biconjugated_atom_formula
      (Onetied_biconjugated_atom_formula_v.make sym_1ba soi_one)
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_obi =
  let soi_one = Tag_v.sole_index_off_tag tag_obi in
  let sym_obi = Tag_v.symbol_off_tag tag_obi in
  make sym_obi soi_one
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_onetied_biconjugated_formula = function
  | Onetied_biconjugated_formula_t.Onetied_biconjugated_atom_formula for_1ba ->
      Onetied_biconjugated_atom_formula_v.string_tag_list_off_onetied_biconjugated_atom_formula for_1ba
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_onetied_biconjugated_tag tag_obi =
  let for_obi = retrieve tag_obi in
  string_tag_list_off_onetied_biconjugated_formula for_obi
;;


(** Onetied_biconjugated_formula_v at 12:18:0 on 23 Jun 2013. created by version v2.2 of generator *)



