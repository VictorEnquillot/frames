(* $Id: file_pdb.mli,v 1.9 2007-09-19 19:20:17 colonna Exp $ *)

(** {3 A Pdb File} *)

(** A [file_pdb] is an instance of ['fmt file]. *)
(* *** TODO 
type file_header_pdb = File_format_t.Pdb File_format_t.header
;;

type file_pdb = File_format_t.Pdb File_format_t.file
;;
*)
(** The [file_name] is based on the Frames protein_identifier.
    Example: "./4pti.pdb". *) 

type file_content_pdb = {
  recordpdb_header : Recordpdb_t.recordpdb;
  atom_pdb_records : Recordpdb_t.recordpdb list;
  seqres_records : Recordpdb_t.recordpdb list;
(*  
  hetatm_records : Recordpdb_t.recordpdb list; 
*)
}
;;
(** A [file_pdb] contains [recordpdb]s scattered into [field]s. *) 

