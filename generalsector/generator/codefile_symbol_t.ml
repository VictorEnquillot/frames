(** {3 The Symbol for a Codefile of a Caml code for Frames}  *)

(** {3 Codefiles.} *)

(** {3 Typing.} *)

type codefile_symbol = 
  | Type_symbol
  | Implementation_symbol
  | Interface_symbol
  | Empty
;;
(** This type defines the different kinds of codefile-file
    Type (x_t.ml) defines only the type of x
    Implementation (x_v.ml) defines only the implementation of functions used on x
    Interface (x_v.mli) defines only the signature of the functions used on x
*)
