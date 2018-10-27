(** {3 The functionalities for a Symbol for a Atom_core_twotied_singleconjugated.} *)

let nam_cod = "atom_core_twotied_singleconjugated_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_core_twotied_singleconjugated_symbol_t.N_sc -> "n_sc"
  | Atom_core_twotied_singleconjugated_symbol_t.O_sc -> "o_sc"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let n_sc = Atom_core_twotied_singleconjugated_symbol_t.N_sc;;

let o_sc = Atom_core_twotied_singleconjugated_symbol_t.O_sc;;


(** {6 Making} *)


let make s = function
  | "n_sc" -> n_sc
  | "o_sc" -> o_sc
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator atom_core_twotied_singleconjugated implementation symbol at 21:44 8 Mar 2012. *)



