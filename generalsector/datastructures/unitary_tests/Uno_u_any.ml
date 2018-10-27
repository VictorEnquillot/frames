open Make_test_v;;

testing "Uno_v";;

(* toplevel 
   #use "Uno_u_any.ml";; 

*)

let ele = ("a");;

test_number 1 (
(ele : string) = "a"
);;

let uno = Uno_v.make ele;;

test_number 2 (
(uno : string Uno_t.uno ) = 
"a"
);;

let lef = Uno_v.left_off_uno uno;;

test_number 3 (
(lef : string Uno_t.uno ) = 
"a"
);;

let fir = Uno_v.first_off_uno uno;;

test_number 4 (
(fir : string Uno_t.uno ) = 
"a"
);;

let uno_ = Uno_v.map (fun s -> s^"_") uno;;

test_number 5 (
(uno_ : string Uno_t.uno ) = 
"a_"
);;

let uno_ = Uno_v.map2 (fun s t -> s^t) uno_ uno;;

test_number 6 (
(uno_ : string Uno_t.uno ) = 
"a_a"
);;

let uno_l = Uno_v.list_of_uno uno;;

test_number 7 (
(uno_l : string Uno_t.uno list ) = 
["a"]
);;

let uno = Uno_v.uno_of_list uno_l;;

test_number 8 (
(uno : string ) = 
"a"
);;

let nam = Uno_v.name (fun s -> s) uno;;

test_number 9 (
nam
=
"(a)"
);;

test_number 10 (
Uno_v.is_uno uno
);;

