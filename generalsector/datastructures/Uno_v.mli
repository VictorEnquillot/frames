(** {3 The functionalities for a Uno.} *)

(** {6 Making.} *)

val make : 'a -> 'a Uno_t.uno;;

val is_uno : 'a -> bool;;

val element_off_uno : 'a Uno_t.uno -> 'a;;

val left_off_uno : 'a Uno_t.uno -> 'a;;

val first_off_uno : 'a Uno_t.uno -> 'a;;

val singlet_of_uno : 'a Uno_t.uno -> 'a Singlet_t.singlet;;

(** {6 Iterating.} *)

val map : ('a -> 'b) -> 'a Uno_t.uno -> 'b Uno_t.uno ;;

val map2 : ('a -> 'b -> 'c) -> 'a Uno_t.uno -> 'b Uno_t.uno -> 'c Uno_t.uno ;;

val iter : ('a -> unit) -> 'a Uno_t.uno -> unit;;

val iter2 : ('a -> 'b -> unit) -> 'a Uno_t.uno -> 'b Uno_t.uno -> unit;;

(** {6 Converting.} *)

val uno_of_list : 'a list -> 'a Uno_t.uno;;

val list_of_uno : 'a Uno_t.uno -> 'a list;;

val print : (Format.formatter -> 'a -> unit) -> Format.formatter -> 'a Uno_t.uno -> unit;;

val name : ('a -> string) -> 'a Uno_t.uno -> string;;
