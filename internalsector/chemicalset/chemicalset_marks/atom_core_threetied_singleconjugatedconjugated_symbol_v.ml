(** {3 The functionalities for a Symbol for a Atom_core_threetied_singleconjugatedconjugated.} *)

let nam_cod = "atom_core_threetied_singleconjugatedconjugated_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_core_threetied_singleconjugatedconjugated_symbol_t.C_scc -> "c_ccs"
  | Atom_core_threetied_singleconjugatedconjugated_symbol_t.N_scc -> "n_ccs"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let c_ccs = Atom_core_threetied_singleconjugatedconjugated_symbol_t.C_scc;;

let n_ccs = Atom_core_threetied_singleconjugatedconjugated_symbol_t.N_scc;;


(** {6 Making} *)


let make s = function
  | "c_ccs" -> c_ccs
  | "n_ccs" -> n_ccs
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator atom_core_threetied_singleconjugatedconjugated implementation symbol at 21:44 8 Mar 2012. *)



