(** {3 Entrypdb_value} *)

open Make_test_v;;

testing "Entrypdb_data_v";;

(* toplevel 
   #use "entrypdb_data_v.ml";; 
*)


let sym_enp = Entrypdb_symbol_t.CofferID "methanol";;
let fln = Entrypdb_data_v.filename_of_entrypdb_symbol sym_enp;;

test_number 1 (
fln 
  =
Filename_p.String
  "/home/colonna/sources/ocaml_top/setup/databases/PDB/methanol.pdb"
);;

test_number 2 (
Entrypdb_data_v.data sym_enp
(* : Entrypdb_data_t.entrypdb_value *)
 =
[["COMPND       Methanol     CH3-OH\r"];

 ["HEADER    \169  Albert Pratt  DCU  Jan.'97\r"];

 ["HETATM    1  C           1      -1.139  -0.167   0.000\r";
  "HETATM    2  O           2      -1.128   1.234   0.000\r";
  "HETATM    3  H           3      -0.081  -0.515   0.000\r";
  "HETATM    4  H           4      -1.669  -0.508   0.918\r";
  "HETATM    5  H           5      -1.669  -0.508  -0.918\r";
  "HETATM    6  H           6      -2.024   1.523   0.000\r"];

 ["CONECT    1    2    3    4    5\r"; "CONECT    2    1    6\r";
  "CONECT    3    1\r"; "CONECT    4    1\r"; "CONECT    5    1\r";
  "CONECT    6    2\r"];

 ["END\r"]]
);;
