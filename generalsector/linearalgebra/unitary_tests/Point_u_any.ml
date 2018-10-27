open Make_test_v;;

testing "Point";;

(* toplevel 
   #use "tpoint_v.ml";; 
*)

let zero_4 = Vector_v.zero_of_int 4;;
let vct_a = [1.0; 2.0; 3.0; 4.0];;
let pnt_a = Point_v.make vct_a;;
let vct_b = Vector_v.minus vct_a;;
let pnt_b = Point_v.make vct_b;;

test_number 1 (
zero_4
=
[0.; 0.; 0.; 0.]
);;

test_number 2 (
pnt_a 
(* : Point_t.point *) 
= 
[1.; 2.; 3.; 4.]
);;

test_number 3 (
pnt_b 
(* : Point_t.point *) 
= 
[-1.; -2.; -3.; -4.]
);;

test_number 4 (
Point_v.difference pnt_a pnt_b
(* : Vector_t.vector *)
=
[2.; 4.; 6.; 8.]
);;

test_number 5 (
Point_v.distance pnt_a pnt_a
=
0.
);;

test_number 6 (
Point_v.distance pnt_a pnt_b
=
10.9544511501033224
);;

test_number 7 (
Point_v.addition_with_vector pnt_a vct_b
(* : Point_t.point *)
= 
[0.; 0.; 0.; 0.]
);;

test_number 8 (
Point_v.scaling pnt_a 2.0
(* : Point_t.point *) 
= 
[2.; 4.; 6.; 8.]
);;

test_number 9 (
Point_v.translation pnt_a vct_a
(* : Point_t.position *)
= 
[2.; 4.; 6.; 8.]
);;

test_number 10 (
Point_v.homothecy pnt_a pnt_b 2.0
(* : Point_t.point : *) 
= 
[4.; 8.; 12.; 16.]
);;

