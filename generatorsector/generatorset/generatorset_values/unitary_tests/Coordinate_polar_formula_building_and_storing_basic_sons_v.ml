(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_cpo soi_coo =
  let sym_coo = Coordinate_symbol_v.coordinate_symbol_of_coordinate_polar_symbol sym_cpo in
  let tag_coo = Tag_v.make sym_coo soi_coo in
  let sym_flo_l = Float_symbol_list_by_coordinate_tag_provider_v.provide tag_coo in
  let soi_flo_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_flo_l) soi_coo in
  List.map2 Tag_v.make sym_flo_l soi_flo_l
;;


