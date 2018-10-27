(** {3 The functionalities for a Entitycategory.}  *)

(** {6 Making.} *)

val make :
    Entity_symbol_t.entity_symbol ->
      Category_symbol_t.category_symbol ->
	Entitycategory_t.entitycategory
;;
(** make ent cat  *)

val adapt_of_category_symbol_of_entity_symbol :
    Category_symbol_t.category_symbol ->
      Entity_symbol_t.entity_symbol ->
	Category_symbol_t.category_symbol
;;

val entitycategory_of_string_of_string :
    string ->
      string ->
	Entitycategory_t.entitycategory
;;

(** {6 Extracting.} *)

val entity_symbol_off_entitycategory :
    Entitycategory_t.entitycategory ->
      Entity_symbol_t.entity_symbol
;;

val category_symbol_off_entitycategory :
    Entitycategory_t.entitycategory ->
      Category_symbol_t.category_symbol
;;

(** {6 Displaying.} *)

val name :
    Entitycategory_t.entitycategory ->
      string
;; 

val name_capitalized :
    Entitycategory_t.entitycategory ->
      string
;; 
