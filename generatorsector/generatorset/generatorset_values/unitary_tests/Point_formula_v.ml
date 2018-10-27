(** {3 Point_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Point_formula_t.Point_constructor (s, _ ) ->
  Point_formula_t.point_constructor_formula s
;;


(** {6 Building_and_storing_proper_sons} *)

let build_n_store sym_poi soi_poi =
  let tag_poi = Tag_v.make sym_poi soi_poi in
  let tup_poi = Point_tag_v.point_tuple_off_point_tag tag_poi in
  let sym_coo_l = Point_interface_v.make_of_tuple tup_poi in
  let soi_coo_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_coo_l) soi_poi in
  let dss_of_sym = Figure_symbol_v.figure_symbol_of_coordinate_symbol in
  List.iter2 Figure_symbol_by_sole_index_register_v.store soi_coo_l dss_coo_l;
  List.map2 Tag_v.make sym_coo_l soi_coo_l
;;


(** {6 Making_for_formula} *)

let make sym_poi soi_poi =
  match sym_poi with
  | Point_symbol_t.Point_constructor s ->
      let tag_coo_l = build_n_store sym_poi soi_poi in
        Point_formula_t.Point_constructor (s, tag_coo_l)
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_poi =
  let soi_poi = Tag_v.sole_index_off_tag tag_poi in
  let sym_poi = Point_tag_v.symbol_off_tag tag_poi in
  make sym_poi soi_poi
;;


(** {6 Builder_tag_listing_off_formula} *)

let coordinate_tag_list_off_point_formula = function
  | Point_formula_t.Point_constructor (s, tag_coo_l) -> tag_coo_l
;;


(** {6 Builder_tag_listing_off_tag} *)

let coordinate_tag_list_off_point_tag tag_poi =
  let for_poi = retrieve tag_poi in
  coordinate_tag_list_off_point_formula for_poi
;;


(** {6 Data_tag_listing_off_formula} *)

let float_tag_list_off_point_formula for_poi =
  | Point_formula_t.Point_constructor (s, tag_flo_l) -> tag_flo_l
;;


(** {6 Data_tag_listing_off_tag} *)

let float_tag_list_off_point_tag tag_poi =
  let for_poi = retrieve tag_poi in
  float_tag_list_off_point_formula for_poi
;;


(** created by version v1.12 of ./generator point implementation_for_formula formula at 11:22 3 May 2013. *)



