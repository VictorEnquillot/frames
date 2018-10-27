open Make_test_v;;

testing "Doublet_v";;

(* toplevel 
   #use "Doublet_u_any.ml";; 
 
*)


let dou = ("b", 2);;

let dou_mapped = Doublet_v.map (fun s -> s^"_") (fun i -> i+2) dou;;

test_number 1 (
dou_mapped
=
("b_", 4)
);;

test_number 2 (
Doublet_v.left_off_doublet dou
=
"b"
);;

test_number 3 (
Doublet_v.right_off_doublet dou
=
2
);;

test_number 4 (
Doublet_v.left_off_doublet dou
=
Doublet_v.first_off_doublet dou
);;

test_number 5 (
Doublet_v.right_off_doublet dou
=
Doublet_v.second_off_doublet dou
);;

let str = Doublet_v.name (Format.sprintf "%s") (Format.sprintf "%i") dou;;
test_number 6 (
str
=
"(b, 2)"
);;

let str = Doublet_v.name_with_separator (Format.sprintf "%s") (Format.sprintf "%i") ": " dou;;
test_number 7 (
str
=
"(b: 2)"
);;

let str = Doublet_v.name_bare (Format.sprintf "%s") (Format.sprintf "%i") dou;;
test_number 8 (
str
=
"b, 2"
);;

let str = Doublet_v.name_bare_with_separator (Format.sprintf "%s") (Format.sprintf "%i") ": " dou;;
test_number 9 (
str
=
"b: 2"
);;

let str = Doublet_v.name_capitalized (Format.sprintf "%s") (Format.sprintf "%i") dou;;
test_number 10 (
str
=
"(B, 2)"
);;

let str = Doublet_v.as_string (Format.sprintf "%s") (Format.sprintf "%i") dou;;
test_number 11 (
str
=
"(b, 2)"
);;

test_number 12 (
Doublet_v.map (fun s -> s ^ "_") (fun i -> 2 * i) ("b", 2)
=
("b_", 4)
);;

test_number 13 (
Doublet_v.map_left (fun s -> s ^ "_") ("b", 2)
=
("b_", 2)
);;

test_number 14 (
Doublet_v.map_right (fun i -> 2 * i) ("b", 2)
=
("b", 4)
);;

test_number 15 (
Doublet_v.compare String.compare String.compare ("a", "x") ("y", "b")
=
6
);;

test_number 16 (
Doublet_v.compare_left String.compare ("a", "x") ("y", "b")
=
-1
);;

test_number 17 (
Doublet_v.compare_right String.compare ("a", "x") ("y", "b")
=
1
);;

