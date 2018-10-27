open Make_test_v;;

testing "Axe_notation_v with
   axe_notation_u_any.ml";;

(* toplevel 
   #use "axe_notation_u_any.ml";; 
*)

let axn = Axe_notation_v.make 2 0;;

test_number 1 (
Axe_notation_v.name axn
=
"AX2E0"
);;

test_number 2 (
Axe_notation_v.sigmabond_number_off_axe_notation axn
=
2
);;

test_number 3 (
Axe_notation_v.lonepair_number_off_axe_notation axn
=
0
);;

test_number 4 (
Axe_notation_v.steric_number_off_axe_notation axn
=
2
);;
