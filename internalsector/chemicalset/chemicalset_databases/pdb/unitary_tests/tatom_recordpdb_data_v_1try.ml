(** {3 1try Atom_recordpdb_data} *)

open Make_test_v;;

testing "1try Atom_recordpdb_data_v";;

(* toplevel 
   #use "tatom_recordpdb_data_v_1try.ml";; 
*)


let sym_enp = Entrypdb_symbol_t.ProteinID "1try";;

let kyp_clp_atm = Clusterpdb_keypdb_v.make Clusterpdb_symbol_v.atom sym_enp;;
let dat_clp_atm = Clusterpdb_data_v.retrieve kyp_clp_atm;;

let mrp_pkp_atm = Packpdb_markerpdb_v.make Packpdb_symbol_v.atom [' '];;
let kyp_pkp_atm = Packpdb_keypdb_v.make mrp_pkp_atm kyp_clp_atm;;
let dat_pkp_atm = Packpdb_data_v.retrieve kyp_pkp_atm;;

(* Residue Pack *)

let mrp_rpk_atm = Residue_packpdb_markerpdb_v.make "TRP" 4 ' ';;
let kyp_rpk_atm = Residue_packpdb_keypdb_v.make mrp_rpk_atm kyp_pkp_atm;;
let dat_rpk_atm = Residue_packpdb_data_v.retrieve kyp_rpk_atm;;

(* Atom Record key *)

let mrp_ark_ca_trp = Atom_recordpdb_markerpdb_v.make "CA" ' ';;
let kyp_ark_ca_trp = Atom_recordpdb_keypdb_v.make mrp_ark_ca_trp kyp_rpk_atm;;

let mrp_ark_cg_trp = Atom_recordpdb_markerpdb_v.make "CG" ' ';;
let kyp_ark_cg_trp = Atom_recordpdb_keypdb_v.make mrp_ark_cg_trp kyp_rpk_atm;;

(* Atom Record values *)

let dat_ark_cg_trp = Atom_recordpdb_data_v.retrieve kyp_ark_cg_trp;;

test_number 1 (
mrp_rpk_atm (* : Residue_packpdb_markerpdb_t.residue_packpdb_markerpdb *)
= 
("TRP", 4, ' ')
);;

test_number 2 (
 kyp_rpk_atm (*: Residue_packpdb_keypdb_t.residue_packpdb_keypdb *)
=
(("TRP", 4, ' '),
 ((Residue_packpdb_keypdb_t.Ppk_t.Packpdb_markerpdb_t.Packpdb_symbol_t.Recordpdb_symbol_t.ATOM, [' ']),
  (Residue_packpdb_keypdb_t.Ppk_t.Cpk_t.Recordpdb_symbol_t.ATOM,
   Residue_packpdb_keypdb_t.Ppk_t.Cpk_t.Entrypdb_symbol_t.ProteinID "1try")))
);;

