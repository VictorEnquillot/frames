(** {3 acg Protein_sequencepdb} *)

open Make_test_v;;

testing "acg Protein_sequencepdb_v";;

(* toplevel 
   #use "tprotein_sequencepdb_v_acg.ml";; 
*)


let sym_enp = Entrypdb_symbol_t.ProteinID "acg";;
let dat_clp_l = Clusterpdb_data_v.clusterpdb_data_list_off_entrypdb_symbol sym_enp;;

let psq = Protein_sequencepdb_v.make sym_enp;;

let cid = ' ';;
let csq = Protein_sequencepdb_v.chain_sequencepdb_of_entrypdb_symbol_of_chain_idpdb sym_enp cid;;

test_number 1 (
dat_clp_l (* : Clusterpdb_data_t.clusterpdb_data list *)
=
[((Clusterpdb_data_t.Cpk_t.Recordpdb_symbol_t.HEADER,
   Clusterpdb_data_t.Cpk_t.Entrypdb_symbol_t.ProteinID "acg"),
  ["HEADER    FAKE TRIPEPTIDE                                      07-JUN-02   ACG"]);
 ((Clusterpdb_data_t.Cpk_t.Recordpdb_symbol_t.TITLE,
   Clusterpdb_data_t.Cpk_t.Entrypdb_symbol_t.ProteinID "acg"),
  ["TITLE     FAKE TRIPEPTIDE                                                      "]);
 ((Clusterpdb_data_t.Cpk_t.Recordpdb_symbol_t.SEQRES,
   Clusterpdb_data_t.Cpk_t.Entrypdb_symbol_t.ProteinID "acg"),
  ["SEQRES   1      3  ALA CYS GLY                                        "]);
 ((Clusterpdb_data_t.Cpk_t.Recordpdb_symbol_t.ATOM,
   Clusterpdb_data_t.Cpk_t.Entrypdb_symbol_t.ProteinID "acg"),
  ["ATOM     82  N   ALA     1      19.338  10.858  -7.536  1.00 26.72           N  ";
   "ATOM     83  CA  ALA     1      18.594  11.540  -8.623  1.00 28.18           C  ";
   "ATOM     84  C   ALA     1      17.457  12.435  -8.129  1.00 27.39           C  ";
   "ATOM     85  O   ALA     1      17.417  13.612  -8.664  1.00 28.67           O  ";
   "ATOM     86  CB  ALA     1      18.195  10.522  -9.693  1.00 30.03           C  ";
   "ATOM     50  N   CYS     2      25.521 -22.296 -19.256  1.00 18.92           N  ";
   "ATOM     51  CA  CYS     2      25.160 -22.156 -17.854  1.00 19.77           C  ";
   "ATOM     52  C   CYS     2      25.282 -20.701 -17.421  1.00 20.95           C  ";
   "ATOM     53  O   CYS     2      25.685 -19.837 -18.200  1.00 21.28           O  ";
   "ATOM     54  CB  CYS     2      26.097 -23.013 -17.009  1.00 18.64           C  ";
   "ATOM     55  SG  CYS     2      27.846 -22.587 -17.282  1.00 17.24           S  ";
   "ATOM    106  N   GLY     3      18.814  15.116  -6.008  1.00 29.90           N  ";
   "ATOM    107  CA  GLY     3      19.473  15.849  -7.079  1.00 29.15           C  ";
   "ATOM    108  C   GLY     3      18.573  17.026  -7.460  1.00 29.76           C  ";
   "ATOM    109  O   GLY     3      19.048  18.179  -7.363  1.00 30.90           O  ";
   "ATOM   1069  OXT GLY     3      20.657   0.370  23.211  1.00 32.38           O  "]);
 ((Clusterpdb_data_t.Cpk_t.Recordpdb_symbol_t.TER,
   Clusterpdb_data_t.Cpk_t.Entrypdb_symbol_t.ProteinID "acg"),
  ["TER    1070      GLY     3                                                      "])]
);;

test_number 2 (
csq (* : Protein_sequencepdb_t.protein_sequencepdb *)
=
(' ',
  [
   Protein_sequencepdb_t.Csp_t.Rns_t.ALA;
   Protein_sequencepdb_t.Csp_t.Rns_t.CYS;
   Protein_sequencepdb_t.Csp_t.Rns_t.GLY;
])
);;

test_number 3 (
psq
=
[csq]
);;
