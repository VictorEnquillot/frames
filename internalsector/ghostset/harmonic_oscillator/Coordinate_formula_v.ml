(** {3 Coordinate_formula_v} *)

let nam_cod = "Coordinate_formula_v.ml";;

(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Coordinate_formula_t.Coordinate_current_formula for_ccy ->
      Coordinate_symbol_t.Coordinate_current_symbol
	(Coordinate_current_formula_v.symbol_of_formula for_ccy)
  | Coordinate_formula_t.Coordinate_step_minusone_formula for_cpo ->
      Coordinate_symbol_t.Coordinate_step_minusone_symbol
	(Coordinate_step_minusone_formula_v.symbol_of_formula for_cpo)
  | Coordinate_formula_t.Coordinate_step_zero_formula for_csp ->
      Coordinate_symbol_t.Coordinate_step_zero_symbol
	(Coordinate_step_zero_formula_v.symbol_of_formula for_csp)
;;


(** {6 Making_for_formula} *)

let make sym_coo soi_coo =
  match sym_coo with
  | Coordinate_symbol_t.Coordinate_current_symbol sym_ccy ->
    Coordinate_formula_t.Coordinate_current_formula
      (Coordinate_current_formula_v.make sym_ccy soi_coo)
  | Coordinate_symbol_t.Coordinate_step_minusone_symbol sym_cpo ->
    Coordinate_formula_t.Coordinate_step_minusone_formula
      (Coordinate_step_minusone_formula_v.make sym_cpo soi_coo)
  | Coordinate_symbol_t.Coordinate_step_zero_symbol sym_csp ->
    Coordinate_formula_t.Coordinate_step_zero_formula
      (Coordinate_step_zero_formula_v.make sym_csp soi_coo)
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_coo =
  let soi_coo = Tag_v.sole_index_off_tag tag_coo in
  let sym_coo = Tag_v.symbol_off_tag tag_coo in
  make sym_coo soi_coo
;;


(** {6 Data_tag_duoing_off_formula} *)

let builder_son_tag_doublet_off_coordinate_formula = function
  | Coordinate_formula_t.Coordinate_current_formula for_ccy ->
      Coordinate_current_formula_v.builder_son_tag_doublet_off_coordinate_current_formula for_ccy
  | Coordinate_formula_t.Coordinate_step_zero_formula _
  | Coordinate_formula_t.Coordinate_step_minusone_formula _ ->
      Utilities_v.not_yet_implemented nam_cod "builder_son_tag_doublet_off_coordinate_current_formula"
;;


(** {6 Data_tag_duoing_off_tag} *)

let builder_son_tag_doublet_off_coordinate_tag tag_coo =
  let for_coo = retrieve tag_coo in
  builder_son_tag_doublet_off_coordinate_formula for_coo
;;


(** Coordinate_formula_v at 12:17:2 on 25 Jun 2013. created by version v2.3 of generator *)



