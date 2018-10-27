(** {3 Onetied_double_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Onetied_double_formula_t.Onetied_double_atom_formula for_1da ->
  Onetied_double_symbol_t.Onetied_double_atom_symbol
      (Onetied_double_atom_formula_v.symbol_of_formula for_1da)
;;


(** {6 Making_for_formula} *)

let make sym_odo soi_one =
  match sym_odo with
  | Onetied_double_symbol_t.Onetied_double_atom_symbol sym_1da ->
    Onetied_double_formula_t.Onetied_double_atom_formula
      (Onetied_double_atom_formula_v.make sym_1da soi_one)
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_odo =
  let soi_one = Tag_v.sole_index_off_tag tag_odo in
  let sym_odo = Tag_v.symbol_off_tag tag_odo in
  make sym_odo soi_one
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_onetied_double_formula = function
  | Onetied_double_formula_t.Onetied_double_atom_formula for_1da ->
      Onetied_double_atom_formula_v.string_tag_list_off_onetied_double_atom_formula for_1da
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_onetied_double_tag tag_odo =
  let for_odo = retrieve tag_odo in
  string_tag_list_off_onetied_double_formula for_odo
;;


(** Onetied_double_formula_v at 12:18:0 on 23 Jun 2013. created by version v2.2 of generator *)



