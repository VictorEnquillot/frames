(** {3 0jk4 Clusterpdb_data} *)

open Make_test_v;;

testing "0jk4 Clusterpdb_data_v";;

(* toplevel 
   #use "clusterpdb_data_v_0jk4.ml";; 
*)


let sym_enp = Entrypdb_symbol_t.ProteinID "0jk4";;
let dat_clp_l = Clusterpdb_data_v.clusterpdb_data_list_off_entrypdb_symbol sym_enp;;
let kyp_clp_l = List.map Clusterpdb_data_v.clusterpdb_keypdb_off_clusterpdb_data dat_clp_l;;
let kyp_clp_sl = List.sort Clusterpdb_keypdb_v.compare kyp_clp_l;;

(* ATOM *)

let kyp_clp_atm = Clusterpdb_keypdb_v.make Clusterpdb_symbol_v.atom sym_enp;;
let dat_clp_atm = Clusterpdb_data_v.retrieve kyp_clp_atm;;
let str_atm_l = Clusterpdb_data_v.string_list_off_clusterpdb_data dat_clp_atm;;
let sym_clp_atm = Clusterpdb_data_v.clusterpdb_symbol_off_clusterpdb_data dat_clp_atm;;
let sym_enp_atm = Clusterpdb_data_v.entrypdb_symbol_off_clusterpdb_data dat_clp_atm;;

(* SEQRES *)

let kyp_clp_sqr = Clusterpdb_keypdb_v.make Clusterpdb_symbol_v.seqres sym_enp;;
let dat_clp_sqr = Clusterpdb_data_v.retrieve kyp_clp_sqr;;
let str_sqr_l = Clusterpdb_data_v.string_list_off_clusterpdb_data dat_clp_sqr;;
let sym_clp_sqr = Clusterpdb_data_v.clusterpdb_symbol_off_clusterpdb_data dat_clp_sqr;;
let sym_enp_sqr = Clusterpdb_data_v.entrypdb_symbol_off_clusterpdb_data dat_clp_sqr;;

test_number 0 (
List.length dat_clp_l
(* : Clusterpdb_data_t.clusterpdb_data list *)
=
35
);;

test_number 1 (
kyp_clp_sl (* : Clusterpdb_keypdb_t.clusterpdb_keypdb list *)
=
[
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.ATOM,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.ATOM,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.AUTHOR,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.COMPND,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.CONECT,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.CRYST1,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.DBREF,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.END,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.EXPDTA,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.FORMUL,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.HEADER,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.HELIX,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.HET,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.HETATM,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.HETNAM,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.JRNL,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.KEYWDS,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.LINK,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.MASTER,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.ORIGX1,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.ORIGX2,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.ORIGX3,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.REMARK,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.REVDAT,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.SCALE1,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.SCALE2,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.SCALE3,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.SEQRES,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.SHEET,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.SITE,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.SOURCE,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.SSBOND,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.TER,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.TER,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4");
 (Clusterpdb_keypdb_t.Recordpdb_symbol_t.TITLE,
  Clusterpdb_keypdb_t.Entrypdb_symbol_t.ProteinID "0jk4")
]
);;
 
test_number 2 (
dat_clp_sqr (* : Clusterpdb_data_t.clusterpdb_data *)
=
  ((Clusterpdb_data_t.Cpk_t.Recordpdb_symbol_t.SEQRES,
    Clusterpdb_data_t.Cpk_t.Entrypdb_symbol_t.ProteinID "0jk4"),
   ["SEQRES   1 A   89  LEU ARG GLN CYS LEU PRO CYS GLY PRO GLY GLY LYS GLY          ";
    "SEQRES   2 A   89  ARG CYS PHE GLY PRO SER ILE CYS CYS GLY ASP GLU LEU          ";
    "SEQRES   3 A   89  GLY CYS PHE VAL GLY THR ALA GLU ALA LEU ARG CYS GLN          ";
    "SEQRES   4 A   89  GLU GLU ASN TYR LEU PRO SER PRO CYS GLN SER GLY GLN          ";
    "SEQRES   5 A   89  LYS PRO CYS GLY SER GLY GLY ARG CYS ALA ALA ALA GLY          ";
    "SEQRES   6 A   89  ILE CYS CYS ASN ASP GLU SER CYS VAL THR GLU PRO GLU          ";
    "SEQRES   7 A   89  CYS ARG GLU GLY VAL GLY PHE PRO ARG ARG VAL                  ";
    "SEQRES   1 B    9  CYS TYR PHE GLN ASN CYS PRO LYS GLY                          "])
);;

