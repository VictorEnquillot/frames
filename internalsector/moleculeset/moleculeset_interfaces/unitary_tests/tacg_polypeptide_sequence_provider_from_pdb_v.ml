(** {3 acg Polypeptide_sequence_provider_from_pdb} *)

open Make_test_v;;

testing "acg Polypeptide_sequence_provider_from_pdb_v";;

(* toplevel 
   #use "tacg_polypeptide_sequence_provider_from_pdb_v.ml";; 
*)


let sym_plp = Pls_v.make "ACG";;
let csq = Spt_v.chain_sequencepdb_of_polypeptide_symbol sym_plp;; 
let seq_plp = Spt_v.molecule_aminoacid_symbol_list_of_polypeptide_symbol sym_plp;;

test_number 1 (
smb_plp (* : Polypeptide_symbol_t.polypeptide_symbol *)
  =
Polypeptide_symbol_t.Acg
);;

test_number 2 (
csq (* : Chain_sequencepdb_t.chain_sequencepdb *)
  =
(' ',
 [Chain_sequencepdb_t.Rns_t.ALA; Chain_sequencepdb_t.Rns_t.CYS;
  Chain_sequencepdb_t.Rns_t.GLY])
);;

test_number 3 (
seq_plp (* : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol list *)
=
[Molecule_aminoacid_symbol_t.Molecule_aminoacid_fragmented_symbol
  (Molecule_aminoacid_symbol_t.Molecule_aminoacid_regular_symbol Molecule_aminoacid_symbol_t.Alanine);
 Molecule_aminoacid_symbol_t.Molecule_aminoacid_fragmented_symbol
  (Molecule_aminoacid_symbol_t.Molecule_aminoacid_regular_symbol Molecule_aminoacid_symbol_t.Cysteine);
 Molecule_aminoacid_symbol_t.Molecule_aminoacid_glycine_symbol Molecule_aminoacid_symbol_t.Glycine]
);;
