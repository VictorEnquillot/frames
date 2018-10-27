(** {3 The functionalities for a Data for an Entity.}  *)

(** {6 Querying.} *)

(** {3 Making.} *)

(** {6 Reading} *)

val entity_data_filename_of_entityname :
    string ->
      Filename_p.filename
;;

val entity_data_of_entityname :
    string ->
      Entity_data_t.entity_data
;;

val is_datastructure_off_entityname :
    string ->
      bool
;;

val is_entityname_off_string :
    string ->
      bool
;;

val is_singleson_off_entityname :
    string ->
      bool
;;

val count_son_of_entityname :
    string ->
      Index_p.index
;;

val entitynameson_list_of_datastructure_entityname :
    string ->
      string list
;;

val datastructure_kind_of_entityname :
    string ->
      string
;;

val string_tree_of_entityname :
    string ->
      string Tree_t.tree
;;

(** {3 Displaying.} *)
