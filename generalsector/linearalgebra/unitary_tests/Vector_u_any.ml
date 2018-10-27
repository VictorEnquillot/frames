open Make_test_v;;

(** {3 Vector_v.} *)

testing "Vector_v";;

(* toplevel 
   #use "tvector_v.ml";; 
 *)

module Vec_v = Vector_v

let vector_v = [1.0; 2.0; 3.0; 4.0];;
let vector_w = [1.0; 1.0; 1.0; 1.0];;
let vector_x = [1.0; 2.0];;
let vector_y = [3.0; 4.0];;

test_number 1 (
Vec_v.length [1.0; 2.0] 
= 
2
);;

test_number 2 (
Vec_v.nonzero_at_int_of_float_of_int 2 1. 5 
(* : Vector_t.vector *)
= 
[0.; 0.; 1.; 0.; 0.]
);;

test_number 3 (
Vec_v.minus [1.0; 2.0] = [-1.0; -2.0]
);;

test_number 4 (
Vec_v.addition [1.0; 2.0]  [-1.0; -2.0] 
= Vec_v.zero_of_int 2
);;

test_number 5 (
Vec_v.difference [1.0; 2.0]  [1.0; 2.0] = Vec_v.zero_of_int 2
);;

test_number 6 (
Vec_v.unity_of_int 2 
  = 
[1.; 1.]
);;

test_number 7 (
Vec_v.unity_at_int_of_int 2 4 
(* : Vector_t.vector *)
= 
[0.; 0.; 1.; 0.;]
);;

test_number 8 (
Vec_v.norm [1.0; 2.0] 
  = 
Vec_v.modulus [1.0; 2.0]
);;

test_number 9 (
Vec_v.norm2 [1.0; 2.0] 
  = 
5.0
);;

test_number 10 (
Vec_v.bifloat_vector_of_bivector ([1.0; 2.0],  [-1.0; -2.0])
=
[(1., -1.); (2., -2.)]
);;

test_number 11 (
Vec_v.dividing [1.0; 2.0] 2.0 =  [0.5; 1.0]
);;

test_number 12 (
Vec_v.scaling [1.0; 2.0] 0.5 =  [0.5; 1.0] 
);;

test_number 13 (
Vec_v.pair_product [1.0; 2.0]  [-1.0; -2.0] = [-1.; -4.]
);;

test_number 14 (
Vec_v.dot_product [1.0; 2.0]  [-1.0; -2.0] = -5.0
);;

test_number 15 (
Vec_v.tensor_product [1.0; 2.0]  [-1.0; -2.0] =
[ [-1.; -2.]; 
   [-2.; -4.] ]
);;

test_number 16 (
Vec_v.center_of_mass [ (1.0, [1.0; 2.0]); (1.0, [1.0; 2.0]) ] =
[1.; 2.]
);;

let list = [1.0; 2.0; 3.0; 4.0];;
let list_of_list = [[11.0; 12.0; 13.0; 14.0]; [21.0; 22.0; 23.0; 24.0]];;

let array = Array.of_list list;;
let array_of_array = 
 [[11.0; 12.0; 13.0; 14.0]; [21.0; 22.0; 23.0; 24.0]];;

