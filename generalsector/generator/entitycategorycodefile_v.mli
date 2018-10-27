(** {3 The functionalities for a Entitycategorycodefile.}  *)

(** {6 Making.} *)

val make :
    Entity_symbol_t.entity_symbol ->
      Category_symbol_t.category_symbol ->
	Codefile_symbol_t.codefile_symbol ->
	  Entitycategorycodefile_t.entitycategorycodefile
;;

val entitycategorycodefile_of_entitycategory_of_codefile_symbol :
    Entitycategory_t.entitycategory ->
      Codefile_symbol_t.codefile_symbol ->
	Entitycategorycodefile_t.entitycategorycodefile
;;

val entitycategorycodefile_of_string_of_string_of_string :
    string ->
      string ->
	string ->
	  Entitycategorycodefile_t.entitycategorycodefile
;;

(** {6 Extracting.} *)

val entity_symbol_off_entitycategorycodefile :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Entity_symbol_t.entity_symbol
;;

val entityname_off_entitycategorycodefile :
    Entitycategorycodefile_t.entitycategorycodefile ->
      string
;;

val category_symbol_off_entitycategorycodefile :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Category_symbol_t.category_symbol 
;;

val codefile_symbol_off_entitycategorycodefile :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Codefile_symbol_t.codefile_symbol
;;

val entitycategory_off_entitycategorycodefile :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Entitycategory_t.entitycategory
;;

(** {6 Displaying.} *)

val name : 
    Entitycategorycodefile_t.entitycategorycodefile ->
      string
;;
(* Ex : atom_symbol_implementation*)

(** {6 Inferring.} *)

val scope_of_entitycategorycodefile :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Scope_t.scope
;;

val file_extension_of_entitycategorycodefile : 
    Entitycategorycodefile_t.entitycategorycodefile ->
      string
;;

val codefile_suffix_of_entitycategorycodefile :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Codefile_suffix_t.codefile_suffix
;;

val entitycategorycodefile_of_entity_external_symbol_n_codefile_symbol :
    (Entity_external_symbol_t.entity_external_symbol,
     Codefile_symbol_t.codefile_symbol) 
    Doublet_t.doublet ->
      Entitycategorycodefile_t.entitycategorycodefile 
;;

val modify_of_entity_symbol_of_entitycategorycodefile :
    Entity_symbol_t.entity_symbol ->
      Entitycategorycodefile_t.entitycategorycodefile ->
	Entitycategorycodefile_t.entitycategorycodefile
;;

val modify_of_category_symbol_of_entitycategorycodefile :
    Category_symbol_t.category_symbol ->
      Entitycategorycodefile_t.entitycategorycodefile ->
	Entitycategorycodefile_t.entitycategorycodefile
;;

val modify_of_codefile_symbol_of_entitycategorycodefile :
    Codefile_symbol_t.codefile_symbol ->
      Entitycategorycodefile_t.entitycategorycodefile ->
	Entitycategorycodefile_t.entitycategorycodefile
;;

val entitycategorytype_of_entitycategory :
    Entitycategory_t.entitycategory ->
      Entitycategorycodefile_t.entitycategorycodefile
;;

val entitycategorytype_of_entitycategorycodefile :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Entitycategorycodefile_t.entitycategorycodefile 
;;

val codefile_suffix_name_of_entitycategorycodefile :
    Entitycategorycodefile_t.entitycategorycodefile ->
      string
;;

val codefile_suffix_name :
    Entitycategorycodefile_t.entitycategorycodefile ->
      string
;;
