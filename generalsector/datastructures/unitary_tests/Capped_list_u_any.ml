open Make_test_v;;

testing "Capped_list_v";;

(* toplevel 
   #use "Capped_list_u_any.ml";; 

*)


type ('i, 'f, 's) common_type =
  | Integer of 'i
  | Float of 'f
  | String of 's
;;

let cap = 10;;
let f_l = [1.0; 2.0; 3.0; 4.0];;

let cal = Capped_list_v.make cap f_l;;

test_number 1 (
Capped_list_v.make_of_list f_l
=
(1.0, [2.0; 3.0; 4.0])
);;

test_number 2 (
cal  (* : (int, float, string) Capped_list_t.capped_list *)
=
 (10, [1.; 2.; 3.; 4.])
);;

test_number 3 (
Capped_list_v.cap_part_off_capped_list cal
=
cap
);;

test_number 4 (
Capped_list_v.list_part_off_capped_list cal
=
f_l
);;

test_number 5 (
Capped_list_v.list_off_capped_list (fun i -> Integer i) (fun f -> Float f) cal
=
[Integer 10; Float 1.; Float 2.; Float 3.; Float 4.]
);;

test_number 6 (
Capped_list_v.map (fun i -> i + 5) (fun f -> f *. 2.) cal 
(* : (int, float) Capped_list_t.capped_list *)
= 
(15, [2.; 4.; 6.; 8.])
);;

test_number 7 (
Capped_list_v.map2 (fun i j -> i + j) (fun f g  -> f *. g ) cal cal  
(* : (int, float) Capped_list_t.capped_list *)
= 
(20, [1.; 4.; 9.; 16.])
);;

let nam = Capped_list_v.name (fun i -> Format.sprintf "%i" i) (fun f -> Format.sprintf "%f" f) cal;;

test_number 8 (
(nam : string ) = 
"(10,  [\n   1.000000 2.000000 3.000000 4.000000\n  ])"
);;

let cpl = Capped_list_v.merge cal cal;;

test_number 9 (
(cpl : (int, float) Capped_list_t.capped_list) =
(10, [1.; 2.; 3.; 4.; 1.; 2.; 3.; 4.])
);;

let cpl = Capped_list_v.rightextend cal [1.; 2.; 3.; 4.];;

test_number 10 (
(cpl : (int, float) Capped_list_t.capped_list ) =
(10, [1.; 2.; 3.; 4.; 1.; 2.; 3.; 4.])
);;
