(** {3 The functionalities for a Symbol for a Atom_zerotied_anion_minusone.} *)

let nam_cod = "atom_zerotied_anion_minusone_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_zerotied_anion_minusone_symbol_t.Fm1 -> "fm1"
  | Atom_zerotied_anion_minusone_symbol_t.Hm1 -> "hm1"
  | Atom_zerotied_anion_minusone_symbol_t.Clm1 -> "clm1"
  | Atom_zerotied_anion_minusone_symbol_t.Brm1 -> "brm1"
  | Atom_zerotied_anion_minusone_symbol_t.Im1 -> "im1"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let fm1 = Atom_zerotied_anion_minusone_symbol_t.Fm1;;

let hm1 = Atom_zerotied_anion_minusone_symbol_t.Hm1;;

let clm1 = Atom_zerotied_anion_minusone_symbol_t.Clm1;;

let brm1 = Atom_zerotied_anion_minusone_symbol_t.Brm1;;

let im1 = Atom_zerotied_anion_minusone_symbol_t.Im1;;


(** {6 Making} *)


let make s = function
  | "fm1" -> fm1
  | "hm1" -> hm1
  | "clm1" -> clm1
  | "brm1" -> brm1
  | "im1" -> im1
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator atom_zerotied_anion_minusone implementation symbol at 15:4 13 Mar 2012. *)



