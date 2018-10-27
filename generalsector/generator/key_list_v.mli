(** {3 The functionalities for the Key list for Provider management.}  *)

(** {6 Making.} *)

val make :
    string -> 
      string -> 
	Key_list_t.key_list ->
	  Key_list_t.key_list
;;
(** Example : ("codefilename", "atom_symbol_function") :: [ ...] 
    constructor_path simulation. *)

(** {6 Extracting.} *)

val value_name_of_key_name_off_key_list :
    string -> 
      Key_list_t.key_list ->
	string
;;

val entitycategory_off_key_list :
  Key_list_t.key_list ->
    Entitycategory_t.entitycategory
;;

val entitycategorycodefile_off_key_list :
  Key_list_t.key_list ->
    Entitycategorycodefile_t.entitycategorycodefile
;;

val entitycategorysuffix_off_key_list :
  Key_list_t.key_list ->
    Entitycategorysuffix_t.entitycategorysuffix
;;

val head_instance_name_off_key_list :
    Key_list_t.key_list ->
      string
;;

val head_instance_symbol_name_off_key_list :
    Key_list_t.key_list ->
      string
;;

val entityname_off_key_list :
    Key_list_t.key_list ->
      string
;;

val entity_symbol_off_key_list :
  Key_list_t.key_list ->
    Entity_symbol_t.entity_symbol
;;

val entity_proper_symbol_off_key_list :
  Key_list_t.key_list ->
    Entity_symbol_t.entity_proper_symbol
;;

val category_symbol_off_key_list :
  Key_list_t.key_list ->
    Category_symbol_t.category_symbol
;;

val item_symbol_off_key_list :
  Key_list_t.key_list ->
    Item_symbol_t.item_symbol
;;

val codefile_symbol_off_key_list :
  Key_list_t.key_list ->
    Codefile_symbol_t.codefile_symbol
;;

val codefile_suffix_off_key_list :
  Key_list_t.key_list ->
    Codefile_suffix_t.codefile_suffix
;;

val replace_of_codefile_symbol_of_key_list :
    Codefile_symbol_t.codefile_symbol ->
      Key_list_t.key_list ->
	Key_list_t.key_list
;;

(** {6 Displaying.} *)

val name :
  Key_list_t.key_list ->
    string
;;

