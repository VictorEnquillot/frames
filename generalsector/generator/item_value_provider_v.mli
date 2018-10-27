(** {3 The Provider for Item of each Entity.} *)

val store :
    Key_list_t.key_list ->  
      Item_value_t.item_value ->
	unit
;;

val retrieve :
    Key_list_t.key_list ->
      Item_value_t.item_value
;;  

val provide :
    Key_list_t.key_list ->
      Item_value_t.item_value
;;

val write : out_channel ->
    Key_list_t.key_list ->
      unit
;;
