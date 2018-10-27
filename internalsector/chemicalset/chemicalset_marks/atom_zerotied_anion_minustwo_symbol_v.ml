(** {3 The functionalities for a Symbol for a Atom_zerotied_anion_minustwo.} *)

let nam_cod = "atom_zerotied_anion_minustwo_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_zerotied_anion_minustwo_symbol_t.Om2 -> "om2"
  | Atom_zerotied_anion_minustwo_symbol_t.Sm2 -> "sm2"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let om2 = Atom_zerotied_anion_minustwo_symbol_t.Om2;;

let sm2 = Atom_zerotied_anion_minustwo_symbol_t.Sm2;;


(** {6 Making} *)


let make s = function
  | "om2" -> om2
  | "sm2" -> sm2
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator atom_zerotied_anion_minustwo implementation symbol at 15:4 13 Mar 2012. *)



