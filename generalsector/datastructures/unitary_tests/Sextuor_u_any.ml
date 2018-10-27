open Make_test_v;;

testing "Sextuor_v";;

(* toplevel 
   #use "sextuor_u_any.ml";; 
 *)


let sxu = Sextuor_v.make "a" "b" "c" "d" "e" "f";;

test_number 1 (
Sextuor_v.map (fun s -> s^"_") sxu (* : string Sextuor_t.sextuor *)
=
("a_", "b_", "c_", "d_", "e_", "f_")
);;

test_number 2 (
Sextuor_v.left_off_sextuor sxu
=
"a"
);;

test_number 3 (
Sextuor_v.middle_duo_off_sextuor sxu
=
("c", "d")
);;

test_number 4 (
Sextuor_v.right_off_sextuor sxu
=
"f"
);;

test_number 5 (
Sextuor_v.left_trio_off_sextuor sxu
=
("a", "b", "c")
);;

test_number 6 (
Sextuor_v.compare String.compare sxu (Sextuor_v.map (fun s -> s^"_") sxu)
=
-154
);;

test_number 7 (
Sextuor_v.right_trio_off_sextuor sxu
=
("d", "e", "f")
);;

test_number 8 (
Sextuor_v.name (fun s -> s) sxu
=
"(a,b,c,d,e,f)"
);;

