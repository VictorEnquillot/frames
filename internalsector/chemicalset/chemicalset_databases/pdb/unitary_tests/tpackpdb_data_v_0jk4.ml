(** {3 0jk4 Packpdb_data} *)

open Make_test_v;;

testing "0jk4 Packpdb_data_v";;

(* toplevel 
   #use "tpackpdb_data_v_0jk4.ml";; 
*)


let sym_enp = Entrypdb_symbol_t.ProteinID "0jk4";;

(* ATOM *)

let kyp_clp_atm = Clusterpdb_keypdb_v.make Clusterpdb_symbol_v.atom sym_enp;;
let dat_clp_atm = Clusterpdb_data_v.retrieve kyp_clp_atm;;

let dat_pkp_atm_l = Packpdb_data_v.packpdb_data_list_off_clusterpdb_data dat_clp_atm;; 
let kyp_pkp_atm_l = List.map Packpdb_data_v.packpdb_keypdb_off_packpdb_data dat_pkp_atm_l;;
let kyp_pkp_atm_sl = List.sort Packpdb_keypdb_v.compare kyp_pkp_atm_l;;

let mrp_pkp_atm_b = Packpdb_markerpdb_v.make Packpdb_symbol_v.atom ['B'];;
let kyp_pkp_atm_b = Packpdb_keypdb_v.make mrp_pkp_atm_b kyp_clp_atm;;
let dat_pkp_atm_b = Packpdb_data_v.retrieve kyp_pkp_atm_b;;

(* SEQRES *)

let kyp_clp_sqr = Clusterpdb_keypdb_v.make Clusterpdb_symbol_v.seqres sym_enp;;
let dat_clp_sqr = Clusterpdb_data_v.retrieve kyp_clp_sqr;;

let dat_pkp_sqr_l = Packpdb_data_v.packpdb_data_list_off_clusterpdb_data dat_clp_sqr;; 
let kyp_pkp_sqr_l = List.map Packpdb_data_v.packpdb_keypdb_off_packpdb_data dat_pkp_sqr_l;;
let kyp_pkp_sqr_sl = List.sort Packpdb_keypdb_v.compare kyp_pkp_sqr_l;;

let mrp_pkp_sqr_a = Packpdb_markerpdb_v.make Packpdb_symbol_v.seqres ['A'];;
let kyp_pkp_sqr_a = Packpdb_keypdb_v.make mrp_pkp_sqr_a kyp_clp_sqr;;
 
let dat_pkp_sqr_a = Packpdb_data_v.retrieve kyp_pkp_sqr_a;;
let sym_pkp_sqr_a = Packpdb_data_v.packpdb_symbol_off_packpdb_data dat_pkp_sqr_a;; 
let sym_enp_sqr_a = Packpdb_data_v.entrypdb_symbol_off_packpdb_data dat_pkp_sqr_a;;
let str_sqr_a = Packpdb_data_v.string_list_off_packpdb_data dat_pkp_sqr_a;;

test_number 1 (
List.length dat_pkp_sqr_l
(* : Packpdb_data_t.packpdb_data list *)
=
2
);;

test_number 2 (
kyp_pkp_sqr_sl (* : Packpdb_keypdb_t.packpdb_keypdb list *)
=
[
 ((Packpdb_keypdb_t.Packpdb_markerpdb_t.Packpdb_symbol_t.Recordpdb_symbol_t.SEQRES, ['A']),
  (Packpdb_keypdb_t.Cpk_t.Recordpdb_symbol_t.SEQRES,
   Packpdb_keypdb_t.Cpk_t.Entrypdb_symbol_t.ProteinID "0jk4"));

 ((Packpdb_keypdb_t.Packpdb_markerpdb_t.Packpdb_symbol_t.Recordpdb_symbol_t.SEQRES, ['B']),
  (Packpdb_keypdb_t.Cpk_t.Recordpdb_symbol_t.SEQRES,
   Packpdb_keypdb_t.Cpk_t.Entrypdb_symbol_t.ProteinID "0jk4"))
]
);;
 
