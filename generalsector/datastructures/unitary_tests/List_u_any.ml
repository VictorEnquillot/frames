open Make_test_v;;

testing "List_v with
   List_u_any";;

(* toplevel 
   #use "List_u_any.ml";; 

*)

(** {6 Testing} *)

let list = [1.0; 2.0; 3.0; 4.0];;
let list_of_list = [[11.0; 12.0; 13.0; 14.0]; [21.0; 22.0; 23.0; 24.0]];;

test_number 1 (
List_v.skip_empty_list_off_list_list [["a";"b"]; ["c"]; []]
(* : string list list *)
= 
[["a"; "b"]; ["c"]]
);;

test_number 2 (
List_v.skip_empty_list_off_list_list [["a";"b"]; []; ["c"]]
(* : string list list *)
= 
[["a"; "b"]; ["c"]]
);;

test_number 3 (
List_v.skip_empty_list_off_list_list [[]; ["a";"b"]; []; ["c"]]
(* : string list list *)
= 
[["a"; "b"]; ["c"]]
);;

let boo = List_v.are_included_of_list_of_list [2; 5; 4] [1; 2; 2; 5; 4; 4];;
test_number 4 (boo);;

let boo = List_v.are_included_of_list_of_list [2; 5; 4] [1; 2; 2; 5; 5; 4];;
test_number 5 (not boo);;

let boo = List_v.are_included_sets_of_list_of_list [2; 4; 5] [1; 2; 2; 5; 4; 4];;
test_number 6 (boo);;

let boo = List_v.are_included_sets_of_list_of_list [6; 4; 2] [1; 2; 2; 5; 5; 4];;
test_number 7 (not boo);;

let boo = List_v.is_sublist_of_list_of_list [2; 5; 4] [1; 2; 2; 5; 5; 4];;
test_number 8 (not boo);;

let sub = List_v.sublist_of_int_of_length_of_list 2 50 ["a"; "b"; "c"; "d"; "e"; "f"; "g"];;

test_number 9 (
(sub : string list) = 
["c"; "d"; "e"; "f"; "g"]
);;

let sub = List_v.sublist_of_int_of_length_of_list 2 3 ["a"; "b"; "c"; "d"; "e"; "f"; "g"];;

test_number 10 (
(sub : string list ) =
["c"; "d"; "e"]
);;

let sub = List_v.sublist_excluded_of_predicate_of_length_of_list (fun s -> s="a") 3 ["a"; "b"; "c"; "d"; "e"; "f"; "g"];;

test_number 11 (
(sub : string list ) = 
["b"; "c"; "d"]
);;

let sub = List_v.sublist_excluded_of_predicate_of_length_of_list (fun s -> s="c") 3 ["a"; "b"; "c"; "d"; "e"; "f"; "g"];;

test_number 12 (
(sub : string list ) = 
["d"; "e"; "f"]
);;

let sub = List_v.sublist_included_of_predicate_of_length_of_list (fun s -> s="c") 3 ["a"; "b"; "c"; "d"; "e"; "f"; "g"];;

test_number 13 (
(sub : string list ) = 
["c"; "d"; "e"]
);;

let sub = List_v.sublist_excluded_of_predicate_of_predicate_of_list (fun s -> s = "c") (fun s -> s = "e") ["a"; "b"; "c"; "d"; "e"; "f"; "g"];;

test_number 14 (
(sub : string list ) = 
["d"]
);;

let sub = List_v.sublist_included_of_predicate_of_predicate_of_list (fun s -> s = "c") (fun s -> s = "e") ["a"; "b"; "c"; "d"; "e"; "f"; "g"];;

test_number 15 (
(sub : string list ) = 
["c"; "d"; "e"]
);;

let sub = List_v.sublist_of_predicate_included_of_predicate_excluded_of_list 
    (fun s -> s = "c") 
    (fun s -> s = "e") 
    ["a"; "b"; "c"; "d"; "e"; "f"; "g"];;

test_number 16 (
(sub : string list ) = 
["c"; "d"]
);;

let pre_fro = (fun s -> s = "c");;
let pre_to = (fun s -> s = "c");;
let lis = ["a"; "b"; "c"; "d"; "c"; "f"; "g"];;

let rig_l = List_v.right_list_excluded_of_predicate_of_list pre_fro lis;;
let lef_l = List_v.left_list_excluded_of_predicate_of_list pre_to rig_l;;
let sub = List_v.sublist_of_predicate_excluded_of_predicate_excluded_of_list pre_fro pre_to lis;;

test_number 17 (
(sub : string list ) = 
["d"]
);;

let sub = List_v.sublist_of_predicate_excluded_of_predicate_included_of_list (fun s -> s = "c") (fun s -> s = "e") ["a"; "b"; "c"; "d"; "e"; "f"; "g"];;

test_number 18 (
(sub : string list ) = 
["d"; "e"]
);;

test_number 19 (
List_v.is_substring_of_string_of_string "efg" "abcdefghi"
);;


test_number 20 (
List_v.are_included_of_string_of_string "efg" "abedefghi"
);;

let boo = List_v.are_head_coinciding_of_list_of_list [1; 1; 1; 3] [2; 1; 1; 3] ;;
test_number 21 (not boo);;

let boo = List_v.are_head_coinciding_of_list_of_list [1; 1; 1; 3] [1; 1; 1] ;;
test_number 22 (boo);;

let boo = List_v.are_head_coinciding_of_list_of_list [1; 1; 1] [1; 1; 1; 3] ;;
test_number 23 (boo);;

