(** {3 The functionalities for a Symbol for a Atom_core_twotied_doubledouble.} *)

let nam_cod = "atom_core_twotied_doubledouble_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_core_twotied_doubledouble_symbol_t.C_dd -> "c_dd"
  | Atom_core_twotied_doubledouble_symbol_t.S_dd -> "s_dd"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let c_dd = Atom_core_twotied_doubledouble_symbol_t.C_dd;;

let s_dd = Atom_core_twotied_doubledouble_symbol_t.S_dd;;


(** {6 Making} *)


let make s = function
  | "c_dd" -> c_dd
  | "s_dd" -> s_dd
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator atom_core_twotied_doubledouble implementation symbol at 21:44 8 Mar 2012. *)



