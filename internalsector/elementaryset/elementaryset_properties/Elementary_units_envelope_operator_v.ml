(** {3 Elementary_units_envelope_operator_v} *)

(** {6 Documenting_for_formula} *)

let documentation () = 
[
 "Current : PELE:Elementary_units_envelope_operator_v";
 "Needs: ";
 "Needed-by: ";
 "What-is-it: ";
 "How-is-it-done: ";
 "Example: ";
]
;;

let homothety env_uni_opd_tl env_uni_cen_t flo_sca soi_uni_hom hom_tl = 

(* Operand *)
  let mea_opd_tl = List.map 
      (Tuple_v.map 
	 Elementary_units_envelope_v.measure_canonical_off_elementary_units_envelope) 
      env_uni_opd_tl 
  in

(* Center *)
  let mea_cen_t = Tuple_v.map 
      Elementary_units_envelope_v.measure_canonical_off_elementary_units_envelope 
      env_uni_cen_t 
  in

(* Target *)
    Measure_operator_v.homothety 
      mea_opd_tl 
      mea_cen_t 
      flo_sca 
;;

(* let translation mea_opd_l mea_vec_l = *)
(*   let flo_opd_l = List.map Measure_v.float_off_measure mea_opd_l in *)
(*   let flo_vec_l = List.map Measure_v.float_off_measure mea_vec_l in *)
(*   let sym_uni_opd_l = List.map Measure_v.elementary_units_symbol_off_measure mea_opd_l in *)
(*   let sym_uni_vec_l = List.map Measure_v.elementary_units_symbol_off_measure mea_vec_l in *)

(*   List.iter2  *)
(*     Measure_v.check_are_units_length_of_elementary_units_symbol_of_elementary_units_symbol  *)
(*     sym_uni_opd_l sym_uni_vec_l *)
(*     ; *)

(*   let flo_tra_l =  *)
(*     Float_operator_v.translated_point_list_of_operand_point_list_of_segment_list_duo *)
(*       flo_opd_l flo_vec_l  *)
(*   in *)
(*   let sym_uni = Measure_v.elementary_units_symbol_of_elementary_units_symbol_list sym_uni_opd_l in *)

(*   List.map (fun f -> Measure_v.make f sym_uni) flo_tra_l  *)
(* ;; *)

(* let length mea_vec = *)
(*   let flo_vec = Measure_v.float_off_measure mea_vec in *)
(*   let sym_uni_vec = Measure_v.elementary_units_symbol_off_measure mea_vec in *)

(*   Measure_v.make flo_vec sym_uni_vec *)
(* ;; *)

(* let perimeter mea_poi_l = (\* 3 Points *\) *)
(*   let mea_poi_a = List.nth mea_poi_l 0 in *)
(*   let mea_poi_b = List.nth mea_poi_l 1 in *)
(*   let mea_poi_c = List.nth mea_poi_l 2 in *)
  
(*   let flo_poi_a_l = List.map Measure_v.float_off_measure mea_poi_a in *)
(*   let flo_poi_b_l = List.map Measure_v.float_off_measure mea_poi_b in *)
(*   let flo_poi_c_l = List.map Measure_v.float_off_measure mea_poi_c in *)

(*   let flo_per =  *)
(*     Float_operator_v.perimeter_of_point_list_of_point_list_of_point_list flo_poi_a_l flo_poi_b_l flo_poi_c_l *)
(*   in *)

(*   let sym_uni_per = Measure_v.elementary_units_symbol_of_measure_list (List.flatten mea_poi_l) in  *)

(*   Measure_v.make flo_per sym_uni_per *)
(* ;; *)
