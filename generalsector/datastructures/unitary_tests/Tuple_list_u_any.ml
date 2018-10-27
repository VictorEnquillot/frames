open Make_test_v;;

testing "Tuple_list_v with
   Tuple_list_u_any.ml";;

(* toplevel 
   #use "Tuple_list_u_any.ml";;
 
 *)

let lis_12 = ["a"; "b"; "c"; "d"; "l"; "m"; "n"; "o"; "w"; "x"; "y"; "z"];;

let s12_tl = Tuple_list_v.make lis_12;;

test_number 1 (
(s12_tl : string Tuple_t.tuple list ) =
[Tuple_t.Trio ("a", "b", "c"); 
 Tuple_t.Trio ("d", "l", "m");
 Tuple_t.Trio ("n", "o", "w"); 
 Tuple_t.Trio ("x", "y", "z")]
);;

let s12_ll = Tuple_list_v.list_list_of_tuple_list s12_tl;; 

test_number 2 (
(s12_ll : string list list ) =
[["a"; "b"; "c"]; ["d"; "l"; "m"]; ["n"; "o"; "w"]; ["x"; "y"; "z"]]
);;

let s12_l = Tuple_list_v.list_of_tuple_list s12_tl;; 

test_number 3 (
(s12_l : string list ) =
  ["a"; "b"; "c"; "d"; "l"; "m"; "n"; "o"; "w"; "x"; "y"; "z"]
);;

test_number 4 (
(s12_ll : string list list ) =
[["a"; "b"; "c"]; ["d"; "l"; "m"]; ["n"; "o"; "w"]; ["x"; "y"; "z"]]
);;

let fir_l = Tuple_list_v.first_list_off_tuple_list s12_tl;;

test_number 5 (
(fir_l : string list ) = 
["a"; "d"; "n"; "x"]
);;

let sec_l = Tuple_list_v.second_list_off_tuple_list s12_tl;;

test_number 6 (
(sec_l : string list ) = 
["b"; "l"; "o"; "y"]
);;

let thi_l = Tuple_list_v.third_list_off_tuple_list s12_tl;;

test_number 7 (
(thi_l : string list ) = 
["c"; "m"; "w"; "z"]
);;

let lis_4 = ["a"; "b"; "c"; "d"];;

let s04_tl = Tuple_list_v.make lis_4;;

test_number 8 (
(fir_l : string list ) = 
["a"; "d"; "n"; "x"]
);;

test_number 9 (
(s04_tl : string Tuple_t.tuple list ) =
[Tuple_t.Duo ("a", "b"); 
 Tuple_t.Duo ("c", "d")]
);;

let lis_5 = ["a"; "b"; "c"; "d"; "e"];;

let s05_tl = Tuple_list_v.make lis_5;;

test_number 10 (
(s05_tl : string Tuple_t.tuple list ) =
  [Tuple_t.Uno "a"; 
   Tuple_t.Uno "b"; 
   Tuple_t.Uno "c"; 
   Tuple_t.Uno "d";
   Tuple_t.Uno "e"]
);;

let lis = ["a"; "a"; "a"; "a"; "a"; "a"; "a"; "a"; "a"; "a"; "a"; "a"];;

let tup_l = Tuple_list_v.make lis;;

test_number 11 (
(tup_l : string Tuple_t.tuple list ) =
  [Tuple_t.Trio ("a", "a", "a"); Tuple_t.Trio ("a", "a", "a");
   Tuple_t.Trio ("a", "a", "a"); Tuple_t.Trio ("a", "a", "a")]
);;

let boo = Tuple_list_v.is_repeated_tuple_list_of_tuple_list tup_l;;

test_number 12 (
(boo : bool ) = 
true
);;

let ele = Tuple_list_v.only_element_of_repeated_tuple_list tup_l;;

test_number 13 (
(ele : string ) = 
"a"
);;

let nam = Tuple_list_v.name (fun s-> s) tup_l;;

test_number 14 (
(nam : string ) = 
" [\n   (a, a, a) (a, a, a) (a, a, a) (a, a, a)\n  ]"
);;

let nam_ic = Tuple_list_v.name_in_column (fun s-> s) tup_l;;

test_number 15 (
( nam_ic : string ) =
  " [\n   (a, a, a);\n   (a, a, a);\n   (a, a, a);\n   (a, a, a)\n  ]"
);;
