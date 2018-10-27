(** {3 A Tie between two entities of the same type.} *)
 
type 'a tie = {
    left : 'a;
    right : 'a;
  }
;;
(** A tie is an oriented pair of two  entities of the same type. *)

