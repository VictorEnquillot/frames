(** {3 The Marker functionnalities for a Residue of a Pdb Pack.} *)

(** {6 Making.} *)

val make :
    string ->
      int ->
	char ->
	  Residue_packpdb_markerpdb_t.residue_packpdb_markerpdb
;;

val read : Scanf.Scanning.scanbuf ->
  Residue_packpdb_markerpdb_t.residue_packpdb_markerpdb
;;

val residue_packpdb_markerpdb_off_recordpdb_string :
    string ->
      Residue_packpdb_markerpdb_t.residue_packpdb_markerpdb
;;

(** {6 Converting.} *)

val name :
    Residue_packpdb_markerpdb_t.residue_packpdb_markerpdb ->
      string
;;

val print : Format.formatter ->
  Residue_packpdb_markerpdb_t.residue_packpdb_markerpdb ->
    unit
;;

val compare :
    Residue_packpdb_markerpdb_t.residue_packpdb_markerpdb ->
      Residue_packpdb_markerpdb_t.residue_packpdb_markerpdb ->
	int
;;

(** {6 Extracting.} *)

val residue_name_off_residue_packpdb_markerpdb :
      Residue_packpdb_markerpdb_t.residue_packpdb_markerpdb ->
	string
;;

val residue_sequence_number_off_residue_packpdb_markerpdb :
      Residue_packpdb_markerpdb_t.residue_packpdb_markerpdb ->
	int
;;

val residue_insertion_code_off_residue_packpdb_markerpdb :
      Residue_packpdb_markerpdb_t.residue_packpdb_markerpdb ->
	char
;;

(** {6 Querying.} *)

val has_of_residue_packpdb_markerpdb_of_string :
    Residue_packpdb_markerpdb_t.residue_packpdb_markerpdb ->
      string ->
	bool
;;

val has_same_residue_packpdb_markerpdb_of_string_of_string :
    string -> 
      string ->
	bool 
;;

