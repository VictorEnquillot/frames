(** {3 Semi_closed_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Semi_closed_formula_t.Semi_closed_left_formula for_scl ->
  Semi_closed_symbol_t.Semi_closed_left_symbol
      (Semi_closed_left_formula_v.symbol_of_formula for_scl)
  | Semi_closed_formula_t.Semi_closed_right_formula for_scr ->
  Semi_closed_symbol_t.Semi_closed_right_symbol
      (Semi_closed_right_formula_v.symbol_of_formula for_scr)
;;


(** {6 Making_for_formula} *)

let make sym_scl soi_scl =
  match sym_scl with
  | Semi_closed_symbol_t.Semi_closed_left_symbol sym_scl ->
    Semi_closed_formula_t.Semi_closed_left_formula
      (Semi_closed_left_formula_v.make sym_scl soi_scl)
  | Semi_closed_symbol_t.Semi_closed_right_symbol sym_scr ->
    Semi_closed_formula_t.Semi_closed_right_formula
      (Semi_closed_right_formula_v.make sym_scr soi_scl)
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_scl =
  let soi_scl = Tag_v.sole_index_off_tag tag_scl in
  let sym_scl = Tag_v.symbol_off_tag tag_scl in
  make sym_scl soi_scl
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_semi_closed_formula = function
  | Semi_closed_formula_t.Semi_closed_left_formula for_scl ->
      Semi_closed_left_formula_v.string_tag_list_off_semi_closed_left_formula for_scl
  | Semi_closed_formula_t.Semi_closed_right_formula for_scr ->
      Semi_closed_right_formula_v.string_tag_list_off_semi_closed_right_formula for_scr
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_semi_closed_tag tag_scl =
  let for_scl = retrieve tag_scl in
  string_tag_list_off_semi_closed_formula for_scl
;;


(** Semi_closed_formula_v at 15:38:55 on 24 Jun 2013. created by version v2.3 of generator *)



