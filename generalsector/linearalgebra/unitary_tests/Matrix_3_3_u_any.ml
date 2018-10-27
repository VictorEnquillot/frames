(* $Id: tmatrix_3_3.ml,v 1.3 2007-08-22 16:56:56 colonna Exp $ *)

open Make_test_v;;

(** {3 Matrix_3_3_v_v.} *)

testing "Matrix_3_3_v_v";;

(* toplevel #use "tmatrix_3_3_v_v.ml";; *)

let matrix = (
  (1.1, 1.2, 1.3),
  (2.1, 2.2, 2.3),
  (3.1, 3.2, 3.3)
 )
;;

let unity_e = (
  (1.0, 0.0, 0.0),
  (0.0, 1.0, 0.0),
  (0.0, 0.0, 1.0)
 )
;;
let unity_c = Matrix_3_3_v.unity;;

test_number 1 (
Matrix_3_3_v.diagonal matrix 
=
(1.1, 2.2, 3.3)
);;

test_number 2 (
Matrix_3_3_v.scaling matrix 2.0
=
 (
  (2.2, 2.4, 2.6),
  (4.2, 4.4, 4.6),
  (6.2, 6.4, 6.6)
 )
);;

test_number 3 (
Matrix_3_3_v.transposed matrix
=
(
 (1.1, 2.1, 3.1),
 (1.2, 2.2, 3.2),
 (1.3, 2.3, 3.3)
)
);;
