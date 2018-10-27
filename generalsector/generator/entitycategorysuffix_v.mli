(** {3 The functionalities for a Entitycategorysuffix.}  *)

val make :
    Entity_symbol_t.entity_symbol ->
      Category_symbol_t.category_symbol ->
	Codefile_suffix_t.codefile_suffix ->
	  Entitycategorysuffix_t.entitycategorysuffix
;;

val entitycategorysuffix_of_entitycategorycodefile :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Entitycategorysuffix_t.entitycategorysuffix
;;

(** {6 Extracting.} *)

val codefile_suffix_off_entitycategorysuffix :
    Entitycategorysuffix_t.entitycategorysuffix ->
      Codefile_suffix_t.codefile_suffix
;;

val entitycategory_off_entitycategorysuffix :
    Entitycategorysuffix_t.entitycategorysuffix ->
      Entitycategory_t.entitycategory
;;

val entity_symbol_off_entitycategorysuffix :
   Entitycategorysuffix_t.entitycategorysuffix ->
     Entity_symbol_t.entity_symbol
;;

val category_symbol_off_entitycategorysuffix :
   Entitycategorysuffix_t.entitycategorysuffix ->
     Category_symbol_t.category_symbol
;;

(** {6 Displaying.} *)

val name :
    Entitycategorysuffix_t.entitycategorysuffix ->
      string
;;

val name_capitalized :
    Entitycategorysuffix_t.entitycategorysuffix ->
      string
;;

val codefile_suffix_name_of_entitycategorysuffix :
    Entitycategorysuffix_t.entitycategorysuffix ->
      string
;;

val codefile_suffix_name :
    Entitycategorysuffix_t.entitycategorysuffix ->
      string
;;

(** {6 Modifying.} *)

val entitycategorytype_of_entitycategorysuffix :
   Entitycategorysuffix_t.entitycategorysuffix ->
     Entitycategorysuffix_t.entitycategorysuffix
;;

val scope_of_entitycategorysuffix :
   Entitycategorysuffix_t.entitycategorysuffix ->
     Scope_t.scope
;;

val modify_of_entity_symbol_of_entitycategorysuffix :
    Entity_symbol_t.entity_symbol ->
      Entitycategorysuffix_t.entitycategorysuffix ->
	Entitycategorysuffix_t.entitycategorysuffix
;;

val modify_of_category_symbol_of_entitycategorysuffix :
    Category_symbol_t.category_symbol ->
      Entitycategorysuffix_t.entitycategorysuffix ->
	Entitycategorysuffix_t.entitycategorysuffix
;;

val modify_of_codefile_suffix_of_entitycategorysuffix :
    Codefile_suffix_t.codefile_suffix ->
      Entitycategorysuffix_t.entitycategorysuffix ->
	Entitycategorysuffix_t.entitycategorysuffix
;;
