open Make_test_v;;

testing "Trio_list_v with
   trio_list_u_any.ml";;

(* toplevel 
   #use "trio_list_u_any.ml";; 

*)

let l_l = ["a"; "b"; "c"; "d"];;
let m_l = ["l"; "m"; "n"; "o"];;
let r_l = ["w"; "x"; "y"; "z"];;

let tri_l = Trio_list_v.make l_l m_l r_l;;

test_number 1 (
( tri_l : (string * string * string) list ) =
 [("a", "l", "w"); ("b", "m", "x"); ("c", "n", "y"); ("d", "o", "z")]
);;

let big_l = l_l @ m_l @ r_l;;

test_number 2 (
(big_l : string list ) =
  ["a"; "b"; "c"; "d"; "l"; "m"; "n"; "o"; "w"; "x"; "y"; "z"]
);;

let tri_n_rem_l = List_v.first_trio_n_remainder_list_off_list big_l;;
 
test_number 3 (
(tri_n_rem_l : string Trio_t.trio * string list ) =
  (("c", "b", "a"), ["d"; "l"; "m"; "n"; "o"; "w"; "x"; "y"; "z"])
);;

let tri_l = Trio_list_v.trio_list_of_list big_l;;

test_number 4 (
(tri_l : string Trio_t.trio list ) =
 [("a", "b", "c"); ("d", "l", "m"); ("n", "o", "w"); ("x", "y", "z")]
);;

let lis_t = Trio_list_v.list_trio_of_list big_l;;

test_number 5 (
(lis_t : string list Trio_t.trio ) =
 (["a"; "b"; "c"; "d"], ["l"; "m"; "n"; "o"], ["w"; "x"; "y"; "z"])
);;

(***
let tri = Trio_list_v.top tri_l;;

test_number 6 (
(tri : string * string * string ) = 
("c", "n", "z")
);;

let ele = Trio_list_v.right_of_left_off_trio_list "b" tri_l;;

test_number 7 (
(ele : string ) = "y"
);;

test_number 8 (
Trio_list_v.filter_if_right (fun i->i >1) tri_l
=
[("b", 2., 2); ("c", 3., 3)]
);;

test_number 9 (
Trio_list_v.filter_if_left (fun s->s ="b") tri_l
=
[("b", 2., 2)]
);;

test_number 10 (
Trio_list_v.trio_of_left_off_trio_list "b" tri_l
=
("b", 2., 2)
);;

test_number 11 (
Trio_list_v.trio_right_list_include_of_left_off_trio_list "b" tri_l
=
[("b", 2., 2); ("c", 3., 3)]
);;

test_number 12 (
Trio_list_v.uptrio_list_of_left_off_trio_list "b" tri_l
=
[("c", 3., 3)]
);;

test_number 13 (
Trio_list_v.uptrio_list_off_trio_list tri_l
=
[("b", 2., 2); ("c", 3., 3)]
);;

test_number 14 (
Trio_list_v.left_doublet_list_off_trio_list tri_l
=
[("a", 1.); ("b", 2.); ("c", 3.)]
);;

test_number 15 (
Trio_list_v.right_doublet_list_off_trio_list tri_l
=
[(1., 1); (2., 2); (3., 3)]
);;

test_number 16 (
Trio_list_v.trio_count_of_trio_list tri_l
=
3
);;

test_number 17 (
Trio_list_v.trio_off_trio_list tri_l
(* : string * int *)
= 
("a", 1., 1)
);;

test_number 18 (
Trio_list_v.nth_trio_of_int_off_trio_list 1 tri_l
=
("b", 2., 2)
);;

test_number 19 (
Trio_list_v.find_if_left (fun l -> l = "b") tri_l
(* : (string, int) Trio_t.trio *)
= 
("b", 2., 2)
);;

test_number 20 (
Trio_list_v.find_if_right (fun r -> r = 2) tri_l
(* : (string, int) Trio_t.trio *)
= 
("b", 2., 2)
);;

test_number 21 (
Trio_list_v.has_left "b" tri_l
(* : (string, int) Trio_t.trio *)
= 
true
);;

test_number 22 (
Trio_list_v.has_right 2 tri_l
(* : (string, int) Trio_t.trio *)
= 
true
);;

let tri_ml = Trio_list_v.map (fun s -> s^"_") tri_l;;

test_number 23 (
(tri_ml : string Trio_t.trio list ) =
  [("a_", "b_", "c_"); ("d_", "l_", "m_"); ("n_", "o_", "w_");
   ("x_", "y_", "z_")]
);;

let str_l = Trio_list_v.list_off_trio_list tri_l

test_number 24 (
(str_l : string list ) = 
 ["a"; "b"; "c"; "d"; "l"; "m"; "n"; "o"; "w"; "x"; "y"; "z"]
);;

*)
