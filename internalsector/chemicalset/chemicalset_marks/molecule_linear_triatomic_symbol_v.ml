(** {3 The functionalities for a Symbol for a Molecule_linear_triatomic.} *)

let nam_cod = "molecule_linear_triatomic_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Molecule_linear_triatomic_symbol_t.Hydrogensulfide -> "hydrogensulfide"
  | Molecule_linear_triatomic_symbol_t.Water -> "water"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let hydrogensulfide = Molecule_linear_triatomic_symbol_t.Hydrogensulfide;;

let water = Molecule_linear_triatomic_symbol_t.Water;;


(** {6 Making} *)


let make s = function
  | "hydrogensulfide" -> hydrogensulfide
  | "water" -> water
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator molecule_linear_triatomic implementation symbol at 15:4 13 Mar 2012. *)