test_number 3 (
dat_pkp_sqr_l (* : Packpdb_data_t.packpdb_data list *)
=
 [
  (((Packpdb_data_t.Ppk_t.Packpdb_markerpdb_t.Packpdb_symbol_t.Recordpdb_symbol_t.SEQRES, ['A']),
    (Packpdb_data_t.Ppk_t.Cpk_t.Recordpdb_symbol_t.SEQRES,
     Packpdb_data_t.Ppk_t.Cpk_t.Entrypdb_symbol_t.ProteinID "0jk4")),
   ["SEQRES   1 A   89  LEU ARG GLN CYS LEU PRO CYS GLY PRO GLY GLY LYS GLY          ";
    "SEQRES   2 A   89  ARG CYS PHE GLY PRO SER ILE CYS CYS GLY ASP GLU LEU          ";
    "SEQRES   3 A   89  GLY CYS PHE VAL GLY THR ALA GLU ALA LEU ARG CYS GLN          ";
    "SEQRES   4 A   89  GLU GLU ASN TYR LEU PRO SER PRO CYS GLN SER GLY GLN          ";
    "SEQRES   5 A   89  LYS PRO CYS GLY SER GLY GLY ARG CYS ALA ALA ALA GLY          ";
    "SEQRES   6 A   89  ILE CYS CYS ASN ASP GLU SER CYS VAL THR GLU PRO GLU          ";
    "SEQRES   7 A   89  CYS ARG GLU GLY VAL GLY PHE PRO ARG ARG VAL                  "]);
  (((Packpdb_data_t.Ppk_t.Packpdb_markerpdb_t.Packpdb_symbol_t.Recordpdb_symbol_t.SEQRES, ['B']),
    (Packpdb_data_t.Ppk_t.Cpk_t.Recordpdb_symbol_t.SEQRES,
     Packpdb_data_t.Ppk_t.Cpk_t.Entrypdb_symbol_t.ProteinID "0jk4")),
   ["SEQRES   1 B    9  CYS TYR PHE GLN ASN CYS PRO LYS GLY                          "])
]
);;

test_number 4 (
smb_pkp_sqr_a
(* : Packpdb_symbol_t.packpdb_symbol *) 
= 
Packpdb_symbol_v.seqres
);;

test_number 5 (
smb_enp_sqr_a 
(* : Entrypdb_symbol_t.entrypdb_symbol *)
= 
Entrypdb_symbol_t.ProteinID "0jk4"
);;

test_number 6 (
str_sqr_a
(* : string list *)
=
[
 "SEQRES   1 A   89  LEU ARG GLN CYS LEU PRO CYS GLY PRO GLY GLY LYS GLY          ";
 "SEQRES   2 A   89  ARG CYS PHE GLY PRO SER ILE CYS CYS GLY ASP GLU LEU          ";
 "SEQRES   3 A   89  GLY CYS PHE VAL GLY THR ALA GLU ALA LEU ARG CYS GLN          ";
 "SEQRES   4 A   89  GLU GLU ASN TYR LEU PRO SER PRO CYS GLN SER GLY GLN          ";
 "SEQRES   5 A   89  LYS PRO CYS GLY SER GLY GLY ARG CYS ALA ALA ALA GLY          ";
 "SEQRES   6 A   89  ILE CYS CYS ASN ASP GLU SER CYS VAL THR GLU PRO GLU          ";
 "SEQRES   7 A   89  CYS ARG GLU GLY VAL GLY PHE PRO ARG ARG VAL                  ";
]
);;

test_number 7 (
dat_pkp_atm_b 
(* : Packpdb_data_t.packpdb_data *)
=
(((Packpdb_data_t.Ppk_t.Packpdb_markerpdb_t.Packpdb_symbol_t.Recordpdb_symbol_t.ATOM, ['B']),
  (Packpdb_data_t.Ppk_t.Cpk_t.Recordpdb_symbol_t.ATOM,
   Packpdb_data_t.Ppk_t.Cpk_t.Entrypdb_symbol_t.ProteinID "0jk4")),
 [
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
