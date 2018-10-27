(* $Id : Exp $ *)

open Make_test_v;;

testing "Index_pdb_v";;

(* toplevel #use "tindex_pdb_v.ml";; *)

test_number 1 (
 Index_pdb_v.alternate_location_index_of_string " "
=
Index_pdb_t.Alternate_blank
);;

test_number 2 (
 Index_pdb_v.branch_index_pdb_of_string "2"
=
Index_pdb_t.Branch_two
);;

test_number 3 (
 Index_pdb_v.branch_index_pdb_of_int 2
=
Index_pdb_t.Branch_two
);;

test_number 4 (
 Index_pdb_v.remote_index_pdb_of_string "G"
=
Index_pdb_t.Remote_G
);;

test_number 5 (
 Index_pdb_v.remote_index_pdb_of_int 3
=
Index_pdb_t.Remote_G
);;

test_number 6 (
 Index_pdb_v.h_index_pdb_of_string "2"
=
Index_pdb_t.H_two
);;

test_number 7 (
 Index_pdb_v.h_index_pdb_of_int 2
=
Index_pdb_t.H_two
);;

test_number 8 (
 Index_pdb_v.insertion_index_pdb_of_string "C"
=
 Index_pdb_t.Insertion_C
);;
