(** {3 Onetied_triple_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Onetied_triple_formula_t.Onetied_triple_atom_formula for_1ta ->
  Onetied_triple_symbol_t.Onetied_triple_atom_symbol
      (Onetied_triple_atom_formula_v.symbol_of_formula for_1ta)
;;


(** {6 Making_for_formula} *)

let make sym_otr soi_one =
  match sym_otr with
  | Onetied_triple_symbol_t.Onetied_triple_atom_symbol sym_1ta ->
    Onetied_triple_formula_t.Onetied_triple_atom_formula
      (Onetied_triple_atom_formula_v.make sym_1ta soi_one)
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_otr =
  let soi_one = Tag_v.sole_index_off_tag tag_otr in
  let sym_otr = Tag_v.symbol_off_tag tag_otr in
  make sym_otr soi_one
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_onetied_triple_formula = function
  | Onetied_triple_formula_t.Onetied_triple_atom_formula for_1ta ->
      Onetied_triple_atom_formula_v.string_tag_list_off_onetied_triple_atom_formula for_1ta
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_onetied_triple_tag tag_otr =
  let for_otr = retrieve tag_otr in
  string_tag_list_off_onetied_triple_formula for_otr
;;


(** Onetied_triple_formula_v at 12:18:0 on 23 Jun 2013. created by version v2.2 of generator *)



