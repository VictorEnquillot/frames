(** {3 The functionalities for a Symbol for a Atom_core_twotied_singletriple.} *)

let nam_cod = "atom_core_twotied_singletriple_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_core_twotied_singletriple_symbol_t.C_st -> "c_st"
  | Atom_core_twotied_singletriple_symbol_t.N_st -> "n_st"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let c_st = Atom_core_twotied_singletriple_symbol_t.C_st;;

let n_st = Atom_core_twotied_singletriple_symbol_t.N_st;;


(** {6 Making} *)


let make s = function
  | "c_st" -> c_st
  | "n_st" -> n_st
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator atom_core_twotied_singletriple implementation symbol at 21:44 8 Mar 2012. *)



