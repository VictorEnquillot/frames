open Make_test_v;;

testing "Determinant_p";;

(* toplevel
   #use "tdeterminant_p.ml";;
 *)

module Det_p = Determinant_p

let f_a2 = [[1.; 2.;];
	     [2.; 3.;]];;

let det = Det_p.make f_a2;;
let dim = Det_p.dimension_off_determinant det;;
let mat = Det_p.matrix_off_determinant det;;
 
test_number 1 (
 dim 
=
2
);;

test_number 2 (
mat
  =
f_a2
);;

