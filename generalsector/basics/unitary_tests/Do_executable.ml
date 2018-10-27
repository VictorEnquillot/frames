open Make_test_v;;

testing "Utilities_v with
   utilities_u_any.ml";;

(* toplevel 
   #use "utilities_u_any.ml";; 

 *)

test_number 1 (
Utilities_v.identity 3
=
3
);;

test_number 2 (
Utilities_v.identity "a"
=
"a"
);;

