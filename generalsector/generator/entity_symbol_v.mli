(** {3 The functionalities for an Entity.}  *)

(** {6 Making.} *)

val make :
    string ->
      Entity_symbol_t.entity_symbol 
;;

val entity_proper_symbol_of_string :
    string ->
      Entity_symbol_t.entity_proper_symbol
;;

val entity_symbol_of_entity_proper_datastructure_symbol :
    Entity_symbol_t.entity_proper_datastructure_symbol ->
      Entity_symbol_t.entity_symbol
;;

val entity_proper_symbol_of_entity_proper_datastructure_symbol :
    Entity_symbol_t.entity_proper_datastructure_symbol ->
      Entity_symbol_t.entity_proper_symbol
;;

val entity_proper_symbol_of_entity_local_symbol :
    Entity_symbol_t.entity_local_symbol ->
      Entity_symbol_t.entity_proper_symbol
;;

val entity_fictive_symbol_of_string :
    string ->
      Entity_symbol_t.entity_fictive_symbol
;;

val entity_external_symbol_of_string :
    string ->
      Entity_symbol_t.entity_external_symbol
;;

val entity_symbol_of_entity_proper_symbol :
    Entity_symbol_t.entity_proper_symbol ->
      Entity_symbol_t.entity_symbol
;;

val entity_fictive_symbol_of_entity_barebasic_symbol :
    Entity_symbol_t.entity_barebasic_symbol ->
      Entity_symbol_t.entity_fictive_symbol
;;

val entity_symbol_of_entity_fictive_symbol :
    Entity_symbol_t.entity_fictive_symbol ->
      Entity_symbol_t.entity_symbol
;;

val entity_symbol_of_entity_external_symbol :
    Entity_external_symbol_t.entity_external_symbol ->
      Entity_symbol_t.entity_symbol
;;

val entity_external_datastructure_symbol_of_entity_proper_datastructure_symbol :
    Entity_symbol_t.entity_proper_datastructure_symbol ->
      Entity_external_symbol_t.entity_external_datastructure_symbol
;;

(** {6 Extracting.} *)

val entityname_off_entity_proper_symbol :
    Entity_symbol_t.entity_proper_symbol ->
      string
;;
 
val entityname_off_entity_fictive_symbol :
    Entity_symbol_t.entity_fictive_symbol ->
      string
;;

val entityname_off_entity_symbol :
    Entity_symbol_t.entity_symbol ->
      string
;;
 
(** {6 Querying off string.} *)

val is_entity_proper_datastructure_symbol_off_string :
    string ->
      bool
;;

val is_entity_local_symbol_off_string :
    string -> 
      bool
;;

val is_entity_external_symbol_off_string :
    string -> 
      bool
;;

val is_entity_proper_symbol_off_string :
    string -> 
      bool
;;

val is_entity_barebasic_symbol_off_string :
    string ->
      bool
;;

val is_entity_bare_symbol_off_string :
    string ->
      bool
;;

val is_entity_fictive_symbol_off_string :
    string ->
      bool
;;

(** {6 Querying.} *)

val is_datastructure_off_entity_symbol :
    Entity_symbol_t.entity_symbol ->
      bool
;;

val is_entity_bare_symbol_off_entity_fictive_symbol :
    Entity_symbol_t.entity_fictive_symbol ->
      bool
;;

val is_entity_barebasic_symbol_off_entity_fictive_symbol :
    Entity_symbol_t.entity_fictive_symbol ->
      bool
;;

val is_entity_barebasic_symbol_off_entity_symbol :
    Entity_symbol_t.entity_symbol ->
      bool
;;

val is_entity_bare_symbol_off_entity_symbol :
    Entity_symbol_t.entity_symbol ->
      bool
;;

val is_entity_local_symbol_off_entity_proper_symbol :
    Entity_symbol_t.entity_proper_symbol ->
      bool
;;

val is_entity_external_symbol_off_entity_symbol :
    Entity_symbol_t.entity_symbol ->
      bool
;;

val is_entity_proper_symbol_off_entity_symbol :
    Entity_symbol_t.entity_symbol ->
      bool
;;

(** {6 Displaying.} *)

val name_of_entity_proper_symbol :
    Entity_symbol_t.entity_proper_symbol ->
      string
;;

val name_of_entity_bare_symbol :
    Entity_symbol_t.entity_bare_symbol ->
      string
;;

val name_of_entity_barebasic_symbol :
    Entity_symbol_t.entity_barebasic_symbol ->
      string
;;

val name_of_entity_local_symbol :
    Entity_symbol_t.entity_local_symbol ->
      string
;;

val name_of_entity_fictive_symbol :
    Entity_symbol_t.entity_fictive_symbol ->
      string
;;

val name_of_entity_external_symbol :
    Entity_symbol_t.entity_external_symbol ->
      string
;;

val name :
    Entity_symbol_t.entity_symbol ->
      string
;; 

val name_capitalized :
    Entity_symbol_t.entity_symbol ->
      string
;; 

val key :
    Entity_symbol_t.entity_symbol ->
      Key_t.key
;;

(** {6 Extracting} *)

val entity_external_symbol_off_entity_symbol :
    Entity_symbol_t.entity_symbol ->
      Entity_external_symbol_t.entity_external_symbol
;;

val entity_external_datastructure_symbol_off_entity_symbol :
    Entity_symbol_t.entity_symbol ->
      Entity_external_symbol_t.entity_external_datastructure_symbol
;;
