(** {3 4jk4 Clusterpdb_data_register} *)

open Make_test_v;;

testing "1jk4 Clusterpdb_data_register_v";;

(* toplevel 
   #use "tclusterpdb_data_register_v_t1jk4.ml";; 
*)


Pdr_v.clear ();;

let sym_enp = Entrypdb_symbol_t.ProteinID "1jk4";;
let val_pkp_l = Entrypdb_data_v.clusterpdb_data_list_off_entrypdb_symbol sym_enp;;

let reg_pkp = Pdr_v.store_of_entrypdb_symbol sym_enp;;
let key_pkp_l = List.sort Packpdb_symbol_v.compare (Pdr_v.clusterpdb_hkey_list ());;

test_number 1 (
List.length val_pkp_l
(* : Clusterpdb_data_t.clusterpdb_data list *)
=
26
);;

test_number 2 (
key_pkp_l 
(* : Clusterpdb_symbol_t.clusterpdb_symbol list *)
=
[
 Clusterpdb_symbol_t.ATOM; 
 Clusterpdb_symbol_t.AUTHOR; 
 Clusterpdb_symbol_t.COMPND;
 Clusterpdb_symbol_t.CRYST1;
 Clusterpdb_symbol_t.DBREF;
 Clusterpdb_symbol_t.END;
 Clusterpdb_symbol_t.ENDMDL;
 Clusterpdb_symbol_t.EXPDTA;
 Clusterpdb_symbol_t.HEADER;
 Clusterpdb_symbol_t.JRNL;
 Clusterpdb_symbol_t.KEYWDS;
 Clusterpdb_symbol_t.MASTER;
 Clusterpdb_symbol_t.MODEL;
 Clusterpdb_symbol_t.NUMMDL;
 Clusterpdb_symbol_t.ORIGX1;
 Clusterpdb_symbol_t.ORIGX2;
 Clusterpdb_symbol_t.ORIGX3;
 Clusterpdb_symbol_t.REMARK;
 Clusterpdb_symbol_t.REVDAT;
 Clusterpdb_symbol_t.SCALE1;
 Clusterpdb_symbol_t.SCALE2;
 Clusterpdb_symbol_t.SCALE3;
 Clusterpdb_symbol_t.SEQRES;
 Clusterpdb_symbol_t.SOURCE;
 Clusterpdb_symbol_t.TER;
 Clusterpdb_symbol_t.TITLE;
]
);;

test_number 3 (
List.sort Packpdb_symbol_v.compare (List.map Packpdb_data_v.clusterpdb_keypdb_off_clusterpdb_data val_pkp_l)
=
key_pkp_l 
);;

test_number 4 ( 
Pdr_v.retrieve (Packpdb_symbol_v.make "SEQRES")
(* : Clusterpdb_data_t.clusterpdb_data *)
=
["SEQRES   1 A    5  TYR GLY GLY PHE MET                                          "]
);;

test_number 5 ( 
Pdr_v.retrieve (Packpdb_symbol_v.make "NUMMDL")
(* : Clusterpdb_data_t.clusterpdb_data *)
=
["NUMMDL    1                                                                     "]
);;

