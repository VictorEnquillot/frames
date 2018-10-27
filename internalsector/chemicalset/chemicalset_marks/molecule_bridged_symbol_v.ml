(** {3 The functionalities for a Symbol for a Molecule_bridged.} *)

let nam_cod = "molecule_bridged_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Molecule_bridged_symbol_t.Benzene -> "benzene"
  | Molecule_bridged_symbol_t.Phenol -> "phenol"
  | Molecule_bridged_symbol_t.Pyrrole -> "pyrrole"
  | Molecule_bridged_symbol_t.Molecule_bridged_fromid _ -> "molecule_bridged_fromid"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let benzene = Molecule_bridged_symbol_t.Benzene;;

let phenol = Molecule_bridged_symbol_t.Phenol;;

let pyrrole = Molecule_bridged_symbol_t.Pyrrole;;

let molecule_bridged_fromid s = Molecule_bridged_symbol_t.Molecule_bridged_fromid s;;


(** {6 Making} *)


let make s = function
  | "benzene" -> benzene
  | "phenol" -> phenol
  | "pyrrole" -> pyrrole
  | "molecule_bridged_fromid" -> molecule_bridged_fromid s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator molecule_bridged implementation symbol at 15:3 13 Mar 2012. *)



