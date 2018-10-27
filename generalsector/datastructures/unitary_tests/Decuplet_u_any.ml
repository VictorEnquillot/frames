open Make_test_v;;

testing "Decuplet_v";;

(* toplevel 
   #use "decuplet_u_any.ml";; 
 *)


let dec = ("a", 2, 3, 4, 5, 6, 7, "b", 9., 10);;

test_number 1 (
Decuplet_v.left_off_decuplet dec
=
"a"
);;

test_number 2 (
Decuplet_v.right_off_decuplet dec
=
10
);;

test_number 3 (
Decuplet_v.right_triplet_off_decuplet dec
=
("b", 9., 10)
);;

test_number 4 (
Decuplet_v.right_third_off_decuplet dec
=
"b"
);;





