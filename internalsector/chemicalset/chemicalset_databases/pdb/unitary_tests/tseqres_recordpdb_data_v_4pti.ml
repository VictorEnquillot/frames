(** {3 4pti Seqres_recordpdb_data} *)

open Make_test_v;;

testing "4pti Seqres_recordpdb_data_v";;

(* toplevel 
   #use "tseqres_recordpdb_data_v_4pti.ml";; 
*)


Pdr_v.clear ();;

let sym_enp = Entrypdb_symbol_t.ProteinID "4pti";;
let val_pkp_l = Entrypdb_data_v.clusterpdb_data_list_off_entrypdb_symbol sym_enp;;
let col_wid_smb_l = Seqres_recordpdb_data_v.column_and_width_and_symbol_list ();;

let reg_pkp = Pdr_v.store_of_entrypdb_symbol sym_enp;;
let str_rcp = List.hd (Pdr_v.retrieve (Packpdb_symbol_v.make "SEQRES"));;

test_number 1 (
List.length val_pkp_l
(* : Clusterpdb_data_t.clusterpdb_data list *)
=
30
);;

test_number 2 (
col_wid_smb_l
(* : (Ordinal_p.ordinal * Ordinal_p.ordinal *
     Seqres_fieldpdb_symbol_t.seqres_fieldpdb_symbol)
    list *)
=
[
 (Ordinal_p.make 7, 1, Seqres_fieldpdb_symbol_t.Empty_1);
 (Ordinal_p.make 8, 3, Seqres_fieldpdb_symbol_t.Seqres_record_serial_number);
 (Ordinal_p.make 11, 1, Seqres_fieldpdb_symbol_t.Empty_2);
 (Ordinal_p.make 12, 1, Seqres_fieldpdb_symbol_t.Seqres_chain_id);
 (Ordinal_p.make 13, 1, Seqres_fieldpdb_symbol_t.Empty_3);
 (Ordinal_p.make 14, 4, Seqres_fieldpdb_symbol_t.Seqres_sequence_length);
 (Ordinal_p.make 18, 2, Seqres_fieldpdb_symbol_t.Empty_4);
 (Ordinal_p.make 20, 51, Seqres_fieldpdb_symbol_t.Seqres_thirteen_names);
 (Ordinal_p.make 71, 10, Seqres_fieldpdb_symbol_t.Empty_5)
]
);;

test_number 3 ( 
str_rcp
(* : Clusterpdb_data_t.recordpdb_data *)
=
"SEQRES   1 A   58  ARG PRO ASP PHE CYS LEU GLU PRO PRO TYR THR GLY PRO          "
);;

test_number 4 (
Seqres_recordpdb_data_v.data str_rcp
(* : Seqres_recordpdb_data_t.seqres_recordpdb_data *)
=
[
Seqres_recordpdb_data_t.Hfd_t.Empty_1 " ";
 Seqres_recordpdb_data_t.Hfd_t.Seqres_record_serial_number 1;
 Seqres_recordpdb_data_t.Hfd_t.Empty_2 " ";
 Seqres_recordpdb_data_t.Hfd_t.Seqres_chain_id 'A';
 Seqres_recordpdb_data_t.Hfd_t.Empty_3 " ";
 Seqres_recordpdb_data_t.Hfd_t.Seqres_sequence_length 58;
 Seqres_recordpdb_data_t.Hfd_t.Empty_4 "  ";
 Seqres_recordpdb_data_t.Hfd_t.Seqres_thirteen_names
  ["ARG"; "PRO"; "ASP"; "PHE"; "CYS"; "LEU"; "GLU"; "PRO"; "PRO"; "TYR";
   "THR"; "GLY"; "PRO"];
 Seqres_recordpdb_data_t.Hfd_t.Empty_5 "          "
]
);;
