(** {3 The functionalities for a Symbol for a Bond.} *)

let nam_cod = "bond_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Bond_symbol_t.Bond_covalent -> "bond_covalent"
  | Bond_symbol_t.Bond_hydrogen -> "bond_hydrogen"
  | Bond_symbol_t.Bond_ionic -> "bond_ionic"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let bond_covalent = Bond_symbol_t.Bond_covalent;;

let bond_hydrogen = Bond_symbol_t.Bond_hydrogen;;

let bond_ionic = Bond_symbol_t.Bond_ionic;;


(** {6 Making} *)


let make s = function
  | "bond_covalent" -> bond_covalent
  | "bond_hydrogen" -> bond_hydrogen
  | "bond_ionic" -> bond_ionic
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator bond implementation symbol at 15:2 13 Mar 2012. *)



