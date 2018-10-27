(** {3 Triangle_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Triangle_formula_t.Triangle_isoceles_formula for_tis ->
  Triangle_symbol_t.Triangle_isoceles_symbol
      (Triangle_isoceles_formula_v.symbol_of_formula for_tis)
  | Triangle_formula_t.Triangle_scalene_formula for_tsc ->
  Triangle_symbol_t.Triangle_scalene_symbol
      (Triangle_scalene_formula_v.symbol_of_formula for_tsc)
;;


(** {6 Making_for_formula} *)

let make sym_tri soi_tri =
  match sym_tri with
  | Triangle_symbol_t.Triangle_isoceles_symbol sym_tis ->
    Triangle_formula_t.Triangle_isoceles_formula
      (Triangle_isoceles_formula_v.make sym_tis soi_tri)
  | Triangle_symbol_t.Triangle_scalene_symbol sym_tsc ->
    Triangle_formula_t.Triangle_scalene_formula
      (Triangle_scalene_formula_v.make sym_tsc soi_tri)
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_tri =
  let soi_tri = Tag_v.sole_index_off_tag tag_tri in
  let sym_tri = Tag_v.entity_off_tag tag_tri in
  make sym_tri soi_tri
;;


(** {6 Builder_tag_listing_off_formula} *)

let point_tag_list_off_triangle_formula = function
  | Triangle_formula_t.Triangle_isoceles_formula for_tis ->
      Triangle_isoceles_formula_v.point_tag_list_off_triangle_isoceles_formula for_tis
  | Triangle_formula_t.Triangle_scalene_formula for_tsc ->
      Triangle_scalene_formula_v.point_tag_list_off_triangle_scalene_formula for_tsc
;;


(** {6 Builder_tag_listing_off_tag} *)

let point_tag_list_off_triangle_tag tag_tri =
  let for_tri = retrieve tag_tri in
  point_tag_list_off_triangle_formula for_tri
;;


(** {6 Data_tag_listing_off_formula} *)

let float_tag_list_off_triangle_formula = function
  | Triangle_formula_t.Triangle_isoceles_formula for_tis ->
      Triangle_isoceles_formula_v.float_tag_list_off_triangle_isoceles_formula for_tis
  | Triangle_formula_t.Triangle_scalene_formula for_tsc ->
      Triangle_scalene_formula_v.float_tag_list_off_triangle_scalene_formula for_tsc
;;


(** {6 Data_tag_listing_off_tag} *)

let float_tag_list_off_triangle_tag tag_tri =
  let for_tri = retrieve tag_tri in
  float_tag_list_off_triangle_formula for_tri
;;


(** Triangle_formula_v at 13:15:7 on 16 Jun 2013. created by version v2.1 of generator *)



