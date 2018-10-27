(** {3 4pti Protein_sequencepdb} *)

open Make_test_v;;

testing "4pti Protein_sequencepdb_v";;

(* toplevel 
   #use "tprotein_sequencepdb_v_4pti.ml";; 
*)


Pdr_v.clear ();;

let sym_enp = Entrypdb_symbol_t.ProteinID "4pti";;
let val_pkp_l = Entrypdb_data_v.clusterpdb_data_list_off_entrypdb_symbol sym_enp;;

let reg_pkp = Pdr_v.store_of_entrypdb_symbol sym_enp;;
let dat_psp = Protein_sequencepdb_v.data sym_enp;;

test_number 1 (
List.length val_pkp_l
(* : Clusterpdb_data_t.clusterpdb_data list *)
=
30
);;

