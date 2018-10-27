(* $Id: tbasis.ml,v 1.4 2007-08-22 16:56:56 colonna Exp $ *)

open Make_test_v;;
open Tprint;;

testing "Basis";;

let vector_0_c = Vector.unity_ith 0 4;;
let vector_0_e = [|1.0; 0.0; 0.0; 0.0|];;
let check = (vector_0_c = vector_0_e);;
test_number 1 check;;
when_fail check 1 tprint_vector "vector_0 " vector_0_c vector_0_e;;

let vector_1_c = Vector.unity_ith 1 4;;
let vector_1_e = [|0.0; 1.0; 0.0; 0.0|];;
let check = (vector_1_c = vector_1_e);;
test_number 2 check;;
when_fail check 2 tprint_vector "vector_0 " vector_0_c vector_0_e;;

let vector_2_c = Vector.unity_ith 2 4;;
let vector_2_e = [|0.0; 0.0; 1.0; 0.0|];;
let check = (vector_2_c = vector_2_e);;
test_number 3 check;;
when_fail check 3 tprint_vector "vector_0 " vector_0_c vector_0_e;;

let vector_3_c = Vector.unity_ith 3 4;;
let vector_3_e = [|0.0; 0.0; 0.0; 1.0|];;
let check = (vector_3_c = vector_3_e);;
test_number 4 check;;
when_fail check 4 tprint_vector "vector_0 " vector_0_c vector_0_e;;

let basis_c = Basis.canonical 4 ;;
let basis_e = [|vector_0_e; vector_1_e;  vector_2_e;  vector_3_e|]
let check = (basis_c = basis_e);;
test_number 5 check;;
when_fail check 5 tprint_basis "basis" basis_c basis_e;;