let boo = List_v.are_head_coinciding_of_list_of_list [1; 1; 3] [1; 1; 1; 3] ;;
test_number 24 (not boo);;

let boo = List_v.are_included_of_list_of_list [1; 1; 1; 3] [2; 1; 1; 3] ;;
test_number 25 (not boo);;

let boo = List_v.are_included_of_list_of_list [1; 1] [2; 1; 1; 3] ;;
test_number 26 (boo);;

let boo = List_v.are_included_of_list_of_list [1; 1; 3] [2; 1; 1; 3] ;;
test_number 27 (boo);;

let boo = List_v.are_included_of_list_of_list [1; 3] [2; 1; 1; 3; 1; 3] ;;
test_number 28 (boo);;

let boo = List_v.are_included_of_list_of_list [1; 2; 2; 5; 5; 4] [9; 2; 5; 5] ;;
test_number 29 (not boo);;

let boo = List_v.are_included_of_list_of_list ['q';'u';'e';'r';'y';'i';'n';'g'] ['q';'u';'e';'r';'y';'i';'n';'g';'_';'g';'r';'a';'n';'d';'s';'o';'n';'_';'f';'o';'r';'_';'s';'y';'m';'b';'o';'l'];;

test_number 30 (boo);;

let boo = List_v.are_included_of_list_of_list ["x"; "y";] ["a"; "b"; "c"; "d"; "e"; "f"];;
test_number 31 (not boo);;

let boo = List_v.is_substring_of_string_of_string "abc" "abc_c";;
test_number 32 (boo);;

let boo = List_v.is_substring_of_string_of_string "querying" "querying_grandson_for_symbol";;
test_number 33 (boo);;

let boo = List_v.is_substring_of_string_of_string "querying_grandson_for_symbol" "querying";;
test_number 34 (boo);;

let boo = List_v.are_tail_coinciding_of_list_of_list [1; 1; 1; 3] [1; 1; 3] ;;
test_number 35 (boo);;

let boo = List_v.are_tail_coinciding_of_list_of_list [1; 1; 3] [1; 1; 1; 3] ;;
test_number 36 (boo);;

let boo = List_v.are_tail_coinciding_of_list_of_list [1; 1; 1; 3] [1; 1; 1] ;;
test_number 37 (not boo);;

let lis = List_v.left_list_included_of_predicate_of_list (fun e -> e = "d") ["a"; "b"; "c"; "d"; "e"; "f"];;

test_number 38 (
(lis : string list) =
 ["a"; "b"; "c"; "d"]
);;

test_number 39 (
List_v.left_list_excluded_of_predicate_of_list (fun e -> e = "d") ["a"; "b"; "c"; "d"; "e"; "f"]
=
["a"; "b"; "c"]
);;

test_number 40 (
List_v.right_list_excluded_of_predicate_of_list (fun e -> e = "d") ["a"; "b"; "c"; "d"; "e"; "f"]
=
 ["e"; "f"]
);;

test_number 41 (
List_v.right_list_included_of_predicate_of_list (fun e -> e = "d") ["a"; "b"; "c"; "d"; "e"; "f"]
=
 ["d"; "e"; "f"]
);;

(* Splitting *)

let lis = List_v.split_of_predicate_of_list (fun e -> e = "c") ["a"; "b"; "c"; "d"; "e"; "f"];;
test_number 42 (
lis
=
(["a"; "b"], ["d"; "e"; "f"])
);;

let lis = List_v.split_of_element_of_list "c" ["a"; "b"; "c"; "d"; "e"; "f"];;
test_number 43 (
lis
=
(["a"; "b"], ["d"; "e"; "f"])
);;

let lis = List_v.split_of_element_of_list "c" ["c"; "d"; "e"; "f"];;
test_number 44 (
lis
=
([], ["d"; "e"; "f"])
);;

let lis = List_v.split_of_element_of_list "c" ["a"; "b"; "c"];;
test_number 45 (
lis
=
(["a"; "b"], [])
);;

(** {9 Splitting}*)

let lis = List_v.split_excluded_of_element_of_list "x" ["x"; "a"; "b"; "c"; "d"; "e"; "f"];;
test_number 46 (
lis
(* string list list *)
 = 
([], ["a"; "b"; "c"; "d"; "e"; "f"])
);;

let lis = List_v.split_excluded_of_element_of_list "x" ["a"; "b"; "c"; "d"; "e"; "f"; "x"];;
test_number 47 (
lis
(* string list list *)
 = 
(["a"; "b"; "c"; "d"; "e"; "f"], [])
);;

let lis = List_v.split_excluded_of_element_of_list "x" ["a"; "b"; "c"; "x"; "d"; "e"; "f";];;
test_number 48 (
lis
(* string list list *)
 = 
 (["a"; "b"; "c"], ["d"; "e"; "f"])
);;

(** {9 Splitting left included}*)

let lis = List_v.split_left_included_of_predicate_of_list (fun s -> s = "x") ["a"; "x"];;

test_number 49 (
lis 
(* : string list * string list *)
= 
(["a"; "x"], [])
);;

let lis = List_v.split_left_included_of_predicate_of_list (fun s -> s = "x") ["a"; "b"; "c"; "d"; "e"; "f"; "x"];;
test_number 50 (
lis
=
(["a"; "b"; "c"; "d"; "e"; "f"; "x"], [])
);;

let lis = List_v.split_left_included_of_predicate_of_list (fun s -> s = "x") ["a"];;
test_number 51 (
lis 
(* : string list * string list *)
= 
(["a"], [])
);;

let lis = List_v.split_left_included_of_predicate_of_list (fun s -> s = "x") ["x"; "a"];;
test_number 52 (
lis
=
(["x"], ["a"])
);;

