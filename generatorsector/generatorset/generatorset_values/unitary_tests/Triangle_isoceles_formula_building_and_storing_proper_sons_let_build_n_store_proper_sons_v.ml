let build_n_store sym_tis soi_tri =
  let sym_tri = Triangle_symbol_v.triangle_symbol_of_triangle_isoceles_symbol sym_tis in
  let tag_tri = Tag_v.make sym_tri soi_tri in
  let sym_poi_l = Point_symbol_list_by_triangle_tag_provider_v.provide tag_tri in
  let soi_poi_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_poi_l) soi_tri in
  let dss_of_sym = Figure_symbol_v.figure_symbol_of_point_symbol in
  let dss_poi_l = List.map dss_of_sym sym_poi_l in
  List.iter2 Figure_symbol_by_sole_index_provider_v.store soi_poi_l dss_poi_l;
  List.map2 Tag_v.make sym_poi_l soi_poi_l
;;

