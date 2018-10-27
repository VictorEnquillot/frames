(** {3 The functionalities for a Value for a Item.}  *)

(** {6 Making.} *)

val make :
    Key_list_t.key_list ->
      Item_value_t.item_value
;;

(** {6 Writing.} *)

val name_tree : 
    Item_value_t.item_value ->
      string Tree_t.tree
;;

val name_list : 
    Item_value_t.item_value ->
      string list
;;

val name : 
    Item_value_t.item_value ->
      string 
;;

val print : Format.formatter ->
  Item_value_t.item_value ->
    unit
;;

val item_file_name_of_key_list :
    Key_list_t.key_list ->
      string
;;

val item_filename_of_key_list :
    Key_list_t.key_list ->
      Filename_p.filename
;;

val write : out_channel ->
  Item_value_t.item_value ->
    unit
;;

(** {6 Extracting.} *)

val caml_paragraph_value_list_off_item_value :
    Item_value_t.item_value ->
      Caml_paragraph_value_t.caml_paragraph_value list
;;

val caml_line_value_list_off_item_value :
    Item_value_t.item_value ->
      Caml_line_value_t.caml_line_value list
;;
