(* $Id: tbasis_3d.ml,v 1.3 2007-08-22 16:56:56 colonna Exp $ *)

open Make_test_v;;

testing "Basis_3d";;

(* toplevel #use "tbasis_3d_v.ml";; *)

let vector_3d_0_c = Vector_3d_v.unity_x;;
let vector_3d_0_e = (1.0, 0.0, 0.0);;
let check = (vector_3d_0_c = vector_3d_0_e);;
test_number 1 check;;
when_fail check 1 tprint_vector_3d "vector_3d_0" vector_3d_0_c vector_3d_0_e;;

let vector_3d_1_c = Vector_3d_v.unity_y;;
let vector_3d_1_e = (0.0, 1.0, 0.0);;
let check = (vector_3d_1_c = vector_3d_1_e);;
test_number 2 check;;
when_fail check 2 tprint_vector_3d "vector_3d_1" vector_3d_1_c vector_3d_1_e;;

let vector_3d_2_c = Vector_3d_v.unity_z;;
let vector_3d_2_e = (0.0, 0.0, 1.0);;
let check = (vector_3d_2_c = vector_3d_2_e);;
test_number 3 check;;
when_fail check 3 tprint_vector_3d "vector_3d_2" vector_3d_2_c vector_3d_2_e;;

let basis_3d_c = Basis_3d.canonical;;
let basis_3d_e = [|vector_3d_0_e; vector_3d_1_e;  vector_3d_2_e|]
let check = (basis_3d_c = basis_3d_e);;
test_number 4 check;;
when_fail check 4 tprint_basis_3d "basis_3d" basis_3d_c basis_3d_e;;



