(** {3 Clusterpdb_data_register} *)

open Make_test_v;;

testing "Clusterpdb_data_register_v";;

(* toplevel 
   #use "tclusterpdb_data_register_v.ml";; 
*)


let sym_enp = Entrypdb_symbol_t.CofferID "methanol";;
let val_pkp_l = Entrypdb_data_v.clusterpdb_data_list_off_entrypdb_symbol sym_enp;;

let reg_pkp = Pdr_v.store_of_entrypdb_symbol sym_enp;;
let key_pkp_l = List.sort Packpdb_symbol_v.compare (Pdr_v.clusterpdb_hkey_list ());;

test_number 1 (
val_pkp_l
(* : Clusterpdb_data_t.clusterpdb_data list *)
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

test_number 2 (
key_pkp_l 
(* : Clusterpdb_symbol_t.clusterpdb_symbol list *)
=
[
 Clusterpdb_symbol_t.COMPND; 
 Clusterpdb_symbol_t.CONECT; 
 Clusterpdb_symbol_t.END;
 Clusterpdb_symbol_t.HEADER;
 Clusterpdb_symbol_t.HETATM;
]
);;

test_number 3 (
List.sort Packpdb_symbol_v.compare (List.map Pdr_v.clusterpdb_keypdb_off_clusterpdb_data val_pkp_l)
=
key_pkp_l 
);;

test_number 4 ( 
Pdr_v.retrieve (Packpdb_symbol_v.make "HETATM")
(* : Clusterpdb_data_t.clusterpdb_data *)
=
["HETATM    1  C           1      -1.139  -0.167   0.000\r";
 "HETATM    2  O           2      -1.128   1.234   0.000\r";
 "HETATM    3  H           3      -0.081  -0.515   0.000\r";
 "HETATM    4  H           4      -1.669  -0.508   0.918\r";
 "HETATM    5  H           5      -1.669  -0.508  -0.918\r";
 "HETATM    6  H           6      -2.024   1.523   0.000\r"]
);;
