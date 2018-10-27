(** {3 The functionalities fro a Context for a Paragraph of Caml_line in an Item.} *)

(** {6 Making.} *)

val make :
    Constructor_path_t.constructor_path ->
      Key_list_t.key_list ->
	Caml_paragraph_context_t.caml_paragraph_context
;;

(** {6 Extracting.} *)

val item_key_list_off_caml_paragraph_context :
  Caml_paragraph_context_t.caml_paragraph_context ->
    Key_list_t.key_list
;;

val codefile_symbol_off_caml_paragraph_context :
  Caml_paragraph_context_t.caml_paragraph_context ->
    Codefile_symbol_t.codefile_symbol
;;

val category_symbol_off_caml_paragraph_context :
  Caml_paragraph_context_t.caml_paragraph_context ->
    Category_symbol_t.category_symbol
;;

val entity_proper_symbol_off_caml_paragraph_context :
  Caml_paragraph_context_t.caml_paragraph_context ->
    Entity_symbol_t.entity_proper_symbol
;;

val item_symbol_off_caml_paragraph_context :
  Caml_paragraph_context_t.caml_paragraph_context ->
    Item_symbol_t.item_symbol
;;

val entitycategorycodefile_off_caml_paragraph_context :
  Caml_paragraph_context_t.caml_paragraph_context ->
    Entitycategorycodefile_t.entitycategorycodefile
;;

val entitycategorysuffix_off_caml_paragraph_context :
  Caml_paragraph_context_t.caml_paragraph_context ->
    Entitycategorysuffix_t.entitycategorysuffix
;;

val top_entitycategorycodefile_off_caml_paragraph_context :
  Caml_paragraph_context_t.caml_paragraph_context ->
    Entitycategorycodefile_t.entitycategorycodefile
;;

val bottom_entitycategorysuffix_off_caml_paragraph_context :
  Caml_paragraph_context_t.caml_paragraph_context ->
    Entitycategorysuffix_t.entitycategorysuffix
;;

val down_entitycategorysuffix_off_caml_paragraph_context :
  Caml_paragraph_context_t.caml_paragraph_context ->
    Entitycategorysuffix_t.entitycategorysuffix
;;

val son_entitycategorysuffix_off_caml_paragraph_context :
  Caml_paragraph_context_t.caml_paragraph_context ->
    Entitycategorysuffix_t.entitycategorysuffix
;;

val top_entitycategorysuffix_off_caml_paragraph_context :
  Caml_paragraph_context_t.caml_paragraph_context ->
    Entitycategorysuffix_t.entitycategorysuffix
;;

val up_entitycategorysuffix_off_caml_paragraph_context :
  Caml_paragraph_context_t.caml_paragraph_context ->
    Entitycategorysuffix_t.entitycategorysuffix
;;

val symboltriplet_off_caml_paragraph_context :
  Caml_paragraph_context_t.caml_paragraph_context ->
    (Item_symbol_t.item_symbol, Codefile_symbol_t.codefile_symbol, Category_symbol_t.category_symbol) Triplet_t.triplet
;;

val constructor_path_off_caml_paragraph_context :
  Caml_paragraph_context_t.caml_paragraph_context ->
    Constructor_path_t.constructor_path
;;

val top_constructor_symbol_off_caml_paragraph_context :
  Caml_paragraph_context_t.caml_paragraph_context ->
    Constructor_symbol_t.constructor_symbol
;;

val top_constructor_tag_off_caml_paragraph_context :
  Caml_paragraph_context_t.caml_paragraph_context ->
    Constructor_tag_t.constructor_tag
;;

val top_constructor_depth_off_caml_paragraph_context :
  Caml_paragraph_context_t.caml_paragraph_context ->
    int
;;

val top_constructor_proper_tree_canonical_index_off_caml_paragraph_context :
  Caml_paragraph_context_t.caml_paragraph_context ->
    Tree_canonical_index_t.tree_canonical_index
;;

val bottom_constructor_symbol_off_caml_paragraph_context :
  Caml_paragraph_context_t.caml_paragraph_context ->
    Constructor_symbol_t.constructor_symbol
;;

val bottom_constructor_tag_off_caml_paragraph_context :
  Caml_paragraph_context_t.caml_paragraph_context ->
    Constructor_tag_t.constructor_tag
;;

val bottom_constructor_proper_tree_canonical_index_off_caml_paragraph_context :
  Caml_paragraph_context_t.caml_paragraph_context ->
    Tree_canonical_index_t.tree_canonical_index
;;

val bottom_constructor_depth_off_caml_paragraph_context :
  Caml_paragraph_context_t.caml_paragraph_context ->
    int
;;

val son_constructor_fictive_symbol_off_caml_paragraph_context :
    Caml_paragraph_context_t.caml_paragraph_context ->
    Constructor_symbol_t.constructor_fictive_symbol
;;

val is_son_constructor_proper_symbol_off_caml_paragraph_context :
    Caml_paragraph_context_t.caml_paragraph_context ->
      bool
;;

val son_caml_paragraph_context_list_off_caml_paragraph_context :
    Caml_paragraph_context_t.caml_paragraph_context ->
      Caml_paragraph_context_t.caml_paragraph_context list
;;

val son_constructor_symbol_list_off_caml_paragraph_context :
    Caml_paragraph_context_t.caml_paragraph_context ->
    Constructor_symbol_t.constructor_symbol list
;;

val son_caml_paragraph_context_list_of_codefile_symbol_of_caml_paragraph_context :
    Codefile_symbol_t.codefile_symbol ->
      Caml_paragraph_context_t.caml_paragraph_context ->
	Caml_paragraph_context_t.caml_paragraph_context list
;;
(**
val external_caml_paragraph_context_list_off_caml_paragraph_context :
    Caml_paragraph_context_t.caml_paragraph_context ->
      Caml_paragraph_context_t.caml_paragraph_context list
;;
**)

val name : 
    Caml_paragraph_context_t.caml_paragraph_context ->
      string
;;

val caml_paragraph_context_tree_of_constructor_tag_tree_of_item_key_list :
    Constructor_tag_tree_t.constructor_tag_tree ->
      Key_list_t.key_list ->
	Caml_paragraph_context_t.caml_paragraph_context Tree_t.tree
;;

val caml_paragraph_context_tree_of_constructor_path_tree_of_item_key_list :
    Constructor_path_tree_t.constructor_path_tree ->
      Key_list_t.key_list ->
	Caml_paragraph_context_t.caml_paragraph_context Tree_t.tree
;;

val grandson_entitycategorysuffix_list_of_caml_paragraph_context :
    Caml_paragraph_context_t.caml_paragraph_context ->
	Entitycategorysuffix_t.entitycategorysuffix list
;;

val grandson_entitycategorysuffix_list_datastructure :
    Category_symbol_t.category_symbol ->
      Codefile_symbol_t.codefile_symbol ->
        Constructor_symbol_t.constructor_symbol ->
	  Entitycategorysuffix_t.entitycategorysuffix list
;;

val entitycategorysuffix_tree_off_key_list :
    Key_list_t.key_list ->
      Entitycategorysuffix_t.entitycategorysuffix Tree_t.tree
;;

val entitycategorysuffix_tree_off_caml_paragraph_context :
    Caml_paragraph_context_t.caml_paragraph_context ->
      Entitycategorysuffix_t.entitycategorysuffix Tree_t.tree
;;

