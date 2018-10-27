(** {3 A Leg data structure.} *)

type ('a, 'b) leg = {
    body : 'a array;
    tail : 'b;
  }
;; (** a leg 
     |
     |
     |
     |
     |-- *)