test_number 3 (
smb_clp_sqr
(* : Clusterpdb_symbol_t.clusterpdb_symbol *) 
= 
Recordpdb_symbol_v.seqres
);;

test_number 4 (
smb_enp_sqr
(* : Entrypdb_symbol_t.entrypdb_symbol *)
= 
smb_enp
);;

test_number 5 (
str_sqr_l
(* : string list *)
=
["SEQRES   1 A   89  LEU ARG GLN CYS LEU PRO CYS GLY PRO GLY GLY LYS GLY          ";
 "SEQRES   2 A   89  ARG CYS PHE GLY PRO SER ILE CYS CYS GLY ASP GLU LEU          ";
 "SEQRES   3 A   89  GLY CYS PHE VAL GLY THR ALA GLU ALA LEU ARG CYS GLN          ";
 "SEQRES   4 A   89  GLU GLU ASN TYR LEU PRO SER PRO CYS GLN SER GLY GLN          ";
 "SEQRES   5 A   89  LYS PRO CYS GLY SER GLY GLY ARG CYS ALA ALA ALA GLY          ";
 "SEQRES   6 A   89  ILE CYS CYS ASN ASP GLU SER CYS VAL THR GLU PRO GLU          ";
 "SEQRES   7 A   89  CYS ARG GLU GLY VAL GLY PHE PRO ARG ARG VAL                  ";
 "SEQRES   1 B    9  CYS TYR PHE GLN ASN CYS PRO LYS GLY                          "]
);;

