open Make_test_v;;

testing "Rod_v";;

(* toplevel 
   #use "rod_u_any.ml";; 
*)

(** a-b1 b2 ... bn- c *)

let a = "a";;
let b_a = [|1;2;3|];;
let c = 5.0;;

let abc_r = Rod_v.make a b_a c ;;

test_number 1 (
 Rod_v.head_off_rod abc_r 
=
"a"
);;

test_number 2 (
 Rod_v.body_off_rod abc_r 
=
[|1;2;3|]
);;

test_number 3 (
 Rod_v.tail_off_rod abc_r 
=
5.0
);;

test_number 4 (
 Rod_v.body_count_of_rod abc_r 
=
3
);;

test_number 5 (
Rod_v.apply_on_rod_tail (fun s -> (s +. 0.5))  abc_r
  =
{Rod_t.head = "a"; Rod_t.body = [|1; 2; 3|]; Rod_t.tail = 5.5}
);;
