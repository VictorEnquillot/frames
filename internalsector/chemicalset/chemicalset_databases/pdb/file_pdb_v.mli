(* $Id: file_pdb.ml,v 1.9 2007-09-19 19:20:17 colonna Exp $ *)

(** {3 A PDB File.} *)

val file_name_pdb_of_protein_identifier : Protein_identifier_t.protein_identifier ->
  File_format_t.file_name
;; 

val file_name_pdb_of_string : string -> File_format_t.file_name
;;
(** [ let f = file_name_pdb_of_string s;;]
     returns [f] from a string like "./path/id_pdb.pdb" *)

val string_of_file_name_pdb : File_format_t.file_name -> string
;;
(** [ let s = string_of_file_name f;;]
     returns a string like "./path/id_pdb.pdb" *)

(** {6 Printing.} *)

val print_file_name_pdb : Format.formatter -> File_format_t.file_name ->
  unit
;;

val print_file_content_pdb :  Format.formatter -> 
  File_pdb_t.file_content_pdb -> unit
;;

val in_channel_of_file_name_pdb : File_format_t.file_name -> in_channel
;;

val recordpdb_list_of_file_name : File_format_t.file_name -> 
  Recordpdb_t.recordpdb list
;;

val gather_recordpdb_list_by_recordpdb_symbol :
    Recordpdb_t.recordpdb list -> Recordpdb_symbol_t.recordpdb_symbol -> 
      Recordpdb_t.recordpdb list
;;

val get_recordpdb_atom_list_of_recordpdb_list : Recordpdb_t.recordpdb list -> 
  Recordpdb_t.recordpdb list
;;

val get_recordpdb_seqres_list_of_recordpdb_list : Recordpdb_t.recordpdb list -> 
  Recordpdb_t.recordpdb list
;;

val get_recordpdb_header_of_recordpdb_list : Recordpdb_t.recordpdb list -> 
  Recordpdb_t.recordpdb
;;

val make_file_content_pdb_of_recordpdb_list : Recordpdb_t.recordpdb list -> 
  File_pdb_t.file_content_pdb
;;

val make_file_content_pdb_of_file_name : File_format_t.file_name -> 
  File_pdb_t.file_content_pdb
;;

val make_file_content_pdb_of_protein_identifier : 
    Protein_identifier_t.protein_identifier ->
      File_pdb_t.file_content_pdb
;;

val read : Scanf.Scanning.scanbuf -> File_pdb_t.file_content_pdb
;;


