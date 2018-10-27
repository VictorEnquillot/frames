(** {3 Entrypdb_value} *)

open Make_test_v;;

testing "0plw Entrypdb_data_v";;

(* toplevel 
   #use "tentrypdb_data_v_0plw.ml";; 
*)


let sym_enp = Entrypdb_symbol_t.ProteinID "0plw";;
let fln = Entrypdb_data_v.filename_of_entrypdb_symbol sym_enp;;

test_number 1 (
fln 
  =
Filename_p.String
  "/home/colonna/sources/ocaml_top/setup/databases/PDB/0plw.pdb"
);;

test_number 2 (
List.length (Entrypdb_data_v.data sym_enp)
(* : Entrypdb_data_t.entrypdb_value *)
 =
26
);;

test_number 3 (
List.hd (Entrypdb_data_v.data sym_enp)
=
["HEADER    NEUROPEPTIDE                            09-JUN-03   1PLW              "]
);;

test_number 4 (
List_v.last_element_of_list (Entrypdb_data_v.data sym_enp)
=
["END                                                                             "]
);;
