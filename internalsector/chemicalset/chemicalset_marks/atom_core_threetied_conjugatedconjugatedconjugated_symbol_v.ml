(** {3 The functionalities for a Symbol for a Atom_core_threetied_conjugatedconjugatedconjugated.} *)

let nam_cod = "atom_core_threetied_conjugatedconjugatedconjugated_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_core_threetied_conjugatedconjugatedconjugated_symbol_t.C_ccc -> "c_ccc"
  | Atom_core_threetied_conjugatedconjugatedconjugated_symbol_t.N_ccc -> "n_ccc"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let c_ccc = Atom_core_threetied_conjugatedconjugatedconjugated_symbol_t.C_ccc;;

let n_ccc = Atom_core_threetied_conjugatedconjugatedconjugated_symbol_t.N_ccc;;


(** {6 Making} *)


let make s = function
  | "c_ccc" -> c_ccc
  | "n_ccc" -> n_ccc
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator atom_core_threetied_conjugatedconjugatedconjugated implementation symbol at 21:44 8 Mar 2012. *)



