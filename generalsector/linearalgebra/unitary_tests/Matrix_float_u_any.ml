(* $Id: tmatrix_float.ml,v 1.2 2007-09-19 19:50:38 colonna Exp $ *)

open Make_test_v;;

testing "Matrix_float";;

let epsilon = 0.0000001;;

test_number 1 ( 
Array2.dim_1 [| [|1.0; 2.0; 3.0|]; [|4.0; 5.0; 6.0|]; |] = 2
);;

test_number 2 ( 
Array2.dim_2 [| [|1.0; 2.0; 3.0|]; [|4.0; 5.0; 6.0|]; |] = 3
);;

test_number 3 (
Array2.is_squared [| [|1.0; 2.0|]; [|2.0; 3.0|]; |]
);;

test_number 4 (
not (Array2.is_squared [| [|1.0; 2.0; 3.0|]; [|4.0; 5.0; 6.0|]; |])
);;

test_number 5 (
Array2.transposed [|[|1.; 2.; 3.|]; [|4.; 5.; 6.|]|] =
[| [|1.0; 4.0|]; [|2.0; 5.0|]; [|3.0; 6.0|]; |]
);;

test_number 6 (
Array2.to_list_list [| [|1.0; 2.0|]; [|3.0; 4.0|]; |] =
[[1.; 2.]; [3.; 4.]]
);;

test_number 7 (
 Array2.to_list [| [|1.0; 2.0|]; [|3.0; 4.0|]; |] =
 [1.; 2.; 3.; 4.]
);;

test_number 8 (
 Matrix_float_v.scaling  [| [|1.0; 2.0|]; [|3.0; 4.0|]; |] 2.0 =
 [|[|2.; 4.|]; [|6.; 8.|]|]
);;

test_number 9 (
Matrix_float_v.is_symmetric_at_epsilon  epsilon  [| [|1.0; 2.0|]; [|2.0; 3.0|]; |]
);;

test_number 10 (
not (Matrix_float_v.is_symmetric_at_epsilon  epsilon  [| [|1.0; 2.000001|]; [|2.0; 3.0|]; |])
);;

test_number 11 (
Array2.to_array [| [|1.0; 2.0; 3.0|]; [|4.0; 5.0; 6.0|]; |] =
[|1.; 2.; 3.; 4.; 5.; 6.|]
);;

(* TODO
let left_mult_c = Matrix_float_v.left_matrix_mult mat_2_2 mat_2_3;;
let left_mult_e = [|
    [|1.0; 0.0|];
    [|0.0; 1.0|];
  |]
let check = (left_mult_c = left_mult_e);;
test_number 12 check;;
when_fail check 12 tprint_matrix_float "left_mult" left_mult_c left_mult_e;;

let determinant_c = Matrix_float_v.determinant mat_2_2;;
let determinant_e = -2.0;;
let check = (determinant_c = determinant_e);;
test_number 13 check;;
when_fail check 13 tprint_scalar "determinant" determinant_c determinant_e;;

let inversion_c = Matrix_float_v.inversion mat_2_2;;
let inversion_e = [|
    [|-2.0; -1.5|];
    [|-1.0; -0.5|];
  |]
let check = (inversion_c = inversion_e);;
test_number 14 check;;
when_fail check 14 tprint_matrix_float "inversion" inversion_c inversion_e;;

test_number 15 (
Array2.diagonal  [| [|1.0; 2.0|]; [|2.0; 3.0|]; |] = [|1.0; 3.0|]
);;

test_number 16 (
Matrix_float_v.make_diagonal [|1.0; 2.0|] =  [| [|1.0; 0.0|]; [|2.0; 3.0|]; |]
);;

*)
