(** {3 The functionalities for a Symbol for a Atom_zerotied_cation_plusone.} *)

let nam_cod = "atom_zerotied_cation_plusone_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_zerotied_cation_plusone_symbol_t.Hp1 -> "hp1"
  | Atom_zerotied_cation_plusone_symbol_t.Kp1 -> "kp1"
  | Atom_zerotied_cation_plusone_symbol_t.Lip1 -> "lip1"
  | Atom_zerotied_cation_plusone_symbol_t.Nap1 -> "nap1"
  | Atom_zerotied_cation_plusone_symbol_t.Nip1 -> "nip1"
  | Atom_zerotied_cation_plusone_symbol_t.Cup1 -> "cup1"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let hp1 = Atom_zerotied_cation_plusone_symbol_t.Hp1;;

let kp1 = Atom_zerotied_cation_plusone_symbol_t.Kp1;;

let lip1 = Atom_zerotied_cation_plusone_symbol_t.Lip1;;

let nap1 = Atom_zerotied_cation_plusone_symbol_t.Nap1;;

let nip1 = Atom_zerotied_cation_plusone_symbol_t.Nip1;;

let cup1 = Atom_zerotied_cation_plusone_symbol_t.Cup1;;


(** {6 Making} *)


let make s = function
  | "hp1" -> hp1
  | "kp1" -> kp1
  | "lip1" -> lip1
  | "nap1" -> nap1
  | "nip1" -> nip1
  | "cup1" -> cup1
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator atom_zerotied_cation_plusone implementation symbol at 15:4 13 Mar 2012. *)



