(** {3 A Duo of two entities of different type.} *)
 
type ('a, 'b) either_or = 
  | Either of 'a 
  | Or of 'b
;;
(** A duo is either one entity or one other. *)

