(* $Id: header_pdb.mli,v 1.5 2007-09-19 19:20:17 colonna Exp $ *)

val make : 
    Recordpdb_symbol_t.recordpdb_symbol -> 
      Header_pdb_t.protein_name_pdb -> 
	Header_pdb_t.id_pdb -> 
	  Tokenpdb_t.date_9 ->
	    Header_pdb_t.header_pdb
;;

val make_id_pdb : int -> string -> Header_pdb_t.id_pdb
;;

val word_list : string list
;;
(** List of word found in PDB HEADER. *) 

val word_of_chemical_species : Header_pdb_t.chemical_species -> string
;;

val chemical_species_of_word : string -> Header_pdb_t.chemical_species
;;

val name_of_chemical_species : Header_pdb_t.chemical_species -> string
;;
(** description of chemical_species. *)

val header_pdb_of_header_record_list : Recordpdb_t.recordpdb list -> 
  Header_pdb_t.header_pdb
;;
(** [let h = of_header_records r;;]

    transforms `r' a list of record of type [HEADER (s)]
    into the header field. *)
(*
val id_pdb_of_protein_designator : Protein_symbol_t.protein_designator -> 
  Header_pdb_t.id_pdb
;;
*)

val id_pdb_of_protein_symbol : Protein_symbol_t.protein_symbol -> 
  Header_pdb_t.id_pdb
;;

val string_of_id_pdb : Header_pdb_t.id_pdb -> string
;;

val print : Format.formatter -> Header_pdb_t.header_pdb -> unit
;;

val print_id_pdb : Format.formatter -> Header_pdb_t.id_pdb -> unit
;;

val id_pdb_of_string : string -> Header_pdb_t.id_pdb
;;

val read : Scanf.Scanning.scanbuf -> Header_pdb_t.header_pdb
;;

val read_id_pdb : Scanf.Scanning.scanbuf -> Header_pdb_t.id_pdb
;;

