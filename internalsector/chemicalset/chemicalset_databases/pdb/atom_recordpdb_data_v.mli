(** {3 The functionalities for a Value for a ATOM Record of the Pdb file.} *)

(** {6 Making.} *)

val make :
    Entrypdb_symbol_t.entrypdb_symbol ->
      string ->
	Atom_recordpdb_data_t.atom_recordpdb_data
;;

val atom_recordpdb_data_list_off_residue_packpdb_data :
    Residue_packpdb_data_t.residue_packpdb_data ->
      Atom_recordpdb_data_t.atom_recordpdb_data list 
;;

(** {6 Extracting.} *)

val recordpdb_string_off_atom_recordpdb_data  :
    Atom_recordpdb_data_t.atom_recordpdb_data ->
      string (* *** TODO specific type *)
;;

(** {6 Extracting.} *)

val atom_recordpdb_keypdb_off_atom_recordpdb_data :
      Atom_recordpdb_data_t.atom_recordpdb_data ->
	Atom_recordpdb_keypdb_t.atom_recordpdb_keypdb 
;;

val atom_name_off_atom_recordpdb_data :
    Atom_recordpdb_data_t.atom_recordpdb_data ->
     string
;;

val entrypdb_symbol_off_atom_recordpdb_data :
    Atom_recordpdb_data_t.atom_recordpdb_data ->
      Entrypdb_symbol_t.entrypdb_symbol 
;;

val recordpdb_string_off_atom_recordpdb_data :
    Atom_recordpdb_data_t.atom_recordpdb_data ->
      string
;;

val atom_name_of_atompdb_symbol :
   Atompdb_symbol_t.atompdb_symbol ->
     string
;;

val atompdb_symbol_of_atom_name : 
    string ->
      Atompdb_symbol_t.atompdb_symbol 
;;

val atompdb_symbol_off_atom_recordpdb_data :
    Atom_recordpdb_data_t.atom_recordpdb_data ->
      Atompdb_symbol_t.atompdb_symbol 
;;

(** {6 Querying.} *)

val has_of_atom_recordpdb_keypdb_of_atom_recordpdb_data :
    Atom_recordpdb_keypdb_t.atom_recordpdb_keypdb ->
      Atom_recordpdb_data_t.atom_recordpdb_data ->
	bool
;;

(** {6 Retrieving.} *)

val retrieve :
    Atom_recordpdb_keypdb_t.atom_recordpdb_keypdb ->
      Atom_recordpdb_data_t.atom_recordpdb_data
;;

val name :
    Atom_recordpdb_data_t.atom_recordpdb_data ->
      string
;;

val print : Format.formatter ->
  Atom_recordpdb_data_t.atom_recordpdb_data ->
    unit
;;
