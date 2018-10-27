(** {3 The functionalities for a Symbol for a Atom_zerotied_cation_plustwo.} *)

let nam_cod = "atom_zerotied_cation_plustwo_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_zerotied_cation_plustwo_symbol_t.Mgp2 -> "mgp2"
  | Atom_zerotied_cation_plustwo_symbol_t.Cap2 -> "cap2"
  | Atom_zerotied_cation_plustwo_symbol_t.Fep2 -> "fep2"
  | Atom_zerotied_cation_plustwo_symbol_t.Znp2 -> "znp2"
  | Atom_zerotied_cation_plustwo_symbol_t.Cup2 -> "cup2"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let mgp2 = Atom_zerotied_cation_plustwo_symbol_t.Mgp2;;

let cap2 = Atom_zerotied_cation_plustwo_symbol_t.Cap2;;

let fep2 = Atom_zerotied_cation_plustwo_symbol_t.Fep2;;

let znp2 = Atom_zerotied_cation_plustwo_symbol_t.Znp2;;

let cup2 = Atom_zerotied_cation_plustwo_symbol_t.Cup2;;


(** {6 Making} *)


let make s = function
  | "mgp2" -> mgp2
  | "cap2" -> cap2
  | "fep2" -> fep2
  | "znp2" -> znp2
  | "cup2" -> cup2
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator atom_zerotied_cation_plustwo implementation symbol at 15:4 13 Mar 2012. *)