let lis = List_v.split_left_included_of_predicate_of_list (fun s -> s = "x") ["x"; "a"; "b"; "c"; "d"; "e"; "f"];;
test_number 53 (
lis
=
(["x"], ["a"; "b"; "c"; "d"; "e"; "f"])
);;

let lis = List_v.split_left_included_of_predicate_of_list (fun s -> s = "x") ["a"; "b"; "c"; "x"; "d"; "e"; "f"];;
test_number 54 (
lis
=
(["a"; "b"; "c"; "x"], ["d"; "e"; "f"])
);;

(** {9 Splitting right included}*)

let lis = List_v.split_right_included_of_predicate_of_list (fun s -> s = "x") ["a"];;
test_number 55 (
lis
=
(["a"], [])
);;

let lis = List_v.split_right_included_of_predicate_of_list (fun s -> s = "x") ["a"; "x"];;
test_number 56 (
lis
=
(["a"], ["x"])
);;

let lis = List_v.split_right_included_of_predicate_of_list (fun s -> s = "x") ["a"; "b"; "c"; "d"; "e"; "f"; "x"];;
test_number 57 (
lis
=
(["a"; "b"; "c"; "d"; "e"; "f"], ["x"])
);;

let lis = List_v.split_right_included_of_predicate_of_list (fun s -> s = "x") ["x"; "a"];;
test_number 58 (
lis
=
([], ["x"; "a"])
);;

let lis = List_v.split_right_included_of_predicate_of_list (fun s -> s = "x") ["x"; "a"; "b"; "c"; "d"; "e"; "f"];;
test_number 59 (
lis
=
([], ["x"; "a"; "b"; "c"; "d"; "e"; "f"])
);;

let lis = List_v.split_right_included_of_predicate_of_list (fun s -> s = "x") ["a"; "b"; "c"; "x"; "d"; "e"; "f"];;
test_number 60 (
lis
=
(["a"; "b"; "c"], ["x"; "d"; "e"; "f"])
);;

(** {9 Splitting excluded}*)

let lis = List_v.split_after_of_element_of_list "c" ["a"; "b"; "c"; "d"; "e"; "f"];;
test_number 61 (
lis
=
(["a"; "b"; "c"], ["d"; "e"; "f"])
);;

test_number 62 (
List_v.split_after_at_int_of_list 2 ["a"; "b"; "c"; "d"; "e"; "f"]
=
(["a"; "b"; "c"], ["d"; "e"; "f"])
);;

let lis = List_v.split_before_of_element_of_list "d" ["a"; "b"; "c"; "d"; "e"; "f"];;
test_number 63 (
lis
=
(["a"; "b"; "c"], ["d"; "e"; "f"])
);;

test_number 64 (
List_v.split_before_at_int_of_list 3 ["a"; "b"; "c"; "d"; "e"; "f"]
=
(["a"; "b"; "c"], ["d"; "e"; "f"])
);;

let lis = List_v.split_append_of_element_of_list_of_list "c" ["a"; "b"; "c"; "d"; "e"; "f"] ["x"; "y";];;
test_number 65 (
lis
=
 (["x"; "y"; "a"; "b"; "c"], ["d"; "e"; "f"])
);;

(** {9 Bursting excluded} *)

let lis = List_v.burst_excluded_of_element_of_list "x" ["a"];;
test_number 66 (
lis
(* string list list *)
 = 
 [["a"]]
);;

let lis = List_v.burst_excluded_of_element_of_list "x" ["x"; "a"];;
test_number 67 (
lis
(* string list list *)
 = 
 [["a"]]
);;

let lis = List_v.burst_excluded_of_element_of_list "x" ["a"; "x"];;
test_number 68 (
lis
(* string list list *)
 = 
 [["a"]]
);;

let lis = List_v.burst_excluded_of_element_of_list "x" ["a"; "x"; "b"; "c"; "x"; "d"; "x"; "e"];;
test_number 69 (
lis
(* string list list *)
 = 
 [["a"]; ["b"; "c"]; ["d"]; ["e"]]
);;

let lis = List_v.burst_excluded_of_element_of_list "x" ["a"; "x"; "b"; "c"; "x"; "d"; "x"; "e"; "x";];;
test_number 70 (
lis
(* string list list *)
 = 
 [["a"]; ["b"; "c"]; ["d"]; ["e"]]
);;

let lis = List_v.burst_excluded_of_element_of_list "x" ["x"; "a"; "x"; "b"; "c"; "x"; "d"; "x"; "e"; "x";];;
test_number 71 (
lis
(* string list list *)
 = 
 [["a"]; ["b"; "c"]; ["d"]; ["e"]]
);;

let lis = List_v.burst_excluded_of_element_of_list "x" ["x"; "a"; "x"; "b"; "c"; "x"; "d"; "x"; "e"];;
test_number 72 (
lis
(* string list list *)
 = 
 [["a"]; ["b"; "c"]; ["d"]; ["e"]]
);;

(** {9 Bursting right included} *)

let lis = List_v.burst_right_included_of_predicate_of_list (fun s -> s = "x") ["x"; "a"];;
test_number 73 (
lis
(* string list list *)
 = 
[["x"];["a"]]
);;

let lis = List_v.burst_right_included_of_predicate_of_list (fun s -> s = "x") ["x"; "a"; "x"; "b"; "c"; "x"; "d"; "x"; "e";];;
test_number 74 (
lis
(* string list list *)
 = 
[["x"]; ["a"; "x"]; ["b"; "c"; "x"]; ["d"; "x"]; ["e"]]
);;

