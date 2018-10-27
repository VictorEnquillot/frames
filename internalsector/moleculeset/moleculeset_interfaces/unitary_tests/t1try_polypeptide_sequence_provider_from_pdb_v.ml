(** {3 1try Polypeptide_sequence_provider_from_pdb} *)

open Make_test_v;;

testing "1try Polypeptide_sequence_provider_from_pdb_v";;

(* toplevel 
   #use "t1try_polypeptide_sequence_provider_from_pdb_v.ml";; 
*)


let sym_plr = Pls_t.Try;;
let sym_plp = Pls_v.polypeptide_symbol_of_polypeptide_regular_symbol sym_plr;;
let csq = Psp_v.chain_sequencepdb_of_polypeptide_symbol sym_plp;; 
let seq_plp = Psp_v.provide sym_plp;;

test_number 1 (
smb_plp (* : Polypeptide_symbol_t.polypeptide_symbol *)
  =
Polypeptide_symbol_t.Polypeptide_regular_symbol Polypeptide_symbol_t.Try
);;

test_number 2 (
csq (* : Chain_sequencepdb_t.chain_sequencepdb *)
  =
('A',
 [Chain_sequencepdb_t.Rns_t.ILE; Chain_sequencepdb_t.Rns_t.VAL;
  Chain_sequencepdb_t.Rns_t.GLY; Chain_sequencepdb_t.Rns_t.GLY;
  Chain_sequencepdb_t.Rns_t.THR; Chain_sequencepdb_t.Rns_t.SER;
  Chain_sequencepdb_t.Rns_t.ALA; Chain_sequencepdb_t.Rns_t.SER;
  Chain_sequencepdb_t.Rns_t.ALA; Chain_sequencepdb_t.Rns_t.GLY;
  Chain_sequencepdb_t.Rns_t.ASP; Chain_sequencepdb_t.Rns_t.PHE;
  Chain_sequencepdb_t.Rns_t.PRO; Chain_sequencepdb_t.Rns_t.PHE;
  Chain_sequencepdb_t.Rns_t.ILE; Chain_sequencepdb_t.Rns_t.VAL;
  Chain_sequencepdb_t.Rns_t.SER; Chain_sequencepdb_t.Rns_t.ILE;
  Chain_sequencepdb_t.Rns_t.SER; Chain_sequencepdb_t.Rns_t.ARG;
  Chain_sequencepdb_t.Rns_t.ASN; Chain_sequencepdb_t.Rns_t.GLY;
  Chain_sequencepdb_t.Rns_t.GLY; Chain_sequencepdb_t.Rns_t.PRO;
  Chain_sequencepdb_t.Rns_t.TRP; Chain_sequencepdb_t.Rns_t.CYS;
  Chain_sequencepdb_t.Rns_t.GLY; Chain_sequencepdb_t.Rns_t.GLY;
  Chain_sequencepdb_t.Rns_t.SER; Chain_sequencepdb_t.Rns_t.LEU;
  Chain_sequencepdb_t.Rns_t.LEU; Chain_sequencepdb_t.Rns_t.ASN;
  Chain_sequencepdb_t.Rns_t.ALA; Chain_sequencepdb_t.Rns_t.ASN;
  Chain_sequencepdb_t.Rns_t.THR; Chain_sequencepdb_t.Rns_t.VAL;
  Chain_sequencepdb_t.Rns_t.LEU; Chain_sequencepdb_t.Rns_t.THR;
  Chain_sequencepdb_t.Rns_t.ALA; Chain_sequencepdb_t.Rns_t.ALA;
  Chain_sequencepdb_t.Rns_t.HIS; Chain_sequencepdb_t.Rns_t.CYS;
  Chain_sequencepdb_t.Rns_t.VAL; Chain_sequencepdb_t.Rns_t.SER;
  Chain_sequencepdb_t.Rns_t.GLY; Chain_sequencepdb_t.Rns_t.TYR;
  Chain_sequencepdb_t.Rns_t.ALA; Chain_sequencepdb_t.Rns_t.GLN;
  Chain_sequencepdb_t.Rns_t.SER; Chain_sequencepdb_t.Rns_t.GLY;
  Chain_sequencepdb_t.Rns_t.PHE; Chain_sequencepdb_t.Rns_t.GLN;
  Chain_sequencepdb_t.Rns_t.ILE; Chain_sequencepdb_t.Rns_t.ARG;
  Chain_sequencepdb_t.Rns_t.ALA; Chain_sequencepdb_t.Rns_t.GLY;
  Chain_sequencepdb_t.Rns_t.SER; Chain_sequencepdb_t.Rns_t.LEU;
  Chain_sequencepdb_t.Rns_t.SER; Chain_sequencepdb_t.Rns_t.ARG;
  Chain_sequencepdb_t.Rns_t.THR; Chain_sequencepdb_t.Rns_t.SER;
  Chain_sequencepdb_t.Rns_t.GLY; Chain_sequencepdb_t.Rns_t.GLY;
  Chain_sequencepdb_t.Rns_t.ILE; Chain_sequencepdb_t.Rns_t.THR;
  Chain_sequencepdb_t.Rns_t.SER; Chain_sequencepdb_t.Rns_t.SER;
  Chain_sequencepdb_t.Rns_t.LEU; Chain_sequencepdb_t.Rns_t.SER;
  Chain_sequencepdb_t.Rns_t.SER; Chain_sequencepdb_t.Rns_t.VAL;
  Chain_sequencepdb_t.Rns_t.ARG; Chain_sequencepdb_t.Rns_t.VAL;
  Chain_sequencepdb_t.Rns_t.HIS; Chain_sequencepdb_t.Rns_t.PRO;
  Chain_sequencepdb_t.Rns_t.SER; Chain_sequencepdb_t.Rns_t.TYR;
  Chain_sequencepdb_t.Rns_t.SER; Chain_sequencepdb_t.Rns_t.GLY;
  Chain_sequencepdb_t.Rns_t.ASN; Chain_sequencepdb_t.Rns_t.ASN;
  Chain_sequencepdb_t.Rns_t.ASN; Chain_sequencepdb_t.Rns_t.ASP;
  Chain_sequencepdb_t.Rns_t.LEU; Chain_sequencepdb_t.Rns_t.ALA;
  Chain_sequencepdb_t.Rns_t.ILE; Chain_sequencepdb_t.Rns_t.LEU;
  Chain_sequencepdb_t.Rns_t.LYS; Chain_sequencepdb_t.Rns_t.LEU;
  Chain_sequencepdb_t.Rns_t.SER; Chain_sequencepdb_t.Rns_t.THR;
  Chain_sequencepdb_t.Rns_t.SER; Chain_sequencepdb_t.Rns_t.ILE;
  Chain_sequencepdb_t.Rns_t.PRO; Chain_sequencepdb_t.Rns_t.SER;
  Chain_sequencepdb_t.Rns_t.GLY; Chain_sequencepdb_t.Rns_t.GLY;
  Chain_sequencepdb_t.Rns_t.ASN; Chain_sequencepdb_t.Rns_t.ILE;
  Chain_sequencepdb_t.Rns_t.GLY; Chain_sequencepdb_t.Rns_t.TYR;
  Chain_sequencepdb_t.Rns_t.ALA; Chain_sequencepdb_t.Rns_t.ARG;
  Chain_sequencepdb_t.Rns_t.LEU; Chain_sequencepdb_t.Rns_t.ALA;
  Chain_sequencepdb_t.Rns_t.ALA; Chain_sequencepdb_t.Rns_t.SER;
  Chain_sequencepdb_t.Rns_t.GLY; Chain_sequencepdb_t.Rns_t.SER;
  Chain_sequencepdb_t.Rns_t.ASP; Chain_sequencepdb_t.Rns_t.PRO;
  Chain_sequencepdb_t.Rns_t.VAL; Chain_sequencepdb_t.Rns_t.ALA;
  Chain_sequencepdb_t.Rns_t.GLY; Chain_sequencepdb_t.Rns_t.SER;
  Chain_sequencepdb_t.Rns_t.SER; Chain_sequencepdb_t.Rns_t.ALA;
  Chain_sequencepdb_t.Rns_t.THR; Chain_sequencepdb_t.Rns_t.VAL;
  Chain_sequencepdb_t.Rns_t.ALA; Chain_sequencepdb_t.Rns_t.GLY;
  Chain_sequencepdb_t.Rns_t.TRP; Chain_sequencepdb_t.Rns_t.GLY;
  Chain_sequencepdb_t.Rns_t.ALA; Chain_sequencepdb_t.Rns_t.THR;
  Chain_sequencepdb_t.Rns_t.SER; Chain_sequencepdb_t.Rns_t.GLU;
  Chain_sequencepdb_t.Rns_t.GLY; Chain_sequencepdb_t.Rns_t.GLY;
  Chain_sequencepdb_t.Rns_t.SER; Chain_sequencepdb_t.Rns_t.SER;
  Chain_sequencepdb_t.Rns_t.THR; Chain_sequencepdb_t.Rns_t.PRO;
  Chain_sequencepdb_t.Rns_t.VAL; Chain_sequencepdb_t.Rns_t.ASN;
  Chain_sequencepdb_t.Rns_t.LEU; Chain_sequencepdb_t.Rns_t.LEU;
  Chain_sequencepdb_t.Rns_t.LYS; Chain_sequencepdb_t.Rns_t.VAL;
  Chain_sequencepdb_t.Rns_t.THR; Chain_sequencepdb_t.Rns_t.VAL;
  Chain_sequencepdb_t.Rns_t.PRO; Chain_sequencepdb_t.Rns_t.ILE;
  Chain_sequencepdb_t.Rns_t.VAL; Chain_sequencepdb_t.Rns_t.SER;
  Chain_sequencepdb_t.Rns_t.ARG; Chain_sequencepdb_t.Rns_t.ALA;
  Chain_sequencepdb_t.Rns_t.THR; Chain_sequencepdb_t.Rns_t.CYS;
  Chain_sequencepdb_t.Rns_t.ARG; Chain_sequencepdb_t.Rns_t.ALA;
  Chain_sequencepdb_t.Rns_t.GLN; Chain_sequencepdb_t.Rns_t.TYR;
  Chain_sequencepdb_t.Rns_t.GLY; Chain_sequencepdb_t.Rns_t.THR;
  Chain_sequencepdb_t.Rns_t.SER; Chain_sequencepdb_t.Rns_t.ALA;
  Chain_sequencepdb_t.Rns_t.ILE; Chain_sequencepdb_t.Rns_t.THR;
  Chain_sequencepdb_t.Rns_t.ASN; Chain_sequencepdb_t.Rns_t.GLN;
  Chain_sequencepdb_t.Rns_t.MET; Chain_sequencepdb_t.Rns_t.PHE;
  Chain_sequencepdb_t.Rns_t.CYS; Chain_sequencepdb_t.Rns_t.ALA;
  Chain_sequencepdb_t.Rns_t.GLY; Chain_sequencepdb_t.Rns_t.VAL;
  Chain_sequencepdb_t.Rns_t.SER; Chain_sequencepdb_t.Rns_t.SER;
  Chain_sequencepdb_t.Rns_t.GLY; Chain_sequencepdb_t.Rns_t.GLY;
  Chain_sequencepdb_t.Rns_t.LYS; Chain_sequencepdb_t.Rns_t.ASP;
  Chain_sequencepdb_t.Rns_t.SER; Chain_sequencepdb_t.Rns_t.CYS;
  Chain_sequencepdb_t.Rns_t.GLN; Chain_sequencepdb_t.Rns_t.GLY;
  Chain_sequencepdb_t.Rns_t.ASP; Chain_sequencepdb_t.Rns_t.SER;
  Chain_sequencepdb_t.Rns_t.GLY; Chain_sequencepdb_t.Rns_t.GLY;
  Chain_sequencepdb_t.Rns_t.PRO; Chain_sequencepdb_t.Rns_t.ILE;
  Chain_sequencepdb_t.Rns_t.VAL; Chain_sequencepdb_t.Rns_t.ASP;
  Chain_sequencepdb_t.Rns_t.SER; Chain_sequencepdb_t.Rns_t.SER;
  Chain_sequencepdb_t.Rns_t.ASN; Chain_sequencepdb_t.Rns_t.THR;
  Chain_sequencepdb_t.Rns_t.LEU; Chain_sequencepdb_t.Rns_t.ILE;
  Chain_sequencepdb_t.Rns_t.GLY; Chain_sequencepdb_t.Rns_t.ALA;
  Chain_sequencepdb_t.Rns_t.VAL; Chain_sequencepdb_t.Rns_t.SER;
  Chain_sequencepdb_t.Rns_t.TRP; Chain_sequencepdb_t.Rns_t.GLY;
  Chain_sequencepdb_t.Rns_t.ASN; Chain_sequencepdb_t.Rns_t.GLY;
  Chain_sequencepdb_t.Rns_t.CYS; Chain_sequencepdb_t.Rns_t.ALA;
  Chain_sequencepdb_t.Rns_t.ARG; Chain_sequencepdb_t.Rns_t.PRO;
  Chain_sequencepdb_t.Rns_t.ASN; Chain_sequencepdb_t.Rns_t.TYR;
  Chain_sequencepdb_t.Rns_t.SER; Chain_sequencepdb_t.Rns_t.GLY;
  Chain_sequencepdb_t.Rns_t.VAL; Chain_sequencepdb_t.Rns_t.TYR;
  Chain_sequencepdb_t.Rns_t.ALA; Chain_sequencepdb_t.Rns_t.SER;
  Chain_sequencepdb_t.Rns_t.VAL; Chain_sequencepdb_t.Rns_t.GLY;
  Chain_sequencepdb_t.Rns_t.ALA; Chain_sequencepdb_t.Rns_t.LEU;
  Chain_sequencepdb_t.Rns_t.ARG; Chain_sequencepdb_t.Rns_t.SER;
  Chain_sequencepdb_t.Rns_t.PHE; Chain_sequencepdb_t.Rns_t.ILE;
  Chain_sequencepdb_t.Rns_t.ASP; Chain_sequencepdb_t.Rns_t.THR;
  Chain_sequencepdb_t.Rns_t.TYR; Chain_sequencepdb_t.Rns_t.ALA])
);;

test_number 3 (
List.hd seq_plp (* : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol list *)
=
Molecule_aminoacid_symbol_t.Molecule_aminoacid_fragmented_symbol
 (Molecule_aminoacid_symbol_t.Molecule_aminoacid_regular_symbol Molecule_aminoacid_symbol_t.Isoleucine)
);;
