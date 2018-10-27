(** {3 Alanine Residue Embedded Symbol.} *)

open Make_test;;

testing "Alanine Residue_embedded_symbol_v";;

(* toplevel 
   #use "alanine_residue_embedded_symbol_u_any.ml";; 
*)


(** Residue Embedded Symbol *)

let smb_amr = Aas_t.Alanine;;
let smb_ama = Aas_t.Molecule_aminoacid_regular_symbol smb_amr;;
let smb_amo = Aas_v.molecule_aminoacid_olc_symbol_off_molecule_aminoacid_symbol smb_ama;;

let smb_rse = Residue_embedded_symbol_v.make smb_ama;;
let smb_res = Residue_symbol_v.make_of_residue_embedded_symbol smb_rse;;

test_number 0 (
smb_rse (* : Residue_embedded_symbol_t.residue_embedded_symbol *)
=
Residue_embedded_symbol_t.Sgl_t.Singlet
   (Molecule_aminoacid_symbol_t.Molecule_aminoacid_regular_symbol Molecule_aminoacid_symbol_t.Alanine)
);;

test_number 1 (
Residue_embedded_symbol_v.make_of_molecule_aminoacid_olc_symbol smb_amo
=
smb_rse
);;

test_number 2 (
Residue_embedded_symbol_v.make_of_molecule_aminoacid_regular_symbol smb_amr
=
smb_rse
);;

test_number 3 (
smb_res (* : Residue_symbol_t.residue_symbol *)
=
Either_or_t.Or
 (Residue_symbol_t.Residue_embedded_symbol_t.Sgl_t.Singlet
   (Molecule_aminoacid_symbol_t.Molecule_aminoacid_regular_symbol Molecule_aminoacid_symbol_t.Alanine))
);;

test_number 4 (
Residue_embedded_symbol_v.molecule_aminoacid_symbol_off_residue_embedded_symbol smb_rse
=
smb_ama
);;
