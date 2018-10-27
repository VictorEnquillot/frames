open Make_test_v;;

testing "Coordinate_operation_measure_v
        Coordinate_operation_measure_u_translation_tra_bc.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Coordinate_operation_measure_u_translation_tra_bc.ml";;

*)

(* open Coordinate_operation_measure_v;; *)

let mea_hom_opd_tl =
  [Tuple_t.Trio
     ((0.5,
       Units_t.Units_actual
	 (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)),
      (0.499999999999999889,
       Units_t.Units_actual
	 (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)),
      (0.707106781186547573,
       Units_t.Units_actual
	 (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)))]
;;

let uni_opd_tl = List.map (Tuple_v.map Measure_v.units_off_measure) mea_hom_opd_tl;;
 
test_number 1 (
(uni_opd_tl : Units_t.units Tuple_t.tuple list ) =
  [Tuple_t.Trio
    (Units_t.Units_actual
      (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr),
     Units_t.Units_actual
      (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr),
     Units_t.Units_actual
      (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr))]
);; 

let uni_opd = Tuple_list_v.only_element_of_repeated_tuple_list uni_opd_tl;;

test_number 2 (
( uni_opd : Units_t.units ) =
  Units_t.Units_actual
   (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)
);;

let mea_hom_seg_tl =
  [Tuple_t.Trio
     ((1.,
       Units_t.Units_actual
	 (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)),
      (0.,
       Units_t.Units_actual
	 (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)),
      (0.,
       Units_t.Units_actual
	 (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)));
   Tuple_t.Trio
     ((6.12303176911188629e-17,
       Units_t.Units_actual
	 (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)),
      (1.,
       Units_t.Units_actual
	 (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)),
      (1.,
       Units_t.Units_actual
	 (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)))]
;;


let uni_seg_tl = List.map (Tuple_v.map Measure_v.units_off_measure) mea_hom_seg_tl;;

test_number 3 (
( uni_seg_tl : Units_t.units Tuple_t.tuple list ) =
  [Tuple_t.Trio
    (Units_t.Units_actual
      (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom),
     Units_t.Units_actual
      (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom),
     Units_t.Units_actual
      (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom));
   Tuple_t.Trio
    (Units_t.Units_actual
      (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom),
     Units_t.Units_actual
      (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom),
     Units_t.Units_actual
      (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))]
);;

let uni_seg = Tuple_list_v.only_element_of_repeated_tuple_list uni_seg_tl;;

test_number 4 (
(uni_seg : Units_t.units ) =
  Units_t.Units_actual
   (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)
);;

let flo_opd_tl = List.map (Tuple_v.map Measure_v.float_off_measure) mea_hom_opd_tl;;
let flo_seg_tl = List_v.map (Tuple_v.map Measure_v.float_off_measure) mea_hom_seg_tl;;
let flo_seg_td = Duo_v.duo_of_list flo_seg_tl;;

test_number 5 (
(flo_opd_tl : float Tuple_t.tuple list ) =
  [Tuple_t.Trio (0.5, 0.499999999999999889, 0.707106781186547573)]
);;

test_number 6 (
(flo_seg_tl : float Tuple_t.tuple list ) =
  [Tuple_t.Trio (1., 0., 0.); Tuple_t.Trio (6.12303176911188629e-17, 1., 1.)]
);;

test_number 7 (
  (flo_seg_td : float Tuple_t.tuple Duo_t.duo) =
  (Tuple_t.Trio (1., 0., 0.), Tuple_t.Trio (6.12303176911188629e-17, 1., 1.))
);;
 
(* let flo_tra_tl =  *)
(*   Coordinate_operation_float_v.translation_tuple_list_of_operand_as_float_tuple_list_of_segment_as_float_tuple_duo  *)
(*     flo_opd_tl flo_seg_td ;; *)

(* let flo_vec_t = Coordinate_operation_float_v.vector_as_float_tuple_of_segment_as_float_tuple_duo flo_seg_td ;; *)


(* let mea_tl = List.map (Tuple_v.map (fun f -> Measure_v.make f uni_seg)) flo_seg_tl;; *)
  let uni_opd_tl = List.map (Tuple_v.map Measure_v.units_off_measure) mea_hom_opd_tl;;
  let uni_opd = 
    try Tuple_list_v.only_element_of_repeated_tuple_list uni_opd_tl
    with Failure _ ->
      Error_messages_v.print_fatal_error __LOC__ "translation"
	"Units where unique is Measure_homogeneous_operand_tuple_list"
	(Format.sprintf "Measure_homogeneous_operand_tuple_list is :@.    %s"
	   (Tuple_list_v.name Units_v.name uni_opd_tl)
	)
	"Check"
 ;;

test_number 8 (
(uni_opd : Units_t.units ) =
Units_t.Units_actual
  (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)
);;
  
let uni_seg_tl = List.map (Tuple_v.map Measure_v.units_off_measure) mea_hom_seg_tl;;

