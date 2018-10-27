open Make_test_v;;

testing "Measured_float_tuple_v with
       Measured_float_tuple_u_any.ml"

(* toplevel 
   #use "Measured_float_tuple_u_any.ml";; 

*)

open Measured_float_tuple_v;;

let flo_a = 1.1;;
let flo_b = 2.2;;
let flo_c = 3.3;;

let flo_t = Tuple_v.tuple_of_trio (flo_a, flo_b, flo_c);; 

test_number 1 ( 
(flo_t : float Tuple_t.tuple ) = 
Tuple_t.Trio (1.1, 2.2, 3.3)
);;

let uni = Units_v.make "angstrom" "";;

test_number 2 (
(uni : Units_t.units) =
Units_t.Units_actual
  (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)
);;

let flo_mt = make flo_t uni;;

test_number 3 (
(flo_mt : (float Tuple_t.tuple, Units_t.units) Doublet_t.doublet ) =
(Tuple_t.Trio (1.1, 2.2, 3.3),
 Units_t.Units_actual
   (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))
);;

(** {6 Float_tuple} *)

test_number 4 ( 
flo_t = float_tuple_off_measured_float_tuple flo_mt
);;

(** {6 Units_tuple} *)

test_number 5 ( 
uni = units_off_measured_float_tuple flo_mt
);;

(** {6 Naming} *)

let nam = name flo_mt;;

test_number 6 (
(nam : string ) =
"((1.100000, 2.200000, 3.300000), angstrom)"
);;

let sna_t = shortname flo_mt;;

test_number 7 (
(sna_t : string) =   
"((1.100000, 2.200000, 3.300000), length angstrom)"
);;
