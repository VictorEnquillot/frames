open Make_test_v;;

testing "Nonuplet_v";;

(* toplevel 
   #use "Nonuplet_u_any.ml";; 
 *)

let oct = ("a", 2, 3.0, "b", 5, 4.0, true, "8");;
let non_or = Nonuplet_v.make_of_octuplet_of_right oct "c";;

test_number 1 (
non_or
(* : string * int * float * string * int * float * bool * string * string *)
=
  ("a", 2, 3., "b", 5, 4., true, "8", "c")
);;

let non_lo = Nonuplet_v.make_of_left_of_octuplet "x" oct;;

test_number 2 (
non_lo
(* : string * int * float * string * int * float * bool * string * string *)
=
  ("x", "a", 2, 3., "b", 5, 4., true, "8")
);;