test_number 6 (
dat_clp_atm 
(* : Clusterpdb_data_t.clusterpdb_data list *)
=
((Clusterpdb_data_t.Cpk_t.Recordpdb_symbol_t.ATOM,
  Clusterpdb_data_t.Cpk_t.Entrypdb_symbol_t.ProteinID "0jk4"),
  [
   "ATOM      1  N   LEU A   7      33.701 -32.008 -32.042  1.00 36.63           N  ";
   "ATOM      2  CA  LEU A   7      34.188 -30.804 -31.310  1.00 36.64           C  ";
   "ATOM      3  C   LEU A   7      33.054 -29.927 -30.810  1.00 36.03           C  ";
   "ATOM      4  O   LEU A   7      32.364 -29.266 -31.589  1.00 35.76           O  ";
   "ATOM      5  CB  LEU A   7      35.107 -29.971 -32.196  1.00 37.66           C  ";
   "ATOM      6  CG  LEU A   7      36.526 -30.501 -32.348  1.00 38.96           C  ";
   "ATOM      7  CD1 LEU A   7      37.346 -29.527 -33.186  1.00 38.74           C  ";
   "ATOM      8  CD2 LEU A   7      37.144 -30.673 -30.965  1.00 38.99           C  ";
   "ATOM      9  N   ARG A   8      32.879 -29.898 -29.497  1.00 35.34           N  ";
   "ATOM     10  CA  ARG A   8      31.823 -29.093 -28.910  1.00 33.83           C  ";
   "ATOM     11  C   ARG A   8      32.232 -28.564 -27.553  1.00 32.72           C  ";
   "ATOM     12  O   ARG A   8      33.075 -29.154 -26.862  1.00 32.52           O  ";
   "ATOM     13  CB  ARG A   8      30.540 -29.924 -28.764  1.00 34.10           C  ";
   "ATOM     14  CG  ARG A   8      30.754 -31.280 -28.079  1.00 33.06           C  ";
   "ATOM     15  CD  ARG A   8      29.452 -32.055 -27.900  1.00 33.41           C  ";
   "ATOM     16  NE  ARG A   8      28.631 -31.515 -26.822  1.00 31.99           N  ";
   "ATOM     17  CZ  ARG A   8      28.444 -32.110 -25.648  1.00 31.92           C  ";
   "ATOM     18  NH1 ARG A   8      29.013 -33.275 -25.381  1.00 31.81           N  ";
   "ATOM     19  NH2 ARG A   8      27.694 -31.528 -24.733  1.00 32.48           N  ";
   "ATOM    543  N   CYS A  85      45.818 -15.467 -19.283  1.00 25.72           N  ";
   "ATOM    544  CA  CYS A  85      44.438 -15.597 -19.750  1.00 23.86           C  ";
   "ATOM    545  C   CYS A  85      43.686 -14.267 -19.766  1.00 23.69           C  ";
   "ATOM    546  O   CYS A  85      44.278 -13.241 -19.359  1.00 23.51           O  ";
   "ATOM    547  CB  CYS A  85      43.658 -16.603 -18.905  1.00 23.97           C  ";
   "ATOM    548  SG  CYS A  85      44.132 -18.351 -19.116  1.00 23.60           S  ";

   "ATOM    550  N   CYS B   1      29.994 -35.459 -21.864  1.00 28.03           N  ";
   "ATOM    551  CA  CYS B   1      30.950 -35.697 -20.748  1.00 28.13           C  ";
   "ATOM    552  C   CYS B   1      32.207 -34.862 -20.930  1.00 27.47           C  ";
   "ATOM    553  O   CYS B   1      32.614 -34.550 -22.053  1.00 26.90           O  ";
   "ATOM    554  CB  CYS B   1      31.322 -37.188 -20.645  1.00 28.14           C  ";
   "ATOM    555  SG  CYS B   1      31.905 -37.936 -22.205  1.00 28.06           S  ";
   "ATOM    556  N   TYR B   2      32.805 -34.491 -19.806  1.00 26.45           N  ";
   "ATOM    557  CA  TYR B   2      34.024 -33.718 -19.816  1.00 26.04           C  ";
   "ATOM    558  C   TYR B   2      35.127 -34.629 -20.296  1.00 27.17           C  ";
   "ATOM    559  O   TYR B   2      35.242 -35.768 -19.851  1.00 27.47           O  ";
   "ATOM    560  CB  TYR B   2      34.298 -33.175 -18.424  1.00 23.78           C  ";
   "ATOM    561  CG  TYR B   2      33.206 -32.242 -18.000  1.00 22.06           C  ";
   "ATOM    562  CD1 TYR B   2      32.280 -32.605 -17.023  1.00 21.95           C  ";
   "ATOM    563  CD2 TYR B   2      33.039 -31.021 -18.642  1.00 21.08           C  ";
   "ATOM    564  CE1 TYR B   2      31.219 -31.773 -16.709  1.00 21.88           C  ";
   "ATOM    565  CE2 TYR B   2      31.985 -30.186 -18.332  1.00 20.89           C  ";
   "ATOM    566  CZ  TYR B   2      31.082 -30.564 -17.373  1.00 20.58           C  ";
   "ATOM    567  OH  TYR B   2      30.048 -29.720 -17.076  1.00 21.18           O  ";
   "ATOM    588  N   ASN B   5      36.893 -37.051 -18.411  1.00 32.06           N  ";
   "ATOM    589  CA  ASN B   5      35.926 -37.824 -17.619  1.00 32.68           C  ";
   "ATOM    590  C   ASN B   5      35.291 -38.926 -18.461  1.00 32.30           C  ";
   "ATOM    591  O   ASN B   5      34.852 -39.952 -17.933  1.00 33.36           O  ";
   "ATOM    592  CB  ASN B   5      34.834 -36.900 -17.065  1.00 34.47           C  ";
   "ATOM    593  CG  ASN B   5      33.855 -37.628 -16.155  1.00 35.87           C  ";
   "ATOM    594  OD1 ASN B   5      34.026 -37.650 -14.936  1.00 37.48           O  ";
   "ATOM    595  ND2 ASN B   5      32.819 -38.222 -16.745  1.00 37.60           N  ";
   "ATOM    596  N   CYS B   6      35.227 -38.700 -19.770  1.00 31.89           N  ";
   "ATOM    597  CA  CYS B   6      34.660 -39.666 -20.702  1.00 30.95           C  ";
   "ATOM    598  C   CYS B   6      35.461 -40.962 -20.675  1.00 30.96           C  ";
   "ATOM    599  O   CYS B   6      36.693 -40.863 -20.861  1.00 31.21           O  ";
   "ATOM    600  CB  CYS B   6      34.686 -39.100 -22.118  1.00 30.60           C  ";
   "ATOM    601  SG  CYS B   6      33.881 -37.483 -22.293  1.00 29.81           S  "
 ])
);;
