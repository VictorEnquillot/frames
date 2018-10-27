open Make_test_v;;

testing "Stack_v with
   Stack_u_any";;

(* toplevel 
   #use "Stack_u_any.ml";; 

 *)

(** {6 Testing} *)

let f_l = [1.0; 2.0; 3.0; 4.0];;

let e_sta = Stack_v.stack_of_list f_l;;
let str = Stack_v.name (Format.sprintf " %f") e_sta;;

test_number 1 (
(str : string ) = 
" [\n    1.000000  2.000000  3.000000  4.000000\n  ]"
);;

let e_sta = Stack_v.stack_of_list f_l;;
let e_l = Stack_v.list_non_destructive_of_stack e_sta;;
let e_l = Stack_v.list_non_destructive_of_stack e_sta;;

test_number 2 (
e_l = f_l
);;

let e_sta = Stack_v.stack_of_list f_l;;
let d_s = Stack_v.delete_excluded_of_predicate_of_stack (fun f -> f = 3.0) e_sta;; 
let str = Stack_v.name (Format.sprintf " %f") d_s;;

test_number 3 (
(str : string ) = 
" [\n    1.000000  2.000000\n  ]"
);;

let e_s = Stack_v.stack_of_list f_l;;
Stack_v.add_list_to_stack_of_list_of_stack [5.0; 6.0] e_s;;
let str = Stack_v.name (Format.sprintf " %f") e_s;;

test_number 4 (
(str : string ) =
 " [\n    1.000000  2.000000  3.000000  4.000000  5.000000  6.000000\n  ]"
);;

let e_s = Stack_v.stack_of_list f_l;;
let e = Stack_v.find_destructive_of_predicate_of_stack (fun e -> e = 3.0) e_s;;

test_number 5 (
(e : float ) =
3.0
);;

let str = Stack_v.name (Format.sprintf " %f") e_s;;

test_number 6 (
(str : string ) =
" [\n    1.000000  2.000000\n  ]"
);;

let e_s = Stack_v.stack_of_list f_l;;

let e_top = Stack.top e_s;;

test_number 7 (
(e_top : float ) = 
4.
);;

let e = Stack_v.find_non_destructive_of_predicate_of_stack (fun e -> e = 3.0) e_s;;

test_number 8 (
(e : float ) =
3.0
);;

let str = Stack_v.name (Format.sprintf " %f") e_s;;

test_number 9 (
(str : string ) =
" [\n    1.000000  2.000000  3.000000  4.000000\n  ]"
);;


let e_s = Stack_v.stack_of_list f_l;;
let e = Stack_v.find_previous_non_destructive_of_current_predicate_of_stack (fun e -> e = 2.0) e_s;;
test_number 10 (
(e : float ) =
3.0
);;

let p_s = Stack.create ();;
Stack.push 1 p_s;;
Stack.push 2 p_s;;
Stack.push 3 p_s;;
Stack.push 4 p_s;;
 
let str = Stack_v.name (Format.sprintf " %i") p_s;;

test_number 11 (
( str : string ) = 
" [\n    1  2  3  4\n  ]"
);;

let i_top = Stack.top p_s;;

test_number 12 (
( i_top : int ) = 
4
);;

let p = Stack_v.find_previous_non_destructive_of_current_predicate_of_stack (fun p -> p = 2) p_s;;

test_number 13 (
(p : int ) =
3
);;

let n_s = Stack.create ();;
Stack.push 1 n_s;;
Stack.push 2 n_s;;
Stack.push 3 n_s;;
Stack.push 4 n_s;;

let str = Stack_v.name (Format.sprintf " %i") n_s;;

test_number 14 (
( str : string ) = 
" [\n    1  2  3  4\n  ]"
);;

let n = Stack_v.find_next_non_destructive_of_current_predicate_of_stack (fun n -> n = 2) n_s;;

test_number 15 (
(n : int ) =
1
);;

let n_top = Stack.top n_s;;

test_number 16 (
( n_top : int ) = 
4
);;

let n_pre = Stack_v.previous_non_destructive_of_stack n_s;;

test_number 17 (
( n_pre : int ) = 
3
);;

let n_top = Stack.top n_s;;

test_number 18 (
( n_top : int ) = 
4
);;

let n_s = Stack.create ();;
Stack.push 1 n_s;;
Stack.push 2 n_s;;
Stack.push 3 n_s;;
Stack.push 4 n_s;;

let n_pre = Stack_v.previous_top_destructive_of_stack n_s;;

test_number 19 (
( n_pre : int ) = 
3
);;

let n_top = Stack.top n_s;;

test_number 20 (
( n_top : int ) = 
3
);;

let n_s = Stack.create ();;
Stack.push 1 n_s;;
Stack.push 2 n_s;;
Stack.push 3 n_s;;
Stack.push 4 n_s;;

let n_pre = Stack_v.previous_pop_destructive_of_stack n_s;;

test_number 21 (
( n_pre : int ) = 
3
);;

let n_top = Stack.top n_s;;

test_number 22 (
( n_top : int ) = 
2
);;

