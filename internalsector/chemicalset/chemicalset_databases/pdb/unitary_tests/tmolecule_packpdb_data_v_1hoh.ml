(** {3 1hoh Molecule_packpdb_data} *)

open Make_test_v;;

testing "Molecule_packpdb_data_v with
   tmolecule_packpdb_data_v_1hoh.ml";; 

(* toplevel 
   #use "tmolecule_packpdb_data_v_1hoh.ml";; 
*)

let sym_enp = Entrypdb_symbol_t.CofferID "1hoh";;

(* The Cluster HETATM clp *)

let kyp_clp_ato = Clusterpdb_keypdb_v.make Clusterpdb_symbol_v.hetatm sym_enp;;
let dat_clp_ato = Clusterpdb_data_v.retrieve kyp_clp_ato;;

let dat_pkp_ato_l = Packpdb_data_v.packpdb_data_list_off_clusterpdb_data dat_clp_ato;; 
let kyp_pkp_ato_l = Packpdb_data_v.packpdb_keypdb_list_off_clusterpdb_data dat_clp_ato;;

let dat_rpk_ato_l = Molecule_packpdb_data_v.molecule_packpdb_data_list_off_clusterpdb_data dat_clp_ato;;
let kyp_rpk_ato_l = Molecule_packpdb_data_v.molecule_packpdb_keypdb_list_off_clusterpdb_data dat_clp_ato;;

(* The Pack HETATM A pkp *)

let mrp_pkp_ato_a = Packpdb_markerpdb_v.make Packpdb_symbol_v.hetatm ['A'];;
let kyp_pkp_ato_a = Packpdb_keypdb_v.make mrp_pkp_ato_a kyp_clp_ato;;
let dat_pkp_ato_a = Packpdb_data_v.retrieve kyp_pkp_ato_a;;

(* The Molecule Packs in Chain A rpk *)

let mrp_rpk_ato_a = Residue_packpdb_markerpdb_v.make "HOH" 1 ' ';; (* ' ' is insertion code *)
let kyp_rpk_ato_a = Residue_packpdb_keypdb_v.make mrp_rpk_ato_a kyp_pkp_ato_a;;
let dat_rpk_ato_a = Residue_packpdb_data_v.retrieve kyp_rpk_ato_a;;

(*
COMPND       Water     H2O
HEADER    by  Albert Pratt  DCU  Jan.'97
HETATM    1  O   HOH A   1      -1.810   1.334   0.000  1.00 72.02           O  
HETATM    2  H   HOH A   1      -0.873   1.047   0.000  1.00  2.02           H  
HETATM    3  H   HOH A   1      -1.768   2.313   0.000  1.00  2.02           H  
CONECT    1    2    3
CONECT    2    1
CONECT    3    1
END
----------------------------------------
Packpdb           1 
Molecule_packpdb  1
*)

test_number 1 (
List.length dat_pkp_ato_l 
(* : Packpdb_data_t.packpdb_data list *)
=
1
);;

test_number 2 (
List.length dat_rpk_ato_l 
(* : Packpdb_data_t.packpdb_data list *)
=
1
);;

test_number 3 (
List.hd kyp_rpk_ato_l 
(* : Molecule_packpdb_keypdb_t.molecule_packpdb_keypdb *)
=
(("HOH", 1, ' '),
 ((Recordpdb_symbol_t.HETATM, ['A']),
  (Recordpdb_symbol_t.HETATM, Entrypdb_symbol_t.CofferID "1hoh")))
);;

test_number 4 (
kyp_pkp_ato_a 
(* : Packpdb_keypdb_t.packpdb_keypdb *)
=
((Recordpdb_symbol_t.HETATM, ['A']),
 (Recordpdb_symbol_t.HETATM, Entrypdb_symbol_t.CofferID "1hoh"))
);;

test_number 5 (
dat_pkp_ato_a 
(* : Packpdb_data_t.packpdb_data *)
 =
(((Recordpdb_symbol_t.HETATM, ['A']),
  (Recordpdb_symbol_t.HETATM, Entrypdb_symbol_t.CofferID "1hoh")),
 ["HETATM    1  O   HOH A   1      -1.810   1.334   0.000  1.00 72.02           O  \r";
  "HETATM    2  H1  HOH A   1      -0.873   1.047   0.000  1.00  2.02           H  \r";
  "HETATM    3  H2  HOH A   1      -1.768   2.313   0.000  1.00  2.02           H  \r"])
);;

test_number 6 (
kyp_rpk_ato_a
(* : ((string, int, char) Triplet_t.triplet, Packpdb_keypdb_t.packpdb_keypdb)
    Doublet_t.doublet *)
=
(("HOH", 1, ' '),
 ((Recordpdb_symbol_t.HETATM, ['A']),
  (Recordpdb_symbol_t.HETATM, Entrypdb_symbol_t.CofferID "1hoh")))
);;
 
test_number 7 (
dat_rpk_ato_a 
(* : (((string, int, char) Triplet_t.triplet, Packpdb_keypdb_t.packpdb_keypdb)
     Doublet_t.doublet, string)
    Capped_list_t.capped_list *)
=
((("HOH", 1, ' '),
  ((Recordpdb_symbol_t.HETATM, ['A']),
   (Recordpdb_symbol_t.HETATM, Entrypdb_symbol_t.CofferID "1hoh"))),
 ["HETATM    1  O   HOH A   1      -1.810   1.334   0.000  1.00 72.02           O  \r";
  "HETATM    2  H1  HOH A   1      -0.873   1.047   0.000  1.00  2.02           H  \r";
  "HETATM    3  H2  HOH A   1      -1.768   2.313   0.000  1.00  2.02           H  \r"])
);;

test_number 8 (
Molecule_packpdb_data_v.molecule_packpdb_keypdb_off_molecule_packpdb_data dat_rpk_ato_a
=
kyp_rpk_ato_a 
);;

test_number 9 (
Molecule_packpdb_data_v.moleculepdb_symbol_off_molecule_packpdb_data dat_rpk_ato_a
(* : Moleculepdb_symbol_t.moleculepdb_symbol *)
= 
Moleculepdb_symbol_v.hoh
);;

test_number 10 (
Molecule_packpdb_data_v.entrypdb_symbol_off_molecule_packpdb_data dat_rpk_ato_a
=
sym_enp
);;

test_number 11 (
Molecule_packpdb_data_v.string_list_off_molecule_packpdb_data dat_rpk_ato_a
(* : string list *) 
  =
["HETATM    1  O   HOH A   1      -1.810   1.334   0.000  1.00 72.02           O  \r";
 "HETATM    2  H1  HOH A   1      -0.873   1.047   0.000  1.00  2.02           H  \r";
 "HETATM    3  H2  HOH A   1      -1.768   2.313   0.000  1.00  2.02           H  \r"]
);;

test_number 12 (
Molecule_packpdb_data_v.has_of_molecule_packpdb_keypdb_of_molecule_packpdb_data kyp_rpk_ato_a dat_rpk_ato_a
);;
