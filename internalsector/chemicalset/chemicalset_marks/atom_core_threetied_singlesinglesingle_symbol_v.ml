(** {3 The functionalities for a Symbol for a Atom_core_threetied_singlesinglesingle.} *)

let nam_cod = "atom_core_threetied_singlesinglesingle_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_core_threetied_singlesinglesingle_symbol_t.N_sss -> "n_sss"
  | Atom_core_threetied_singlesinglesingle_symbol_t.Cl_sss -> "cl_sss"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let n_sss = Atom_core_threetied_singlesinglesingle_symbol_t.N_sss;;

let cl_sss = Atom_core_threetied_singlesinglesingle_symbol_t.Cl_sss;;


(** {6 Making} *)


let make s = function
  | "n_sss" -> n_sss
  | "cl_sss" -> cl_sss
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator atom_core_threetied_singlesinglesingle implementation symbol at 21:44 8 Mar 2012. *)