let lis = List_v.burst_right_included_of_predicate_of_list (fun s -> s = "x") ["x"; "a"; "x"; "b"; "c"; "x"; "d"; "x"; "e"; "x";];;
test_number 75 (
lis
(* string list list *)
 = 
  [["x"]; ["a"; "x"]; ["b"; "c"; "x"]; ["d"; "x"]; ["e"; "x"]]
);;

let lis = List_v.burst_right_included_of_predicate_of_list (fun s -> s = "x") ["a"; "x"; "b"; "c"; "x"; "d"; "x"; "e"; "x";];;
test_number 76 (
lis
(* string list list *)
=
 [["a"; "x"]; ["b"; "c"; "x"]; ["d"; "x"]; ["e"; "x"]]
);;

let lis = List_v.burst_left_included_of_predicate_of_list (fun s -> s = "x") ["a"; "x"; "b"; "c"; "x"; "d"; "x"; "e"; "x";];;
test_number 77 (
lis
(* string list list *)
 = 
 [["a"]; ["x"; "b"; "c"]; ["x"; "d"]; ["x"; "e"]; ["x"]]
);;

(** {9 Bursting left included} *)

let lis = List_v.burst_left_included_of_predicate_of_list (fun s -> s = "x") ["x"; "a"; "x"; "b"; "c"; "x"; "d"; "x"; "e"; "x";];;
test_number 78 (
lis
(* string list list *)
 = 
 [["x"; "a"]; ["x"; "b"; "c"]; ["x"; "d"]; ["x"; "e"]; ["x"]]
);;

let lis = List_v.burst_left_included_of_predicate_of_list (fun s -> s = "x") ["x"; "a"; "x"; "b"; "c"; "x"; "d"; "x"; "e";];;
test_number 79 (
lis
(* string list list *)
 = 
  [["x"; "a"]; ["x"; "b"; "c"]; ["x"; "d"]; ["x"; "e"]]
);;

(** {9 Gathering} *)

test_number 80 (
List_v.gather (fun a b -> a = b) ["a"; "a"; "b"; "b"; "c"; "d"; "d"; "d"]
=
[["a"; "a"]; ["b"; "b"]; ["c"]; ["d"; "d"; "d"]]
);;

test_number 81 (
List_v.first_element_off_list ["a"; "b"; "c"; "d"; "e"]
=
"a"
);;

test_number 82 (
List_v.second_element_off_list ["a"; "b"; "c"; "d"; "e"]
=
"b"
);;

test_number 83 (
List_v.third_element_off_list ["a"; "b"; "c"; "d"; "e"]
=
"c"
);;

test_number 84 (
List_v.ultimate_element_off_list ["a"; "b"; "c"; "d"; "e"]
=
"e"
);;

test_number 85 (
List_v.penultimate_element_off_list ["a"; "b"; "c"; "d"; "e"]
=
"d"
);;

test_number 86 (
List_v.antepenultimate_element_off_list ["a"; "b"; "c"; "d"; "e"]
=
"c"
);;

test_number 87 (
List_v.successor_of_element_of_list "c" ["a"; "b"; "c"; "d"; "e"]
=
"d"
);;

test_number 88 (
List_v.successor_of_predicate_of_list (fun e -> e= "c") ["a"; "b"; "c"; "d"; "e"]
=
"d"
);;

test_number 89 (
List_v.predecessor_of_element_of_list "c" ["a"; "b"; "c"; "d"; "e"]
=
"b"
);;

test_number 90 (
List_v.first_elements_of_int_of_list 2 ["a"; "b"; "c"; "d"; "e"; "f"; "g"]
=
["a"; "b"]
);;

test_number 91 (
List_v.last_elements_of_int_of_list 2 ["a"; "b"; "c"; "d"; "e"; "f"; "g"]
=
["f"; "g"]
);;

test_number 92 (
List_v.left_half_off_list ["a"; "b"; "c"; "d"; "e"; "f"; "g"]
=
["a"; "b"; "c"]
);;

test_number 93 (
List_v.right_half_off_list ["a"; "b"; "c"; "d"; "e"; "f"; "g"]
=
["d"; "e"; "f"; "g"]
);;

test_number 94 (
List_v.left_half_off_list ["a"; "b"; "c"; "d"; "e"; "f"]
=
["a"; "b"; "c"]
);;

test_number 95 (
List_v.right_half_off_list ["a"; "b"; "c"; "d"; "e"; "f"]
=
["d"; "e"; "f"]
);;

let (sub_dl) = List_v.left_sublist_n_right_sublist_of_predicate_of_list (fun s -> s= "d") ["a"; "b"; "c"; "d"; "e"; "f"];;

test_number 96 (
(sub_dl : string list * string list ) = 
(["a"; "b"; "c"], ["d"; "e"; "f"])
);;

let sub = List_v.head_sublist_n_remainder_list_of_predicate_of_list (fun s -> s= "a") ["a"; "a"; "a"; "c1"; "c2"; "c3"; "c4"];;
test_number 97 (
sub
=
(["a"; "a"; "a"], ["c1"; "c2"; "c3"; "c4"])
);;

test_number 98 (
List_v.firstindex_of_element_of_list "b" ["a"; "b"; "c"; "b"]
=
1
);;

test_number 99 (
List_v.insert_after_of_list_of_element_of_list ["x"; "y";] "c" ["a"; "b"; "c"; "d"; "e"; "f"]
=
["a"; "b"; "c"; "x"; "y"; "d"; "e"; "f"]
);;

