open Make_test_v;;

testing "Clusterpdb_data_v with 
   tclusterpdb_data_v_methanol.ml";;

(* toplevel 
   #use "tclusterpdb_data_v_methanol.ml";; 
*)

let sym_enp = Entrypdb_symbol_t.CofferID "methanol";;
let fln = Entrypdb_symbol_v.filename_of_entrypdb_symbol sym_enp;;
let str_l = Entrypdb_symbol_v.string_list_of_entrypdb_symbol sym_enp;;
let kyp_clp = Clusterpdb_keypdb_v.make Clusterpdb_symbol_v.hetatm sym_enp;;

test_number 1 (
sym_enp (* : Packpdb_symbol_t.clusterpdb_symbol *) 
= 
Entrypdb_symbol_t.CofferID "methanol"
);;

test_number 2 (
fln 
(* : Filename_p.filename *)
  =
Filename_p.filename "/keep/PDB/methanol.pdb"
);;

test_number 3 (
kyp_clp
(* : Clusterpdb_keypdb_t.clusterpdb_keypdb *)
  =
(Recordpdb_symbol_t.HETATM, Entrypdb_symbol_t.CofferID "methanol")
);;

test_number 4 (
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

test_number 5 (
Clusterpdb_keypdb_v.has_of_clusterpdb_keypdb_of_recordpdb_type_string kyp_clp 
"HETATM    1  C           1      -1.139  -0.167   0.000\r";
);;

let (str_lcp, str_rcp) = Sectionpdb_data_v.extract_clusterpdb_n_remainder_of_clusterpdb_symbol_of_string_list Packpdb_symbol_v.compnd str_l;;

test_number 6 (
str_lcp
(* : string list *)
= 
["COMPND       Methanol     CH3-OH\r"]
);;

test_number 7 (
str_rcp
(* : string list *)
=
  ["HEADER    \169  Albert Pratt  DCU  Jan.'97\r";
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

let (str_lhd, str_rhd) = Sectionpdb_data_v.extract_clusterpdb_n_remainder_of_clusterpdb_symbol_of_string_list Packpdb_symbol_v.header str_rcp;;

test_number 8 (
str_lhd
(* : string list *)
= 
["HEADER    \169  Albert Pratt  DCU  Jan.'97\r"]
);;

test_number 9 (
str_rhd
(* : string list *)
=

  ["HETATM    1  C           1      -1.139  -0.167   0.000\r";
   "HETATM    2  O           2      -1.128   1.234   0.000\r";
   "HETATM    3  H           3      -0.081  -0.515   0.000\r";
   "HETATM    4  H           4      -1.669  -0.508   0.918\r";
   "HETATM    5  H           5      -1.669  -0.508  -0.918\r";
   "HETATM    6  H           6      -2.024   1.523   0.000\r";
   "CONECT    1    2    3    4    5\r"; 
   "CONECT    2    1    6\r";
   "CONECT    3    1\r"; 
   "CONECT    4    1\r"; 
   "CONECT    5    1\r";
   "CONECT    6    2\r"; 
   "END\r"]
);;

let (str_lha, str_rha) = Sectionpdb_data_v.extract_clusterpdb_n_remainder_of_clusterpdb_symbol_of_string_list Packpdb_symbol_v.hetatm str_rhd;;

test_number 10 (
str_lha
(* : string list *)
= 
  ["HETATM    1  C           1      -1.139  -0.167   0.000\r";
   "HETATM    2  O           2      -1.128   1.234   0.000\r";
   "HETATM    3  H           3      -0.081  -0.515   0.000\r";
   "HETATM    4  H           4      -1.669  -0.508   0.918\r";
   "HETATM    5  H           5      -1.669  -0.508  -0.918\r";
   "HETATM    6  H           6      -2.024   1.523   0.000\r"]
);;

test_number 11 (
str_rha
(* : string list *)
=
  ["CONECT    1    2    3    4    5\r"; "CONECT    2    1    6\r";
   "CONECT    3    1\r"; "CONECT    4    1\r"; "CONECT    5    1\r";
   "CONECT    6    2\r"; "END\r"]
);;