test_number 3 (
dat_rpk_atm (* : Residue_packpdb_data_t.residue_packpdb_data *)
=
((("TRP", 4, ' '),
  ((Residue_packpdb_data_t.Rpk_t.Ppk_t.Packpdb_markerpdb_t.Packpdb_symbol_t.Recordpdb_symbol_t.ATOM, [' ']),
   (Residue_packpdb_data_t.Rpk_t.Ppk_t.Cpk_t.Recordpdb_symbol_t.ATOM,
    Residue_packpdb_data_t.Rpk_t.Ppk_t.Cpk_t.Entrypdb_symbol_t.ProteinID "1try"))),
 ["ATOM     92  N   TRP     4      17.032  13.573  -4.877  1.00 26.05           N  ";
  "ATOM     93  CA  TRP     4      17.687  14.528  -3.978  1.00 26.72           C  ";
  "ATOM     94  C   TRP     4      18.368  15.588  -4.848  1.00 27.78           C  ";
  "ATOM     95  O   TRP     4      18.574  16.813  -4.628  1.00 27.81           O  ";
  "ATOM     96  CB  TRP     4      18.527  13.821  -2.844  1.00 27.69           C  ";
  "ATOM     97  CG  TRP     4      18.617  14.836  -1.731  1.00 27.87           C  ";
  "ATOM     98  CD1 TRP     4      19.602  15.771  -1.554  1.00 28.54           C  ";
  "ATOM     99  CD2 TRP     4      17.604  15.179  -0.779  1.00 29.14           C  ";
  "ATOM    100  NE1 TRP     4      19.323  16.616  -0.509  1.00 29.32           N  ";
  "ATOM    101  CE2 TRP     4      18.087  16.277  -0.023  1.00 29.58           C  ";
  "ATOM    102  CE3 TRP     4      16.342  14.666  -0.503  1.00 30.96           C  ";
  "ATOM    103  CZ2 TRP     4      17.358  16.884   1.010  1.00 30.52           C  ";
  "ATOM    104  CZ3 TRP     4      15.645  15.279   0.542  1.00 31.54           C  ";
  "ATOM    105  CH2 TRP     4      16.114  16.349   1.289  1.00 31.00           C  "])
);;

(* Atom Record data *)

test_number 4 (
mrp_ark_ca_trp
(* : Atom_recordpdb_markerpdb_t.atom_recordpdb_markerpdb *)
=
  ("CA", ' ')
);;

test_number 5 (
kyp_ark_ca_trp
(* : (Atom_recordpdb_markerpdb_t.atom_recordpdb_markerpdb,
     Residue_packpdb_keypdb_t.residue_packpdb_keypdb)
    Doublet_t.doublet *)
=
(("CA", ' '),
 (("TRP", 4, ' '),
  ((Residue_packpdb_keypdb_t.Ppk_t.Packpdb_markerpdb_t.Packpdb_symbol_t.Recordpdb_symbol_t.ATOM, [' ']),
   (Residue_packpdb_keypdb_t.Ppk_t.Cpk_t.Recordpdb_symbol_t.ATOM,
    Residue_packpdb_keypdb_t.Ppk_t.Cpk_t.Entrypdb_symbol_t.ProteinID "1try"))))
);;

test_number 6 (
mrp_ark_cg_trp
(* : Atom_recordpdb_markerpdb_t.atom_recordpdb_markerpdb *)
=
  ("CG", ' ')
);;

test_number 7 (
kyp_ark_cg_trp
(* : (Atom_recordpdb_markerpdb_t.atom_recordpdb_markerpdb,
     Residue_packpdb_keypdb_t.residue_packpdb_keypdb)
    Doublet_t.doublet *)
=
(("CG", ' '),
 (("TRP", 4, ' '),
  ((Residue_packpdb_keypdb_t.Ppk_t.Packpdb_markerpdb_t.Packpdb_symbol_t.Recordpdb_symbol_t.ATOM, [' ']),
   (Residue_packpdb_keypdb_t.Ppk_t.Cpk_t.Recordpdb_symbol_t.ATOM,
    Residue_packpdb_keypdb_t.Ppk_t.Cpk_t.Entrypdb_symbol_t.ProteinID "1try"))))
);;

test_number 8 (
 dat_ark_cg_trp
(* : Atom_recordpdb_data_t.atom_recordpdb_data *)
=
((("CG", ' '),
  (("TRP", 4, ' '),
   ((Atom_recordpdb_data_t.Ark_t.Rpk_t.Ppk_t.Packpdb_markerpdb_t.Packpdb_symbol_t.Recordpdb_symbol_t.ATOM, [' ']),
    (Atom_recordpdb_data_t.Ark_t.Rpk_t.Ppk_t.Cpk_t.Recordpdb_symbol_t.ATOM,
     Atom_recordpdb_data_t.Ark_t.Rpk_t.Ppk_t.Cpk_t.Entrypdb_symbol_t.ProteinID "1try")))),
 "ATOM     97  CG  TRP     4      18.617  14.836  -1.731  1.00 27.87           C  ")
);;