test_number 100 (
List_v.insert_after_of_list_of_predicate_of_list ["x"; "y";] (fun e-> e="c") ["a"; "b"; "c"; "d"; "e"; "f"]
=
["a"; "b"; "c"; "x"; "y"; "d"; "e"; "f"]
);;

test_number 101 (
List_v.replace_of_predicate_of_element_of_list (fun e -> e = "d") "x" ["a"; "b"; "c"; "d"; "e"; "f"]
=
["a"; "b"; "c"; "x"; "e"; "f"]
);;

test_number 102 (
List_v.replace_of_element_of_element_of_list "d" "x" ["a"; "b"; "c"; "d"; "e"; "f"]
=
["a"; "b"; "c"; "x"; "e"; "f"]
);;

test_number 103 (
List_v.replace_last_element_of_element_of_list "x" ["a"; "b"; "c"]
=
["a"; "b"; "x"]
);;

test_number 104 (
List_v.exclude_of_element_of_list "d" ["a"; "b"; "c"; "d"; "e"; "f"]
=
["a"; "b"; "c"; "e"; "f"]
);;

test_number 105 (
List_v.first_trio_off_list ["a"; "b"; "c"; "d"; "e"; "f"]
=
("a", "b", "c")
);;

let nam = List_v.name (fun i -> Format.sprintf "%i" i) [1; 2; 3; 4];;
test_number 106 (
(nam : string) =
" [\n   1 2 3 4\n  ]"
);;

let nam = List_v.name_with_semicolons (fun i -> Format.sprintf "%i" i) [1; 2; 3; 4];;

test_number 107 (
(nam : string) =
" [\n   1; 2; 3; 4\n  ]"
);;

let str = List_v.name_in_column (fun i -> Format.sprintf "%i" i) [1; 2; 3; 4];;
test_number 108 (
(str : string) =
" [\n   1;\n   2;\n   3;\n   4\n  ]"
);;

let str = List_v.name_with_separator (fun i -> Format.sprintf "%i" i) "_" [1; 2; 3; 4];;

test_number 109 (
(str : string) =
" [\n   1_2_3_4\n  ]"
);;

test_number 110 (
List_v.same_element_list_of_element_of_length 5 3 (* : int list *)
= 
[5; 5; 5]
);;

test_number 111 (
List_v.int_list_of_length 3 (* : int list *)
= 
[0; 1; 2]
);;

test_number 112 (
List_v.int_list_of_first_of_length 3 3
=
[3; 4; 5]
);;

test_number 113 (
List_v.int_mintomax_list_of_length 3
=
[0; 1; 2]
);;

test_number 114 (
List_v.maxtomin_int_list_of_length 3
=
[2; 1; 0]
);;

test_number 115 (
List_v.int_mintomax_list_of_minimum_of_length 2 3
=
[2; 3; 4]
);;

test_number 116 (
List_v.int_maxtomin_list_of_minimum_of_length 2 3
=
[4; 3; 2]
);;

test_number 117 (
List_v.int_mintomax_list_of_maximum_of_length 2 3
=
[0; 1; 2]
);;

test_number 118 (
List_v.int_maxtomin_list_of_maximum_of_length 2 3
=
[2; 1; 0]
);;

test_number 119 (
List_v.ordinal_list_of_first_of_length Ordinal_p.three 4
=
[Ordinal_p.three; Ordinal_p.four; Ordinal_p.five; Ordinal_p.six]
);;

test_number 120 (
List_v.sigma_of_list_index [Index_p.three; Index_p.one]
=
Index_p.four
);;

test_number 121 (
List_v.are_all_elements_of_predicate_of_list (fun i -> i > 3) [4; 5] 
=
true
);;

test_number 122 (
List_v.is_zeroed_int_list [0; 0]
=
true
);;

test_number 123 (
List_v.is_zeroed_int_list [2; 0]
  =
false
);;

test_number 124 (
List_v.element_off_one_element_list [2]
  =
2
);;

test_number 125 (
List_v.has_elements_of_predicate_of_list (fun s -> s= "c") ["a"; "b"; "x"; "x"; "x"; "c"; "d"]
);;


test_number 126 (
List_v.has_elements_of_predicate_of_list (fun s -> s= "z") ["a"; "b"; "x"; "x"; "x"; "c"; "d"]
=
false
);;

let lis = List_v.sublist_included_of_predicate_of_predicate_of_list (fun s -> s= "b") (fun s -> s= "c") ["a"; "b"; "x"; "x"; "x"; "c"; "d"];;

test_number 127 (
lis
=
["b"; "x"; "x"; "x"; "c"]
);;

let sub = List_v.sublist_included_of_predicate_of_predicate_of_list (fun s -> s= "x") (fun s -> s= "x") ["a"; "x"; "x"; "x"; "y"; "x"; "d"];;

test_number 128 (
(sub : string list) =
["x"]
);;

let sub = List_v.sublist_longest_included_of_predicate_of_predicate_of_list (fun s -> s= "x") (fun s -> s= "x") ["a"; "x"; "x"; "x"; "y"; "x"; "d"];;

test_number 129 (
(sub : string list) =
["x"; "x"; "x"; "y"; "x"]
);;

test_number 130 (
List_v.only_element_of_predicate_off_list (fun s -> s="c") ["a"; "b"; "c"; "b"]
=
"c"
);;

test_number 131 (
List_v.repeated_list_of_count_of_element 4 "a"
=
["a"; "a"; "a"; "a"]
);;

test_number 132 (
List_v.repeated_list_of_count_of_list 4 ["a"; "b"]
=
["a"; "b"; "a"; "b"; "a"; "b"; "a"; "b"]
);;

