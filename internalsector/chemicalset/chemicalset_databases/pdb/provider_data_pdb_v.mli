(* $Id: Exp $ *)

val provide_unix_path : Protein_identifier_t.protein_identifier -> 
  File_format_t.unix_path
;;

val provide_file_name_extension : Protein_identifier_t.protein_identifier -> 
  File_format_t.extension
;;

val provide_model_label : unit -> 
  Model_recordpdb_symbol_t.model_recordpdb_symbol
;;

val provide_alternate_location_index : Path_t.path ->
  Index_pdb_t.alternate_location_index_pdb
;;
