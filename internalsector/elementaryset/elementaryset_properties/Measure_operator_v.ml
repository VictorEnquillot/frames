let homothety mea_opd_tl mea_cen_t flo_sca =

  let mca_opd_tl = List.map (Tuple_v.map Measure_v.measure_canonical_of_measure) mea_opd_tl in
  let mca_cen_t = Tuple_v.map Measure_v.measure_canonical_of_measure mea_cen_t in

  let flo_opd_tl = List.map (Tuple_v.map Measure_v.float_off_measure) mca_opd_tl in
  let flo_cen_t = Tuple_v.map Measure_v.float_off_measure mca_cen_t in

  let flo_hom_tl = 
    Float_operator_v.homothety_tuple_list_of_operand_as_float_tuple_list_of_center_tuple_of_scale_factor
      flo_opd_tl flo_cen_t flo_sca 
  in

  let sym_uni = Measure_v.canonical_elementary_units_symbol_as_length in
  List.map (Tuple_v.map (fun f -> Measure_v.make f sym_uni)) flo_hom_tl 
;;

let translation mea_opd_tl mea_seg_td =

  let mca_opd_tl = List.map (Tuple_v.map Measure_v.measure_canonical_of_measure) mea_opd_tl in
  let mca_seg_td = Duo_v.map (Tuple_v.map Measure_v.measure_canonical_of_measure) mea_seg_td in
  
  let flo_opd_tl = List.map (Tuple_v.map Measure_v.float_off_measure) mca_opd_tl in
  let flo_seg_td = Duo_v.map (Tuple_v.map Measure_v.float_off_measure) mca_seg_td in

  let flo_tra_tl = 
    Float_operator_v.translation_tuple_list_of_operand_as_float_tuple_list_of_segment_as_float_tuple_duo 
      flo_opd_tl flo_seg_td 
  in

  let sym_uni = Measure_v.canonical_elementary_units_symbol_as_length in
  List.map (Tuple_v.map (fun f -> Measure_v.make f sym_uni)) flo_tra_tl 
;;

let length mea_vec =
  let flo_vec = Measure_v.float_off_measure mea_vec in
  let sym_uni_vec = Measure_v.elementary_units_symbol_off_measure mea_vec in

  Measure_v.make flo_vec sym_uni_vec
;;

let perimeter mea_poi_l = (* 3 Points *)
  let mea_poi_a = List.nth mea_poi_l 0 in
  let mea_poi_b = List.nth mea_poi_l 1 in
  let mea_poi_c = List.nth mea_poi_l 2 in
  
  let flo_poi_a_l = List.map Measure_v.float_off_measure mea_poi_a in
  let flo_poi_b_l = List.map Measure_v.float_off_measure mea_poi_b in
  let flo_poi_c_l = List.map Measure_v.float_off_measure mea_poi_c in

  let flo_per = 
    Float_operator_v.perimeter_of_point_as_float_list_of_point_as_float_list_of_point_as_float_list flo_poi_a_l flo_poi_b_l flo_poi_c_l
  in

  let sym_uni_per = Measure_v.elementary_units_symbol_of_measure_list (List.flatten mea_poi_l) in 

  Measure_v.make flo_per sym_uni_per
;;
