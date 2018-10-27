open Make_test_v;;

testing "Cappedoption_booted_list_v";;

(* toplevel 
   #use "Cappedoption_booted_list_u_any.ml";; 

*)

type ('i, 'f, 's) common_type =
  | Integer of 'i
  | Float of 'f
  | String of 's
;;

let f_l = [1.0; 2.0; 3.0; 4.0];;
let bot = "b";;

let bol = Booted_list_v.make f_l bot;;

let ocp_n = None;;
let ocp_s = Some 10;;

let obl_n = Cappedoption_booted_list_v.make ocp_n bol;;
let obl_s = Cappedoption_booted_list_v.make ocp_s bol;;

test_number 1 (
bol (* : (float, string) Booted_list_t.booted_list *)
= 
([1.; 2.; 3.; 4.], "b")
);;

test_number 2 (
obl_n (* : ('a, float, string) Cappedoption_booted_list_t.cappedoption_booted_list *)
=
(None, ([1.; 2.; 3.; 4.], "b"))
);;

test_number 3 (
obl_s (* : ('a, float, string) Cappedoption_booted_list_t.cappedoption_booted_list *)
=
(Some 10, ([1.; 2.; 3.; 4.], "b"))
);;

test_number 4 (
Cappedoption_booted_list_v.booted_list_off_cappedoption_booted_list obl_n
=
bol
);;

test_number 5 (
Cappedoption_booted_list_v.booted_list_off_cappedoption_booted_list obl_s
=
bol
);;

test_number 6 (
Cappedoption_booted_list_v.capoption_off_cappedoption_booted_list obl_n
=
None
);;

test_number 7 (
Cappedoption_booted_list_v.capoption_off_cappedoption_booted_list obl_s
=
Some 10
);;
 
test_number 8 (
Cappedoption_booted_list_v.list_off_leftextended_by (fun i -> Integer i) (fun f -> Float f) (fun s -> String s) obl_n
=
[Float 1.; Float 2.; Float 3.; Float 4.; String "b"]
);;

test_number 9 (
Cappedoption_booted_list_v.list_off_leftextended_by (fun i -> Integer i) (fun f -> Float f) (fun s -> String s) obl_s
=
[Integer 10; Float 1.; Float 2.; Float 3.; Float 4.; String "b"]
);;

test_number 10 (
Cappedoption_booted_list_v.map (fun i -> i * 2) (fun f -> f *. 2.) (fun s -> s^"_") obl_n 
(*: (float, string) Booted_list_t.booted_list *)
= 
(None, ([2.; 4.; 6.; 8.], "b_"))
);;

test_number 11 (
Cappedoption_booted_list_v.map (fun i -> i * 2) (fun f -> f *. 2.) (fun s -> s^"_") obl_s
(*: (float, string) Booted_list_t.booted_list *)
= 
(Some 20, ([2.; 4.; 6.; 8.], "b_"))
);;

test_number 12 (
Cappedoption_booted_list_v.map2 (fun i j -> i * j) (fun f g  -> f *. g ) (fun s t -> s^"_"^t) obl_n obl_n
(* : (float, string) Booted_list_t.booted_list*)
 = 
(None, ([1.; 4.; 9.; 16.], "b_b"))
);;

test_number 13 (
Cappedoption_booted_list_v.map2 (fun i j -> i * j) (fun f g  -> f *. g ) (fun s t -> s^"_"^t) obl_s obl_n
(* : (float, string) Booted_list_t.booted_list*)
 = 
(None, ([1.; 4.; 9.; 16.], "b_b"))
);;

test_number 14 (
Cappedoption_booted_list_v.map2 (fun i j -> i * j) (fun f g  -> f *. g ) (fun s t -> s^"_"^t) obl_n obl_s
(* : (float, string) Booted_list_t.booted_list*)
 = 
(None, ([1.; 4.; 9.; 16.], "b_b"))
);;

test_number 15 (
Cappedoption_booted_list_v.map2 (fun i j -> i * j) (fun f g  -> f *. g ) (fun s t -> s^"_"^t) obl_s obl_s
(* : (float, string) Booted_list_t.booted_list*)
 = 
(Some 100, ([1.; 4.; 9.; 16.], "b_b"))
);;

let nam = Cappedoption_booted_list_v.name (fun i -> Format.sprintf "%i" i) (fun f -> Format.sprintf "%f" f) (fun s -> s) obl_n;;

test_number 16 (
(nam : string ) = 
"(, ( [\n   1.000000 2.000000 3.000000 4.000000\n  ], b))"
);;

let nam = Cappedoption_booted_list_v.name (fun i -> Format.sprintf "%i" i) (fun f -> Format.sprintf "%f" f) (fun s -> s) obl_s;;

test_number 17 (
(nam : string ) = 
"(10, ( [\n   1.000000 2.000000 3.000000 4.000000\n  ], b))"
);;


