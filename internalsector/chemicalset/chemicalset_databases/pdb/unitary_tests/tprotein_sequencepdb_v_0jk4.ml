(** {3 0jk4 Protein_sequencepdb_v} *)

open Make_test_v;;

testing "Protein_sequencepdb_v with
   tprotein_sequencepdb_v_0jk4.ml";;

(* toplevel 
   #use "tprotein_sequencepdb_v_0jk4.ml";; 
*)

let sym_enp = Entrypdb_symbol_t.ProteinID "0jk4";;
let dat_clp_l = Clusterpdb_data_v.clusterpdb_data_list_off_entrypdb_symbol sym_enp;;

let psq = Protein_sequencepdb_v.make sym_enp;;

let cid_a = 'A';;
let csq_a = Protein_sequencepdb_v.chain_sequencepdb_of_entrypdb_symbol_of_chain_idpdb sym_enp cid_a;;

let cid_b = 'B';;
let csq_b = Protein_sequencepdb_v.chain_sequencepdb_of_entrypdb_symbol_of_chain_idpdb sym_enp cid_b;;

test_number 1 (
List.length dat_clp_l
(* : Clusterpdb_data_t.clusterpdb_data list *)
=
35
);;

test_number 2 (
csq_a 
=
('A',
    [Residuepdb_symbol_t.LEU;
     Residuepdb_symbol_t.ARG;
     Residuepdb_symbol_t.GLN;
     Residuepdb_symbol_t.CYS;
     Residuepdb_symbol_t.LEU;
     Residuepdb_symbol_t.PRO;
     Residuepdb_symbol_t.CYS;
     Residuepdb_symbol_t.GLY;
     Residuepdb_symbol_t.PRO;
     Residuepdb_symbol_t.GLY;
     Residuepdb_symbol_t.GLY;
     Residuepdb_symbol_t.LYS;
     Residuepdb_symbol_t.GLY;
     Residuepdb_symbol_t.ARG;
     Residuepdb_symbol_t.CYS;
     Residuepdb_symbol_t.PHE;
     Residuepdb_symbol_t.GLY;
     Residuepdb_symbol_t.PRO;
     Residuepdb_symbol_t.SER;
     Residuepdb_symbol_t.ILE;
     Residuepdb_symbol_t.CYS;
     Residuepdb_symbol_t.CYS;
     Residuepdb_symbol_t.GLY;
     Residuepdb_symbol_t.ASP;
     Residuepdb_symbol_t.GLU;
     Residuepdb_symbol_t.LEU;
     Residuepdb_symbol_t.GLY;
     Residuepdb_symbol_t.CYS;
     Residuepdb_symbol_t.PHE;
     Residuepdb_symbol_t.VAL;
     Residuepdb_symbol_t.GLY;
     Residuepdb_symbol_t.THR;
     Residuepdb_symbol_t.ALA;
     Residuepdb_symbol_t.GLU;
     Residuepdb_symbol_t.ALA;
     Residuepdb_symbol_t.LEU;
     Residuepdb_symbol_t.ARG;
     Residuepdb_symbol_t.CYS;
     Residuepdb_symbol_t.GLN;
     Residuepdb_symbol_t.GLU;
     Residuepdb_symbol_t.GLU;
     Residuepdb_symbol_t.ASN;
     Residuepdb_symbol_t.TYR;
     Residuepdb_symbol_t.LEU;
     Residuepdb_symbol_t.PRO;
     Residuepdb_symbol_t.SER;
     Residuepdb_symbol_t.PRO;
     Residuepdb_symbol_t.CYS;
     Residuepdb_symbol_t.GLN;
     Residuepdb_symbol_t.SER;
     Residuepdb_symbol_t.GLY;
     Residuepdb_symbol_t.GLN;
     Residuepdb_symbol_t.LYS;
     Residuepdb_symbol_t.PRO;
     Residuepdb_symbol_t.CYS;
     Residuepdb_symbol_t.GLY;
     Residuepdb_symbol_t.SER;
     Residuepdb_symbol_t.GLY;
     Residuepdb_symbol_t.GLY;
     Residuepdb_symbol_t.ARG;
     Residuepdb_symbol_t.CYS;
     Residuepdb_symbol_t.ALA;
     Residuepdb_symbol_t.ALA;
     Residuepdb_symbol_t.ALA;
     Residuepdb_symbol_t.GLY;
     Residuepdb_symbol_t.ILE;
     Residuepdb_symbol_t.CYS;
     Residuepdb_symbol_t.CYS;
     Residuepdb_symbol_t.ASN;
     Residuepdb_symbol_t.ASP;
     Residuepdb_symbol_t.GLU;
     Residuepdb_symbol_t.SER;
     Residuepdb_symbol_t.CYS;
     Residuepdb_symbol_t.VAL;
     Residuepdb_symbol_t.THR;
     Residuepdb_symbol_t.GLU;
     Residuepdb_symbol_t.PRO;
     Residuepdb_symbol_t.GLU;
     Residuepdb_symbol_t.CYS;
     Residuepdb_symbol_t.ARG;
     Residuepdb_symbol_t.GLU;
     Residuepdb_symbol_t.GLY;
     Residuepdb_symbol_t.VAL;
     Residuepdb_symbol_t.GLY;
     Residuepdb_symbol_t.PHE;
     Residuepdb_symbol_t.PRO;
     Residuepdb_symbol_t.ARG;
     Residuepdb_symbol_t.ARG;
     Residuepdb_symbol_t.VAL])
);;

test_number 3 (
csq_b
=
   ('B',
    [Residuepdb_symbol_t.CYS;
     Residuepdb_symbol_t.TYR;
     Residuepdb_symbol_t.PHE;
     Residuepdb_symbol_t.GLN;
     Residuepdb_symbol_t.ASN;
     Residuepdb_symbol_t.CYS;
     Residuepdb_symbol_t.PRO;
     Residuepdb_symbol_t.LYS;
     Residuepdb_symbol_t.GLY])
);;

test_number 4 (
psq (* : Protein_sequencepdb_t.protein_sequencepdb *)
=
[csq_b; csq_a]
);;

