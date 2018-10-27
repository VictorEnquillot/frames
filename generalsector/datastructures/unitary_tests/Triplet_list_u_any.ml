open Make_test_v;;

testing "Triplet_list_v with
   triplet_list_u_any.ml";;

(* toplevel 
   #use "triplet_list_u_any.ml";; 

*)


let l_l = ["a"; "b"; "c"];;
let m_l = [1.; 2.; 3.];;
let r_l = [1; 2; 3];;

let trl_l = Triplet_list_v.make l_l m_l r_l;;

test_number 1 (
trl_l
(* : (string * float * int) list *)
  = 
[("a", 1., 1); ("b", 2., 2); ("c", 3., 3)]
);;

test_number 2 (
Triplet_list_v.top trl_l
=
("c", 3., 3)
);;

test_number 3 (
Triplet_list_v.right_of_left_off_triplet_list "b" trl_l
=
2
);;

test_number 4 (
Triplet_list_v.filter_if_right (fun i->i >1) trl_l
=
[("b", 2., 2); ("c", 3., 3)]
);;

test_number 5 (
Triplet_list_v.filter_if_left (fun s->s ="b") trl_l
=
[("b", 2., 2)]
);;

test_number 6 (
Triplet_list_v.triplet_of_left_off_triplet_list "b" trl_l
=
("b", 2., 2)
);;

test_number 7 (
Triplet_list_v.triplet_right_list_include_of_left_off_triplet_list "b" trl_l
=
[("b", 2., 2); ("c", 3., 3)]
);;

test_number 8 (
Triplet_list_v.uptriplet_list_of_left_off_triplet_list "b" trl_l
=
[("c", 3., 3)]
);;

test_number 9 (
Triplet_list_v.uptriplet_list_off_triplet_list trl_l
=
[("b", 2., 2); ("c", 3., 3)]
);;

test_number 10 (
Triplet_list_v.left_doublet_list_off_triplet_list trl_l
=
[("a", 1.); ("b", 2.); ("c", 3.)]
);;

test_number 11 (
Triplet_list_v.right_doublet_list_off_triplet_list trl_l
=
[(1., 1); (2., 2); (3., 3)]
);;

test_number 12 (
Triplet_list_v.triplet_count_of_triplet_list trl_l
=
3
);;

test_number 13 (
Triplet_list_v.triplet_off_triplet_list trl_l
(* : string * int *)
= 
("a", 1., 1)
);;

test_number 14 (
Triplet_list_v.nth_triplet_of_int_off_triplet_list 1 trl_l
=
("b", 2., 2)
);;

test_number 15 (
Triplet_list_v.find_if_left (fun l -> l = "b") trl_l
(* : (string, int) Triplet_t.triplet *)
= 
("b", 2., 2)
);;

test_number 16 (
Triplet_list_v.find_if_right (fun r -> r = 2) trl_l
(* : (string, int) Triplet_t.triplet *)
= 
("b", 2., 2)
);;

test_number 17 (
Triplet_list_v.has_left "b" trl_l
(* : (string, int) Triplet_t.triplet *)
= 
true
);;

test_number 18 (
Triplet_list_v.has_right 2 trl_l
(* : (string, int) Triplet_t.triplet *)
= 
true
);;

test_number 19 (
Triplet_list_v.map (fun s -> s^"_") (fun f -> (-1. *. f)) (fun i -> i * 10) trl_l
(* : (string, int) Triplet_t.triplet list *)
=
[("a_", -1., 10); ("b_", -2., 20); ("c_", -3., 30)]
);;

test_number 20 (
Triplet_list_v.list_of_triplet_list (Format.sprintf "%s %f %i") trl_l
(* string list *)
= 
["a 1.000000 1"; "b 2.000000 2"; "c 3.000000 3"]
);;

