(** {3 Coordinate_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Coordinate_formula_t.Coordinate_cartesian_formula for_coc ->
  Coordinate_symbol_t.Coordinate_cartesian_symbol
      (Coordinate_cartesian_formula_v.symbol_of_formula for_coc)
  | Coordinate_formula_t.Coordinate_cylindrical_formula for_coc ->
  Coordinate_symbol_t.Coordinate_cylindrical_symbol
      (Coordinate_cylindrical_formula_v.symbol_of_formula for_coc)
  | Coordinate_formula_t.Coordinate_polar_formula for_cop ->
  Coordinate_symbol_t.Coordinate_polar_symbol
      (Coordinate_polar_formula_v.symbol_of_formula for_cop)
  | Coordinate_formula_t.Coordinate_spherical_formula for_cos ->
  Coordinate_symbol_t.Coordinate_spherical_symbol
      (Coordinate_spherical_formula_v.symbol_of_formula for_cos)
;;


(** {6 Making_for_formula} *)

let make sym_coo soi_coo =
  match sym_coo with
  | Coordinate_symbol_t.Coordinate_cartesian_symbol sym_coc ->
    Coordinate_formula_t.Coordinate_cartesian_formula
      (Coordinate_cartesian_formula_v.make sym_coc soi_coo)
  | Coordinate_symbol_t.Coordinate_cylindrical_symbol sym_coc ->
    Coordinate_formula_t.Coordinate_cylindrical_formula
      (Coordinate_cylindrical_formula_v.make sym_coc soi_coo)
  | Coordinate_symbol_t.Coordinate_polar_symbol sym_cop ->
    Coordinate_formula_t.Coordinate_polar_formula
      (Coordinate_polar_formula_v.make sym_cop soi_coo)
  | Coordinate_symbol_t.Coordinate_spherical_symbol sym_cos ->
    Coordinate_formula_t.Coordinate_spherical_formula
      (Coordinate_spherical_formula_v.make sym_cos soi_coo)
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_coo =
  let soi_coo = Tag_v.sole_index_off_tag tag_coo in
  let sym_coo = Tag_v.entity_off_tag tag_coo in
  make sym_coo soi_coo
;;


(** {6 Data_tag_listing_off_formula} *)

let float_tag_list_off_coordinate_formula = function
  | Coordinate_formula_t.Coordinate_cartesian_formula for_coc ->
      Coordinate_cartesian_formula_v.float_tag_list_off_coordinate_cartesian_formula for_coc
  | Coordinate_formula_t.Coordinate_cylindrical_formula for_coc ->
      Coordinate_cylindrical_formula_v.float_tag_list_off_coordinate_cylindrical_formula for_coc
  | Coordinate_formula_t.Coordinate_polar_formula for_cop ->
      Coordinate_polar_formula_v.float_tag_list_off_coordinate_polar_formula for_cop
  | Coordinate_formula_t.Coordinate_spherical_formula for_cos ->
      Coordinate_spherical_formula_v.float_tag_list_off_coordinate_spherical_formula for_cos
;;


(** {6 Data_tag_listing_off_tag} *)

let float_tag_list_off_coordinate_tag tag_coo =
  let for_coo = retrieve tag_coo in
  float_tag_list_off_coordinate_formula for_coo
;;


(** created by version v1.13 of ./generator coordinate implementation_for_formula formula at 14:2 27 May 2013. *)



