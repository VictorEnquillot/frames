(** {3 0tab Residue_packpdb_data} *)

open Make_test_v;;

testing "0tab Residue_packpdb_data_v";;

(* toplevel 
   #use "tresidue_packpdb_data_v_0tab.ml";; 
*)


let sym_enp = Entrypdb_symbol_t.ProteinID "0tab";;

(* The Cluster ATOM clp *)

let kyp_clp_atm = Clusterpdb_keypdb_v.make Clusterpdb_symbol_v.atom sym_enp;;
let dat_clp_atm = Clusterpdb_data_v.retrieve kyp_clp_atm;;

let dat_pkp_atm_l = Packpdb_data_v.packpdb_data_list_off_clusterpdb_data dat_clp_atm;; 
let kyp_pkp_atm_l = Packpdb_data_v.packpdb_keypdb_list_off_clusterpdb_data dat_clp_atm;;

let dat_rpk_atm_l = Residue_packpdb_data_v.residue_packpdb_data_list_off_clusterpdb_data dat_clp_atm;;
let kyp_rpk_atm_l = Residue_packpdb_data_v.residue_packpdb_keypdb_list_off_clusterpdb_data dat_clp_atm;;

(* The Pack ATOM A pkp *)

let mrp_pkp_atm_a = Packpdb_markerpdb_v.make Packpdb_symbol_v.atom ['A'];;
let kyp_pkp_atm_a = Packpdb_keypdb_v.make mrp_pkp_atm_a kyp_clp_atm;;
let dat_pkp_atm_a = Packpdb_data_v.retrieve kyp_pkp_atm_a;;

(* The Pack ATOM B pkp *)

let mrp_pkp_atm_b = Packpdb_markerpdb_v.make Packpdb_symbol_v.atom ['B'];;
let kyp_pkp_atm_b = Packpdb_keypdb_v.make mrp_pkp_atm_b kyp_clp_atm;;
let dat_pkp_atm_b = Packpdb_data_v.retrieve kyp_pkp_atm_b;;

(* The Residue Packs in Chain B rpk *)

let mrp_rpk_atm_b = Residue_packpdb_markerpdb_v.make "PRO" 2 ' ';; (* ' ' is insertion code *)
let kyp_rpk_atm_b = Residue_packpdb_keypdb_v.make mrp_rpk_atm_b kyp_pkp_atm_b;;
let dat_rpk_atm_b = Residue_packpdb_data_v.retrieve kyp_rpk_atm_b;;

(*
SEQRES   1 A    5  VAL ALA ALA TRP GLY                                          
SEQRES   1 B    2  GLY PRO                                                      
SEQRES   1 C    3  ALA GLY GLY                                                 
SEQRES   1 D    5  ALA GLY PRO GLY ALA                                          
SEQRES   1 E    3  LEU ILE VAL   
----------------------------------------
Packpdb    5 
Residue_packpdb 18
*)

test_number 1 (
List.length dat_pkp_atm_l 
(* : Packpdb_data_t.packpdb_data list *)
=
5
);;

test_number 2 (
List.length dat_rpk_atm_l 
(* : Packpdb_data_t.packpdb_data list *)
=
18
);;

test_number 3 (
List.hd kyp_rpk_atm_l 
(* : Residue_packpdb_keypdb_t.residue_packpdb_keypdb *)
=
(("VAL", 1, ' '),
 ((Residue_packpdb_keypdb_t.Ppk_t.Packpdb_markerpdb_t.Packpdb_symbol_t.Recordpdb_symbol_t.ATOM, ['A']),
  (Residue_packpdb_keypdb_t.Ppk_t.Cpk_t.Recordpdb_symbol_t.ATOM,
   Residue_packpdb_keypdb_t.Ppk_t.Cpk_t.Entrypdb_symbol_t.ProteinID "0tab")));
);;

test_number 4 (
kyp_pkp_atm_a (* : Packpdb_keypdb_t.packpdb_keypdb *)
  =
((Packpdb_keypdb_t.Packpdb_markerpdb_t.Packpdb_symbol_t.Recordpdb_symbol_t.ATOM, ['A']),
 (Packpdb_keypdb_t.Cpk_t.Recordpdb_symbol_t.ATOM,
  Packpdb_keypdb_t.Cpk_t.Entrypdb_symbol_t.ProteinID "0tab"))
);;

