open Make_test_v;;

(** {3 Vector_3d_v.} *)

testing "Vector_3d_v";;

(* toplevel #use "tvector_3d_v.ml";; *)

let pi = (acos(-1.));;
let v1 = [|1.0; 2.0; 3.0|];;
let v2 = [|2.0; 4.0; 6.0|];;
let v3 = [|3.0; 6.0; 9.0|];;
let w =  [|3.0; 2.0; 1.0|];;

test_number 1 (
Vector_3d_v.zero = [|0.; 0.; 0.|]
);;

test_number 2 (
Vector_3d_v.unity_x = [|1.; 0.; 0.|]
);;

test_number 3 (
Vector_3d_v.unity_y = [|0.; 1.; 0.|]
);;

test_number 4 (
Vector_3d_v.unity_z = [|0.; 0.; 1.|]
);;

test_number 5 (
Vector_3d_v.sum_fun_on_i (fun x -> 2. *. x) v1
= 12.   
);;

test_number 6 (
Vector_3d_v.sigma v1 
= 6.   
);;

test_number 7 (
Vector_3d_v.norm2 v1
= 
14.
);;

test_number 8 (
Vector_3d_v.norm v1
= 3.74165738677394133
);;

test_number 9 (
Vector_3d_v.modulus v1
= 3.74165738677394133
);;

test_number 10 (
Vector_3d_v.minus v1
  = 
[|-1.0; -2.0; -3.0|]
);;

test_number 11 (
Vector_3d_v.addition v1 (Vector_3d_v.minus v1)
= 
Vector_3d_v.zero
);;

test_number 12 (
Vector_3d_v.difference v1 v1
= 
Vector_3d_v.zero
);;

test_number 13 (
Vector_3d_v.is_equal_at_epsilon_float v1 [|1.0; 2.0; 3.0000000000000001|]
);;

test_number 14 (
Vector_3d_v.scaling v1 2.
= 
[|2.; 4.; 6.|]
);;

test_number 15 (
Vector_3d_v.dividing v2 2.
= [|1.; 2.; 3.|]
);;

test_number 16 (
Vector_3d_v.bifloat_vector_3d_of_bivector_3d (v1, v2)
= 
 [|(1., 2.); (2., 4.); (3., 6.)|]
);;

test_number 17 (
Vector_3d_v.pair_product v1 v1
= 
[|1.; 4.; 9.|]
);;

test_number 18 (
Vector_3d_v.dot_product v1 v1
= 
14.
);;

test_number 19 (
Vector_3d_v.tensor_product v1 v2
= 
((2., 4., 6.), (4., 8., 12.), (6., 12., 18.))
);;

test_number 20 (
Vector_3d_v.external_product v1 w
= 
[|-4.; 8.; -4.|]
);;

(** {6 Tests specific to 3d} *)

test_number 21 (
Vector_3d_v.vector_3d_of_vector [|1.0; 2.0; 3.0|]
= 
[|1.; 2.; 3.|]
);;

test_number 22 (
Vector_3d_v.vector_of_vector_3d [|1.0; 2.0; 3.0|]
= 
[|1.0; 2.0; 3.0|]
);;

let f x = 
  let (v, a, b, c) = x in
  Vector_3d_v.rotation v a b c
;;

test_raises_some_exc f (v1, pi, pi, pi);;




