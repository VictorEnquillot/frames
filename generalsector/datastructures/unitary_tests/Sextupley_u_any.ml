open Make_test_v;;

testing "Trio_v";;

(* toplevel 
   #use "trio_u_any.ml";; 
 *)


let tpl = ("a", 2, 3.0);;
let tri = Tri_v.make_of_triplet (fun s -> s) (fun i -> "b") (fun f -> "c")  tpl;;

test_number 1 (
Tri_v.map (fun s -> s^"_") tri (* : string Trio_t.trio *)
=
("a_", "b_", "c_")
);;

test_number 2 (
Tri_v.left_off_trio tri
=
"a"
);;

test_number 3 (
Tri_v.middle_off_trio tri
=
"b"
);;

test_number 4 (
Tri_v.right_off_trio tri
=
"c"
);;

test_number 5 (
Tri_v.left_off_trio tri
=
Tri_v.first_off_trio tri
);;

test_number 6 (
Tri_v.middle_off_trio tri
=
Tri_v.second_off_trio tri
);;

test_number 7 (
Tri_v.right_off_trio tri
=
Tri_v.third_off_trio tri
);;

test_number 8 (
Tri_v.name (fun s -> s) tri
=
"(a,b,c)"
);;

