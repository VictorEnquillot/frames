(** {3 Valine Molecule_aminoacid Symbol.} *)

open Make_test_v;;

testing "Valine Molecule_aminoacid_symbol_v";;

(* toplevel 
   #use "methane_symbol_u_any.ml";; 
*)


(** Molecule_aminoacid Symbol *)

let smb_ama = Molecule_aminoacid_symbol_v.valine;;
let smb_amr = Molecule_aminoacid_symbol_v.molecule_aminoacid_regular_symbol_off_molecule_aminoacid_symbol smb_ama;;
let smb_amn = Molecule_aminoacid_symbol_v.molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol smb_ama;;

test_number 0 (
smb_ama 
(*  : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol *)
=
  Molecule_aminoacid_symbol_t.Molecule_aminoacid_fragmented_symbol
   (Molecule_aminoacid_symbol_t.Mafs_t.Molecule_aminoacid_regular_symbol
     Molecule_aminoacid_symbol_t.Mafs_t.Mars_t.Valine)
);;

test_number 1 (
smb_amn 
(* Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol *)
=
Molecule_aminoacid_fragmented_symbol_t.Molecule_aminoacid_regular_symbol
Molecule_aminoacid_fragmented_symbol_t.Mars_t.Valine
);;

test_number 2 (
smb_amr (* : Molecule_aminoacid_symbol_t.molecule_aminoacid_regular_symbol *)
  = 
Molecule_aminoacid_regular_symbol_t.Valine
);;

test_number 4 (
Molecule_aminoacid_symbol_v.read (Scanf.Scanning.from_string "valine") 
(* : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol *)
=
smb_ama
);;

test_number 5 (
Molecule_aminoacid_symbol_v.molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol smb_ama 
(* : Molecule_aminoacid_symbol_t.molecule_aminoacid_fragmented_symbol *)
  =
Molecule_aminoacid_symbol_t.Molecule_aminoacid_regular_symbol Molecule_aminoacid_symbol_t.Valine
);;

test_number 6 (
Molecule_aminoacid_symbol_v.molecule_aminoacid_regular_symbol_off_molecule_aminoacid_symbol smb_ama 
(* : Molecule_aminoacid_symbol_t.molecule_aminoacid_regular_symbol *)
 = 
smb_amr
);;

test_number 7 (
Molecule_aminoacid_symbol_v.is_molecule_aminoacid_regular smb_ama
);;

test_number 8 (
Molecule_aminoacid_symbol_v.is_molecule_aminoacid_fragmented smb_ama
);;

test_number 9 (
Molecule_aminoacid_symbol_v.name smb_ama
=
"Valine"
);;

test_number 10 (
Molecule_aminoacid_symbol_v.molecule_aminoacid_olc_symbol_off_molecule_aminoacid_symbol smb_ama
(* : Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol *)
=
Molecule_aminoacid_olc_symbol_t.Molecule_aminoacid_fragmented_olc_symbol
 (Molecule_aminoacid_olc_symbol_t.Molecule_aminoacid_regular_olc_symbol
   Molecule_aminoacid_olc_symbol_t.V)
);;

test_number 11 (
Molecule_aminoacid_symbol_v.molecule_aminoacid_tlc_symbol_off_molecule_aminoacid_symbol smb_ama
(* : Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol *)
=
Molecule_aminoacid_tlc_symbol_t.Molecule_aminoacid_fragmented_tlc_symbol
 (Molecule_aminoacid_tlc_symbol_t.Molecule_aminoacid_regular_tlc_symbol
   Molecule_aminoacid_tlc_symbol_t.Val)
);;

