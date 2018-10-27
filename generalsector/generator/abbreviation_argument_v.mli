(** {3 The functionalities for the argument abbreviations.} *)

(** {6 Making.} *)

(** {6 Abbreviating.} *)

val abbreviation_argument_of_entity_symbol :
    Entity_symbol_t.entity_symbol ->
      string
;;
(** xaa_yaa_zaa -> xyz  *)

val abbreviation_argument_of_entity_fictive_symbol :
    Entity_symbol_t.entity_fictive_symbol ->
      string
;;
(** string -> str  *)

val abbreviation_argument_of_entity_external_symbol :
    Entity_symbol_t.entity_external_symbol ->
      string
;;
(** ordinal -> ord  *)

val abbreviation_argument_of_entity_proper_symbol :
    Entity_symbol_t.entity_proper_symbol ->
      string
;;
(** xaa_yaa_zaa -> xyz  *)

val abbreviation_argument_of_entity_external_symbol :
    Entity_external_symbol_t.entity_external_symbol ->
      string
;;

val abbreviation_argument_of_entitycategory :
    Entitycategory_t.entitycategory ->
      string
;;
(** atom_symbol -> smb_atm *)

val abbreviation_argument_of_category_symbol : 
    Category_symbol_t.category_symbol ->
      string
;;
(** frm or mrk or prv or pth or smb or val in smb_xxx *)

(** {6 Abbreviating.} *)

val abbreviation_argument_of_constructor_symbol :
  Constructor_symbol_t.constructor_symbol ->
    string
;;(** xaa_yaa_zaa -> xyz  *)

