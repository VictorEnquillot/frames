(** {3 The Provider for an Entity_data for each Entityname.} *)

(** {6 Register.} *)

val retrieve :
    string ->
      Entity_data_t.entity_data
;;

val build :
    string ->
      Entity_data_t.entity_data
;;

val is_stored :
    string ->
      bool
;;

val provide :
    string ->
      Entity_data_t.entity_data
;;
