open Make_test_v;;

testing "Clusterpdb_data_v with 
   tclusterpdb_data_v.ml";;

(* toplevel 
   #use "tclusterpdb_data_v.ml";; 
*)

let sym_enp = Entrypdb_symbol_t.CofferID "methanol";;
let fln = Entrypdb_symbol_v.filename_of_entrypdb_symbol sym_enp;;
let str_l = Entrypdb_symbol_v.string_list_of_entrypdb_symbol sym_enp;;

test_number 1 (b
smb_enp (* : Packpdb_symbol_t.clusterpdb_symbol *) 
= 
Entrypdb_symbol_t.ProteinID "methanol"
);;

test_number 2 (
fln 
(* : Filename_p.filename *)
  =
"/keep/PDB/methanol.pdb"
);;

test_number 3 (
str_l
(* : string list *)
=
["COMPND       Methanol     CH3-OH\r";
 "HEADER    \169  Albert Pratt  DCU  Jan.'97\r";
 "HETATM    1  C           1      -1.139  -0.167   0.000\r";
 "HETATM    2  O           2      -1.128   1.234   0.000\r";
 "HETATM    3  H           3      -0.081  -0.515   0.000\r";
 "HETATM    4  H           4      -1.669  -0.508   0.918\r";
 "HETATM    5  H           5      -1.669  -0.508  -0.918\r";
 "HETATM    6  H           6      -2.024   1.523   0.000\r";
 "CONECT    1    2    3    4    5\r"; "CONECT    2    1    6\r";
 "CONECT    3    1\r"; "CONECT    4    1\r"; "CONECT    5    1\r";
 "CONECT    6    2\r"; "END\r"]
);;

test_number 4 (
Packpdb_data_v.has_of_packpdb_keypdb_of_packpdb_data Packpdb_symbol_v.hetatm "HETATM    1  C           1      -1.139  -0.167   0.000\r";
);;

let (str_lcp, str_rcp) = Packpdb_data_v.extract_clusterpdb_and_remainder_of_clusterpdb_symbol_of_string_list Packpdb_symbol_v.compnd str_l;;

let (str_lhd, str_rhd) = Packpdb_data_v.extract_clusterpdb_and_remainder_of_clusterpdb_symbol_of_string_list Packpdb_symbol_v.header str_rcp;;

let (str_lha, str_rha) = Packpdb_data_v.extract_clusterpdb_and_remainder_of_clusterpdb_symbol_of_string_list Packpdb_symbol_v.hetatm str_rhd;;
