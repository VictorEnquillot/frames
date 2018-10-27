(* $Id: mode_flags.ml,v 1.2 2007-06-01 06:58:21 weis Exp $ *)

(** The flags of the generator. *)

let debug_mode = ref false;;
let get_debug_mode () = !debug_mode;;
let set_debug_mode () = debug_mode := true;;

type spec_mode =
   | Single_type
   | Multi_type
;;

let spec_mode = ref Multi_type
;;

let get_spec_mode () = !spec_mode;;
let set_multi_mode () = spec_mode := Multi_type;;
let set_single_mode () = spec_mode := Single_type;;

