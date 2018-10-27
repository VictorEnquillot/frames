(** {3 The functionalities for a Value for an Input.}  *)

(** {6 Making.} *)

val make :
    Entity_symbol_t.entity_proper_symbol ->
      Category_symbol_t.category_symbol ->
	Codefile_symbol_t.codefile_symbol ->
	  Target_value_t.target_value 
;;

val entity_proper_symbol_off_target_value :
    Target_value_t.target_value ->
      Entity_symbol_t.entity_proper_symbol
;;

val category_symbol_off_target_value :
    Target_value_t.target_value ->
      Category_symbol_t.category_symbol 
;;

val codefile_symbol_off_target_value :
    Target_value_t.target_value ->
      Codefile_symbol_t.codefile_symbol
;;

val entityname_off_target_value :
    Target_value_t.target_value ->
      string
;;

val entitycategorycodefile_off_target_value :
    Target_value_t.target_value ->
      Entitycategorycodefile_t.entitycategorycodefile
;;

val read :  
    Scanf.Scanning.scanbuf ->
      Target_value_t.target_value (* lazy_t *)
;;
