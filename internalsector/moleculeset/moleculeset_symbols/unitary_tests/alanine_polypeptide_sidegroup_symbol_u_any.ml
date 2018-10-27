(** {3 Alanine Polypeptide_sidegroup Symbol.} *)

open Make_test_v;;

testing "Alanine Polypeptide_sidegroup_symbol_v";;

(* toplevel 
   #use "alanine_polypeptide_sidegroup_symbol_u_any.ml";; 
*)


(** Polypeptide_sidegroup Symbol *)

let smb_ama = Molecule_aminoacid_symbol_v.molecule_aminoacid_symbol_of_string "aLaNine";;
let smb_amn = Molecule_aminoacid_symbol_v.molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol smb_ama;;
let smb_amr = Molecule_aminoacid_symbol_v.molecule_aminoacid_regular_symbol_off_molecule_aminoacid_symbol smb_ama;;

let smb_sdc = Polypeptide_sidegroup_symbol_v.polypeptide_sidegroup_symbol_of_molecule_aminoacid_symbol smb_ama;;

test_number 0 (
smb_ama (* : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol *)
  =
Molecule_aminoacid_symbol_t.Molecule_aminoacid_fragmented_symbol
  (Molecule_aminoacid_symbol_t.Molecule_aminoacid_regular_symbol Molecule_aminoacid_symbol_t.Alanine)
);;

test_number 1 (
smb_amn (* : Molecule_aminoacid_symbol_t.molecule_aminoacid_fragmented_symbol *) 
  =
Molecule_aminoacid_symbol_t.Molecule_aminoacid_regular_symbol 
  Molecule_aminoacid_symbol_t.Alanine
);;

test_number 2 (
smb_amr (* : Molecule_aminoacid_symbol_t.molecule_aminoacid_regular_symbol *)
  = 
Molecule_aminoacid_symbol_t.Alanine
);;

test_number 3 (
smb_sdc
=
Polypeptide_sidegroup_symbol_t.Methyl
);;

test_number 4 (
Polypeptide_sidegroup_symbol_v.name smb_sdc
=
"Methyl"
);;

test_number 5 (
Polypeptide_sidegroup_symbol_v.molecule_aminoacid_regular_symbol_off_polypeptide_sidegroup_symbol smb_sdc
=
smb_amr
);;

test_number 6 (
Polypeptide_sidegroup_symbol_v.molecule_aminoacid_fragmented_symbol_off_polypeptide_sidegroup_symbol smb_sdc
=
smb_amn
);;
