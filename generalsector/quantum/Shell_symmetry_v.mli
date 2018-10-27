(** {3 Shell_symmetry.} *)

val name : Shell_symmetry_t.shell_symmetry -> string;;

val string_off : Shell_symmetry_t.shell_symmetry -> string;;

val longname : Shell_symmetry_t.shell_symmetry -> string;;

val fullname : Shell_symmetry_t.shell_symmetry -> string;;

val make : int -> Shell_symmetry_t.shell_symmetry ;;

val make_of_int : int -> Shell_symmetry_t.shell_symmetry ;;

val index_of_shell_symmetry : Shell_symmetry_t.shell_symmetry -> Index_p.index;;

val int_of_shell_symmetry : Shell_symmetry_t.shell_symmetry -> int;;

val first_int_ordinal_of_shell_symmetry_name : string -> int;;

val shell_symmetry_of_int : int -> Shell_symmetry_t.shell_symmetry;;

val shell_symmetry_of_index : Index_p.index -> Shell_symmetry_t.shell_symmetry;;

val shell_symmetry_of_ordinal : Ordinal_p.ordinal -> Shell_symmetry_t.shell_symmetry;;