test_number 133 (
List_v.is_repeated_list_of_list ["a"; "b"; "a"; "a"]
=
false
);;

test_number 134 (
List_v.is_repeated_list_of_list ["a"; "a"; "a"; "a"]
=
true
);;

test_number 135 (
List_v.only_element_of_repeated_list ["a"; "a"; "a"; "a"]
=
"a"
);;

test_number 136 (
List_v.list_triplet_of_triplet_list [("a", 1, 1.0); ("b", 2, 2.0); ("c", 3, 3.0); ("d", 4, 4.0)]
(* : string list * int list * float list *)
=
(["a"; "b"; "c"; "d"], [1; 2; 3; 4], [1.; 2.; 3.; 4.])
);;

test_number 137 (
List_v.list_trio_off_trio_list [("a", "a_", "A"); ("b", "b_", "B"); ("c", "c_", "C"); ("d", "d_", "D")]
(* : string list * string list * string list *)
=
(["a"; "b"; "c"; "d"], ["a_"; "b_"; "c_"; "d_"], ["A"; "B"; "C"; "D"])
);;

test_number 138 (
List_v.element_n_count_list_of_list ["a"; "a"; "c"]
(* : (string * int) list *)
= 
[("a", 2); ("c", 1)] 
);;

test_number 139 ( 
List_v.pair_list_of_list ["a"; "b"; "c"; "d"]
(* : (string * string) list *)
= 
[("a", "b"); ("c", "d")]
);;

test_number 140 (
List_v.pair_uptriangular_list_of_list ["a"; "b"; "c"]
(* : (string * string) list *)
=
[("a", "b"); ("a", "c"); ("b", "c")]
);;

test_number 141 (
List_v.pair_uptriangulardiagonal_list_of_list ["a"; "b"; "c"]
(* : (string * string) list *)
=
[("a", "a"); ("a", "b"); ("a", "c"); ("b", "b"); ("b", "c"); ("c", "c")]
);;

test_number 142 (
List_v.append_of_element_of_list "d" ["a"; "b"; "c"]
(* : (string * string) list *)
=
["a"; "b"; "c"; "d"]
);;

let str = List_v.ultimate_element_off_list ["a"; "b"; "c"];;

test_number 143 (
(str : string) =
"c"
);;

test_number 144 (
List_v.penultimate_element_off_list ["a"; "b"; "c"]
=
"b"
);;

let str = List_v.antepenultimate_element_off_list ["a"; "b"; "c"];;

test_number 145 (
(str : string) =
"a"
);;

let str = String_v.string_of_string_list [" a"; "b "; "c"];;

test_number 146 (
(str : string )
  =
" ab c"
);;

let str = List_v.name_underscored_off_string_list [" a"; "b "; "c"];;
test_number 147 (
(str : string )
=
" a_b _c"
);;

test_number 148 (
List_v.string_list_left_shift_of_int_of_string_list 2 ["a"; "b"; "c"]
(* : string list *)
= 
["a"; "  b"; "    c"]
);;

test_number 149 (
List_v.string_list_right_shift_of_int_of_string_list 2 ["a"; "b"; "c"]
(* : string list *)
  = 
["a"; "b  "; "c    "]
);;

test_number 150 (
List_v.transpose [["a"; "b"; "c"]; ["A"; "B"; "C"]]
=
[["a"; "A"]; ["b"; "B"]; ["c"; "C"]]
);;

test_number 151 (
List_v.list_list_off_list [1;2;3]                                              
(* : int list list *)
= 
[[1; 2; 3]; [2; 3]; [3]]
);;

test_number 152 (
List_v.list_off_string_of_make " [ 1; 2;  3;4; 5] " (fun i -> i)
(* : string list *) 
= 
[" 1"; " 2"; "  3"; "4"; " 5"]
);;

test_number 153 (
List_v.list_off_string_of_make " [ 1; 2;  3;4; 5] " String_v.int_of_string
(* : int list *)
= 
[1; 2; 3; 4; 5]
);;

let lis = List_v.set_intersection_of_list_of_list [3; 5; 1; 4] [4; 6; 5];;
test_number 154 (
lis
=
[5; 4]
);;

let lis = List_v.set_intersection_of_list_of_list [2; 2; 1; 4; 1] [2; 1; 4; 5];;

test_number 155 (
lis
=
[2; 2; 1; 4; 1]
);;

let lis = List_v.set_intersection_of_list_of_list [2; 2; 1; 4; 1] [2; 1; 4; 5];;

test_number 156 (
lis 
  =
[2; 2; 1; 4; 1]
);;

let lis = List_v.exclusive_union_of_list_of_list [3; 1; 5; 1; 4] [4; 6; 5];;

test_number 157 (
lis
=
[3; 1; 1; 6]
);;

test_number 158 (
List_v.exclusion_off_list_of_list [3; 5; 1; 4] [4; 6; 5]
=
[3; 1]
);;

test_number 159 (
List_v.exclusion_off_list_of_list [4; 6; 5] [3; 5; 1; 4] 
=
[6]
);;

test_number 160 (
List_v.union_of_list_of_list [3; 5; 1; 4] [4; 6; 5]
=
[3; 5; 1; 4; 6]
);;

let nam = List_v.name (fun s->s) ["abc"; "def"];;

test_number 161 (
(nam : string ) =
" [\n   abc def\n  ]"
);;

let nam = List_v.name_bare (fun s->s) ["abc"; "def"];;

test_number 162 (
(nam : string ) =
"abc def"
);;

let nam = List_v.name_with_separator (fun s->s) "; " ["abc"; "def"];;

