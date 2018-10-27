open Make_test_v;;

testing "Leg_v";;

(* toplevel 
   #use "leg_u_any.ml";; 
*)

(** b1 b2 ... bn- c *)

let b_a = [|1;2;3|];;
let c = 5.0;;

let bc_l = Leg_v.make b_a c ;;

test_number 1 (
 Leg_v.body_off_leg bc_l 
=
[|1;2;3|]
);;

test_number 2 (
 Leg_v.tail_off_leg bc_l 
=
5.0
);;

test_number 3 (
 Leg_v.body_count_of_leg bc_l 
=
3
);;

test_number 4 (
 Leg_v.array_off_inhomogeneous_leg 
  (fun i -> string_of_int i) (fun f -> string_of_float f) bc_l 
=
[|"1"; "2"; "3"; "5."|]
);;

let aa_l = Leg_v.leg_off_array b_a ;;

test_number 5 (
aa_l
=
{Leg_t.body = [|1; 2|]; Leg_t.tail = 3}
);;

let a_a = [|2;|] ;;
let a_a_l = Leg_v.leg_off_array a_a ;;

test_number 6 (
a_a_l
=
  {Leg_t.body = [||]; Leg_t.tail = 2}
);;

test_number 7 (
Leg_v.array_off_leg a_a_l
  =
[|2|]
);;

 test_number 8 (
Leg_v.apply_on_leg_tail (fun s -> (s +. 0.5))  bc_l
  =
{Leg_t.body = [|1; 2; 3|]; Leg_t.tail = 5.5}
);;
