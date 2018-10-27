open Make_test_v;;

testing "Ordinal_p";;

(* toplevel 
   #use "ordinal_u_any.ml";; 
 *)


let ord = Ordinal_p.make 3;;

test_number 1 (
ord
=
Ordinal_p.three
);;

test_number 2 (
Ordinal_p.int_of_ordinal ord
=
3
);;

test_number 3 (
Ordinal_p.increment ord
=
Ordinal_p.four
);;

test_number 4 (
Ordinal_p.decrement ord
=
Ordinal_p.two
);;

