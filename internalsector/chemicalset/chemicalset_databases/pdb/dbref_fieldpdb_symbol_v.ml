(** {3 The functionalities for a Symbol for an DBREF Field in a Record of a Pdb file.} *)

let nam_cod = "Dbref_fieldpdb_symbol_v";;

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect9.html#TER}
        http://www.wwpdb.org/documentation/format32/sect9.html#TER}

TER     606      LEU A  75   
TER    1187      LEU B  75                                                     
*)


let string_of_dbref_fieldpdb_symbol = function 
  | Dbref_fieldpdb_symbol_t.Empty_1 ->
      "Empty_1"
  | Dbref_fieldpdb_symbol_t.Dbref_id ->
      "Dbref_id"
  | Dbref_fieldpdb_symbol_t.Empty_2 ->
      "Empty_2"
  | Dbref_fieldpdb_symbol_t.Dbref_chain_id ->
      "Dbref_chain_id"
  | Dbref_fieldpdb_symbol_t.Empty_3 ->
      "Empty_3"
  | Dbref_fieldpdb_symbol_t.Dbref_pdb_sequence_segment_initial_sequence_number ->
      "Dbref_pdb_sequence_segment_initial_sequence_number"
  | Dbref_fieldpdb_symbol_t.Dbref_pdb_sequence_segment_initial_insertion_code ->
      "Dbref_pdb_sequence_segment_initial_insertion_code"
  | Dbref_fieldpdb_symbol_t.Empty_4 ->
      "Empty_4"
  | Dbref_fieldpdb_symbol_t.Dbref_pdb_sequence_segment_final_sequence_number ->
      "Dbref_pdb_sequence_segment_final_sequence_number"
  | Dbref_fieldpdb_symbol_t.Dbref_pdb_sequence_segment_final_insertion_code ->
      "Dbref_pdb_sequence_segment_final_insertion_code"
  | Dbref_fieldpdb_symbol_t.Empty_5 ->
      "Empty_5"
  | Dbref_fieldpdb_symbol_t.Dbref_sequence_database_name ->
      "Dbref_sequence_database_name"
  | Dbref_fieldpdb_symbol_t.Empty_6 ->
      "Empty_6"
  | Dbref_fieldpdb_symbol_t.Dbref_sequence_database_accession_code ->
      "Dbref_sequence_database_accession_code"
  | Dbref_fieldpdb_symbol_t.Empty_7 ->
      "Empty_7"
  | Dbref_fieldpdb_symbol_t.Dbref_sequence_database_identification_code ->
      "Dbref_sequence_database_identification_code"
  | Dbref_fieldpdb_symbol_t.Empty_8 ->
      "Empty_8"
  | Dbref_fieldpdb_symbol_t.Dbref_database_segment_initial_sequence_number ->
      "Dbref_database_segment_initial_sequence_number"
  | Dbref_fieldpdb_symbol_t.Dbref_database_segment_initial_insertion_code ->
      "Dbref_database_segment_initial_insertion_code"
  | Dbref_fieldpdb_symbol_t.Empty_9 ->
      "Empty_9"
  | Dbref_fieldpdb_symbol_t.Dbref_database_segment_final_sequence_number ->
      "Dbref_database_segment_final_sequence_number"
  | Dbref_fieldpdb_symbol_t.Dbref_database_segment_final_residue_insertion_code ->
      "Dbref_database_segment_final_residue_insertion_code"
  | Dbref_fieldpdb_symbol_t.Empty_10 ->
      "Empty_10"
;;

let name smb =
  Format.sprintf "%s" (string_of_dbref_fieldpdb_symbol smb)
;;

let print ppf smb =
  Format.fprintf ppf "%s" (string_of_dbref_fieldpdb_symbol smb)
;;

