(** {3 The functionalities for a Symbol for a Constructor.}  *)

(** {6 Querying.} *)

val is_constructor_several_symbol_off_entity_local_symbol :
  Entity_symbol_t.entity_local_symbol ->
    bool
;;

val is_constructor_nodeoneline_symbol_off_entity_proper_symbol :
  Entity_symbol_t.entity_proper_symbol ->
    bool
;;

val is_constructor_proper_datastructure_symbol_off_entity_proper_symbol :
  Entity_symbol_t.entity_proper_symbol ->
    bool
;;

val is_constructor_bare_symbol_off_entity_fictive_symbol :
    Entity_symbol_t.entity_fictive_symbol ->
      bool
;;

val is_constructor_barebasic_symbol_off_entity_fictive_symbol :
    Entity_symbol_t.entity_fictive_symbol ->
      bool
;;

val is_constructor_proper_symbol_off_constructor_symbol :
    Constructor_symbol_t.constructor_symbol ->
      bool
;;

val is_constructor_external_symbol_off_constructor_symbol :
    Constructor_symbol_t.constructor_symbol ->
      bool
;;

val is_constructor_proper_datastructure_symbol_off_constructor_symbol :
   Constructor_symbol_t.constructor_symbol ->
    bool
;;

val is_constructor_fictive_symbol_off_constructor_symbol :
   Constructor_symbol_t.constructor_symbol ->
    bool
;;

val is_constructor_barebasic_symbol_off_constructor_symbol :
    Constructor_symbol_t.constructor_symbol ->
      bool
;;

(** {6 Extracting.} *)

val constructor_proper_symbol_off_constructor_symbol :
    Constructor_symbol_t.constructor_symbol ->
      Constructor_symbol_t.constructor_proper_symbol
;;

val constructor_external_symbol_off_constructor_symbol :
    Constructor_symbol_t.constructor_symbol ->
      Constructor_symbol_t.constructor_external_symbol
;;

val constructor_proper_datastructure_symbol_off_constructor_symbol :
    Constructor_symbol_t.constructor_symbol ->
      Constructor_symbol_t.constructor_proper_datastructure_symbol
;;

val constructor_fictive_symbol_off_constructor_symbol :
    Constructor_symbol_t.constructor_symbol ->
      Constructor_symbol_t.constructor_fictive_symbol
;;

(** {9 Extracting Entity Symbol.} *)

val entity_fictive_symbol_off_constructor_fictive_symbol :
    Constructor_symbol_t.constructor_fictive_symbol ->
      Entity_symbol_t.entity_fictive_symbol
;;

val entity_external_symbol_off_constructor_external_symbol :
    Constructor_symbol_t.constructor_external_symbol ->
      Entity_symbol_t.entity_external_symbol
;;

val entity_symbol_off_constructor_proper_symbol :
    Constructor_symbol_t.constructor_proper_symbol ->
      Entity_symbol_t.entity_symbol
;;

val entity_symbol_off_constructor_symbol :
    Constructor_symbol_t.constructor_symbol ->
      Entity_symbol_t.entity_symbol
;;

(** {6 Upgrading.} *)

val constructor_symbol_of_constructor_proper_symbol :
    Constructor_symbol_t.constructor_proper_symbol ->
      Constructor_symbol_t.constructor_symbol
;;

val constructor_symbol_of_constructor_fictive_symbol :
    Constructor_symbol_t.constructor_fictive_symbol ->
      Constructor_symbol_t.constructor_symbol
;;

val constructor_proper_symbol_of_constructor_oneline_symbol :
    Constructor_symbol_t.constructor_oneline_symbol ->
      Constructor_symbol_t.constructor_proper_symbol
;;

val constructor_symbol_of_constructor_external_symbol :
    Constructor_symbol_t.constructor_external_symbol ->
      Constructor_symbol_t.constructor_symbol 
;;

val constructor_symbol_of_constructor_oneline_symbol :
    Constructor_symbol_t.constructor_oneline_symbol ->
      Constructor_symbol_t.constructor_symbol 
;;

val constructor_symbol_of_constructor_proper_datastructure_symbol :
    Constructor_symbol_t.constructor_proper_datastructure_symbol ->
      Constructor_symbol_t.constructor_symbol 
;;

(*
val constructor_symbol_of_node_constructor_fictive_symbol :
    Constructor_symbol_t.node_constructor_fictive_symbol ->
      Constructor_symbol_t.constructor_symbol 
;;

val node_constructor_fictive_symbol_of_constructor_proper_datastructure_symbol :

      Constructor_symbol_t.node_constructor_fictive_symbol 
;;

val constructor_symbol_of_constructor_proper_datastructure_symbol :
    Constructor_symbol_t.constructor_proper_datastructure_symbol ->
      Constructor_symbol_t.constructor_symbol
;;
*)

val constructor_symbol_of_constructor_fictive_symbol :
    Constructor_symbol_t.constructor_fictive_symbol ->
      Constructor_symbol_t.constructor_symbol 
;;

(** {6 Making.} *)

val make :
    Entity_symbol_t.entity_symbol ->
      Constructor_symbol_t.constructor_symbol
;;

val constructor_symbol_of_entityname :
    string ->
      Constructor_symbol_t.constructor_symbol
;;

(** {6 Reading} *)

(** {3 Displaying.} *)

val name_constructor_proper_datastructure_symbol :
    Constructor_symbol_t.constructor_proper_datastructure_symbol ->
      string
;;

val name_constructor_fictive_symbol :
    Constructor_symbol_t.constructor_fictive_symbol ->
    string
;;

val name_constructor_proper_symbol :
  Constructor_symbol_t.constructor_proper_symbol ->
    string
;;

val name :
  Constructor_symbol_t.constructor_symbol ->
    string
;;

val name_capitalized :
  Constructor_symbol_t.constructor_symbol ->
    string
;;

val key :
  Constructor_symbol_t.constructor_symbol ->
    Key_t.key
;;

