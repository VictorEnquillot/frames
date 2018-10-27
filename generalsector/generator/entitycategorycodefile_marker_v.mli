(** {3 The functionalities for a Tag for a Entitycategorycodefile.} *)

(** {6 Making.} *)

val make :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Tree_canonical_index_t.tree_canonical_index ->
	Entitycategorycodefile_tag_t.entitycategorycodefile_tag
;;

val name :
    Entitycategorycodefile_tag_t.entitycategorycodefile_tag ->
      string
;;

val entitycategorycodefile_off_entitycategorycodefile_tag :
    Entitycategorycodefile_tag_t.entitycategorycodefile_tag ->
      Entitycategorycodefile_t.entitycategorycodefile
;;

val entitycategorycodefile_proper_tree_canonical_index_off_entitycategorycodefile_tag :
    Entitycategorycodefile_tag_t.entitycategorycodefile_tag ->
      Tree_canonical_index_t.tree_canonical_index
;;

val entitycategorycodefile_depth_off_entitycategorycodefile_tag :
    Entitycategorycodefile_tag_t.entitycategorycodefile_tag ->
      int
;;