let uni_seg = 
    try Tuple_list_v.only_element_of_repeated_tuple_list uni_seg_tl
    with Failure _ ->
      Error_messages_v.print_fatal_error __LOC__ "translation"
	"Units where unique is Measure_homogeneous_operand_tuple_list"
      (Format.sprintf "Measure_homogeneous_operand_tuple_list is :@.    %s"
	 (Tuple_list_v.name Units_v.name uni_seg_tl)
      )
	"Check"
 ;;
  
test_number 9 (
(uni_seg : Units_t.units ) =
  Units_t.Units_actual
   (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)
);;

test_number 10 (
(uni_seg <> uni_opd)
);;


let flo_opd_tl = List.map (Tuple_v.map Measure_v.float_off_measure) mea_hom_opd_tl;;

test_number 11 (
(flo_opd_tl : float Tuple_t.tuple list ) =
[Tuple_t.Trio (0.5, 0.499999999999999889, 0.707106781186547573)]
);;


let flo_seg_tl = List_v.map (Tuple_v.map Measure_v.float_off_measure) mea_hom_seg_tl;;

test_number 12 (
(flo_seg_tl : float Tuple_t.tuple list ) =
[Tuple_t.Trio (1., 0., 0.); 
 Tuple_t.Trio (6.12303176911188629e-17, 1., 1.)]
);;

let uac_seg = Units_v.units_actual_off_units uni_seg;;

test_number 13 (
(uac_seg : Units_actual_t.units_actual ) =
  Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom
);;

let fco_seg =  Units_canonical_classical_conversion_v.conversion_factor_of_units_actual uac_seg;;

test_number 14 (
(fco_seg : float ) = 
1.
);;

let uac_opd = Units_v.units_actual_off_units uni_opd;;

test_number 15 (
(uac_opd : Units_actual_t.units_actual ) =
  Units_actual_t.Units_actual_length Units_actual_length_t.Bohr
);;

let fco_opd =  Units_canonical_classical_conversion_v.conversion_factor_of_units_actual uac_opd;;

test_number 16 (
(fco_opd : float ) = 
0.52917721092
);;
	
let con_seg = fco_seg /. fco_opd;;

test_number 17 (
(con_seg : float ) = 
1.88972612456506184
);;
	
let flo_seg_con_tl = Tuple_list_v.map (fun f -> f *. con_seg) flo_seg_tl;; 

test_number 18 (
(flo_seg_con_tl : float Tuple_t.tuple list ) =
  [Tuple_t.Trio (1.88972612456506184, 0., 0.);
   Tuple_t.Trio
    (1.15708530956325602e-16, 1.88972612456506184, 1.88972612456506184)]
);;

let flo_seg_td = Duo_v.duo_of_list flo_seg_con_tl;;

test_number 19 (
(flo_seg_td : float Tuple_t.tuple Duo_t.duo ) =
  (Tuple_t.Trio (1.88972612456506184, 0., 0.),
   Tuple_t.Trio
    (1.15708530956325602e-16, 1.88972612456506184, 1.88972612456506184))
);;


let flo_vec_t = Coordinate_operation_float_v.vector_as_float_tuple_of_segment_as_float_tuple_duo flo_seg_td;;

test_number 20 (
(flo_vec_t : float Tuple_t.tuple ) =
  Tuple_t.Trio
   (1.88972612456506162, -1.88972612456506184, -1.88972612456506184)
);;

let t = List.map
    (fun o_t ->
      (Tuple_v.map2 (fun f_o f_v -> f_o +. f_v) o_t flo_vec_t)
    )
    flo_opd_tl;;

test_number 21 (
(t : float Tuple_t.tuple list ) =
  [Tuple_t.Trio
    (2.38972612456506184, -1.38972612456506184, -1.18261934337851438)]
);; 

let flo_tra_tl = 
  Coordinate_operation_float_v.translation_tuple_list_of_operand_as_float_tuple_list_of_segment_as_float_tuple_duo 
    flo_opd_tl flo_seg_td;;

test_number 22 (
(flo_tra_tl : float Tuple_t.tuple list ) =
  [Tuple_t.Trio
     (2.38972612456506184, -1.38972612456506184, -1.18261934337851438)]
);;

test_number 23 (
(mea_hom_opd_tl : (float * Units_t.units) Tuple_t.tuple list ) =
[Tuple_t.Trio
   ((0.5,
     Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)),
    (0.499999999999999889,
     Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)),
    (0.707106781186547573,
     Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)))]
);;

let mea_con_seg_tl = List.map (Tuple_v.map (fun f -> Measure_v.make f uni_opd)) flo_seg_con_tl;;
 
test_number 24 ( 
(mea_con_seg_tl :
  (float, Units_t.units) Doublet_t.doublet Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((1.88972612456506184,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)),
     (0.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)),
     (0.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)));
   Tuple_t.Trio
    ((1.15708530956325602e-16,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)),
     (1.88972612456506184,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)),
     (1.88972612456506184,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)))]
);;

let mea_tra_tl = List.map (Tuple_v.map (fun f -> Measure_v.make f uni_opd)) flo_tra_tl;; 

test_number 25 (
( mea_tra_tl : (float, Units_t.units) Doublet_t.doublet Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((2.38972612456506184,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)),
     (-1.38972612456506184,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)),
     (-1.18261934337851438,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)))]
);;   

