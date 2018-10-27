open Make_test_v;;

testing "Extended_by_v";;

(* toplevel 
   #use "extended_by_u_any.ml";; 
 *)


let bas = "a";;
let lst = [1; 2; 3];;
let dbl = Doublet_v.make lst bas;;

let ext = Extended_by_v.make lst bas;;

let ext_bas = Extended_by_v.make_basic bas;;
let ext_0u = Extended_by_v.make [] bas;;
let ext_1u = Extended_by_v.extend_by_one 1 ext_0u;;
let ext_2u = Extended_by_v.extend_by_one 2 ext_1u;;
let ext_3u = Extended_by_v.extend_by_one 3 ext_2u;;

test_number 1 (
ext (* : (int, string) Extended_by_t.extended_by *)
=
Extended_by_t.Extended_by ([1; 2; 3], "a")
);;

test_number 2 (
ext_bas (* : (int, string) Extended_by_t.extended_by *)
=
Extended_by_t.Basic "a"
);;

test_number 3 (
ext_0u (* : ('a, string) Extended_by_t.extended_by *)
=
Extended_by_t.Extended_by ([], "a")
);;

test_number 4 (
ext_1u (* : (int, string) Extended_by_t.extended_by *)
 =
  Extended_by_t.Extended_by ([1], "a")
);;

test_number 5 (
ext_2u
(* : (int, string) Extended_by_t.extended_by *)
=
Extended_by_t.Extended_by ([2; 1], "a")
);;

test_number 6 (
Extended_by_v.count ext_2u
(* : int *)
=
2
);;

test_number 7 (
Extended_by_v.basic_off_extended_by ext_2u
(* : string *)
=
"a"
);;

test_number 8 (
Extended_by_v.extension_off_extended_by ext_2u
(* : int *)
=
2
);;

test_number 9 (
Extended_by_v.map (fun i -> i) (fun s -> 10.) ext_2u
(* : (int, float) Extended_by_t.extended_by *)
=
Extended_by_t.Extended_by ([2; 1], 10.)
);;

test_number 10 (
Extended_by_v.name (fun i -> Format.sprintf "%i" i) (fun s -> s) ext_2u 
=
"22a"
);;
