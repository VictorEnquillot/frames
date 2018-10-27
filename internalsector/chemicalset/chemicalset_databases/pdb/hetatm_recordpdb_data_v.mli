(** {3 The functionalities for a Value for a ATOM Record of the Pdb file.} *)

(** {6 Making.} *)

val make :
    Entrypdb_symbol_t.entrypdb_symbol ->
      string ->
	Hetatm_recordpdb_data_t.hetatm_recordpdb_data
;;

val hetatm_recordpdb_data_list_off_molecule_packpdb_data :
    Molecule_packpdb_data_t.molecule_packpdb_data ->
      Hetatm_recordpdb_data_t.hetatm_recordpdb_data list 
;;

(** {6 Extracting.} *)

val recordpdb_string_off_hetatm_recordpdb_data  :
    Hetatm_recordpdb_data_t.hetatm_recordpdb_data ->
      string (* *** TODO specific type *)
;;

(** {6 Extracting.} *)

val hetatm_recordpdb_keypdb_off_hetatm_recordpdb_data :
      Hetatm_recordpdb_data_t.hetatm_recordpdb_data ->
	Hetatm_recordpdb_keypdb_t.hetatm_recordpdb_keypdb 
;;

val hetatm_name_off_hetatm_recordpdb_data :
    Hetatm_recordpdb_data_t.hetatm_recordpdb_data ->
     string
;;

val entrypdb_symbol_off_hetatm_recordpdb_data :
    Hetatm_recordpdb_data_t.hetatm_recordpdb_data ->
      Entrypdb_symbol_t.entrypdb_symbol 
;;

val recordpdb_string_off_hetatm_recordpdb_data :
    Hetatm_recordpdb_data_t.hetatm_recordpdb_data ->
      string
;;

val hetatm_name_of_hetatmpdb_symbol :
   Hetatmpdb_symbol_t.hetatmpdb_symbol ->
     string
;;

val hetatmpdb_symbol_of_hetatm_name : 
    string ->
      Hetatmpdb_symbol_t.hetatmpdb_symbol 
;;

val hetatmpdb_symbol_off_hetatm_recordpdb_data :
    Hetatm_recordpdb_data_t.hetatm_recordpdb_data ->
      Hetatmpdb_symbol_t.hetatmpdb_symbol 
;;

(** {6 Querying.} *)

val has_of_hetatm_recordpdb_keypdb_of_hetatm_recordpdb_data :
    Hetatm_recordpdb_keypdb_t.hetatm_recordpdb_keypdb ->
      Hetatm_recordpdb_data_t.hetatm_recordpdb_data ->
	bool
;;

(** {6 Retrieving.} *)

val retrieve :
    Hetatm_recordpdb_keypdb_t.hetatm_recordpdb_keypdb ->
      Hetatm_recordpdb_data_t.hetatm_recordpdb_data
;;

val name :
    Hetatm_recordpdb_data_t.hetatm_recordpdb_data ->
      string
;;

val print : Format.formatter ->
  Hetatm_recordpdb_data_t.hetatm_recordpdb_data ->
    unit
;;
