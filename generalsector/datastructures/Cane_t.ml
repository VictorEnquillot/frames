(** {3 A Cane data structure.} *)

type ('a, 'b) cane = {
    head : 'a;
    body : 'b array;
  }
;; (**  a cane 
     --|
       |
       |
       |
       | *)
