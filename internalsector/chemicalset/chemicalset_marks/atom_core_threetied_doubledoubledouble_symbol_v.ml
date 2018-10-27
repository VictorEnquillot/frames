(** {3 The functionalities for a Symbol for a Atom_core_threetied_doubledoubledouble.} *)

let nam_cod = "atom_core_threetied_doubledoubledouble_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_core_threetied_doubledoubledouble_symbol_t.S_ddd -> "s_ddd"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let s_ddd = Atom_core_threetied_doubledoubledouble_symbol_t.S_ddd;;


(** {6 Making} *)


let make s = function
  | "s_ddd" -> s_ddd
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator atom_core_threetied_doubledoubledouble implementation symbol at 21:44 8 Mar 2012. *)



