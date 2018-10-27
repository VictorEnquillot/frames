(** {3 An extended_type.} *)

type 'a extended = 
  | Basic of 'a
  | Extended of 'a extended 
;;
