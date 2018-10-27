open Make_test_v;;

testing "Bond_marker_v";;

(* toplevel 
   #use "bond_marker_u_any.ml";; 
*)


let mty_1 = Multiplicity_t.Single;;
let mty_2 = Multiplicity_t.Double;;

let est_bnd_1 = Entity_index_t.Bond mty_1;;   
let est_bnd_2 = Entity_index_t.Bond mty_2;;   
let dsg_bnd_1 = Bond_marker_v.make "a" est_bnd_1;; 
let dsg_bnd_2 = Bond_marker_v.make "a" est_bnd_2;; 

test_number 0 (
Bond_marker_v.bond_symbol_off_bond_marker dsg_bnd_1
=
"a"
);;

test_number 1 (
Bond_marker_v.multiplicity_off_bond_marker dsg_bnd_1
=
 Multiplicity_t.Single
);;

test_number 2 (
 Bond_marker_v.string_of_bond_marker dsg_bnd_1
= 
"a:B_S"
);;

test_number 3 (
 Bond_marker_v.string_of_bond_marker dsg_bnd_2
= 
"a:B_D"
);;

test_number 4 (
Bond_marker_v.compare dsg_bnd_1 dsg_bnd_1
=
0
);;

test_number 5 (
Bond_marker_v.compare dsg_bnd_1 dsg_bnd_2
=
1
);;

test_number 6 (
Bond_marker_v.compare dsg_bnd_2 dsg_bnd_1
=
-1
);;
