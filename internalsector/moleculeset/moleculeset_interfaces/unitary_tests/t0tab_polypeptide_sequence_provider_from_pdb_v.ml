(** {3 0tab Polypeptide_sequence_provider_from_pdb} *)

open Make_test_v;;

testing "0tab Polypeptide_sequence_provider_from_pdb_v";;

(* toplevel 
   #use "t0tab_polypeptide_sequence_provider_from_pdb_v.ml";; 
*)


(* Chain A *)
let sym_plr_a = Pls_t.Tab_a;;
let sym_plp_a = Pls_v.polypeptide_symbol_of_polypeptide_regular_symbol sym_plr_a;;

(* Chain B *)
let sym_plr_b = Pls_t.Tab_b;;
let sym_plp_b = Pls_v.polypeptide_symbol_of_polypeptide_regular_symbol sym_plr_b;;

(* Chain C *)
let sym_plr_c = Pls_t.Tab_c;;
let sym_plp_c = Pls_v.polypeptide_symbol_of_polypeptide_regular_symbol sym_plr_c;;

(* Chain D *)
let sym_plr_d = Pls_t.Tab_d;;
let sym_plp_d = Pls_v.polypeptide_symbol_of_polypeptide_regular_symbol sym_plr_d;;

(* Chain E *)
let sym_plr_e = Pls_t.Tab_e;;
let sym_plp_e = Pls_v.polypeptide_symbol_of_polypeptide_regular_symbol sym_plr_e;;

test_number 1 (
smb_plp_a (* : Polypeptide_symbol_t.polypeptide_symbol *)
  =
Polypeptide_symbol_t.Polypeptide_regular_symbol Polypeptide_symbol_t.Tab_a
);;

test_number 2 (
Psp_v.chain_sequencepdb_of_polypeptide_symbol sym_plp_a
(* : Chain_sequencepdb_t.chain_sequencepdb *)
  =
('A',
 [Chain_sequencepdb_t.Rns_t.VAL; Chain_sequencepdb_t.Rns_t.ALA;
Chain_sequencepdb_t.Rns_t.ALA; Chain_sequencepdb_t.Rns_t.TRP;
Chain_sequencepdb_t.Rns_t.GLY])
);;

test_number 3 (
Psp_v.provide sym_plp_a
(* : Polypeptide_sequence_t.polypeptide_sequence *)
=
[Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_fragmented_symbol
  (Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_regular_symbol
    Polypeptide_sequence_t.Aas_t.Valine);
 Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_fragmented_symbol
  (Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_regular_symbol
    Polypeptide_sequence_t.Aas_t.Alanine);
 Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_fragmented_symbol
  (Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_regular_symbol
    Polypeptide_sequence_t.Aas_t.Alanine);
 Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_fragmented_symbol
  (Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_regular_symbol
    Polypeptide_sequence_t.Aas_t.Tryptophan);
 Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_segmented_symbol
  (Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_glycine_symbol
    Polypeptide_sequence_t.Aas_t.Glycine)]
);;

test_number 4 (
smb_plp_b (* : Polypeptide_symbol_t.polypeptide_symbol *)
  =
Polypeptide_symbol_t.Polypeptide_regular_symbol Polypeptide_symbol_t.Tab_b
);;

test_number 5 (
Psp_v.chain_sequencepdb_of_polypeptide_symbol sym_plp_b
(* : Chain_sequencepdb_t.chain_sequencepdb *)
  =
('B', [Chain_sequencepdb_t.Rns_t.GLY; Chain_sequencepdb_t.Rns_t.PRO])
);;

test_number 6 (
Psp_v.provide sym_plp_b
(* : Polypeptide_sequence_t.polypeptide_sequence *)
=
[Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_segmented_symbol
  (Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_glycine_symbol
    Polypeptide_sequence_t.Aas_t.Glycine);
 Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_fragmented_symbol
  (Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_proline_symbol
    Polypeptide_sequence_t.Aas_t.Proline)]
);;

