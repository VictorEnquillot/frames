open Make_test_v;;

testing "Trio_v";;

(* toplevel 
   #use "trio_u_any.ml";; 
 *)


let tpl = ("a", 2, 3.0);;
let tri = Trio_v.make_of_triplet (fun s -> s) (fun i -> "b") (fun f -> "c")  tpl;;

test_number 1 (
Trio_v.map (fun s -> s^"_") tri (* : string Trio_t.trio *)
=
("a_", "b_", "c_")
);;

test_number 2 (
Trio_v.left_off_trio tri
=
"a"
);;

test_number 3 (
Trio_v.middle_off_trio tri
=
"b"
);;

test_number 4 (
Trio_v.right_off_trio tri
=
"c"
);;

test_number 5 (
Trio_v.left_off_trio tri
=
Trio_v.first_off_trio tri
);;

test_number 6 (
Trio_v.middle_off_trio tri
=
Trio_v.second_off_trio tri
);;

test_number 7 (
Trio_v.right_off_trio tri
=
Trio_v.third_off_trio tri
);;

let nam = Trio_v.name (fun s -> s) tri;;
test_number 8 (
nam
=
"(a, b, c)"
);;

let tri = Trio_v.trio_of_list [1; 2; 3];;
    
test_number 9 (
(tri : int Trio_t.trio ) =
    (1, 2, 3)
   );;

let ftd = Trio_v.first_n_third_duo_off_trio tri;;

test_number 10 (
(ftd : int Duo_t.duo ) = 
(1, 3)
);;
