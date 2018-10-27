(** {3 0jk4 Seqres_packpdb_data} *)

open Make_test_v;;

testing "0jk4 Seqres_packpdb_data_v";;

(* toplevel 
   #use "tseqres_packpdb_data_v_0jk4.ml";; 
*)


let sym_enp = Entrypdb_symbol_t.ProteinID "0jk4";;
let kyp_clp_sqr = Clusterpdb_keypdb_v.make Clusterpdb_symbol_v.seqres sym_enp;;

(* SEQRES A *)

let mrp_pkp_sqr_a = Packpdb_markerpdb_v.make Packpdb_symbol_v.seqres ['A'];;
let kyp_pkp_sqr_a = Packpdb_keypdb_v.make mrp_pkp_sqr_a kyp_clp_sqr;;
 
let dat_pkp_sqr_a = Seqres_packpdb_data_v.make kyp_pkp_sqr_a;;
let seq_a = Seqres_packpdb_data_v.residuepdb_symbol_list_off_seqres_packpdb_data dat_pkp_sqr_a;;

(* SEQRES B *)

let mrp_pkp_sqr_b = Packpdb_markerpdb_v.make Packpdb_symbol_v.seqres ['B'];;
let kyp_pkp_sqr_b = Packpdb_keypdb_v.make mrp_pkp_sqr_b kyp_clp_sqr;;
 
let dat_pkp_sqr_b = Seqres_packpdb_data_v.make kyp_pkp_sqr_b;;
let seq_b = Seqres_packpdb_data_v.residuepdb_symbol_list_off_seqres_packpdb_data dat_pkp_sqr_b;;

test_number 1 (
kyp_pkp_sqr_a
(* : Packpdb_keypdb_t.packpdb_keypdb *)
=
((Packpdb_keypdb_t.Packpdb_markerpdb_t.Packpdb_symbol_t.Recordpdb_symbol_t.SEQRES, ['A']),
 (Packpdb_keypdb_t.Cpk_t.Recordpdb_symbol_t.SEQRES,
  Packpdb_keypdb_t.Cpk_t.Entrypdb_symbol_t.ProteinID "0jk4"))
);;

test_number 2 (
dat_pkp_sqr_a
(* : Packpdb_data_t.packpdb_data *)
=
[
 "SEQRES   1 A   89  LEU ARG GLN CYS LEU PRO CYS GLY PRO GLY GLY LYS GLY          ";
 "SEQRES   2 A   89  ARG CYS PHE GLY PRO SER ILE CYS CYS GLY ASP GLU LEU          ";
 "SEQRES   3 A   89  GLY CYS PHE VAL GLY THR ALA GLU ALA LEU ARG CYS GLN          ";
 "SEQRES   4 A   89  GLU GLU ASN TYR LEU PRO SER PRO CYS GLN SER GLY GLN          ";
 "SEQRES   5 A   89  LYS PRO CYS GLY SER GLY GLY ARG CYS ALA ALA ALA GLY          ";
 "SEQRES   6 A   89  ILE CYS CYS ASN ASP GLU SER CYS VAL THR GLU PRO GLU          ";
 "SEQRES   7 A   89  CYS ARG GLU GLY VAL GLY PHE PRO ARG ARG VAL                  "
]
);;

test_number 3 (
List_v.name_with_separator Ats_v.name " " seq_a (* : string *) 
  =
"LEU ARG GLN CYS LEU PRO CYS GLY PRO GLY GLY LYS GLY ARG CYS PHE GLY PRO SER ILE CYS CYS GLY ASP GLU LEU GLY CYS PHE VAL GLY THR ALA GLU ALA LEU ARG CYS GLN GLU GLU ASN TYR LEU PRO SER PRO CYS GLN SER GLY GLN LYS PRO CYS GLY SER GLY GLY ARG CYS ALA ALA ALA GLY ILE CYS CYS ASN ASP GLU SER CYS VAL THR GLU PRO GLU CYS ARG GLU GLY VAL GLY PHE PRO ARG ARG VAL"
);;

test_number 4 (
kyp_pkp_sqr_b
(* : Packpdb_keypdb_t.packpdb_keypdb *)
  =
((Packpdb_keypdb_t.Packpdb_markerpdb_t.Packpdb_symbol_t.Recordpdb_symbol_t.SEQRES, ['B']),
 (Packpdb_keypdb_t.Cpk_t.Recordpdb_symbol_t.SEQRES,
  Packpdb_keypdb_t.Cpk_t.Entrypdb_symbol_t.ProteinID "0jk4"))
);;

test_number 5 (
dat_pkp_sqr_b
(* : Packpdb_data_t.packpdb_data *)
=
[
 "SEQRES   1 B    9  CYS TYR PHE GLN ASN CYS PRO LYS GLY                          "
]
);;

test_number 6 (
List_v.name_with_separator Ats_v.name " " seq_b (* : string *) 
=
"CYS TYR PHE GLN ASN CYS PRO LYS GLY"
);;