test_number 7 (
smb_plp_c (* : Polypeptide_symbol_t.polypeptide_symbol *)
  =
Polypeptide_symbol_t.Polypeptide_regular_symbol Polypeptide_symbol_t.Tab_c
);;

test_number 8 (
Psp_v.chain_sequencepdb_of_polypeptide_symbol sym_plp_c
(* : Chain_sequencepdb_t.chain_sequencepdb *)
  =
('C',
 [Chain_sequencepdb_t.Rns_t.ALA; 
  Chain_sequencepdb_t.Rns_t.GLY;
  Chain_sequencepdb_t.Rns_t.GLY])
);;

test_number 9 (
Psp_v.provide sym_plp_c
(* : Polypeptide_sequence_t.polypeptide_sequence *)
=
[Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_fragmented_symbol
  (Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_regular_symbol
    Polypeptide_sequence_t.Aas_t.Alanine);
 Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_segmented_symbol
  (Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_glycine_symbol
    Polypeptide_sequence_t.Aas_t.Glycine);
 Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_segmented_symbol
  (Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_glycine_symbol
    Polypeptide_sequence_t.Aas_t.Glycine)]
);;

test_number 10 (
smb_plp_d (* : Polypeptide_symbol_t.polypeptide_symbol *)
  =
Polypeptide_symbol_t.Polypeptide_regular_symbol Polypeptide_symbol_t.Tab_d
);;

test_number 11 (
Psp_v.chain_sequencepdb_of_polypeptide_symbol sym_plp_d
(* : Chain_sequencepdb_t.chain_sequencepdb *)
  =
('D',
 [Chain_sequencepdb_t.Rns_t.ALA; 
  Chain_sequencepdb_t.Rns_t.GLY;
  Chain_sequencepdb_t.Rns_t.PRO; 
  Chain_sequencepdb_t.Rns_t.GLY;
  Chain_sequencepdb_t.Rns_t.ALA])
);;

test_number 12 (
Psp_v.provide sym_plp_d
(* : Polypeptide_sequence_t.polypeptide_sequence *)
=
[Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_fragmented_symbol
  (Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_regular_symbol
    Polypeptide_sequence_t.Aas_t.Alanine);
 Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_segmented_symbol
  (Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_glycine_symbol
    Polypeptide_sequence_t.Aas_t.Glycine);
 Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_fragmented_symbol
  (Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_proline_symbol
    Polypeptide_sequence_t.Aas_t.Proline);
 Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_segmented_symbol
  (Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_glycine_symbol
    Polypeptide_sequence_t.Aas_t.Glycine);
 Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_fragmented_symbol
  (Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_regular_symbol
    Polypeptide_sequence_t.Aas_t.Alanine)]
);;

test_number 13 (
smb_plp_e (* : Polypeptide_symbol_t.polypeptide_symbol *)
  =
Polypeptide_symbol_t.Polypeptide_regular_symbol Polypeptide_symbol_t.Tab_e
);;

test_number 14 (
Psp_v.chain_sequencepdb_of_polypeptide_symbol sym_plp_e
(* : Chain_sequencepdb_t.chain_sequencepdb *)
  =
('E',
[Chain_sequencepdb_t.Rns_t.LEU; 
 Chain_sequencepdb_t.Rns_t.ILE;
 Chain_sequencepdb_t.Rns_t.VAL])
);;

test_number 15 (
Psp_v.provide sym_plp_e
(* : Polypeptide_sequence_t.polypeptide_sequence *)
=
[Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_fragmented_symbol
  (Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_regular_symbol
    Polypeptide_sequence_t.Aas_t.Leucine);
 Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_fragmented_symbol
  (Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_regular_symbol
    Polypeptide_sequence_t.Aas_t.Isoleucine);
 Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_fragmented_symbol
  (Polypeptide_sequence_t.Aas_t.Molecule_aminoacid_regular_symbol
    Polypeptide_sequence_t.Aas_t.Valine)]
);;
