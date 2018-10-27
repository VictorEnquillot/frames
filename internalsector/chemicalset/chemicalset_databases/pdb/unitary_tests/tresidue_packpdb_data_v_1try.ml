(** {3 1try Residue_packpdb_data} *)

open Make_test_v;;

testing "1try Residue_packpdb_data_v";;

(* toplevel 
   #use "tresidue_packpdb_data_v_1try.ml";; 
*)


let sym_enp = Entrypdb_symbol_t.ProteinID "1try";;

(* The Cluster ATOM *)

let kyp_clp_atm = Clusterpdb_keypdb_v.make Clusterpdb_symbol_v.atom sym_enp;;
let dat_clp_atm = Clusterpdb_data_v.retrieve kyp_clp_atm;;
let dat_pkp_atm_l = Packpdb_data_v.packpdb_data_list_off_clusterpdb_data dat_clp_atm;; 
let kyp_pkp_atm_l = Packpdb_data_v.packpdb_keypdb_list_off_clusterpdb_data dat_clp_atm;;
let dat_rpk_atm_l = Residue_packpdb_data_v.residue_packpdb_data_list_off_clusterpdb_data dat_clp_atm;;
let kyp_rpk_atm_l = Residue_packpdb_data_v.residue_packpdb_keypdb_list_off_clusterpdb_data dat_clp_atm;;

(* The Pack ATOM A *)
let mrp_pkp_atm = Packpdb_markerpdb_v.make Packpdb_symbol_v.atom ['A'];;
let kyp_pkp_atm = Packpdb_keypdb_v.make mrp_pkp_atm kyp_clp_atm;;
let dat_pkp_atm = Packpdb_data_v.retrieve kyp_pkp_atm;;

(* The Residue Packs in Chain A *)
let mrp_rpk_atm = Residue_packpdb_markerpdb_v.make  "ILE" 16 ' ';; (* ' ' is insertion code *)
let kyp_rpk_atm = Residue_packpdb_keypdb_v.make mrp_rpk_atm kyp_pkp_atm;;
let dat_rpk_atm = Residue_packpdb_data_v.retrieve kyp_rpk_atm;;

test_number 1 (
List.length dat_pkp_atm_l 
(* : Packpdb_data_t.packpdb_data list *)
=
1
);;

test_number 2 (
List.length dat_rpk_atm_l 
(* : Packpdb_data_t.packpdb_data list *)
=
224
);;

test_number 3 (
List.hd kyp_rpk_atm_l
(* : Packpdb_keypdb_t.packpdb_keypdb list *)
   = 
(("ILE", 16, ' '),
 ((Residue_packpdb_keypdb_t.Ppk_t.Packpdb_markerpdb_t.Packpdb_symbol_t.Recordpdb_symbol_t.ATOM, ['A']),
  (Residue_packpdb_keypdb_t.Ppk_t.Cpk_t.Recordpdb_symbol_t.ATOM,
   Residue_packpdb_keypdb_t.Ppk_t.Cpk_t.Entrypdb_symbol_t.ProteinID "1try")));
 );;

test_number 4 (
kyp_rpk_atm 
(* : Residue_packpdb_keypdb_t.residue_packpdb_keypdb *)
  =
(("ILE", 16, ' '),
 ((Residue_packpdb_keypdb_t.Ppk_t.Packpdb_markerpdb_t.Packpdb_symbol_t.Recordpdb_symbol_t.ATOM, ['A']),
  (Residue_packpdb_keypdb_t.Ppk_t.Cpk_t.Recordpdb_symbol_t.ATOM,
   Residue_packpdb_keypdb_t.Ppk_t.Cpk_t.Entrypdb_symbol_t.ProteinID "1try")))
);;
 
test_number 5 (
dat_rpk_atm
(* : (Residue_packpdb_keypdb_t.residue_packpdb_keypdb, string)
    Capped_list_t.capped_list *)
=
((("ILE", 16, ' '),
  ((Residue_packpdb_data_t.Rpk_t.Ppk_t.Packpdb_markerpdb_t.Packpdb_symbol_t.Recordpdb_symbol_t.ATOM, ['A']),
   (Residue_packpdb_data_t.Rpk_t.Ppk_t.Cpk_t.Recordpdb_symbol_t.ATOM,
    Residue_packpdb_data_t.Rpk_t.Ppk_t.Cpk_t.Entrypdb_symbol_t.ProteinID "1try"))),
 ["ATOM      1  N   ILE A  16     -15.363  39.632   4.943  1.00  9.88           N  ";
  "ATOM      2  CA  ILE A  16     -16.440  38.712   4.516  1.00 10.02           C  ";
  "ATOM      3  C   ILE A  16     -16.727  39.024   3.036  1.00 14.05           C  ";
  "ATOM      4  O   ILE A  16     -16.881  40.211   2.723  1.00 11.24           O  ";
  "ATOM      5  CB  ILE A  16     -17.789  38.957   5.280  1.00 10.42           C  ";
  "ATOM      6  CG1 ILE A  16     -17.624  38.612   6.770  1.00 10.03           C  ";
  "ATOM      7  CG2 ILE A  16     -18.974  38.233   4.682  1.00 11.11           C  ";
  "ATOM      8  CD1 ILE A  16     -17.402  37.109   7.029  1.00 13.57           C  "])
);;

test_number 6 (
Residue_packpdb_data_v.residue_packpdb_keypdb_off_residue_packpdb_data dat_rpk_atm
=
kyp_rpk_atm 
);;

test_number 7 (
Residue_packpdb_data_v.residuepdb_symbol_off_residue_packpdb_data dat_rpk_atm
=
Residuepdb_symbol_v.ile
);;

test_number 8 (
Residue_packpdb_data_v.entrypdb_symbol_off_residue_packpdb_data dat_rpk_atm
=
smb_enp
);;

test_number 9 (
Residue_packpdb_data_v.string_list_off_residue_packpdb_data dat_rpk_atm
(* : string list *) 
  =
["ATOM      1  N   ILE A  16     -15.363  39.632   4.943  1.00  9.88           N  ";
 "ATOM      2  CA  ILE A  16     -16.440  38.712   4.516  1.00 10.02           C  ";
 "ATOM      3  C   ILE A  16     -16.727  39.024   3.036  1.00 14.05           C  ";
 "ATOM      4  O   ILE A  16     -16.881  40.211   2.723  1.00 11.24           O  ";
 "ATOM      5  CB  ILE A  16     -17.789  38.957   5.280  1.00 10.42           C  ";
 "ATOM      6  CG1 ILE A  16     -17.624  38.612   6.770  1.00 10.03           C  ";
 "ATOM      7  CG2 ILE A  16     -18.974  38.233   4.682  1.00 11.11           C  ";
 "ATOM      8  CD1 ILE A  16     -17.402  37.109   7.029  1.00 13.57           C  "]
);;

test_number 10 (
Residue_packpdb_data_v.has_of_residue_packpdb_keypdb_of_residue_packpdb_data kyp_rpk_atm dat_rpk_atm
);;
