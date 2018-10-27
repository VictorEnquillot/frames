(* $Id : Exp $ *)

open Make_test_v;;

testing "Aminoacid_symbol_pdb_v";;

(* toplevel #use "taminoacid_symbol_pdb_v.ml";; *)

test_number 1 (
Aminoacid_symbol_pdb_v.string_of_extra_aminoacid_symbol_pdb 
  Aminoacid_symbol_pdb_t.Glx
=
"Glx"
);;

test_number 2 (
Aminoacid_symbol_pdb_v.extra_aminoacid_symbol_pdb_of_string "Glx" 
=
  Aminoacid_symbol_pdb_t.Glx
);;

let sym_ama = Aminoacid_symbol_t.Ala;;
let sym_pam = 
  Aminoacid_symbol_pdb_v.aminoacid_symbol_pdb_of_aminoacid_symbol sym_ama;;
 
test_number 3 (
smb_pam
=
Aminoacid_symbol_pdb_t.Standard Aminoacid_symbol_t.Ala
);;

test_number 4 (
Aminoacid_symbol_pdb_v.string_of_aminoacid_symbol_pdb sym_pam
=
"Ala"
);;
