(** {3 The functionalities for a Suffix for a Symbol for a Codefile}  *)

(** {6 Making.} *)

val make : 
    string ->
      Codefile_suffix_t.codefile_suffix
;;

(** {6 Displaying.} *)

val name :
      Codefile_suffix_t.codefile_suffix ->
	string
;;

(** {6 Abbreviating} *)

val suffix_p : Codefile_suffix_t.codefile_suffix;;
val suffix_t : Codefile_suffix_t.codefile_suffix;;
val suffix_v : Codefile_suffix_t.codefile_suffix;;
val suffix_empty : Codefile_suffix_t.codefile_suffix;;

