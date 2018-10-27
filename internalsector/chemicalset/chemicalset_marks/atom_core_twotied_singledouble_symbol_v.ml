(** {3 The functionalities for a Symbol for a Atom_core_twotied_singledouble.} *)

let nam_cod = "atom_core_twotied_singledouble_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_core_twotied_singledouble_symbol_t.N_sd -> "n_sd"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let n_sd = Atom_core_twotied_singledouble_symbol_t.N_sd;;


(** {6 Making} *)


let make s = function
  | "n_sd" -> n_sd
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator atom_core_twotied_singledouble implementation symbol at 21:44 8 Mar 2012. *)