test_number 5 (
dat_pkp_atm_a (* : Packpdb_data_t.packpdb_data *)
=
(((Packpdb_data_t.Ppk_t.Packpdb_markerpdb_t.Packpdb_symbol_t.Recordpdb_symbol_t.ATOM, ['A']),
  (Packpdb_data_t.Ppk_t.Cpk_t.Recordpdb_symbol_t.ATOM,
   Packpdb_data_t.Ppk_t.Cpk_t.Entrypdb_symbol_t.ProteinID "0tab")),
 ["ATOM      1  N   VAL A   1      18.432  -2.931   3.579  1.00 37.68           N  ";
  "ATOM      2  CA  VAL A   1      19.662  -2.549   2.806  1.00 35.41           C  ";
  "ATOM      3  C   VAL A   1      19.282  -1.939   1.441  1.00 34.04           C  ";
  "ATOM      4  O   VAL A   1      18.421  -2.497   0.695  1.00 33.95           O  ";
  "ATOM      5  CB  VAL A   1      20.659  -3.754   2.825  1.00 35.59           C  ";
  "ATOM      6  CG1 VAL A   1      20.109  -4.992   2.222  1.00 37.84           C  ";
  "ATOM      7  CG2 VAL A   1      21.982  -3.272   2.245  1.00 36.73           C  ";
  "ATOM     82  N   ALA A   2      19.338  10.858  -7.536  1.00 26.72           N  ";
  "ATOM     83  CA  ALA A   2      18.594  11.540  -8.623  1.00 28.18           C  ";
  "ATOM     84  C   ALA A   2      17.457  12.435  -8.129  1.00 27.39           C  ";
  "ATOM     85  O   ALA A   2      17.417  13.612  -8.664  1.00 28.67           O  ";
  "ATOM     86  CB  ALA A   2      18.195  10.522  -9.693  1.00 30.03           C  ";
  "ATOM     87  N   ALA A   3      16.649  11.979  -7.177  1.00 26.03           N  ";
  "ATOM     88  CA  ALA A   3      15.529  12.803  -6.630  1.00 23.44           C  ";
  "ATOM     89  C   ALA A   3      16.057  13.894  -5.737  1.00 24.86           C  ";
  "ATOM     90  O   ALA A   3      15.664  15.071  -5.784  1.00 27.03           O  ";
  "ATOM     91  CB  ALA A   3      14.667  11.868  -5.843  1.00 20.06           C  ";
  "ATOM     92  N   TRP A   4      17.032  13.573  -4.877  1.00 26.05           N  ";
  "ATOM     93  CA  TRP A   4      17.687  14.528  -3.978  1.00 26.72           C  ";
  "ATOM     94  C   TRP A   4      18.368  15.588  -4.848  1.00 27.78           C  ";
  "ATOM     95  O   TRP A   4      18.574  16.813  -4.628  1.00 27.81           O  ";
  "ATOM     96  CB  TRP A   4      18.527  13.821  -2.844  1.00 27.69           C  ";
  "ATOM     97  CG  TRP A   4      18.617  14.836  -1.731  1.00 27.87           C  ";
  "ATOM     98  CD1 TRP A   4      19.602  15.771  -1.554  1.00 28.54           C  ";
  "ATOM     99  CD2 TRP A   4      17.604  15.179  -0.779  1.00 29.14           C  ";
  "ATOM    100  NE1 TRP A   4      19.323  16.616  -0.509  1.00 29.32           N  ";
  "ATOM    101  CE2 TRP A   4      18.087  16.277  -0.023  1.00 29.58           C  ";
  "ATOM    102  CE3 TRP A   4      16.342  14.666  -0.503  1.00 30.96           C  ";
  "ATOM    103  CZ2 TRP A   4      17.358  16.884   1.010  1.00 30.52           C  ";
  "ATOM    104  CZ3 TRP A   4      15.645  15.279   0.542  1.00 31.54           C  ";
  "ATOM    105  CH2 TRP A   4      16.114  16.349   1.289  1.00 31.00           C  ";
  "ATOM    106  N   GLY A   5      18.814  15.116  -6.008  1.00 29.90           N  ";
  "ATOM    107  CA  GLY A   5      19.473  15.849  -7.079  1.00 29.15           C  ";
  "ATOM    108  C   GLY A   5      18.573  17.026  -7.460  1.00 29.76           C  ";
  "ATOM    109  O   GLY A   5      19.048  18.179  -7.363  1.00 30.90           O  ";
  "ATOM    110  OXT GLY A   5      20.657   0.370  23.211  1.00 32.38           O  ";
  "ATOM    339  N   LEU A  18       5.053   4.360  -2.271  1.00  1.65           N  ";
  "ATOM    340  CA  LEU A  18       4.954   3.418  -3.387  1.00  1.68           C  ";
  "ATOM    341  C   LEU A  18       4.321   4.013  -4.638  1.00  1.55           C  ";
  "ATOM    342  O   LEU A  18       4.849   3.780  -5.744  1.00  1.81           O  ";
  "ATOM    343  CB  LEU A  18       4.203   2.149  -2.980  1.00  2.10           C  ";
  "ATOM    344  CG  LEU A  18       4.942   1.212  -2.020  1.00  2.28           C  ";
  "ATOM    345  CD1 LEU A  18       3.987   0.098  -1.586  1.00  3.65           C  ";
  "ATOM    346  CD2 LEU A  18       6.197   0.625  -2.641  1.00  3.47           C  ";
  "ATOM    347  H   LEU A  18       4.681   4.113  -1.366  1.00  2.00           H  ";
  "ATOM    348  HA  LEU A  18       5.978   3.119  -3.651  1.00  2.01           H  ";
  "ATOM    349  HB2 LEU A  18       3.254   2.444  -2.511  1.00  2.53           H  ";
  "ATOM    350  HB3 LEU A  18       3.958   1.585  -3.891  1.00  2.53           H  ";
  "ATOM    351  HG  LEU A  18       5.232   1.787  -1.129  1.00  2.72           H  ";
  "ATOM    352 HD11 LEU A  18       3.070   0.542  -1.173  1.00  5.44           H  ";
  "ATOM    353 HD12 LEU A  18       4.472  -0.522  -0.819  1.00  5.44           H  ";
  "ATOM    354 HD13 LEU A  18       3.733  -0.526  -2.454  1.00  5.44           H  ";
  "ATOM    355 HD21 LEU A  18       6.879   1.438  -2.928  1.00  5.25           H  ";
  "ATOM    356 HD22 LEU A  18       5.926   0.042  -3.533  1.00  5.25           H  ";
  "ATOM    357 HD23 LEU A  18       6.695  -0.030  -1.913  1.00  5.25           H  ";
  "ATOM    660  N   ILE A  35      14.790  16.458   6.442  1.00  2.97           N  ";
  "ATOM    661  CA  ILE A  35      15.847  17.376   6.893  1.00  3.14           C  ";
  "ATOM    662  C   ILE A  35      16.855  17.522   5.750  1.00  3.18           C  ";
  "ATOM    663  O   ILE A  35      17.024  16.622   4.923  1.00  3.74           O  ";
  "ATOM    664  CB  ILE A  35      16.545  16.890   8.176  1.00  4.30           C  ";
  "ATOM    665  CG1 ILE A  35      17.227  15.531   7.987  1.00  4.97           C  ";
  "ATOM    666  CG2 ILE A  35      15.532  16.851   9.299  1.00  6.65           C  ";
  "ATOM    667  CD1 ILE A  35      18.146  15.152   9.138  1.00  7.82           C  ";
  "ATOM    668  H   ILE A  35      15.032  15.548   6.123  1.00  3.56           H  ";
  "ATOM    669  HA  ILE A  35      15.402  18.361   7.092  1.00  3.77           H  ";
  "ATOM    670  HB  ILE A  35      17.318  17.624   8.441  1.00  5.14           H  ";
  "ATOM    671 HG12 ILE A  35      16.455  14.757   7.878  1.00  6.02           H  ";
  "ATOM    672 HG13 ILE A  35      17.812  15.553   7.057  1.00  6.02           H  ";
  "ATOM    673 HG21 ILE A  35      15.093  17.849   9.432  1.00  9.79           H  ";
  "ATOM    674 HG22 ILE A  35      16.028  16.541  10.230  1.00  9.79           H  ";
  "ATOM    675 HG23 ILE A  35      14.738  16.132   9.051  1.00  9.79           H  ";
  "ATOM    676 HD11 ILE A  35      18.613  14.179   8.930  1.00 11.67           H  ";
  "ATOM    677 HD12 ILE A  35      17.562  15.087  10.067  1.00 11.67           H  ";
  "ATOM    678 HD13 ILE A  35      18.928  15.917   9.251  1.00 11.67           H  ";
  "ATOM    289  N   VAL A  15       4.992   2.817   2.503  1.00  1.46           N  ";
  "ATOM    290  CA  VAL A  15       3.809   2.515   1.695  1.00  1.45           C  ";
  "ATOM    291  C   VAL A  15       3.309   3.772   0.970  1.00  1.47           C  ";
  "ATOM    292  O   VAL A  15       2.967   3.733  -0.207  1.00  1.77           O  ";
  "ATOM    293  CB  VAL A  15       2.718   1.853   2.546  1.00  1.79           C  ";
  "ATOM    294  CG1 VAL A  15       1.390   1.798   1.795  1.00  2.75           C  ";
  "ATOM    295  CG2 VAL A  15       3.171   0.458   2.966  1.00  2.43           C  ";
  "ATOM    296  H   VAL A  15       4.948   2.775   3.510  1.00  1.74           H  ";
  "ATOM    297  HA  VAL A  15       4.112   1.790   0.927  1.00  1.73           H  ";
  "ATOM    298  HB  VAL A  15       2.576   2.457   3.453  1.00  2.15           H  ";
  "ATOM    299 HG11 VAL A  15       1.086   2.816   1.514  1.00  4.07           H  ";
  "ATOM    300 HG12 VAL A  15       0.621   1.353   2.443  1.00  4.07           H  ";
  "ATOM    301 HG13 VAL A  15       1.506   1.187   0.890  1.00  4.07           H  ";
  "ATOM    302 HG21 VAL A  15       4.124   0.530   3.509  1.00  3.65           H  ";
  "ATOM    303 HG22 VAL A  15       3.304  -0.169   2.073  1.00  3.65           H  ";
  "ATOM    304 HG23 VAL A  15       2.411   0.007   3.619  1.00  3.65           H  "])
);;

