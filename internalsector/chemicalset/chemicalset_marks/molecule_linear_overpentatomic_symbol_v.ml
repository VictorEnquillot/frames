(** {3 The functionalities for a Symbol for a Molecule_linear_overpentatomic.} *)

let nam_cod = "molecule_linear_overpentatomic_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Molecule_linear_overpentatomic_symbol_t.Propane -> "propane"
  | Molecule_linear_overpentatomic_symbol_t.Butane -> "butane"
  | Molecule_linear_overpentatomic_symbol_t.Nitromethane -> "nitromethane"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let propane = Molecule_linear_overpentatomic_symbol_t.Propane;;

let butane = Molecule_linear_overpentatomic_symbol_t.Butane;;

let nitromethane = Molecule_linear_overpentatomic_symbol_t.Nitromethane;;


(** {6 Making} *)


let make s = function
  | "propane" -> propane
  | "butane" -> butane
  | "nitromethane" -> nitromethane
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator molecule_linear_overpentatomic implementation symbol at 15:4 13 Mar 2012. *)



