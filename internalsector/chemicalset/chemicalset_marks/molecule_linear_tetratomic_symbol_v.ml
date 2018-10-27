(** {3 The functionalities for a Symbol for a Molecule_linear_tetratomic.} *)

let nam_cod = "molecule_linear_tetratomic_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Molecule_linear_tetratomic_symbol_t.Ammonia -> "ammonia"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let ammonia = Molecule_linear_tetratomic_symbol_t.Ammonia;;


(** {6 Making} *)


let make s = function
  | "ammonia" -> ammonia
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator molecule_linear_tetratomic implementation symbol at 15:4 13 Mar 2012. *)



