(** {3 The functionalities for a Symbol for an Entity_referebce.}  *)

(** {6 Making.} *)

val make :
    string ->
      Entity_external_symbol_t.entity_external_symbol
;;

val make_of_entity_external_datastructure_symbol :
    Entity_external_symbol_t.entity_external_datastructure_symbol ->
      Entity_external_symbol_t.entity_external_symbol
;;

val entity_external_symbol_of_string :
    string ->
      Entity_external_symbol_t.entity_external_symbol
;;

val entity_external_datastructure_symbol_of_string :
    string ->
      Entity_external_symbol_t.entity_external_datastructure_symbol
;;

(** {6 Displaying.} *)

val name :
      Entity_external_symbol_t.entity_external_symbol ->
	string
;;

val name_capitalized :
      Entity_external_symbol_t.entity_external_symbol ->
	string
;; 

val key :
      Entity_external_symbol_t.entity_external_symbol ->
	Key_t.key
;;

(** {6 Querying.} *)

val is_entity_external_symbol_off_string :
    string ->
      bool
;;

(** {6 Extracting} *)

val entity_external_datastructure_symbol_off_entity_external_symbol :
    Entity_external_symbol_t.entity_external_symbol ->
      Entity_external_symbol_t.entity_external_datastructure_symbol
;;
