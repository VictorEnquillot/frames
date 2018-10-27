(** {3 The functionalities for a Symbol for a Atom_zerotied_cation_plusthree.} *)

let nam_cod = "atom_zerotied_cation_plusthree_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_zerotied_cation_plusthree_symbol_t.Fep3 -> "fep3"
  | Atom_zerotied_cation_plusthree_symbol_t.Nip3 -> "nip3"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let fep3 = Atom_zerotied_cation_plusthree_symbol_t.Fep3;;

let nip3 = Atom_zerotied_cation_plusthree_symbol_t.Nip3;;


(** {6 Making} *)


let make s = function
  | "fep3" -> fep3
  | "nip3" -> nip3
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator atom_zerotied_cation_plusthree implementation symbol at 15:4 13 Mar 2012. *)



