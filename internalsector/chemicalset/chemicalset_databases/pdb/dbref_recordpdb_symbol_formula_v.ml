(** {3 The functionalities for a Symbol Formula for a DBREF Record of a Pdb file.} *)

let nam_cod = "Dbref_recorpdb_symbol_formula_v"


let make () =
  [
  Dbref_fieldpdb_symbol_v.dbref_id;
  Dbref_fieldpdb_symbol_v.dbref_chain_id;
  Dbref_fieldpdb_symbol_v.dbref_pdb_sequence_segment_initial_sequence_number;
  Dbref_fieldpdb_symbol_v.dbref_pdb_sequence_segment_initial_insertion_code;
  Dbref_fieldpdb_symbol_v.dbref_pdb_sequence_segment_final_sequence_number;
  Dbref_fieldpdb_symbol_v.dbref_pdb_sequence_segment_final_insertion_code;
  Dbref_fieldpdb_symbol_v.dbref_sequence_database_name;
  Dbref_fieldpdb_symbol_v.dbref_sequence_database_accession_code;
  Dbref_fieldpdb_symbol_v.dbref_sequence_database_identification_code;
  Dbref_fieldpdb_symbol_v.dbref_database_segment_initial_sequence_number;
  Dbref_fieldpdb_symbol_v.dbref_database_segment_initial_insertion_code;
  Dbref_fieldpdb_symbol_v.dbref_database_segment_final_sequence_number;
  Dbref_fieldpdb_symbol_v.dbref_database_segment_final_residue_insertion_code;
  ]
;;

(** {6 Converting.} *)

let name frm_smb =
  List_v.name Dbref_fieldpdb_symbol_v.name frm_smb
;;

let print ppf frm_smb =
  List_v.print Dbref_fieldpdb_symbol_v.print ppf frm_smb
;;
