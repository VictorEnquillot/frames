open Make_test_v;;

testing "Float_operator_v with
   Float_operator_u_debug.ml";;

(* Deleting Registers *)

(* Tracing *)

Parameters_figureset_general_register_v.store_force "trace-build" "false";;
Parameters_figureset_general_register_v.store_force "trace-extract" "false";;
Parameters_figureset_general_register_v.store_force "trace-provide" "false";;
Parameters_figureset_general_register_v.store_force "trace-retrieve" "false";;
Parameters_figureset_general_register_v.store_force "trace-store" "false";;
Parameters_figureset_general_register_v.store_force "trace-trace" "false";;
Parameters_figureset_general_register_v.store_force "trace-translate" "false";;

(* toplevel 
   #use "Float_operator_u_debug.ml";;

*)

open Float_operator_v;;

(* Point *)

let flo_poi_1_l = [1.; 0.; 0.];;
let flo_poi_2_l = [0.; 1.; 0.];;
let flo_poi_3_l = [0.; 0.; 1.];;
let flo_poi_4_l = [0.; 1.; 1.];;

let flo_poi_1_t = Tuple_v.tuple_of_list flo_poi_1_l;;
let flo_poi_2_t = Tuple_v.tuple_of_list flo_poi_2_l;;
let flo_poi_3_t = Tuple_v.tuple_of_list flo_poi_3_l;;
let flo_poi_4_t = Tuple_v.tuple_of_list flo_poi_4_l;;

test_number 1 (
(flo_poi_1_t : float Tuple_t.tuple ) = 
Tuple_t.Trio (1., 0., 0.)
);;

test_number 2 (
(flo_poi_2_t : float Tuple_t.tuple ) = 
Tuple_t.Trio (0., 1., 0.)
);;

test_number 3 (
(flo_poi_3_t : float Tuple_t.tuple ) = 
Tuple_t.Trio (0., 0., 1.)
);;

test_number 4 (
(flo_poi_4_t : float Tuple_t.tuple ) = 
Tuple_t.Trio (0., 1., 1.)
);;

(* Segment *)

let flo_seg_td = Duo_v.make flo_poi_1_t flo_poi_4_t;;

test_number 5 (
(flo_seg_td : float Tuple_t.tuple Duo_t.duo ) =
(Tuple_t.Trio (1., 0., 0.), 
 Tuple_t.Trio (0., 1., 1.))
);;

let flo_seg_ld = Duo_v.map Tuple_v.list_of_tuple flo_seg_td;;

test_number 6 (
(flo_seg_ld : float list Duo_t.duo ) = 
([1.; 0.; 0.], 
 [0.; 1.; 1.])
);;

(* Segment_as_float *)

let flo_seg_ld = Duo_v.make flo_poi_1_l flo_poi_4_l;;

test_number 7 (
(flo_seg_ld : float list Duo_t.duo ) = 
([1.; 0.; 0.], [0.; 1.; 1.])
);;

let flo_seg_td = Duo_v.map Tuple_v.tuple_of_list flo_seg_ld;;

test_number 8 (
(flo_seg_td : float Tuple_t.tuple Duo_t.duo ) =
  (Tuple_t.Trio (1., 0., 0.), 
   Tuple_t.Trio (0., 1., 1.))
);;

let flo_seg_tt = Tuple_v.tuple_of_duo flo_seg_td;;

test_number 9 (
(flo_seg_tt : float Tuple_t.tuple Tuple_t.tuple ) =
  Tuple_t.Duo 
  (Tuple_t.Trio (1., 0., 0.), 
   Tuple_t.Trio (0., 1., 1.))
);;

let flo_seg_tl = Duo_v.list_of_duo flo_seg_td;;

test_number 10 (
(flo_seg_tl : float Tuple_t.tuple list ) =
  [Tuple_t.Trio (1., 0., 0.); 
   Tuple_t.Trio (0., 1., 1.)]
);; 

let flo_seg_l = List.flatten (Duo_v.list_of_duo flo_seg_ld);;

test_number 11 (
(flo_seg_l : float list ) = 
[1.; 0.; 0.; 0.; 1.; 1.]
);;

(* Vector *)

let flo_vec_l = vector_as_float_list_of_point_as_float_list_of_point_as_float_list flo_poi_1_l flo_poi_4_l;;

