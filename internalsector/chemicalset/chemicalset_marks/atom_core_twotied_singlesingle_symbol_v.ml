(** {3 The functionalities for a Symbol for a Atom_core_twotied_singlesingle.} *)

let nam_cod = "atom_core_twotied_singlesingle_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_core_twotied_singlesingle_symbol_t.Cl_ss -> "cl_ss"
  | Atom_core_twotied_singlesingle_symbol_t.F_ss -> "f_ss"
  | Atom_core_twotied_singlesingle_symbol_t.H_ss -> "h_ss"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let cl_ss = Atom_core_twotied_singlesingle_symbol_t.Cl_ss;;

let f_ss = Atom_core_twotied_singlesingle_symbol_t.F_ss;;

let h_ss = Atom_core_twotied_singlesingle_symbol_t.H_ss;;


(** {6 Making} *)


let make s = function
  | "cl_ss" -> cl_ss
  | "f_ss" -> f_ss
  | "h_ss" -> h_ss
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator atom_core_twotied_singlesingle implementation symbol at 21:44 8 Mar 2012. *)



