(** {3 The functionalities for a Entitycategorycodefile_path for a Entitycategorycodefile.}  *)

val check_is_valid_of_entitycategorycodefile_path :
    Entitycategorycodefile_path_t.entitycategorycodefile_path ->
      string ->
	string ->
	  unit
;;


(** {6 Making.} *)

val make :
    Entitycategorycodefile_tag_t.entitycategorycodefile_tag ->
      Entitycategorycodefile_path_t.entitycategorycodefile_path ->
	Entitycategorycodefile_path_t.entitycategorycodefile_path
;;

(** {6 Extracting.} *)

val top_entitycategorycodefile_tag_off_entitycategorycodefile_path :
  Entitycategorycodefile_path_t.entitycategorycodefile_path ->
    Entitycategorycodefile_tag_t.entitycategorycodefile_tag
;; (* the top of the path *)

val top_entitycategorycodefile_off_entitycategorycodefile_path :
  Entitycategorycodefile_path_t.entitycategorycodefile_path ->
    Entitycategorycodefile_t.entitycategorycodefile
;; 

val son_entitycategorycodefile_tag_off_entitycategorycodefile_path :
  Entitycategorycodefile_path_t.entitycategorycodefile_path ->
    Entitycategorycodefile_tag_t.entitycategorycodefile_tag
;; (* the son of the top of the path *)

val son_entitycategorycodefile_off_entitycategorycodefile_path :
  Entitycategorycodefile_path_t.entitycategorycodefile_path ->
    Entitycategorycodefile_t.entitycategorycodefile
;; (* the son of the top of the path *)

val up_entitycategorycodefile_tag_off_entitycategorycodefile_path :
    Entitycategorycodefile_path_t.entitycategorycodefile_path ->
      Entitycategorycodefile_tag_t.entitycategorycodefile_tag
;; (* the father of the head of the path *)

val up_entitycategorycodefile_off_entitycategorycodefile_path :
    Entitycategorycodefile_path_t.entitycategorycodefile_path ->
      Entitycategorycodefile_t.entitycategorycodefile
;; 

val bottom_entitycategorycodefile_tag_off_entitycategorycodefile_path :
    Entitycategorycodefile_path_t.entitycategorycodefile_path ->
      Entitycategorycodefile_tag_t.entitycategorycodefile_tag
;; (* the head of the path *)

val bottom_entitycategorycodefile_off_entitycategorycodefile_path :
    Entitycategorycodefile_path_t.entitycategorycodefile_path ->
      Entitycategorycodefile_t.entitycategorycodefile
;; (* the head of the path *)

val bottom_tree_canonical_index_off_entitycategorycodefile_path :
    Entitycategorycodefile_path_t.entitycategorycodefile_path ->
      Tree_canonical_index_t.tree_canonical_index
;;

val bottom_depth_off_entitycategorycodefile_path :
    Entitycategorycodefile_path_t.entitycategorycodefile_path ->
      int
;; 

(** {6 Displaying.} *)

val name :
    Entitycategorycodefile_path_t.entitycategorycodefile_path ->
      string
;;
