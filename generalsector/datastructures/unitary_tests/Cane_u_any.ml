open Make_test_v;;

testing "Cane_v";;

(* toplevel 
   #use "cane_u_any.ml";; 
*)

(** a-b1 b2 ... bn *)

let a = "a";;
let b_a = [|1;2;3|];;

let ab_c = Cane_v.make a b_a ;;

test_number 1 (
 Cane_v.head_off_cane ab_c 
=
"a"
);;

test_number 2 (
 Cane_v.body_off_cane ab_c 
=
[|1;2;3|]
);;

test_number 3 (
 Cane_v.body_count_of_cane ab_c 
=
3
);;

test_number 4 (
Cane_v.apply_on_cane_tail (fun i -> (i +2)) ab_c
  =
{Cane_t.head = "a"; Cane_t.body = [|1; 2; 5|]}
);;

