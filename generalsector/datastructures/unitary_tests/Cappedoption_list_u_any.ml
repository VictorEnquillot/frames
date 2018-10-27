open Make_test_v;;

testing "Cappedoption_list_v";;

(* toplevel 
   #use "Cappedoption_list_u_any.ml";; 

 *)

type ('i, 'f, 's) common_type =
  | Integer of 'i
  | Float of 'f
  | String of 's
;;

let f_l = [1.0; 2.0; 3.0; 4.0];;

let cpo_n = None;;
let cpo_s = Some 10;;

let col_n = Cappedoption_list_v.make cpo_n f_l;;
let col_s = Cappedoption_list_v.make cpo_s f_l;;

test_number 1 (
f_l (* : (float, string) Booted_list_t.booted_list *)
= 
([1.; 2.; 3.; 4.])
);;

test_number 2 (
col_n (* : ('a, float, string) Cappedoption_list_t.cappedoption_list *)
=
(None, [1.; 2.; 3.; 4.])
);;

test_number 3 (
col_s (* : ('a, float, string) Cappedoption_list_t.cappedoption_list *)
=
(Some 10, [1.; 2.; 3.; 4.])
);;

test_number 4 (
Cappedoption_list_v.list_part_off_cappedoption_list col_n
=
f_l
);;

test_number 5 (
Cappedoption_list_v.list_part_off_cappedoption_list col_s
=
f_l
);;

test_number 6 (
Cappedoption_list_v.capoption_off_cappedoption_list col_n
=
None
);;

test_number 7 (
Cappedoption_list_v.capoption_off_cappedoption_list col_s
=
Some 10
);;

test_number 8 (
Cappedoption_list_v.list_off_cappedoption_list (fun i -> Integer i) (fun f -> Float f) col_n
=
[Float 1.; Float 2.; Float 3.; Float 4.;]
);;

test_number 9 (
Cappedoption_list_v.list_off_cappedoption_list (fun i -> Integer i) (fun f -> Float f) col_s
=
[Integer 10; Float 1.; Float 2.; Float 3.; Float 4.;]
);;

test_number 10 (
Cappedoption_list_v.list_off_leftextended_by (fun i -> Integer i) (fun f -> Float f) col_n
=
[Float 1.; Float 2.; Float 3.; Float 4.;]
);;

test_number 11 (
Cappedoption_list_v.list_off_leftextended_by (fun i -> Integer i) (fun f -> Float f) col_s
=
[Integer 10; Float 1.; Float 2.; Float 3.; Float 4.;]
);;

test_number 12 (
Cappedoption_list_v.map (fun i -> i * 2) (fun f -> f *. 2.) col_n 
(*: (float, string) Booted_list_t.booted_list *)
= 
(None, [2.; 4.; 6.; 8.])
);;

test_number 13 (
Cappedoption_list_v.map (fun i -> i * 2) (fun f -> f *. 2.) col_s
(*: (float, string) Booted_list_t.booted_list *)
= 
(Some 20, [2.; 4.; 6.; 8.])
);;

test_number 14 (
Cappedoption_list_v.map2 (fun i j -> i * j) (fun f g  -> f *. g ) col_n col_n
(* : (float, string) Booted_list_t.booted_list*)
 = 
(None, [1.; 4.; 9.; 16.])
);;

test_number 15 (
Cappedoption_list_v.map2 (fun i j -> i * j) (fun f g  -> f *. g ) col_s col_n
(* : (float, string) Booted_list_t.booted_list*)
 = 
(None, [1.; 4.; 9.; 16.])
);;

test_number 16 (
Cappedoption_list_v.map2 (fun i j -> i * j) (fun f g  -> f *. g ) col_n col_s
(* : (float, string) Booted_list_t.booted_list*)
 = 
(None, [1.; 4.; 9.; 16.])
);;

test_number 17 (
Cappedoption_list_v.map2 (fun i j -> i * j) (fun f g  -> f *. g ) col_s col_s
(* : (float, string) Booted_list_t.booted_list*)
 = 
(Some 100, [1.; 4.; 9.; 16.])
);;

let str = Cappedoption_list_v.name (fun i -> Format.sprintf "%i" i) (fun f -> Format.sprintf "%f" f) col_n;;

test_number 18 (
(str : string ) = 
"(,  [\n   1.000000 2.000000 3.000000 4.000000\n  ])"
);;

let nam = Cappedoption_list_v.name (fun i -> Format.sprintf "%i" i) (fun f -> Format.sprintf "%f" f) col_s;;

test_number 19 (
(nam : string ) = 
"(10,  [\n   1.000000 2.000000 3.000000 4.000000\n  ])"
);;

let col = Cappedoption_list_v.make_of_list [1.; 4.; 9.; 16.];;

test_number 20 (
(col : ('a, float) Cappedoption_list_t.cappedoption_list ) =
  (None, [1.; 4.; 9.; 16.])
);;

let col = Cappedoption_list_v.make_of_capped_list (Capped_list_v.make "a" [1.; 4.; 9.; 16.]);;

test_number 21 (
( col : (string, float) Cappedoption_list_t.cappedoption_list ) =
  (Some "a", [1.; 4.; 9.; 16.])
);;

