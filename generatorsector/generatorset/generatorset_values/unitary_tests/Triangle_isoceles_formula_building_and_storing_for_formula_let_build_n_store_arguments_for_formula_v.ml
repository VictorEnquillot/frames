let build_n_store sym_tis soi_tri =
  let tag_tis = Tag_v.make sym_tis soi_tri in
  let sex_tis = Triangle_isoceles_tag_v.triangle_isoceles_sextup_off_triangle_isoceles_tag tag_tis in
  let sym_poi_l = Triangle_isoceles_interface_v.make sex_tis in
  let soi_poi_l =
  Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_poi_l) soi_tri in
  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_point_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure_gss_of_sym sym_poi_l soi_poi_l
  List.map2 Tag_v.make sym_poi_l soi_poi_l
;;

