(** {3 0jk4 Residue_packpdb_data} *)

open Make_test_v;;

testing "0jk4 Residue_packpdb_data_v";;

(* toplevel 
   #use "tresidue_packpdb_data_v_0jk4.ml";; 
*)


let sym_enp = Entrypdb_symbol_t.ProteinID "0jk4";;

let kyp_clp_atm = Clusterpdb_keypdb_v.make Clusterpdb_symbol_v.atom sym_enp;;
let dat_clp_atm = Clusterpdb_data_v.retrieve kyp_clp_atm;;

let dat_pkp_atm_l = Packpdb_data_v.packpdb_data_list_off_clusterpdb_data dat_clp_atm;; 
let mrp_pkp_atm_b = Packpdb_markerpdb_v.make Packpdb_symbol_v.atom ['B'];;
let kyp_pkp_atm_b = Packpdb_keypdb_v.make mrp_pkp_atm_b kyp_clp_atm;;
let dat_pkp_atm_b = Packpdb_data_v.retrieve kyp_pkp_atm_b;;

(* Residue Pack *)

let mrp_rpk_atm_b = Residue_packpdb_markerpdb_v.make "TYR" 2 ' ';;
let kyp_rpk_atm_b = Residue_packpdb_keypdb_v.make mrp_rpk_atm_b kyp_pkp_atm_b;;

let dat_rpk_atm_l = Residue_packpdb_data_v.residue_packpdb_data_list_off_packpdb_data dat_pkp_atm_b;;
let dat_rpk_atm_b = Residue_packpdb_data_v.retrieve kyp_rpk_atm_b;;

test_number 1 (
Residue_packpdb_keypdb_v.has_same_residue_packpdb_keypdb_of_entrypdb_symbol_of_string_of_string sym_enp
 "ATOM    595  ND2 ASN B   5      32.819 -38.222 -16.745  1.00 37.60           N  "
 "ATOM    596  N   CYS B   6      35.227 -38.700 -19.770  1.00 31.89           N  "
=
false
);;

test_number 2 (
Residue_packpdb_keypdb_v.has_same_residue_packpdb_keypdb_of_entrypdb_symbol_of_string_of_string sym_enp
 "ATOM    595  ND2 ASN B   5      32.819 -38.222 -16.745  1.00 37.60           N  "
 "ATOM    595  ND2 ASN B   5      32.819 -38.222 -16.745  1.00 37.60           N  "
);;

test_number 3 (
List.length dat_rpk_atm_l 
(* : Packpdb_data_t.packpdb_data list *)
=
4
);;

test_number 4 (
kyp_rpk_atm_b 
(* : Residue_packpdb_keypdb_t.residue_packpdb_keypdb *)
  =
(("TYR", 2, ' '),
 ((Residue_packpdb_keypdb_t.Ppk_t.Packpdb_markerpdb_t.Packpdb_symbol_t.Recordpdb_symbol_t.ATOM, ['B']),
  (Residue_packpdb_keypdb_t.Ppk_t.Cpk_t.Recordpdb_symbol_t.ATOM,
   Residue_packpdb_keypdb_t.Ppk_t.Cpk_t.Entrypdb_symbol_t.ProteinID "0jk4")))
);;
 
test_number 5 (
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

test_number 6 (
List.length dat_rpk_atm_l
= 
4
);;

test_number 7 (
dat_rpk_atm_b
(* : (Residue_packpdb_keypdb_t.residue_packpdb_keypdb, string)
    Capped_list_t.capped_list *)
=
((("TYR", 2, ' '),
  ((Residue_packpdb_keypdb_t.Ppk_t.Packpdb_markerpdb_t.Packpdb_symbol_t.Recordpdb_symbol_t.ATOM, ['B']),
   (Residue_packpdb_keypdb_t.Ppk_t.Cpk_t.Recordpdb_symbol_t.ATOM,
    Residue_packpdb_keypdb_t.Ppk_t.Cpk_t.Entrypdb_symbol_t.ProteinID "0jk4"))),
 [
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
  "ATOM    567  OH  TYR B   2      30.048 -29.720 -17.076  1.00 21.18           O  "
])
);;

test_number 8 (
Residue_packpdb_data_v.residue_packpdb_keypdb_off_residue_packpdb_data dat_rpk_atm_b
=
kyp_rpk_atm_b 
);;

test_number 9 (
Residue_packpdb_data_v.residuepdb_symbol_off_residue_packpdb_data dat_rpk_atm_b
=
Residuepdb_symbol_v.tyr
);;

test_number 10 (
Residue_packpdb_data_v.entrypdb_symbol_off_residue_packpdb_data dat_rpk_atm_b
=
smb_enp
);;

test_number 11 (
Residue_packpdb_data_v.string_list_off_residue_packpdb_data dat_rpk_atm_b
(* : string list *) 
  =
[
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
 "ATOM    567  OH  TYR B   2      30.048 -29.720 -17.076  1.00 21.18           O  "
]
);;

test_number 12 (
Residue_packpdb_data_v.has_of_residue_packpdb_keypdb_of_residue_packpdb_data kyp_rpk_atm_b dat_rpk_atm_b
);;
