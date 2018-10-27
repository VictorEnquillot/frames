(* $Id: mode_flags.mli,v 1.2 2007-06-01 06:58:21 weis Exp $ *)

(** The flags of the generator. *)

(** The kind of file we must parse and generate a module for:
    - Single_type means only one type specification.
    - Multi_type means multiple type specifications leading to
      a new sum type to distinguish between them. *)
type spec_mode =
   | Single_type
   | Multi_type
;;

val get_spec_mode : unit -> spec_mode;;

val set_multi_mode : unit -> unit;;
val set_single_mode : unit -> unit;;

(** Dbugging flaf. *)
val get_debug_mode : unit -> bool;;
val set_debug_mode : unit -> unit;;

