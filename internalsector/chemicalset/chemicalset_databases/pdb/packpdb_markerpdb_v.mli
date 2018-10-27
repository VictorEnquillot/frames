(** {3 The Marker functionnalities for a Pack of a Pdb Entry} *)

(** {6 Making.} *)

val make :
    Packpdb_symbol_t.packpdb_symbol ->
      char list ->
	Packpdb_markerpdb_t.packpdb_markerpdb
;;

val packpdb_markerpdb_off_recordpdb_string :
    string ->
      Packpdb_markerpdb_t.packpdb_markerpdb
;;

val read : 
    Scanf.Scanning.scanbuf ->
      Packpdb_markerpdb_t.packpdb_markerpdb
;;

val chain_idpdb_list_of_recordpdb_string_of_recordpdb_symbol :
    string ->
      Recordpdb_symbol_t.recordpdb_symbol ->
	char list
;;

(** {6 Querying.} *)

val has_same_packpdb_markerpdb_of_string_of_string :
    string ->
      string ->
	bool
;;

val has_of_packpdb_markerpdb_of_string :
    Packpdb_markerpdb_t.packpdb_markerpdb ->
      string ->
	bool
;;

(** {6 Extracting.} *)

val packpdb_symbol_off_packpdb_markerpdb :
    Packpdb_markerpdb_t.packpdb_markerpdb ->
      Packpdb_symbol_t.packpdb_symbol
;;

val packpdb_chain_idpdb_list_off_packpdb_markerpdb :
    Packpdb_markerpdb_t.packpdb_markerpdb ->
      char list
;;

(** {6 Converting.} *)

val name :
    Packpdb_markerpdb_t.packpdb_markerpdb ->
      string
;;

val print : Format.formatter ->
    Packpdb_markerpdb_t.packpdb_markerpdb ->
      unit
;;

val compare :
    Packpdb_markerpdb_t.packpdb_markerpdb ->
      Packpdb_markerpdb_t.packpdb_markerpdb ->
	int
;;

