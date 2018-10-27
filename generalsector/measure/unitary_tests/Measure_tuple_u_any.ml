open Make_test_v;;

testing "Measure_tuple_v with
       Measure_tuple_u_any.ml"

(* toplevel 
   #use "Measure_tuple_u_any.ml";; 

*)

open Measure_tuple_v;;

let flo_a = 1.1;;
let flo_b = 2.2;;
let flo_c = 3.3;;

let flo_t = Tuple_v.tuple_of_trio (flo_a, flo_b, flo_c);; 

test_number 1 ( 
(flo_t : float Tuple_t.tuple ) = 
Tuple_t.Trio (1.1, 2.2, 3.3)
);;

let uni_a = Units_v.make "angstrom" "";;
let uni_b = Units_v.make "angstrom" "";;
let uni_c = Units_v.make "angstrom" "";;

let uni_t = Tuple_v.tuple_of_trio (uni_a, uni_b, uni_c);; 

test_number 2 (
(uni_t : Units_t.units Tuple_t.tuple ) =
  Tuple_t.Trio
   (Units_t.Units_actual
     (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom),
    Units_t.Units_actual
     (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom),
    Units_t.Units_actual
     (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))
);;

let mea_t = Tuple_v.map2 
      Measure_v.make 
      flo_t 
      uni_t;;

test_number 3 (
(mea_t : (float, Units_t.units) Doublet_t.doublet Tuple_t.tuple ) =
  Tuple_t.Trio
   ((1.1,
     Units_t.Units_actual
      (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)),
    (2.2,
     Units_t.Units_actual
      (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)),
    (3.3,
     Units_t.Units_actual
      (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)))
);;

(** {6 Float_tuple} *)

test_number 4 ( 
flo_t = float_tuple_off_measure_tuple mea_t
);;

(** {6 Units_tuple} *)

test_number 5 ( 
uni_t = units_tuple_off_measure_tuple mea_t
);;

(** {6 Naming} *)

let nam_t = name mea_t;;
test_number 6 (
(nam_t : string ) =
 "((1.100000, angstrom), (2.200000, angstrom), (3.300000, angstrom))"
);;

let sna_t = shortname mea_t;;
test_number 7 (
(sna_t : string) =   
 "(1.1 ang, 2.2 ang, 3.3 ang)"
);;

let dim_t = dimension mea_t;;
test_number 8 (
(dim_t : string) =   
"(length, length, length)"
);;
