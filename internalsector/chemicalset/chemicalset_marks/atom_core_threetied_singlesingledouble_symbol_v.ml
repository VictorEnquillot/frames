(** {3 The functionalities for a Symbol for a Atom_core_threetied_singlesingledouble.} *)

let nam_cod = "atom_core_threetied_singlesingledouble_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_core_threetied_singlesingledouble_symbol_t.C_ssd -> "c_dss"
  | Atom_core_threetied_singlesingledouble_symbol_t.N_sdd -> "n_sdd"
  | Atom_core_threetied_singlesingledouble_symbol_t.S_sdd -> "s_sdd"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let c_dss = Atom_core_threetied_singlesingledouble_symbol_t.C_ssd;;

let n_sdd = Atom_core_threetied_singlesingledouble_symbol_t.N_sdd;;

let s_sdd = Atom_core_threetied_singlesingledouble_symbol_t.S_sdd;;


(** {6 Making} *)


let make s = function
  | "c_dss" -> c_dss
  | "n_sdd" -> n_sdd
  | "s_sdd" -> s_sdd
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator atom_core_threetied_singlesingledouble implementation symbol at 21:44 8 Mar 2012. *)



