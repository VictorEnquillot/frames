(** {3 The functionalities for a Symbol for a Atom_core_twotied_conjugatedconjugated.} *)

let nam_cod = "atom_core_twotied_conjugatedconjugated_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_core_twotied_conjugatedconjugated_symbol_t.N_cc -> "n_cc"
  | Atom_core_twotied_conjugatedconjugated_symbol_t.O_cc -> "o_cc"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let n_cc = Atom_core_twotied_conjugatedconjugated_symbol_t.N_cc;;

let o_cc = Atom_core_twotied_conjugatedconjugated_symbol_t.O_cc;;


(** {6 Making} *)


let make s = function
  | "n_cc" -> n_cc
  | "o_cc" -> o_cc
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator atom_core_twotied_conjugatedconjugated implementation symbol at 21:44 8 Mar 2012. *)



