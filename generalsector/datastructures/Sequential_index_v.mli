(** {3 A Sequential Index functionalities for an Entity.} *)

(** {6 Making.} *)

val make :
    Ordinal_p.ordinal ->
      Sequential_index_t.sequential_index
;;

val make_of_ordinal : 
    Ordinal_p.ordinal ->
      Sequential_index_t.sequential_index
;;

(** {6 Converting.} *)

val name :
    Sequential_index_t.sequential_index ->
      string
;;

val print : Format.formatter ->
    Sequential_index_t.sequential_index ->
      unit
;;

(** {6 Extracting.} *)

val ordinal_off_sequential_index :
    Sequential_index_t.sequential_index ->
      Ordinal_p.ordinal
;;

(** {6 Abbreviating.} *)

val solus : Sequential_index_t.sequential_index;;
val cauda : Sequential_index_t.sequential_index;;

val s : Sequential_index_t.sequential_index;;
val c : Sequential_index_t.sequential_index;;

val one : Sequential_index_t.sequential_index;;
val two : Sequential_index_t.sequential_index;;
val three : Sequential_index_t.sequential_index;;
val four : Sequential_index_t.sequential_index;;
val five : Sequential_index_t.sequential_index;;

