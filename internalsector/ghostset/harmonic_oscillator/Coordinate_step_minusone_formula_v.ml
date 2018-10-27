(** {3 Coordinate_step_minusone_formula_v} *)

let nam_cod = "Coordinate_step_minusone_formula_v.ml";;

(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Coordinate_step_minusone_formula_t.Anteprevious_x _ ->
      Coordinate_step_minusone_symbol_t.Anteprevious_x
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_cap soi_coo =
  Utilities_v.not_yet_implemented nam_cod "build_n_store"
;;

(** {6 Making_for_formula} *)

let make sym_cap soi_coo =
  match sym_cap with
  | Coordinate_step_minusone_symbol_t.Anteprevious_x ->
      let tag_coo_d = build_n_store sym_cap soi_coo in
      Coordinate_step_minusone_formula_t.Anteprevious_x tag_coo_d
;;

(** {6 Retrieving_for_formula} *)

let retrieve tag_cap =
  let soi_coo = Tag_v.sole_index_off_tag tag_cap in
  let sym_cap = Tag_v.symbol_off_tag tag_cap in
  make sym_cap soi_coo
;;


(** {6 Data_tag_listing_off_formula} *)

let coordinate_tag_duo_off_coordinate_anteprevious_formula = function
  | Coordinate_step_minusone_formula_t.Anteprevious_x tag_coo_d -> tag_coo_d
;;

(** {6 Data_tag_listing_off_tag} *)

let coordinate_tag_duo_off_coordinate_anteprevious_tag tag_cap =
  let for_cap = retrieve tag_cap in
  coordinate_tag_duo_off_coordinate_anteprevious_formula for_cap
;;


(** Coordinate_step_minusone_formula_v at 12:17:2 on 25 Jun 2013. created by version v2.3 of generator *)



