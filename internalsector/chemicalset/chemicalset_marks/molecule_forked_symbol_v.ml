(** {3 The functionalities for a Symbol for a Molecule_forked.} *)

let nam_cod = "molecule_forked_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Molecule_forked_symbol_t.Guanidine -> "guanidine"
  | Molecule_forked_symbol_t.Molecule_forked_fromid _ -> "molecule_forked_fromid"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let guanidine = Molecule_forked_symbol_t.Guanidine;;

let molecule_forked_fromid s = Molecule_forked_symbol_t.Molecule_forked_fromid s;;


(** {6 Making} *)


let make s = function
  | "guanidine" -> guanidine
  | "molecule_forked_fromid" -> molecule_forked_fromid s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator molecule_forked implementation symbol at 15:3 13 Mar 2012. *)