test_number 6 ( 
Pdr_v.retrieve (Packpdb_symbol_v.make "ATOM")
(* : Clusterpdb_data_t.clusterpdb_data *)
=
[
 "ATOM      1  N   TYR A   1       1.745   3.982   3.628  1.00  0.00           N  ";
 "ATOM      2  CA  TYR A   1       0.807   3.643   2.527  1.00  0.00           C  ";
 "ATOM      3  C   TYR A   1       0.956   4.609   1.356  1.00  0.00           C  ";
 "ATOM      4  O   TYR A   1       1.689   5.595   1.440  1.00  0.00           O  ";
 "ATOM      5  CB  TYR A   1      -0.622   3.693   3.070  1.00  0.00           C  ";
 "ATOM      6  CG  TYR A   1      -1.629   2.970   2.205  1.00  0.00           C  ";
 "ATOM      7  CD1 TYR A   1      -1.703   1.583   2.200  1.00  0.00           C  ";
 "ATOM      8  CD2 TYR A   1      -2.504   3.678   1.390  1.00  0.00           C  ";
 "ATOM      9  CE1 TYR A   1      -2.622   0.921   1.407  1.00  0.00           C  ";
 "ATOM     10  CE2 TYR A   1      -3.426   3.023   0.595  1.00  0.00           C  ";
 "ATOM     11  CZ  TYR A   1      -3.480   1.645   0.607  1.00  0.00           C  ";
 "ATOM     12  OH  TYR A   1      -4.396   0.991  -0.184  1.00  0.00           O  ";
 "ATOM     13  H1  TYR A   1       1.508   4.937   3.963  1.00  0.00           H  ";
 "ATOM     14  H2  TYR A   1       2.711   3.948   3.242  1.00  0.00           H  ";
 "ATOM     15  H3  TYR A   1       1.616   3.279   4.382  1.00  0.00           H  ";
 "ATOM     16  HA  TYR A   1       1.022   2.641   2.187  1.00  0.00           H  ";
 "ATOM     17  HB2 TYR A   1      -0.643   3.241   4.049  1.00  0.00           H  ";
 "ATOM     18  HB3 TYR A   1      -0.932   4.724   3.147  1.00  0.00           H  ";
 "ATOM     19  HD1 TYR A   1      -1.030   1.018   2.827  1.00  0.00           H  ";
 "ATOM     20  HD2 TYR A   1      -2.458   4.756   1.382  1.00  0.00           H  ";
 "ATOM     21  HE1 TYR A   1      -2.665  -0.158   1.417  1.00  0.00           H  ";
 "ATOM     22  HE2 TYR A   1      -4.096   3.591  -0.032  1.00  0.00           H  ";
 "ATOM     23  HH  TYR A   1      -5.275   1.335  -0.009  1.00  0.00           H  ";
 "ATOM     24  N   GLY A   2       0.256   4.318   0.266  1.00  0.00           N  ";
 "ATOM     25  CA  GLY A   2       0.315   5.161  -0.907  1.00  0.00           C  ";
 "ATOM     26  C   GLY A   2      -0.088   4.423  -2.169  1.00  0.00           C  ";
 "ATOM     27  O   GLY A   2      -0.467   5.041  -3.163  1.00  0.00           O  ";
 "ATOM     28  H   GLY A   2      -0.309   3.524   0.260  1.00  0.00           H  ";
 "ATOM     29  HA2 GLY A   2      -0.351   5.997  -0.764  1.00  0.00           H  ";
 "ATOM     30  HA3 GLY A   2       1.323   5.529  -1.023  1.00  0.00           H  ";
 "ATOM     31  N   GLY A   3      -0.011   3.095  -2.127  1.00  0.00           N  ";
 "ATOM     32  CA  GLY A   3      -0.380   2.294  -3.278  1.00  0.00           C  ";
 "ATOM     33  C   GLY A   3       0.790   1.523  -3.855  1.00  0.00           C  ";
 "ATOM     34  O   GLY A   3       1.037   1.563  -5.060  1.00  0.00           O  ";
 "ATOM     35  H   GLY A   3       0.295   2.657  -1.304  1.00  0.00           H  ";
 "ATOM     36  HA2 GLY A   3      -1.142   1.591  -2.981  1.00  0.00           H  ";
 "ATOM     37  HA3 GLY A   3      -0.781   2.943  -4.043  1.00  0.00           H  ";
 "ATOM     38  N   PHE A   4       1.508   0.816  -2.991  1.00  0.00           N  ";
 "ATOM     39  CA  PHE A   4       2.655   0.026  -3.411  1.00  0.00           C  ";
 "ATOM     40  C   PHE A   4       2.341  -1.461  -3.298  1.00  0.00           C  ";
 "ATOM     41  O   PHE A   4       2.771  -2.264  -4.126  1.00  0.00           O  ";
 "ATOM     42  CB  PHE A   4       3.879   0.358  -2.553  1.00  0.00           C  ";
 "ATOM     43  CG  PHE A   4       3.758   1.637  -1.773  1.00  0.00           C  ";
 "ATOM     44  CD1 PHE A   4       4.135   2.846  -2.331  1.00  0.00           C  ";
 "ATOM     45  CD2 PHE A   4       3.267   1.622  -0.478  1.00  0.00           C  ";
 "ATOM     46  CE1 PHE A   4       4.023   4.021  -1.611  1.00  0.00           C  ";
 "ATOM     47  CE2 PHE A   4       3.154   2.790   0.247  1.00  0.00           C  ";
 "ATOM     48  CZ  PHE A   4       3.532   3.992  -0.319  1.00  0.00           C  ";
 "ATOM     49  H   PHE A   4       1.258   0.823  -2.044  1.00  0.00           H  ";
 "ATOM     50  HA  PHE A   4       2.867   0.265  -4.442  1.00  0.00           H  ";
 "ATOM     51  HB2 PHE A   4       4.032  -0.440  -1.844  1.00  0.00           H  ";
 "ATOM     52  HB3 PHE A   4       4.746   0.438  -3.192  1.00  0.00           H  ";
 "ATOM     53  HD1 PHE A   4       4.519   2.868  -3.340  1.00  0.00           H  ";
 "ATOM     54  HD2 PHE A   4       2.971   0.683  -0.035  1.00  0.00           H  ";
 "ATOM     55  HE1 PHE A   4       4.320   4.959  -2.055  1.00  0.00           H  ";
 "ATOM     56  HE2 PHE A   4       2.768   2.764   1.255  1.00  0.00           H  ";
 "ATOM     57  HZ  PHE A   4       3.445   4.908   0.246  1.00  0.00           H  ";
 "ATOM     58  N   MET A   5       1.590  -1.815  -2.261  1.00  0.00           N  ";
 "ATOM     59  CA  MET A   5       1.215  -3.202  -2.022  1.00  0.00           C  ";
 "ATOM     60  C   MET A   5       0.151  -3.657  -3.016  1.00  0.00           C  ";
 "ATOM     61  O   MET A   5      -0.183  -2.869  -3.926  1.00  0.00           O  ";
 "ATOM     62  CB  MET A   5       0.700  -3.371  -0.590  1.00  0.00           C  ";
 "ATOM     63  CG  MET A   5       1.561  -2.682   0.457  1.00  0.00           C  ";
 "ATOM     64  SD  MET A   5       2.792  -3.785   1.178  1.00  0.00           S  ";
 "ATOM     65  CE  MET A   5       4.246  -2.740   1.142  1.00  0.00           C  ";
 "ATOM     66  OXT MET A   5      -0.338  -4.797  -2.877  1.00  0.00           O  ";
 "ATOM     67  H   MET A   5       1.283  -1.124  -1.637  1.00  0.00           H  ";
 "ATOM     68  HA  MET A   5       2.096  -3.811  -2.152  1.00  0.00           H  ";
 "ATOM     69  HB2 MET A   5      -0.298  -2.963  -0.529  1.00  0.00           H  ";
 "ATOM     70  HB3 MET A   5       0.661  -4.425  -0.357  1.00  0.00           H  ";
 "ATOM     71  HG2 MET A   5       2.072  -1.848  -0.003  1.00  0.00           H  ";
 "ATOM     72  HG3 MET A   5       0.920  -2.317   1.247  1.00  0.00           H  ";
 "ATOM     73  HE1 MET A   5       4.163  -2.035   0.328  1.00  0.00           H  ";
 "ATOM     74  HE2 MET A   5       5.125  -3.350   1.001  1.00  0.00           H  ";
 "ATOM     75  HE3 MET A   5       4.327  -2.203   2.076  1.00  0.00           H  ";
]
);;