test_number 6 (
kyp_pkp_atm_b (* : Packpdb_keypdb_t.packpdb_keypdb *)
  =
((Packpdb_keypdb_t.Packpdb_markerpdb_t.Packpdb_symbol_t.Recordpdb_symbol_t.ATOM, ['B']),
 (Packpdb_keypdb_t.Cpk_t.Recordpdb_symbol_t.ATOM,
  Packpdb_keypdb_t.Cpk_t.Entrypdb_symbol_t.ProteinID "0tab"))
);;

test_number 7 (
dat_pkp_atm_b
(* : Packpdb_data_t.packpdb_data *) 
   =
(((Packpdb_data_t.Ppk_t.Packpdb_markerpdb_t.Packpdb_symbol_t.Recordpdb_symbol_t.ATOM, ['B']),
  (Packpdb_data_t.Ppk_t.Cpk_t.Recordpdb_symbol_t.ATOM,
   Packpdb_data_t.Ppk_t.Cpk_t.Entrypdb_symbol_t.ProteinID "0tab")),
 ["ATOM    106  N   GLY B   1      18.814  15.116  -6.008  1.00 29.90           N  ";
  "ATOM    107  CA  GLY B   1      19.473  15.849  -7.079  1.00 29.15           C  ";
  "ATOM    108  C   GLY B   1      18.573  17.026  -7.460  1.00 29.76           C  ";
  "ATOM    109  O   GLY B   1      19.048  18.179  -7.363  1.00 30.90           O  ";
  "ATOM    527  N   PRO B   2      47.929 -15.131 -15.386  1.00 29.92           N  ";
  "ATOM    528  CA  PRO B   2      48.050 -13.847 -16.075  1.00 29.60           C  ";
  "ATOM    529  C   PRO B   2      47.965 -13.973 -17.580  1.00 29.59           C  ";
  "ATOM    530  O   PRO B   2      47.561 -13.028 -18.254  1.00 30.33           O  ";
  "ATOM    531  CB  PRO B   2      49.418 -13.341 -15.614  1.00 29.20           C  ";
  "ATOM    532  CG  PRO B   2      50.154 -14.593 -15.285  1.00 30.05           C  ";
  "ATOM    533  CD  PRO B   2      49.109 -15.366 -14.545  1.00 29.36           C  ";
  "ATOM    534  OXT PRO B   2      20.657   0.370  23.211  1.00 32.38           O  "])
 );;

