(** {3 Float_operator_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : FPRO:Float_operator";
   "Definition : a Point_tuple -> Tuple of float";
   "Definition : a Vector_tuple -> Tuple of float";
   "Definition : a Segment_tuple_duo -> Duo of Tuple of float";
   "Definition : a Triangle_tuple_trio -> Trio of Tuple of float";
   "What-is-it : ";
   "How-is-it-done : ";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(* Segment : a Duo of Points *)

(* Vector : as difference of two Points *)

let vector_as_float_list_of_point_as_float_list_of_point_as_float_list flo_poi_1_l flo_poi_2_l =
(* P1->P2 -------> V (out) *)
  List_v.difference_of_float_list_of_float_list flo_poi_2_l flo_poi_1_l 
;;

let vector_as_float_tuple_of_point_as_float_tuple_of_point_as_float_tuple flo_poi_1_t flo_poi_2_t =
(* P1->P2 -------> V (out) *)
  let flo_poi_1_l = Tuple_v.list_of_tuple flo_poi_1_t in
  let flo_poi_2_l = Tuple_v.list_of_tuple flo_poi_2_t in
  let vec_l = vector_as_float_list_of_point_as_float_list_of_point_as_float_list flo_poi_1_l flo_poi_2_l in
  Tuple_v.tuple_of_list vec_l
;;

let vector_as_float_list_of_segment_as_float_list_duo flo_seg_ld =
(* (P1, P2) -------> V (out) *)
  let (flo_poi_1_l, flo_poi_2_l) = flo_seg_ld in
  vector_as_float_list_of_point_as_float_list_of_point_as_float_list flo_poi_1_l flo_poi_2_l
;;

let vector_as_float_tuple_of_segment_as_float_tuple_duo flo_seg_td =
(* (P1->P2) -------> V (out) *)
  let (flo_poi_1_t, flo_poi_2_t) = flo_seg_td in
  vector_as_float_tuple_of_point_as_float_tuple_of_point_as_float_tuple flo_poi_1_t flo_poi_2_t
;;

let vector_as_float_tuple_of_segment_as_float_tuple_tuple flo_seg_tt =
(* (P1->P2) -------> V (out) *)
  let flo_seg_td = Tuple_v.duo_off_tuple flo_seg_tt in
  vector_as_float_tuple_of_segment_as_float_tuple_duo flo_seg_td
;;

(* Length *)

let length_of_float_list flo_l =
(* V -------> L (out) *)
  List_v.norm_of_float_list flo_l
;;

let length_of_vector_as_float_list flo_vec_l =
  length_of_float_list flo_vec_l
;;

let length_of_vector_as_float_tuple flo_vec_t =
  let flo_vec_l = Tuple_v.list_of_tuple flo_vec_t in
  length_of_vector_as_float_list flo_vec_l
;;

let length_of_segment_as_float_tuple_duo flo_seg_td =
  let flo_vec_t = vector_as_float_tuple_of_segment_as_float_tuple_duo flo_seg_td in
  let flo_vec_l = Tuple_v.list_of_tuple flo_vec_t in
  length_of_float_list flo_vec_l
;;

let length_of_segment_as_float_tuple_tuple flo_seg_tt =
  let flo_seg_td = Tuple_v.duo_off_tuple flo_seg_tt in
  length_of_segment_as_float_tuple_duo flo_seg_td
;;

let length_of_segment_as_float_tuple_list flo_seg_tl =
  let flo_seg_td = Duo_v.duo_of_list flo_seg_tl in
  length_of_segment_as_float_tuple_duo flo_seg_td
;;

(* Distance *)

let distance_of_point_as_float_list_of_point_as_float_list flo_poi_1_l flo_poi_2_l =
  let flo_vec_l = vector_as_float_list_of_point_as_float_list_of_point_as_float_list flo_poi_1_l flo_poi_2_l in
  length_of_float_list flo_vec_l
;;

let distance_of_point_as_float_tuple_of_point_as_float_tuple flo_poi_1_t flo_poi_2_t =
  let flo_vec_t = vector_as_float_tuple_of_point_as_float_tuple_of_point_as_float_tuple flo_poi_1_t flo_poi_2_t in
  length_of_vector_as_float_tuple flo_vec_t
;;

(* Perimeter *)

let perimeter_of_point_as_float_list_of_point_as_float_list_of_point_as_float_list flo_poi_1_l flo_poi_2_l flo_poi_3_l =
  let flo_dab = distance_of_point_as_float_list_of_point_as_float_list flo_poi_1_l flo_poi_2_l in
  let flo_dbc = distance_of_point_as_float_list_of_point_as_float_list flo_poi_2_l flo_poi_3_l in
  let flo_dca = distance_of_point_as_float_list_of_point_as_float_list flo_poi_3_l flo_poi_1_l in
  flo_dab +. flo_dbc +. flo_dca
;;

let perimeter_of_point_as_float_tuple_of_point_as_float_tuple_of_point_as_float_tuple flo_poi_1_t flo_poi_2_t flo_poi_3_t =
  let flo_dab = distance_of_point_as_float_tuple_of_point_as_float_tuple flo_poi_1_t flo_poi_2_t in
  let flo_dbc = distance_of_point_as_float_tuple_of_point_as_float_tuple flo_poi_2_t flo_poi_3_t in
  let flo_dca = distance_of_point_as_float_tuple_of_point_as_float_tuple flo_poi_3_t flo_poi_1_t in
  flo_dab +. flo_dbc +. flo_dca
;;

let perimeter_of_triangle_as_float_tuple_trio flo_poi_tt =
  let (flo_poi_1_t, flo_poi_2_t, flo_poi_3_t) = flo_poi_tt in
  perimeter_of_point_as_float_tuple_of_point_as_float_tuple_of_point_as_float_tuple flo_poi_1_t flo_poi_2_t flo_poi_3_t 
;;

(* Surface *)

let surface_of_triangle_as_float_tuple_trio flo_tri_tt =
  (* let (flo_poi_1_t, flo_poi_2_t, flo_poi_3_t) = flo_tri_tt in *)
  (* let flo_poi_1_l = Tuple_v.list_of_tuple flo_poi_1_t in *)
  (* let flo_poi_2_l = Tuple_v.list_of_tuple flo_poi_2_t in *)
  (* let flo_poi_3_l = Tuple_v.list_of_tuple flo_poi_3_t in *)
  Utilities_v.not_yet_implemented "Float_operator_v" "surface_of_triangle_tuple_trio"
;;

(* Volume *)

let volume_of_triangle_as_float_tuple_trio flo_tri_tt =
    Utilities_v.not_yet_implemented "Float_operator_v" "volume_of_operand_tuple_list_of_segment_as_float_tuple_duo"
;;

(* Symmetry *)

let symmetry_tuple_of_operand_as_float_tuple_of_center_as_float_tuple flo_opd_t flo_cen_t =
(* P (on) ----- C ---- P' (out) *)
  Tuple_v.map2 (fun f_o f_c -> (2. *. f_c) -. f_o) flo_opd_t flo_cen_t
;;

let symmetry_list_of_operand_as_float_list_of_center_as_float_list flo_opd_l flo_cen_l =
(* P (on) ----- C ---- P' (out) *)
  List.map2 (fun f_o f_c -> (2. *. f_c) -. f_o) flo_opd_l flo_cen_l
;;

(* Homothety *)

let homothety_tuple_of_operand_as_float_tuple_of_center_tuple_of_scale_factor flo_opd_t flo_cen_t flo_sca =
  Tuple_v.map2
    (fun f_o f_c -> f_c +. ((f_o -. f_c) *. flo_sca) )
	flo_opd_t flo_cen_t
;;

let homothety_tuple_list_of_operand_as_float_tuple_list_of_center_tuple_of_scale_factor flo_opd_tl flo_cen_t flo_sca =
  List.map
    (fun o_t ->
      homothety_tuple_of_operand_as_float_tuple_of_center_tuple_of_scale_factor o_t flo_cen_t flo_sca) 
    flo_opd_tl
;;

(* Translation *)

let translation_tuple_of_operand_as_float_list_of_vector_as_float_list flo_opd_l flo_vec_l =
(* P (opd) + V -------> P' (out) *)
  List.map2 (fun f_o f_v -> f_o +. f_v) flo_opd_l flo_vec_l
;;

let translation_tuple_of_operand_as_float_tuple_of_vector_as_float_tuple flo_opd_t flo_vec_t =
(* P (opd) + V -------> P' (out) *)
  Tuple_v.map2 (fun f_o f_v -> f_o +. f_v) flo_opd_t flo_vec_t
;;

let translation_tuple_list_of_operand_as_float_tuple_list_of_vector_as_float_tuple flo_opd_tl flo_vec_t =
  List.map
    (fun o_t ->
      translation_tuple_of_operand_as_float_tuple_of_vector_as_float_tuple o_t flo_vec_t) 
    flo_opd_tl
;;

let translation_tuple_list_of_operand_as_float_tuple_list_of_segment_as_float_tuple_duo flo_opd_tl flo_seg_td =
  let flo_vec_t = vector_as_float_tuple_of_segment_as_float_tuple_duo flo_seg_td in
  translation_tuple_list_of_operand_as_float_tuple_list_of_vector_as_float_tuple flo_opd_tl flo_vec_t
;;

