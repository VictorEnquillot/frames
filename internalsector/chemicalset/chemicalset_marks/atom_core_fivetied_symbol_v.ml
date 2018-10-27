(** {3 The functionalities for a Symbol for a Atom_core_fivetied.} *)

let nam_cod = "atom_core_fivetied_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_core_fivetied_symbol_t.Cl_sssss -> "cl_sssss"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let cl_sssss = Atom_core_fivetied_symbol_t.Cl_sssss;;


(** {6 Making} *)


let make s = function
  | "cl_sssss" -> cl_sssss
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator atom_core_fivetied implementation symbol at 15:1 13 Mar 2012. *)



