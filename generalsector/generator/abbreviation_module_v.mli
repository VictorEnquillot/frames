(** {3 The functionalities for a Module Abbreviation.}  *)

val abbreviation_module_of_entity_proper_symbol :
    Entity_symbol_t.entity_proper_symbol ->
      string
;;
(** xaa_yaa_zaa -> Xyz  *)

val abbreviation_module_of_entity_external_symbol :
      Entity_external_symbol_t.entity_external_symbol ->
	string
;;

val abbreviation_module_of_entity_symbol :
    Entity_symbol_t.entity_symbol ->
      string
;;
(** xaa_yaa_zaa -> Xyz  *)

val abbreviation_module_of_category_symbol : 
    Category_symbol_t.category_symbol ->
      string
;;
(** f   or m   or p   or p   or s   or v   in Xxv_*)

val abbreviation_module_of_entitycategory :
    Entitycategory_t.entitycategory ->
      string
;;
(** atom_symbol -> Ats *)

val abbreviation_module_of_constructor_symbol :
  Constructor_symbol_t.constructor_symbol ->
    string
;;(** xaa_yaa_zaa -> Xyz  *)


