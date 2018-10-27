(** {3 0plw Header_recordpdb_data} *)

open Make_test_v;;

testing "0plw Header_recordpdb_data_v";;

(* toplevel 
   #use "theader_recordpdb_data_v_0plw.ml";; 
*)


Pdr_v.clear ();;

let sym_enp = Entrypdb_symbol_t.CofferID "0plw";;
let val_pkp_l = Entrypdb_data_v.clusterpdb_data_list_off_entrypdb_symbol sym_enp;;
let col_wid_smb_l = Header_recordpdb_data_v.column_and_width_and_symbol_list ();;

let reg_pkp = Pdr_v.store_of_entrypdb_symbol sym_enp;;
let str_rcp = List.hd (Pdr_v.retrieve (Packpdb_symbol_v.make "HEADER"));;

test_number 1 (
List.length val_pkp_l
(* : Clusterpdb_data_t.clusterpdb_data list *)
=
26
);;

test_number 2 (
col_wid_smb_l
(* : ((int * int) * Header_fieldpdb_symbol_t.header_fieldpdb_symbol) list *)
  =
[
 (Ordinal_p.make 7, Ordinal_p.make 4, Header_fieldpdb_symbol_t.Empty_1);
 (Ordinal_p.make 11, Ordinal_p.make 40, Header_fieldpdb_symbol_t.Chemical_species);
 (Ordinal_p.make 51, Ordinal_p.make 9, Header_fieldpdb_symbol_t.Deposition_date);
 (Ordinal_p.make 60, Ordinal_p.make 3, Header_fieldpdb_symbol_t.Empty_2);
 (Ordinal_p.make 63, Ordinal_p.make 4, Header_fieldpdb_symbol_t.PdbID);
 (Ordinal_p.make 67, Ordinal_p.make 14, Header_fieldpdb_symbol_t.Empty_3);
]
);;

test_number 3 ( 
str_rcp
(* : Clusterpdb_data_t.clusterpdb_data *)
=
"HEADER    NEUROPEPTIDE                            09-JUN-03   1PLW              "
);;

test_number 4 (
Header_recordpdb_data_v.value str_rcp
(* : Header_recordpdb_data_t.header_recordpdb_data *)
=
[Header_recordpdb_data_t.Hfv_t.Empty_1 "    ";
 Header_recordpdb_data_t.Hfv_t.Chemical_species
  "NEUROPEPTIDE                            ";
 Header_recordpdb_data_t.Hfv_t.Deposition_date "09-JUN-03";
 Header_recordpdb_data_t.Hfv_t.Empty_2 "   ";
 Header_recordpdb_data_t.Hfv_t.PdbID "1PLW";
 Header_recordpdb_data_t.Hfv_t.Empty_3 "              "]
);;
