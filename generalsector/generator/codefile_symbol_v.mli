(** {3 The functionalities for the Caml code Generator Symbol for Frames}  *)

(** {6 Making.} *)

val make :
    string ->
      Codefile_symbol_t.codefile_symbol
;;

(** {6 Displaying.} *)

val name :
    Codefile_symbol_t.codefile_symbol ->
      string
;;

val file_extension :
    Codefile_symbol_t.codefile_symbol ->
      string
;;

(** {6 Abbreviating} *)

val codefile_type : Codefile_symbol_t.codefile_symbol;;
val codefile_implementation : Codefile_symbol_t.codefile_symbol;;
val codefile_interface : Codefile_symbol_t.codefile_symbol;;
val codefile_empty : Codefile_symbol_t.codefile_symbol;;
