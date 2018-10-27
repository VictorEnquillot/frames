(** {3 The functionalities for a Symbol for a Atom_core_fourtied.} *)

let nam_cod = "atom_core_fourtied_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_core_fourtied_symbol_t.C_ssss -> "c_ssss"
  | Atom_core_fourtied_symbol_t.N_ssss -> "n_ssss"
  | Atom_core_fourtied_symbol_t.S_ssss -> "s_ssss"
  | Atom_core_fourtied_symbol_t.Xe_ssss -> "xe_ssss"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let c_ssss = Atom_core_fourtied_symbol_t.C_ssss;;

let n_ssss = Atom_core_fourtied_symbol_t.N_ssss;;

let s_ssss = Atom_core_fourtied_symbol_t.S_ssss;;

let xe_ssss = Atom_core_fourtied_symbol_t.Xe_ssss;;


(** {6 Making} *)


let make s = function
  | "c_ssss" -> c_ssss
  | "n_ssss" -> n_ssss
  | "s_ssss" -> s_ssss
  | "xe_ssss" -> xe_ssss
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator atom_core_fourtied implementation symbol at 15:1 13 Mar 2012. *)



