(** {3 0plw Atom_recordpdb_data} *)

open Make_test_v;;

testing "0plw Atom_recordpdb_data_v";;

(* toplevel 
   #use "tatom_recordpdb_data_v_0plw.ml";; 
*)


Pdr_v.clear ();;

let sym_enp = Entrypdb_symbol_t.ProteinID "0plw";;
let val_pkp_l = Entrypdb_data_v.clusterpdb_data_list_off_entrypdb_symbol sym_enp;;
let col_wid_smb_l = Atom_recordpdb_data_v.column_and_width_and_symbol_list ();;

let reg_pkp = Pdr_v.store_of_entrypdb_symbol sym_enp;;
let str_rcp = List.hd (Pdr_v.retrieve (Packpdb_symbol_v.make "ATOM"));;

test_number 1 (
List.length val_pkp_l
(* : Clusterpdb_data_t.clusterpdb_data list *)
=
26
);;

test_number 2 (
col_wid_smb_l
(* : (Ordinal_p.ordinal * Ordinal_p.ordinal *
     Atom_fieldpdb_symbol_t.atom_fieldpdb_symbol)
    list *)
=
[
 (Ordinal_p.make  7, 5, Atom_fieldpdb_symbol_t.Atom_serial_number);
 (Ordinal_p.make 12, 1, Atom_fieldpdb_symbol_t.Empty_1);
 (Ordinal_p.make 13, 4, Atom_fieldpdb_symbol_t.Atom_name);
 (Ordinal_p.make 17, 1, Atom_fieldpdb_symbol_t.Atom_alternate_location_id);
 (Ordinal_p.make 18, 3, Atom_fieldpdb_symbol_t.Residuepdb_symbol);
 (Ordinal_p.make 21, 1, Atom_fieldpdb_symbol_t.Empty_2);
 (Ordinal_p.make 22, 1, Atom_fieldpdb_symbol_t.Atom_chain_id);
 (Ordinal_p.make 23, 4, Atom_fieldpdb_symbol_t.Residuepdb_sequence_number);
 (Ordinal_p.make 27, 1, Atom_fieldpdb_symbol_t.Insertion_code);
 (Ordinal_p.make 28, 3, Atom_fieldpdb_symbol_t.Empty_3);
 (Ordinal_p.make 31, 8, Atom_fieldpdb_symbol_t.X);
 (Ordinal_p.make 39, 8, Atom_fieldpdb_symbol_t.Y);
 (Ordinal_p.make 47, 8, Atom_fieldpdb_symbol_t.Z);
 (Ordinal_p.make 55, 6, Atom_fieldpdb_symbol_t.Occupancy);
 (Ordinal_p.make 61, 6, Atom_fieldpdb_symbol_t.B_factor);
 (Ordinal_p.make 67, 10, Atom_fieldpdb_symbol_t.Empty_4);
 (Ordinal_p.make 77, 2, Atom_fieldpdb_symbol_t.Element_symbol);
 (Ordinal_p.make 79, 2, Atom_fieldpdb_symbol_t.Atom_charge)
]
);;

test_number 3 ( 
str_rcp
(* : Clusterpdb_data_t.recordpdb_data *)
=
"ATOM      1  N   TYR A   1       1.745   3.982   3.628  1.00  0.00           N  "
);;

test_number 4 (
Atom_recordpdb_data_v.value str_rcp
(* : Atom_recordpdb_data_t.atom_recordpdb_data *)
=
[
 Atom_recordpdb_data_t.Afd_t.Atom_serial_number 1;
 Atom_recordpdb_data_t.Afd_t.Empty_1 " ";
 Atom_recordpdb_data_t.Afd_t.Atom_name "N";
 Atom_recordpdb_data_t.Afd_t.Atom_alternate_location_id ' ';
 Atom_recordpdb_data_t.Afd_t.Residuepdb_symbol "TYR";
 Atom_recordpdb_data_t.Afd_t.Empty_2 " ";
 Atom_recordpdb_data_t.Afd_t.Atom_chain_id 'A';
 Atom_recordpdb_data_t.Afd_t.Residuepdb_sequence_number 1;
 Atom_recordpdb_data_t.Afd_t.Insertion_code ' ';
 Atom_recordpdb_data_t.Afd_t.Empty_3 "   ";
 Atom_recordpdb_data_t.Afd_t.X 1.745; 
 Atom_recordpdb_data_t.Afd_t.Y 3.982;
 Atom_recordpdb_data_t.Afd_t.Z 3.628;
 Atom_recordpdb_data_t.Afd_t.Occupancy 1.;
 Atom_recordpdb_data_t.Afd_t.B_factor 0.;
 Atom_recordpdb_data_t.Afd_t.Empty_4 "          ";
 Atom_recordpdb_data_t.Afd_t.Element_symbol "N";
 Atom_recordpdb_data_t.Afd_t.Atom_charge ""
]
);;
