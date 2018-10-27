open Make_test_v;;

testing "Tools_v";;

(* toplevel 
   #use "tools_u_any.ml";; 
 *)

let list = [1.0; 2.0; 3.0; 4.0];;
let list_of_list = [[11.0; 12.0; 13.0; 14.0]; [21.0; 22.0; 23.0; 24.0]];;

let array = Array.of_list list;;
let array_of_array = 
 [|[|11.0; 12.0; 13.0; 14.0|]; [|21.0; 22.0; 23.0; 24.0|]|];;

test_number 1 (
 Tools_v.flatten_array_array array_of_array
= 
[|11.; 12.; 13.; 14.; 21.; 22.; 23.; 24.|]
);;

(** {Option Array} *)

let som = Some 10.0;;
let non = None;;

test_number 2 (
Tools_v.is_none_of_option_type non
&&
not (Tools_v.is_none_of_option_type som)
);;
(** {Option Array} *)

let opt_arr = [|Some 11.0; None; Some 13.0; None|];;
let som_arr = [|Some 11.0; Some 12.0; Some 13.0; Some 14.0|];;

test_number 3 (
Tools_v.entity_array_of_option_array opt_arr
=
[|11.; 13.|]
&&
Tools_v.entity_array_of_option_array som_arr
= 
[|11.; 12.; 13.; 14.|]
);;

test_number 4 (
Tools_v.none_index_array_of_option_array opt_arr
= 
[|1; 3|]
&&
Tools_v.none_number_of_option_array opt_arr
= 
2
&&
Tools_v.none_number_of_option_array som_arr
= 
0
);;

test_number 5 (
Tools_v.has_none_element_of_option_array opt_arr
&& 
not (Tools_v.has_none_element_of_option_array som_arr)
);;

let big_l = ["a"; "b"; "c"; "d"; "e"; "f"];;  
let sub_l = ["b"; "c"; "d"];;
  
test_number 6 (
  Tools_v.is_included_of_list_of_list sub_l big_l 
);;

let pre = (fun e -> e = "d");;

test_number 7 (
Tools_v.left_list_included_of_predicate_of_list pre big_l
=
 ["a"; "b"; "c"; "d"]
);;

test_number 8 (
Tools_v.left_list_excluded_of_predicate_of_list pre big_l
=
["a"; "b"; "c"]
);;

test_number 9 (
Tools_v.right_list_excluded_of_predicate_of_list pre big_l
=
 ["e"; "f"]
);;

test_number 10 (
Tools_v.right_list_included_of_predicate_of_list pre big_l
=
 ["d"; "e"; "f"]
);;

test_number 11 (
Tools_v.is_zeros_array_int [|1; 0|]
=
false
);;

test_number 12 (
Tools_v.is_zeros_array_int [|0; 0|]
=
true
);;
