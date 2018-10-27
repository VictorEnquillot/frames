open Make_test_v;;

testing "Index_p";;

(* toplevel 
   #use "index_u_any.ml";; 
 *)

let ind = Index_p.make 3;;

test_number 1 (
ind
=
Index_p.three
);;

test_number 2 (
Index_p.int_of_index ind
=
3
);;

test_number 3 (
Index_p.increment ind
=
Index_p.four
);;

test_number 4 (
Index_p.decrement ind
=
Index_p.two
);;

