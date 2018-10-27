open Make_test_v;;

testing "Sextuplet_v";;

(* toplevel 
   #use "sextuplet_u_any.ml";; 
 *)

let spl = ("a", 2, 3.0, "b", 5, 4.0);;

test_number 1 (
spl
=
("a", 2, 3.0, "b", 5, 4.0)
);;
(*
test_number 2 (
Tri_v.map (fun s -> s^"_") tri (* : string Trio_t.trio *)
=
("a_", "b_", "c_")
);;

test_number 3 (
Tri_v.left_off_trio tri
=
"a"
);;

test_number 4 (
Tri_v.middle_off_trio tri
=
"b"
);;

test_number 5 (
Tri_v.right_off_trio tri
=
"c"
);;

test_number 6 (
Tri_v.left_off_trio tri
=
Tri_v.first_off_trio tri
);;

test_number 7 (
Tri_v.middle_off_trio tri
=
Tri_v.second_off_trio tri
);;

test_number 8 (
Tri_v.right_off_trio tri
=
Tri_v.third_off_trio tri
);;

test_number 9 (
Tri_v.name (fun s -> s) tri
=
"(a,b,c)"
);;

*)
