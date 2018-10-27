let build_n_store sym_cpo soi_coo =
  let_sym_flo_l = Float_symbol_list_by_coordinate_tag_provider_v.provide tag_coo in
  let soi_flo_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_flo_l) soi_coo in
  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_float_symbol in
  let gss_flo_l = List.map gss_of_sym sym_flo_l in
  List.iter2 Generatorset_symbol_by_sole_index_provider_v.store soi_flo_l gss_flo_l;
  List.map2 Tag_v.make sym_flo_l soi_flo_l
;;