test_number 8 (
kyp_rpk_atm_b
(* : Residue_packpdb_keypdb_t.residue_packpdb_keypdb *)
  =
(("PRO", 2, ' '),
 ((Residue_packpdb_keypdb_t.Ppk_t.Packpdb_markerpdb_t.Packpdb_symbol_t.Recordpdb_symbol_t.ATOM, ['B']),
  (Residue_packpdb_keypdb_t.Ppk_t.Cpk_t.Recordpdb_symbol_t.ATOM,
   Residue_packpdb_keypdb_t.Ppk_t.Cpk_t.Entrypdb_symbol_t.ProteinID "0tab")))
);;
 
test_number 9 (
dat_rpk_atm_b (* : Residue_packpdb_data_t.residue_packpdb_data *)
=
((("PRO", 2, ' '),
  ((Residue_packpdb_data_t.Rpk_t.Ppk_t.Packpdb_markerpdb_t.Packpdb_symbol_t.Recordpdb_symbol_t.ATOM, ['B']),
   (Residue_packpdb_data_t.Rpk_t.Ppk_t.Cpk_t.Recordpdb_symbol_t.ATOM,
    Residue_packpdb_data_t.Rpk_t.Ppk_t.Cpk_t.Entrypdb_symbol_t.ProteinID "0tab"))),
 ["ATOM    527  N   PRO B   2      47.929 -15.131 -15.386  1.00 29.92           N  ";
  "ATOM    528  CA  PRO B   2      48.050 -13.847 -16.075  1.00 29.60           C  ";
  "ATOM    529  C   PRO B   2      47.965 -13.973 -17.580  1.00 29.59           C  ";
  "ATOM    530  O   PRO B   2      47.561 -13.028 -18.254  1.00 30.33           O  ";
  "ATOM    531  CB  PRO B   2      49.418 -13.341 -15.614  1.00 29.20           C  ";
  "ATOM    532  CG  PRO B   2      50.154 -14.593 -15.285  1.00 30.05           C  ";
  "ATOM    533  CD  PRO B   2      49.109 -15.366 -14.545  1.00 29.36           C  ";
  "ATOM    534  OXT PRO B   2      20.657   0.370  23.211  1.00 32.38           O  "])
);;

