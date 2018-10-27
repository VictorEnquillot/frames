(** {3 Triangle_isoceles_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Triangle_isoceles_formula_t.Triangle_isoceles_equilateral _ ->
      Triangle_isoceles_symbol_t.Triangle_isoceles_equilateral
  | Triangle_isoceles_formula_t.Triangle_isoceles_right _ ->
      Triangle_isoceles_symbol_t.Triangle_isoceles_right
  | Triangle_isoceles_formula_t.Triangle_isoceles_acute _ ->
      Triangle_isoceles_symbol_t.Triangle_isoceles_acute
  | Triangle_isoceles_formula_t.Triangle_isoceles_obtuse _ ->
      Triangle_isoceles_symbol_t.Triangle_isoceles_obtuse
;;


(** {6 Building_and_storing_proper_sons} *)

let build_n_store sym_tis soi_tri =
  let tag_tis = Tag_v.make sym_tis soi_tri in
  let tup_tis = Triangle_isoceles_tag_v.triangle_isoceles_tuple_off_triangle_isoceles_tag tag_tis in
  let sym_poi_l = Triangle_isoceles_interface_v.make_of_tuple tup_tis in
  let soi_poi_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_poi_l) soi_tri in
  let dss_of_sym = Figure_symbol_v.figure_symbol_of_point_symbol in
  let dss_poi_l = List.map dss_of_sym sym_poi_l in
  List.iter2 Figure_symbol_by_sole_index_provider_v.store soi_poi_l dss_poi_l;
  List.map2 Tag_v.make sym_poi_l soi_poi_l
;;


(** {6 Making_for_formula} *)

let make sym_tis soi_tri =
  match sym_tis with
  | Triangle_isoceles_symbol_t.Triangle_isoceles_equilateral ->
      let tag_poi_l = build_n_store sym_tis soi_tri in
        Triangle_isoceles_formula_t.Triangle_isoceles_equilateral tag_poi_l
  | Triangle_isoceles_symbol_t.Triangle_isoceles_right ->
      let tag_poi_l = build_n_store sym_tis soi_tri in
        Triangle_isoceles_formula_t.Triangle_isoceles_right tag_poi_l
  | Triangle_isoceles_symbol_t.Triangle_isoceles_acute ->
      let tag_poi_l = build_n_store sym_tis soi_tri in
        Triangle_isoceles_formula_t.Triangle_isoceles_acute tag_poi_l
  | Triangle_isoceles_symbol_t.Triangle_isoceles_obtuse ->
      let tag_poi_l = build_n_store sym_tis soi_tri in
        Triangle_isoceles_formula_t.Triangle_isoceles_obtuse tag_poi_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_tis =
  let soi_tri = Tag_v.sole_index_off_tag tag_tis in
  let sym_tis = Tag_v.entity_off_tag tag_tis in
  make sym_tis soi_tri
;;


(** {6 Builder_tag_listing_off_formula} *)

let point_tag_list_off_triangle_isoceles_formula = function
  | Triangle_isoceles_formula_t.Triangle_isoceles_equilateral tag_poi_l -> tag_poi_l
  | Triangle_isoceles_formula_t.Triangle_isoceles_right tag_poi_l -> tag_poi_l
  | Triangle_isoceles_formula_t.Triangle_isoceles_acute tag_poi_l -> tag_poi_l
  | Triangle_isoceles_formula_t.Triangle_isoceles_obtuse tag_poi_l -> tag_poi_l
;;


(** {6 Builder_tag_listing_off_tag} *)

let point_tag_list_off_triangle_isoceles_tag tag_tis =
  let for_tis = retrieve tag_tis in
  point_tag_list_off_triangle_isoceles_formula for_tis
;;


(** {6 Data_tag_listing_off_formula} *)

let float_tag_list_off_triangle_isoceles_formula = function
  | Triangle_isoceles_formula_t.Triangle_isoceles_equilateral tag_flo_l -> tag_flo_l
  | Triangle_isoceles_formula_t.Triangle_isoceles_right tag_flo_l -> tag_flo_l
  | Triangle_isoceles_formula_t.Triangle_isoceles_acute tag_flo_l -> tag_flo_l
  | Triangle_isoceles_formula_t.Triangle_isoceles_obtuse tag_flo_l -> tag_flo_l
;;


(** {6 Data_tag_listing_off_tag} *)

let float_tag_list_off_triangle_isoceles_tag tag_tis =
  let for_tis = retrieve tag_tis in
  float_tag_list_off_triangle_isoceles_formula for_tis
;;


(** created by version v1.13 of ./generator triangle_isoceles implementation_for_formula formula at 14:5 27 May 2013. *)



