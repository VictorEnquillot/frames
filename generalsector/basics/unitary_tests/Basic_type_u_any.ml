open Make_test_v;;

testing "Basic_type_v with
   basic_type_u_any.ml";;

(* toplevel 
   #use "basic_type_u_any.ml";; 

 *)

let one = Basic_type_v.onebit;;

test_number 1 (
one
=
Basic_type_t.Onebit
);;

