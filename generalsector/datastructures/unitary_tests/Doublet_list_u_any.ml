open Make_test_v;;

testing "Doublet_list_v";;

(* toplevel 
   #use "Doublet_list_u_any.ml";; 
 
*)


let l_l = ["b"; "c"];;
let r_l = [2; 3];;
let d_l = Doublet_list_v.make l_l r_l;;
let dol = Doublet_list_v.prepend "a" 1 d_l;;

test_number 1 (
dol
=
 [("a", 1); ("b", 2); ("c", 3)]
);;

test_number 2 (
Doublet_list_v.top dol
=
("c", 3)
);;

test_number 3 (
Doublet_list_v.right_of_left_off_doublet_list "b" dol
=
2
);;

test_number 4 (
Doublet_list_v.doublet_of_left_off_doublet_list "b" dol
=
("b", 2)
);;

test_number 5 (
Doublet_list_v.doublet_list_of_left_off_doublet_list "b" dol
=
[("b", 2); ("c", 3)]
);;

test_number 6 (
Doublet_list_v.updoublet_list_of_left_off_doublet_list "b" dol
=
[("c", 3)]
);;

test_number 7 (
Doublet_list_v.updoublet_list_off_doublet_list dol
=
[("b", 2); ("c", 3)]
);;

test_number 8 (
Doublet_list_v.head_left_off_doublet_list dol
=
"a"
);;

test_number 9 (
Doublet_list_v.head_right_off_doublet_list dol
=
1
);;

test_number 10 (
Doublet_list_v.doublet_count_of_doublet_list dol
=
3
);;

test_number 11 (
Doublet_list_v.head_doublet_off_doublet_list dol
(* : string * int *)
= 
("a", 1)
);;

test_number 12 (
Doublet_list_v.nth_doublet_of_int_off_doublet_list 1 dol
=
("b", 2)
);;

test_number 13 (
Doublet_list_v.find_if_left (fun l -> l = "b") dol
(* : (string, int) Doublet_t.doublet *)
= 
("b", 2)
);;

test_number 14 (
Doublet_list_v.filter_if_left (fun l -> l = "a")  [("a", 1); ("a", 2); ("c", 3)]
(* : (string, int) Doublet_t.doublet *)
= 
[("a", 1); ("a", 2)]
);;

test_number 15 (
Doublet_list_v.find_if_right (fun r -> r = 2) dol
(* : (string, int) Doublet_t.doublet *)
= 
("b", 2)
);;

test_number 16 (
Doublet_list_v.filter_if_right (fun r -> r < 3)  [("a", 1); ("a", 2); ("c", 3)]
(* : (string, int) Doublet_t.doublet *)
= 
[("a", 1); ("a", 2)]
);;

test_number 17 (
Doublet_list_v.has_left "b" dol
(* : (string, int) Doublet_t.doublet *)
= 
true
);;

test_number 18 (
Doublet_list_v.has_right 2 dol
(* : (string, int) Doublet_t.doublet *)
= 
true
);;

test_number 19 (
Doublet_list_v.map (fun s -> s^"_") (fun i -> i * 10) dol
(* : (string, int) Doublet_t.doublet list *)
=
[("a_", 10); ("b_", 20); ("c_", 30)]
);;

test_number 20 (
Doublet_list_v.map_left (fun s -> s^"_") dol
(* : (string, int) Doublet_t.doublet list *)
=
[("a_", 1); ("b_", 2); ("c_", 3)]
);;

test_number 21 (
Doublet_list_v.map_right (fun i -> i * 10) dol
(* : (string, int) Doublet_t.doublet list *)
=
[("a", 10); ("b", 20); ("c", 30)]
);;

test_number 22 (
Doublet_list_v.int_mintomax_indexed_list_of_minimum_of_list 2 ["a"; "b"; "b"]
(* : (string, int) Doublet_list_t.doublet_list *)
=
[("a", 2); ("b", 3); ("b", 4)]
);;

test_number 23 (
Doublet_list_v.int_maxtomin_indexed_list_of_minimum_of_list 2 ["a"; "b"; "b"]
(* : (string, int) Doublet_list_t.doublet_list *)
=
[("a", 4); ("b", 3); ("b", 2)]
);;