test_number 12 (
(flo_vec_l : float list ) = 
[-1.; 1.; 1.]
);;

test_number 13 ( 
flo_vec_l = vector_as_float_list_of_segment_as_float_list_duo flo_seg_ld
);;

let flo_vec_t = vector_as_float_tuple_of_point_as_float_tuple_of_point_as_float_tuple flo_poi_1_t flo_poi_4_t ;;

test_number 14 (
(flo_vec_t : float Tuple_t.tuple ) = 
Tuple_t.Trio (-1., 1., 1.)
);;

test_number 15 (
flo_vec_t = vector_as_float_tuple_of_segment_as_float_tuple_duo flo_seg_td
);;

(* Triangle *)

let flo_e12_l = vector_as_float_list_of_point_as_float_list_of_point_as_float_list flo_poi_1_l flo_poi_2_l;;

test_number 16 (
(flo_e12_l : float list ) = 
[-1.; 1.; 0.]
);;

let flo_e23_l = vector_as_float_list_of_point_as_float_list_of_point_as_float_list flo_poi_2_l flo_poi_3_l;;

test_number 17 (
(flo_e23_l : float list ) = 
[0.; -1.; 1.]
);;

let flo_e31_l = vector_as_float_list_of_point_as_float_list_of_point_as_float_list flo_poi_3_l flo_poi_1_l;;

test_number 18 (
(flo_e31_l : float list ) = 
[1.; 0.; -1.]
);;

(* Length *)

let len_poi = length_of_float_list flo_poi_1_l;;

test_number 19 (
(len_poi : float ) = 
1.0
);;

let len_vec = length_of_float_list flo_vec_l;;

test_number 20 (
(len_vec : float ) = 
sqrt (3.)
);;

let len_vec = length_of_vector_as_float_list flo_vec_l;;

let len_vec = length_of_vector_as_float_tuple flo_vec_t;;

let len_seg = length_of_segment_as_float_tuple_duo flo_seg_td;;

test_number 21 (
len_seg = len_vec
);;

let len_seg = length_of_segment_as_float_tuple_tuple flo_seg_tt;;

let len_seg = length_of_segment_as_float_tuple_list flo_seg_tl;;

let len_e12 = length_of_vector_as_float_list flo_e12_l;;

test_number 22 (
(len_e12 : float ) = sqrt (2.)
);;

let len_e23 = length_of_vector_as_float_list flo_e23_l;;

test_number 23 (
(len_e23 : float ) = sqrt (2.)
);;

let len_e31 = length_of_vector_as_float_list flo_e31_l;;

test_number 24 (
(len_e31 : float ) = sqrt (2.)
);;

(* Distance *)

let dis_seg = distance_of_point_as_float_list_of_point_as_float_list flo_poi_1_l flo_poi_4_l;;

test_number 25 (
len_seg = dis_seg
);;

let dis_seg = distance_of_point_as_float_tuple_of_point_as_float_tuple flo_poi_1_t flo_poi_4_t;;

test_number 26 (
len_seg = dis_seg
);;

(* Perimeter *)

let per_tri = perimeter_of_point_as_float_list_of_point_as_float_list_of_point_as_float_list flo_poi_1_l flo_poi_2_l flo_poi_3_l;;

test_number 27 (
(per_tri : float ) = 3. *. sqrt (2.)
);;

let per_tri = perimeter_of_point_as_float_tuple_of_point_as_float_tuple_of_point_as_float_tuple flo_poi_1_t flo_poi_2_t flo_poi_3_t;;

test_number 28 (
(per_tri : float ) = 3. *. sqrt (2.)
);;

let flo_poi_tt = (flo_poi_1_t, flo_poi_2_t, flo_poi_3_t) ;;
let per_tri = perimeter_of_triangle_as_float_tuple_trio flo_poi_tt;;

test_number 29 (
(per_tri : float ) =
4.24264068711928566
);;

(* Translation *)

(* P2 -> P3 by P3-P2 *)

let flo_opd_t = flo_poi_2_t;;

test_number 30 (
(flo_opd_t : float Tuple_t.tuple ) = 
Tuple_t.Trio (0., 1., 0.)
);;

let flo_e23_t = vector_as_float_tuple_of_point_as_float_tuple_of_point_as_float_tuple flo_poi_2_t flo_poi_3_t;;