test_number 163 (
(nam : string ) =
" [\n   abc; def\n  ]"
);;

let nam_bws = List_v.name_bare_with_separator (fun s->s) ";" ["abc"; "def"];;

test_number 164 (
(nam_bws : string ) = 
"abc;def"
);;

let nam_wsc = List_v.name_with_semicolons (fun s->s) ["abc"; "def"];;

test_number 165 (
(nam_wsc : string ) = 
" [\n   abc; def\n  ]"
);;

let nam_lin = List_v.name_linear (fun s->s) ["abc"; "def"];;

test_number 166 (
(nam_lin : string ) = 
"[abc; def]"
);;

let nam_lws = List_v.name_linear_with_separator (fun s->s) " X " ["abc"; "def"];;

test_number 167 (
(nam_lws : string ) = 
"[abc X def]"
);;

let nam_lsc = List_v.name_linear_with_semicolons (fun s->s) ["abc"; "def"];;

test_number 168 (
(nam_lsc : string ) = 
"[abc; def]"
);;

let boo = List_v.is_once_of_element_of_list "a" ["x"; "a"; "b"];;

test_number 169 (
(boo : bool )
);;
 
test_number 170 (
List_v.is_once_of_element_of_list "a" ["x"; "a"; "a"]
=
false
);;
 
test_number 171 (
List_v.is_once_list_of_list ["x"; "a"; "b"]
);;

test_number 172 (
List_v.is_once_list_of_list ["x"; "a"; "a"]
=
false
);;

test_number 173 (
List_v.left_once_list_off_list ["a"; "b"; "c"; "b"]
=
["a"; "b"; "c"]
);;

test_number 174 (
List_v.right_once_list_off_list ["a"; "b"; "c"; "b"]
=
["a"; "c"; "b"]
);;

let str_l = List_v.right_once_list_off_list ["a"; "a"; "a"; "b"; "b"];;

test_number 175 (
(str_l : string list ) = 
["a"; "b"]
);;

let str_l = List_v.right_once_list_off_list ["a"; "b"; "b"; "a"; "b"];;

test_number 176 (
(str_l : string list ) = 
["a"; "b"]
);;

test_number 177 (
List_v.select_path_list_with_once_leaf_off_path_list 
[[1; 1; 1; 5]; [2; 1; 4]; [1; 1]]
=
[[1; 1; 1; 5]; [2; 1; 4]]
);;

let lis = List_v.non_once_list_off_list ["a"; "b"; "c"; "b"; "b"];;

test_number 178 (
(lis : string list ) = 
  ["b"]
);;

test_number 179 ( 
 List_v.has_same_right_elements_off_list_of_list [3; 2; 6; 5] [6; 5]
);;

test_number 180 ( 
List_v.has_same_right_elements_off_list_of_list [7; 1; 1; 698516742; 7; 4] [7; 4]
);;

test_number 181 ( 
List_v.have_same_element_set_of_list_of_list [7; 1; 2; 3] [2; 3; 1; 7; 7]
);;

test_number 182 ( 
List_v.are_equivalent_of_list_of_list [7; 1; 2; 3] [2; 3; 1; 7]
);;

test_number 183 (
List_v.sup_of_list ["1";"2";"6";"3"]
=
"6"
);;

test_number 184 (
List_v.drop_last_element_off_list ["a"; "b"; "c"; "d"; "e"; "f"; "g"]
=
["a"; "b"; "c"; "d"; "e"; "f"]
);;

test_number 185 (
List_v.drop_first_elements_of_int_of_list 3 ["a"; "b"; "c"; "d"; "e"; "f"; "g"]
=
["d"; "e"; "f"; "g"]
);;

test_number 186 (
List_v.drop_last_elements_of_int_of_list 3 ["a"; "b"; "c"; "d"; "e"; "f"; "g"]
=
["a"; "b"; "c"; "d"]
);;

(*
let lis = ["a"; "b"; "c"; "d"; "e"; "f"; "g"];;
test_raises_this_exc (Failure "Nonnegative_number_of_dropped_elements:List_v.ml:drop_first_elements_of_int_of_list")List_v.sublist_of_int_of_length_of_list 2 20 lis;;
*)

let lis = List_v.duplicated_elements_of_list String.compare ["a"; "b"; "a"; "c"; "a"; "b"];;
test_number 187 (
lis
=
["a"; "a"; "b"]
);;

test_number 188 (
List_v.sigma_of_list_float [1.; 2.; 3.] 
= 
6.
);;

test_number 189 (
List_v.sigma_of_list_int [1; 2; 3] 
=
6
);;

let sim = List_v.sigma_of_function_of_list_int (fun i -> 10*i) [1; 2; 3];;

test_number 190 (
sim
=
60
);;

test_number 191 (
List_v.sigma_of_list_index [Index_p.one; Index_p.two; Index_p.three]
=
Index_p.six
);;

test_number 192 (
List_v.sigma_of_list_ordinal [Ordinal_p.one; Ordinal_p.two; Ordinal_p.three]
=
Ordinal_p.six
);;

test_number 193 (
List_v.sigma_of_function_of_list_float (fun f -> f *. f) [1.; 2.; 3.] 
= 
14.
);;

test_number 194 (
List_v.norm2_of_float_list [1.; 2.; 3.] 
= 
14.
);;

test_number 195 (
List_v.norm_of_float_list [1.; 2.; 3.] 
= 
3.74165738677394133
);;

test_number 196 (
List_v.difference_of_float_list_of_float_list [1.; 1.; 0.] [1.; -1.; 0.] 
= 
[0.; 2.; 0.]
);;

