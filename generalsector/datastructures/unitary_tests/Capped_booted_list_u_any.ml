open Make_test_v;;

testing "Capped_booted_list_v";;

(* toplevel 
   #use "Capped_booted_list_u_any.ml";; 

*)

type ('i, 'f, 's) common_type =
  | Integer of 'i
  | Float of 'f
  | String of 's
;;

let cap = 10;;
let f_l = [1.0; 2.0; 3.0; 4.0];;
let bot = "b";;

let cbl = Capped_booted_list_v.make cap f_l bot;;

test_number 1 (
cbl  (* : (int, float, string) Capped_booted_list_t.list_capped_booted *)
=
 (10, [1.; 2.; 3.; 4.], "b")
);;

test_number 2 (
Capped_booted_list_v.cap_part_off_list_capped_booted cbl
=
cap
);;

test_number 3 (
Capped_booted_list_v.list_part_off_list_capped_booted cbl
=
f_l
);;

test_number 4 (
Capped_booted_list_v.boot_part_off_list_capped_booted cbl
=
"b"
);;

test_number 5 (
Capped_booted_list_v.capped_list_part_off_list_capped_booted cbl
(* : (int, float) Capped_list_t.capped_list *)
= 
(10, [1.; 2.; 3.; 4.])
);;

test_number 6 (
Capped_booted_list_v.list_off_list_capped_booted (fun i -> Integer i) (fun f -> Float f) (fun s -> String s) cbl
=
[Integer 10; Float 1.; Float 2.; Float 3.; Float 4.; String "b"]
);;

test_number 7 (
Capped_booted_list_v.map (fun i -> i + 5) (fun f -> f *. 2.) (fun s -> s^"_") cbl 
(*: (float, string) Booted_list_t.booted_list *)
= 
(15, [2.; 4.; 6.; 8.], "b_")
);;

test_number 8 (
Capped_booted_list_v.map2 (fun i j -> i + j) (fun f g  -> f *. g ) (fun s t -> s^"_"^t) cbl cbl  
(* :  (int, float, string) Capped_booted_list_t.list_capped_booted *)
 = 
(20, [1.; 4.; 9.; 16.], "b_b")
);;

let nam_cbl = Capped_booted_list_v.name (fun i -> Format.sprintf "%i" i) (fun f -> Format.sprintf "%f" f) (fun s -> s) cbl;;

test_number 9 (
(nam_cbl : string ) =
 "(10,  [\n   1.000000 2.000000 3.000000 4.000000\n  ], b)"
);;

let cbl = Capped_booted_list_v.merge_of_capped_list_of_booted_list (Capped_list_v.make 20 [1.; 4.;]) (Booted_list_v.make [9.; 16.;] "x");;
test_number 10 (
(cbl : (int, float, string) Capped_booted_list_t.list_capped_booted ) =
  (20, [1.; 4.; 9.; 16.], "x")
);;
