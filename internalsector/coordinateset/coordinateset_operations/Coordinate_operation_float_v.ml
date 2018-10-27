(** {3 Coordinate_operation_float_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : OCOO:Coordinate_operation_float_v";
   "Definition : a Point is a float_tuple";
   "Definition : a Vector is a Point or float_tuple"; 
   "Definition : a Segment is a Point duo or float_tuple_duo"; 
   "Definition : a Triangle is a Point trio or float_tuple_trio"; 
   "What-is-it : ";
   "How-is-it-done : ";
   "Author : François Colonna 22 juin 2017 at 11:45:00+02:00 a Vector is a Point";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(* Vector V : float_tuple *)

let vector_float_tuple_of_point_float_tuple_of_point_float_tuple flo_poi_1_t flo_poi_2_t =
(* P1->P2 -------> V *)
  Float_tuple_v.difference_of_float_tuple_of_float_tuple flo_poi_1_t flo_poi_2_t 
;;

let vector_float_tuple_of_segment_float_tuple_duo flo_seg_td =
(* (P1->P2) -------> V *)
  let (flo_poi_1_t, flo_poi_2_t) = flo_seg_td in
  vector_float_tuple_of_point_float_tuple_of_point_float_tuple flo_poi_1_t flo_poi_2_t
;;

let vector_float_tuple_of_segment_float_tuple_tuple flo_seg_tt =
(* (P1->P2) -------> V *)
  let flo_seg_td = Tuple_v.duo_of_tuple flo_seg_tt in
  vector_float_tuple_of_segment_float_tuple_duo flo_seg_td
;;

(* Norm *)

let norm_of_float_list flo_l =
(* V -------> L *)
  List_v.norm_of_float_list flo_l
;;

let norm_of_float_tuple flo_t =
(* V -------> L *)
  Float_tuple_v.norm_of_float_tuple flo_t
;;

(* Length *)

let length_of_vector_float_list flo_vec_l =
  norm_of_float_list flo_vec_l
;;

let length_of_vector_float_tuple flo_vec_t =
  norm_of_float_tuple flo_vec_t
;;

let length_of_float_tuple_of_float_tuple flo_t1 flo_t2 =
  let flo_t = Float_tuple_v.difference_of_float_tuple_of_float_tuple flo_t1 flo_t2 in
  norm_of_float_tuple flo_t
;;

let length_of_float_tuple_duo flo_td =
  let flo_t = Float_tuple_v.difference_of_float_tuple_duo flo_td in
  norm_of_float_tuple flo_t
;;

let length_of_segment_float_tuple_duo flo_seg_td =
  length_of_float_tuple_duo flo_seg_td
;;

(* Distance *)

let distance_of_point_float_tuple_of_point_float_tuple flo_poi_1_t flo_poi_2_t =
  length_of_float_tuple_of_float_tuple flo_poi_1_t flo_poi_2_t
;;

let distance_of_point_float_tuple_duo flo_poi_td =
  length_of_float_tuple_duo flo_poi_td
;;

(* Perimeter *)

let perimeter_of_point_float_tuple_of_point_float_tuple_of_point_float_tuple flo_poi_1_t flo_poi_2_t flo_poi_3_t =
  let flo_dab = distance_of_point_float_tuple_of_point_float_tuple flo_poi_1_t flo_poi_2_t in
  let flo_dbc = distance_of_point_float_tuple_of_point_float_tuple flo_poi_2_t flo_poi_3_t in
  let flo_dca = distance_of_point_float_tuple_of_point_float_tuple flo_poi_3_t flo_poi_1_t in
  flo_dab +. flo_dbc +. flo_dca
;;

let perimeter_of_triangle_float_tuple_trio flo_poi_tt =
  let (flo_poi_1_t, flo_poi_2_t, flo_poi_3_t) = flo_poi_tt in
  perimeter_of_point_float_tuple_of_point_float_tuple_of_point_float_tuple flo_poi_1_t flo_poi_2_t flo_poi_3_t 
;;

(* Surface *)

let surface_of_triangle_float_tuple_trio flo_tri_tt =
  (* let (flo_poi_1_t, flo_poi_2_t, flo_poi_3_t) = flo_tri_tt in *)
  (* let flo_poi_1_l = Tuple_v.list_of_tuple flo_poi_1_t in *)
  (* let flo_poi_2_l = Tuple_v.list_of_tuple flo_poi_2_t in *)
  (* let flo_poi_3_l = Tuple_v.list_of_tuple flo_poi_3_t in *)
  Utilities_v.not_yet_implemented "Coordinate_operation_float_v" "surface_of_triangle_tuple_trio"
;;

(* Volume *)

let volume_of_triangle_float_tuple_trio flo_tri_tt =
    Utilities_v.not_yet_implemented "Coordinate_operation_float_v" "volume_of_operand_tuple_list_of_segment_float_tuple_duo"
;;

(* Symmetry *)

let symmetry_tuple_of_operand_float_tuple_of_center_float_tuple flo_opd_t flo_cen_t =
(* P (on) ----- C ---- P' *)
  Tuple_v.map2 (fun f_o f_c -> (2. *. f_c) -. f_o) flo_opd_t flo_cen_t
;;

let symmetry_list_of_operand_float_list_of_center_float_list flo_opd_l flo_cen_l =
(* P (on) ----- C ---- P' *)
  List.map2 (fun f_o f_c -> (2. *. f_c) -. f_o) flo_opd_l flo_cen_l
;;

(* Translation *)
(* P (opd) + V -------> P' *)

let translation_point_float_tuple_of_operand_float_tuple_of_vector_float_tuple flo_opd_t flo_vec_t =
  Float_tuple_v.addition_of_float_tuple_of_float_tuple flo_opd_t flo_vec_t
;;

(* Homothety *)
(* C (center) --- k (scale_factor) --- P (opd) -------> P' *)
(* CP * k -------> P' *)

let homothety_point_float_tuple_of_operand_float_tuple_of_center_float_tuple_of_scale_factor flo_opd_t flo_cen_t flo_sca =
  let flo_cp_t =  
    vector_float_tuple_of_point_float_tuple_of_point_float_tuple 
      flo_opd_t 
      flo_cen_t
  in
  let cp_k_t = Float_tuple_v.multiply_of_float_tuple_of_float flo_cp_t flo_sca in
  Float_tuple_v.addition_of_float_tuple_of_float_tuple cp_k_t flo_opd_t
;;