test_number 24 (
Doublet_list_v.int_indexed_list_of_list ["a"; "b"; "b"; "c"; "d"]
=
[("a", 0);
 ("b", 1);
 ("b", 2);
 ("c", 3);
 ("d", 4);]
);;

test_number 25 (
Doublet_list_v.from_one_int_indexed_list_of_list ["a"; "b"; "b"; "c"; "d"]
=
[("a", 1);
 ("b", 2);
 ("b", 3);
 ("c", 4);
 ("d", 5);]
);;

test_number 26 (
Doublet_list_v.index_indexed_list_of_list ["a"; "b"; "b"; "c"; "d"]
=
[("a", Index_p.index 0); ("b", Index_p.index 1); ("b", Index_p.index 2);
 ("c", Index_p.index 3); ("d", Index_p.index 4)]
);;

test_number 27 (
Doublet_list_v.ordinal_indexed_list_of_list ["a"; "b"; "b"; "c"; "d"]
(* : (Stereochemical_index_t.stereochemical_index, string)
    Doublet_list_t.doublet_list *)
=
[("a", Ordinal_p.one);
 ("b", Ordinal_p.two);
 ("b", Ordinal_p.three);
 ("c", Ordinal_p.four);
 ("d", Ordinal_p.five);]
);;

test_number 28 (
Doublet_list_v.triangular_pair_list_of_list ["a"; "b"; "c"; "d"]
=
[("a", "b");("a", "c");("a", "d");("b", "c");("b", "d");("c", "d")]
);;

test_number 29 (
Doublet_list_v.list_off_doublet_list (fun i f -> f *. (float_of_int i)) [(1, 5.); (2, 3.)]
=
[5.; 6.]
);;

test_number 30 (
Doublet_list_v.doublet_list_of_left_off_doublet_list "b" [("a", "b");("a", "c");("a", "d");("b", "c");("b", "d");("c", "d")]
=
[("b", "c"); ("b", "d"); ("c", "d")]
);;

test_number 31 (
Doublet_list_v.updoublet_list_of_left_off_doublet_list "b" [("a", "b");("a", "c");("a", "d");("b", "c");("b", "d");("c", "d")]
=
[("b", "d"); ("c", "d")]
);;

test_number 32 (
Doublet_list_v.doublet_left_once_list_of_left_off_doublet_list "b" [("a", "b");("a", "c");("a", "d");("b", "c");("b", "d");("c", "d")]
=
[("b", "c"); ("b", "d")]
);;

test_number 33 (
Doublet_list_v.first_left_n_right_list_of_doublet_list [("a", "b");("a", "c");("a", "d");("b", "c");("b", "d");("c", "d")]
(* : string * string list *) 
   = 
   ("a", ["b"; "c"; "d"; "c"; "d"; "d"])
);;

test_number 34 (
Doublet_list_v.once_left_n_right_list_list_of_doublet_list [("a", "b");("a", "c");("a", "d");("b", "c");("b", "d");("c", "d")]
=
[("a", ["b"; "c"; "d"]); 
 ("b", ["c"; "d"]);
 ("c", ["d"])]
);;

test_number 35 (
Doublet_list_v.store "x" 4 dol
(* : (string, int) Doublet_list_t.doublet_list *)
=
[("x", 4); ("a", 1); ("b", 2); ("c", 3)]
);;

test_number 36 (
Doublet_list_v.replace_right_of_right_of_left_off_doublet_list 99 "a" dol
(* : (string, int) Doublet_list_t.doublet_list *)
=
[("a", 99); ("b", 2); ("c", 3)]
);;

let dol = Doublet_list_v.swap [("a", 1); ("b", 2); ("c", 3)];;
test_number 37 (
dol
(* : (int, string) Doublet_list_t.doublet_list *)
=
 [(1, "a"); (2, "b"); (3, "c")]
);;

let dol = Doublet_list_v.sort_by_left compare [("b", 2); ("c", 3); ("a", 1)];;

test_number 38 (
dol
(* : (string, int) Doublet_list_t.doublet_list *)
  =
[("a", 1); ("b", 2); ("c", 3)]
);;

let dol = Doublet_list_v.sort_by_right compare [("b", 2); ("c", 3); ("a", 1)];;

test_number 39 (
dol
(* : (string, int) Doublet_list_t.doublet_list *)
  =
[("a", 1); ("b", 2); ("c", 3)]
);;
