(** {3 The functionalities for a Constructor_path for a Constructor.}  *)

val check_is_valid_of_constructor_path :
    Constructor_path_t.constructor_path ->
      string ->
	string ->
	  unit
;;


(** {6 Making.} *)

val make :
    Constructor_tag_t.constructor_tag ->
      Constructor_path_t.constructor_path ->
	Constructor_path_t.constructor_path
;;

(** {6 Extracting.} *)

val top_constructor_tag_off_constructor_path :
  Constructor_path_t.constructor_path ->
    Constructor_tag_t.constructor_tag
;; (* the top of the path *)

val son_constructor_tag_off_constructor_path :
  Constructor_path_t.constructor_path ->
    Constructor_tag_t.constructor_tag
;; (* the son of the top of the path *)

val bottom_constructor_tag_off_constructor_path :
    Constructor_path_t.constructor_path ->
      Constructor_tag_t.constructor_tag
;; (* the head of the path *)

val up_constructor_tag_off_constructor_path :
    Constructor_path_t.constructor_path ->
      Constructor_tag_t.constructor_tag
;; (* the father of the head of the path *)

val down_constructor_tag_off_constructor_path :
    Constructor_path_t.constructor_path ->
      Constructor_tag_t.constructor_tag
;; (* the son of the head of the path *)

val bottom_constructor_proper_tree_canonical_index_off_constructor_path :
    Constructor_path_t.constructor_path ->
      Tree_canonical_index_t.tree_canonical_index
;;

val bottom_constructor_depth_off_constructor_path :
    Constructor_path_t.constructor_path ->
      int
;; 

(** {6 Displaying.} *)

val name :
    Constructor_path_t.constructor_path ->
      string
;;
