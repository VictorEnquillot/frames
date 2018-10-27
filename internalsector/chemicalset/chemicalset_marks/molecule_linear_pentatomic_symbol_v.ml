(** {3 The functionalities for a Symbol for a Molecule_linear_pentatomic.} *)

let nam_cod = "molecule_linear_pentatomic_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Molecule_linear_pentatomic_symbol_t.Methane -> "methane"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let methane = Molecule_linear_pentatomic_symbol_t.Methane;;


(** {6 Making} *)


let make s = function
  | "methane" -> methane
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator molecule_linear_pentatomic implementation symbol at 15:4 13 Mar 2012. *)