test_number 10 (
Residue_packpdb_data_v.residue_packpdb_keypdb_off_residue_packpdb_data dat_rpk_atm_b
=
kyp_rpk_atm_b 
);;

test_number 11 (
Residue_packpdb_data_v.residuepdb_symbol_off_residue_packpdb_data dat_rpk_atm_b
=
Residuepdb_symbol_v.pro
);;

test_number 12 (
Residue_packpdb_data_v.entrypdb_symbol_off_residue_packpdb_data dat_rpk_atm_b
=
smb_enp
);;

test_number 13 (
Residue_packpdb_data_v.string_list_off_residue_packpdb_data dat_rpk_atm_b
(* : string list *) 
  =
["ATOM    527  N   PRO B   2      47.929 -15.131 -15.386  1.00 29.92           N  ";
 "ATOM    528  CA  PRO B   2      48.050 -13.847 -16.075  1.00 29.60           C  ";
 "ATOM    529  C   PRO B   2      47.965 -13.973 -17.580  1.00 29.59           C  ";
 "ATOM    530  O   PRO B   2      47.561 -13.028 -18.254  1.00 30.33           O  ";
 "ATOM    531  CB  PRO B   2      49.418 -13.341 -15.614  1.00 29.20           C  ";
 "ATOM    532  CG  PRO B   2      50.154 -14.593 -15.285  1.00 30.05           C  ";
 "ATOM    533  CD  PRO B   2      49.109 -15.366 -14.545  1.00 29.36           C  ";
 "ATOM    534  OXT PRO B   2      20.657   0.370  23.211  1.00 32.38           O  "]
);;

test_number 14 (
Residue_packpdb_data_v.has_of_residue_packpdb_keypdb_of_residue_packpdb_data kyp_rpk_atm_b dat_rpk_atm_b
);;
