(** {3 The functionalities for a Symbol for a Atom_core_sixtied.} *)

let nam_cod = "atom_core_sixtied_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_core_sixtied_symbol_t.S_6s -> "s_6s"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let s_6s = Atom_core_sixtied_symbol_t.S_6s;;


(** {6 Making} *)


let make s = function
  | "s_6s" -> s_6s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator atom_core_sixtied implementation symbol at 15:1 13 Mar 2012. *)



