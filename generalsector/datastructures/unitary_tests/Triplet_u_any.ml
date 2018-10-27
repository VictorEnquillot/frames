open Make_test_v;;

testing "Triplet_v";;

(* toplevel 
   #use "triplet_u_any.ml";; 
 *)


let tri = ("b", 2, 5.0);;
let tri_map = Triplet_v.map (fun s -> s^"_") (fun i -> i+2) (fun f -> f+.5.) tri;;

test_number 1 (
tri_map
=
("b_", 4, 10.0)
);;

let tri_map2 = Triplet_v.map2 (fun s t -> s^t) (fun i j -> i+j) (fun f g -> f+.g) ("b", 2, 5.0) ("c", 3, 5.0);;

test_number 2 (
tri_map2
=
("bc", 5, 10.)
);;

test_number 3 (
Triplet_v.left_off_triplet tri
=
"b"
);;

test_number 4 (
Triplet_v.middle_off_triplet tri
=
2
);;

test_number 5 (
Triplet_v.right_off_triplet tri
=
5.0
);;

test_number 6 (
Triplet_v.left_off_triplet tri
=
Triplet_v.first_off_triplet tri
);;

test_number 7 (
Triplet_v.middle_off_triplet tri
=
Triplet_v.second_off_triplet tri
);;

test_number 8 (
Triplet_v.right_off_triplet tri
=
Triplet_v.third_off_triplet tri
);;

let tri_res = Triplet_v.reset_of_left_off_triplet "d" tri;;
test_number 9 (
tri_res
  = 
("d", 2, 5.0)
);;