test_number 197 (
List_v.cosinus_of_float_list_of_float_list [1.; 0.; 0.] [1.; 1.; 0.] 
= 
0.707106781186547462
);;

test_number 198 (
List_v.cosinus_of_float_list_of_float_list [1.; 0.; 0.] [-1.; 1.; 0.] 
= 
-0.707106781186547462
);;

test_number 199 (
List_v.cosinus_of_float_list_of_float_list [1.; 1.; 0.] [1.; -1.; 0.] 
= 
0.
);;

let duo = List_v.element_duo_off_two_element_list ["a"; "b"];;

test_number 200 (
duo
= 
("a", "b")
);;

let ref_l = ["b"; "c"; "d"];;

let lis_l = [["b"; "c"]; ["a"; "b"; "c"; "d" ]];;
let res_l = List_v.largest_inclusive_list_of_reference_list_of_list_list ref_l lis_l;;

test_number 201 (
(res_l : string list list ) = 
[["a"; "b"; "c"; "d"]]
);;

let lis_l = [["b"; "c"; "d"]; ["a"; "b"; "c"; "d" ]];;
let res_l = List_v.largest_inclusive_list_of_reference_list_of_list_list ref_l lis_l;;

test_number 202 (
(res_l : string list list ) = 
[["a"; "b"; "c"; "d"]]
);;

let lis_l = [["a"; "b"; "c"; "d"]; ["b"; "c"; "d"]];;
let res_l = List_v.largest_inclusive_list_of_reference_list_of_list_list ref_l lis_l;;
test_number 203 (
(res_l : string list list ) = 
[["a"; "b"; "c"; "d"]]
);;

let lis_l = [["b"; "c"; "d"]; ["a"; "b"; "c"; "d" ]; ["a"; "b"]];;
let res_l = List_v.largest_inclusive_list_of_reference_list_of_list_list ref_l lis_l;;
test_number 204 (
(res_l : string list list ) = 
[["a"; "b"; "c"; "d"]]
);;

let lis_l = [["a"; "b"; "c"; "d"]; ["a"; "b"; "c" ]; ["a"; "b"]];;
let res_l = List_v.largest_inclusive_list_of_reference_list_of_list_list ref_l lis_l;;
test_number 205 (
(res_l : string list list ) = 
[["a"; "b"; "c"; "d"]]
);;

let ref_l = ["x"; "y"];;
let lis_l = [["a"; "b"; "c"; "d"]; ["a"; "b"; "c" ]; ["a"; "b"]];;
let res_l = List_v.largest_inclusive_list_of_reference_list_of_list_list ref_l lis_l;;

test_number 206 (
res_l = []
);;

let lis_l = [["b"; "c"]; ["a"; "b"; "c"; "d" ]];;
let res_l = List_v.largest_inclusive_list_of_reference_list_of_list_list ref_l lis_l;;

test_number 207 (
(res_l : string list list ) = []
);;

let lis_l = [["b"; "c"; "d"]; ["a"; "b"; "c"; "d" ]];;
let res_l = List_v.largest_inclusive_list_of_reference_list_of_list_list ref_l lis_l;;

test_number 208 (
(res_l : string list list ) = []
);;

let lis_l = [["a"; "b"; "c"; "d"]; ["b"; "c"; "d"]];;
let res_l = List_v.largest_inclusive_list_of_reference_list_of_list_list ref_l lis_l;;
test_number 209 (
(res_l : string list list ) = []
);;

let lis_l = [["b"; "c"; "d"]; ["a"; "b"; "c"; "d" ]; ["a"; "b"]];;
let res_l = List_v.largest_inclusive_list_of_reference_list_of_list_list ref_l lis_l;;
test_number 210 (
(res_l : string list list ) = []
);;

let lis_l = [["a"; "b"; "c"; "d"]; ["a"; "b"; "c" ]; ["a"; "b"]];;
let res_l = List_v.largest_inclusive_list_of_reference_list_of_list_list ref_l lis_l;;

test_number 211 (
(res_l : string list list ) = []
);;

let str_12_l = ["a"; "b"; "c"; "d"; "e"; "f"; "g"; "h"; "i"; "j"; "k"; "l"];;

let duo_n_rem_l = List_v.first_duo_n_remainder_list_off_list str_12_l;;

test_number 212 (
(duo_n_rem_l : string Duo_t.duo * string list ) =
  (("b", "a"), ["c"; "d"; "e"; "f"; "g"; "h"; "i"; "j"; "k"; "l"])
);;

let tri_n_rem_l = List_v.first_trio_n_remainder_list_off_list str_12_l;;

test_number 213 (
(tri_n_rem_l : string Trio_t.trio * string list ) =
  (("c", "b", "a"), ["d"; "e"; "f"; "g"; "h"; "i"; "j"; "k"; "l"])
);;

let ele_n_rem_l = List_v.first_elements_n_remainder_of_count_off_list 4 str_12_l;;

test_number 214 (
(ele_n_rem_l : string list * string list ) =
  (["a"; "b"; "c"; "d"], ["e"; "f"; "g"; "h"; "i"; "j"; "k"; "l"])
);;

let lis_l = ["a"; "b"; "c"; "d"; "e"; "f"; "g"; "h"; "i"; "j"; "k"; "l"];;

let ele_n_rem_l = List_v.head_n_remainder_list_of_predicate_of_list (fun s -> s = "c") lis_l;;

test_number 215 (
(ele_n_rem_l : string * string list ) =
  ("c", ["d"; "e"; "f"; "g"; "h"; "i"; "j"; "k"; "l"])
);;
