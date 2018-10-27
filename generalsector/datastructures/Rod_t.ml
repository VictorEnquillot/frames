(** {3 A Rod data structure.} *)

type ('a, 'b, 'c) rod = {
    head : 'a;
    body : 'b array;
    tail : 'c;
  }
;;