test_number 31 (
(flo_e23_t : float Tuple_t.tuple ) = 
Tuple_t.Trio (0., -1., 1.)
);;

let flo_tra_t = translation_tuple_of_operand_as_float_tuple_of_vector_as_float_tuple flo_opd_t flo_e23_t;;

test_number 32 (
(flo_tra_t : float Tuple_t.tuple ) = 
Tuple_t.Trio (0., 0., 1.)
);;

let flo_opd_tl = flo_seg_tl;;

test_number 33 (
( flo_opd_tl : float Tuple_t.tuple list ) =
[Tuple_t.Trio (1., 0., 0.); 
 Tuple_t.Trio (0., 1., 1.)]
);;

let flo_tra_tl = translation_tuple_list_of_operand_as_float_tuple_list_of_vector_as_float_tuple flo_opd_tl flo_e23_t;;

test_number 34 (
  (flo_tra_tl : float Tuple_t.tuple list ) =
  [Tuple_t.Trio (1., -1., 1.); 
   Tuple_t.Trio (0., 0., 2.)]
);;

test_number 35 (
(flo_seg_td: float Tuple_t.tuple Duo_t.duo ) =
(Tuple_t.Trio (1., 0., 0.), 
 Tuple_t.Trio (0., 1., 1.))
);;

let flo_vec_t = vector_as_float_tuple_of_segment_as_float_tuple_duo flo_seg_td;;

test_number 36 (
(flo_vec_t : float Tuple_t.tuple ) = 
Tuple_t.Trio (-1., 1., 1.)
);;

let flo_tra_tl = translation_tuple_list_of_operand_as_float_tuple_list_of_segment_as_float_tuple_duo flo_opd_tl flo_seg_td;;

test_number 37 (
(flo_tra_tl : float Tuple_t.tuple list ) =
  [Tuple_t.Trio (0., 1., 1.); 
   Tuple_t.Trio (-1., 2., 2.)]
);;

(* Homothety *)

let flo_sca = 2.0;;

(* P1 C -> Pho *)

let flo_opd_t = flo_poi_1_t;;

test_number 38 (
(flo_opd_t : float Tuple_t.tuple ) = 
Tuple_t.Trio (1., 0., 0.)
);;

let flo_cen_t = flo_poi_2_t;;

test_number 39 (
(flo_cen_t : float Tuple_t.tuple ) = 
Tuple_t.Trio (0., 1., 0.)
);;

let flo_pho_t = homothety_tuple_of_operand_as_float_tuple_of_center_tuple_of_scale_factor flo_opd_t flo_cen_t flo_sca;;

test_number 40 (
(flo_pho_t : float Tuple_t.tuple ) = 
Tuple_t.Trio (2., -1., 0.)
);;

(* (-P1, P1) C -> Sho *)

let flo_poi_m_l = [-1.; 0.; 0.];;
let flo_poi_1_l = [ 1.; 0.; 0.];;
let flo_poi_m_t = Tuple_v.tuple_of_list flo_poi_m_l;;
let flo_poi_1_t = Tuple_v.tuple_of_list flo_poi_1_l;;
 
let flo_opd_tl = [flo_poi_m_t;  flo_poi_1_t];;

test_number 41 (
(flo_opd_tl : float Tuple_t.tuple list ) =
[Tuple_t.Trio (-1., 0., 0.); 
 Tuple_t.Trio (1., 0., 0.)]
);;

let flo_sho_tl = homothety_tuple_list_of_operand_as_float_tuple_list_of_center_tuple_of_scale_factor flo_opd_tl flo_cen_t flo_sca;;

test_number 42 (
(flo_sho_tl : float Tuple_t.tuple list ) =
  [Tuple_t.Trio (-2., -1., 0.); 
   Tuple_t.Trio (2., -1., 0.)]
);;

(* Symmetry *)

(* P1 P2 -> Psy *)

let flo_opd_l = flo_poi_1_l;;
let flo_cen_l = flo_poi_2_l;;

let flo_psy_t = symmetry_list_of_operand_as_float_list_of_center_as_float_list flo_opd_l flo_cen_l;;

test_number 43 (
(flo_psy_t : float list ) = 
[-1.; 2.; 0.]
);;
