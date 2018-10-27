open Make_test_v;;

testing "Integer_value_v";;

(* toplevel 
   #use "integer_value_u_any.ml";; 
 
*)

let val_i = Integer_value_v.make "3";;

test_number 1 (
val_i
=
Integer_value_t.Integer 3
);;

test_number 2 (
Integer_value_v.increment val_i
=
Integer_value_t.Integer 4
);;

test_number 3 (
Integer_value_v.decrement val_i
=
Integer_value_t.Integer 2
);;

