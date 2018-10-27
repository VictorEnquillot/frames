open Make_test_v;;

testing "Booted_list_v";;

(* toplevel 
   #use "Booted_list_u_any.ml";; 

 *)

type ('f, 's) common_type =
  | Float of 'f
  | String of 's
;;

let f_l = [1.0; 2.0; 3.0; 4.0];;
let bot = "b";;

let bol = Booted_list_v.make f_l bot;;

test_number 1 (
bol (* : (float, string) Booted_list_t.booted_list *)
= 
([1.; 2.; 3.; 4.], "b")
);;

test_number 2 (
Booted_list_v.list_part_off_booted_list bol
=
f_l
);;

test_number 3 (
Booted_list_v.boot_part_off_booted_list bol
=
"b"
);;

test_number 4 (
Booted_list_v.list_off_booted_list (fun f -> Float f) (fun s -> String s) bol
=
[Float 1.; Float 2.; Float 3.; Float 4.; String "b"]
);;

test_number 5 (
Booted_list_v.map (fun f -> f *. 2.) (fun s -> s^"_") bol 
(*: (float, string) Booted_list_t.booted_list *)
= 
([2.; 4.; 6.; 8.], "b_")
);;

test_number 6 (
Booted_list_v.map2 (fun f g  -> f *. g ) (fun s t -> s^"_"^t) bol bol  
(* : (float, string) Booted_list_t.booted_list*)
 = 
([1.; 4.; 9.; 16.], "b_b")
);;

let nam = Booted_list_v.name (fun f -> Format.sprintf "%f" f) (fun s -> s) bol;;

test_number 7 (
(nam : string ) = 
"( [\n   1.000000 2.000000 3.000000 4.000000\n  ], b)"
);;

let bol = Booted_list_v.make_of_list ["a"; "b"; "C"];;

test_number 8 (
(bol : (string, string) Booted_list_t.booted_list ) = 
(["a"; "b"], "C")
);;
