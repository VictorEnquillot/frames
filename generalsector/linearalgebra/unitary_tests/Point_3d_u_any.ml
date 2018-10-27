open Make_test_v;;

testing "Point_3d_v";;

(* toplevel 
   #use "tpoint_3d_v.ml";; 
 *)

module P3d_t = Point_3d_t
module P3d_v = Point_3d_v

let p1 = P3d_v.make "P1" 1.0 2.0 3.0;; 
let p2 = P3d_v.minus p1;;

test_number 1 (
p1 
=   
 {Point_3d_t.name = "P1"; Point_3d_t.position = [|1.; 2.; 3.|]}
);;

test_number 2 (
p2
=
{Point_3d_t.name = "Minus_P1"; Point_3d_t.position = [|-1.; -2.; -3.|]}
);;

test_number 3 (
P3d_v.difference p1 p1
=
Vector_3d_v.zero
);;
