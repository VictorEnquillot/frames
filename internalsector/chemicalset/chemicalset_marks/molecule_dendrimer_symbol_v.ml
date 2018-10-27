(** {3 The functionalities for a Symbol for a Molecule_dendrimer.} *)

let nam_cod = "molecule_dendrimer_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Molecule_dendrimer_symbol_t.Molecule_dendrimer_fromid _ -> "molecule_dendrimer_fromid"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let molecule_dendrimer_fromid s = Molecule_dendrimer_symbol_t.Molecule_dendrimer_fromid s;;


(** {6 Making} *)


let make s = function
  | "molecule_dendrimer_fromid" -> molecule_dendrimer_fromid s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator molecule_dendrimer implementation symbol at 15:3 13 Mar 2012. *)



