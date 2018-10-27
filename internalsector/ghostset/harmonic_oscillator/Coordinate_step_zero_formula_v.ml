(** {3 Coordinate_step_zero_formula_v} *)

let nam_cod = "Coordinate_step_zero_formula_v.ml";;

(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Coordinate_step_zero_formula_t.Step_zero_x _ ->
      Coordinate_step_zero_symbol_t.Step_zero_x
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_cpr soi_coo =
  Utilities_v.not_yet_implemented nam_cod "build_n_store"
;;

(** {6 Making_for_formula} *)

let make sym_cpr soi_coo =
  match sym_cpr with
  | Coordinate_step_zero_symbol_t.Step_zero_x ->
      let tag_coo_d = build_n_store sym_cpr soi_coo in
      Coordinate_step_zero_formula_t.Step_zero_x tag_coo_d
;;

(** {6 Retrieving_for_formula} *)

let retrieve tag_cpr =
  let soi_coo = Tag_v.sole_index_off_tag tag_cpr in
  let sym_cpr = Tag_v.symbol_off_tag tag_cpr in
  make sym_cpr soi_coo
;;


(** {6 Data_tag_listing_off_formula} *)

let coordinate_tag_duo_off_coordinate_previous_formula = function
  | Coordinate_step_zero_formula_t.Step_zero_x tag_coo_d -> tag_coo_d
;;

(** {6 Data_tag_listing_off_tag} *)

let coordinate_tag_duo_off_coordinate_previous_tag tag_cpr =
  let for_cpr = retrieve tag_cpr in
  coordinate_tag_duo_off_coordinate_previous_formula for_cpr
;;


(** Coordinate_step_zero_formula_v at 12:17:2 on 25 Jun 2013. created by version v2.3 of generator *)



