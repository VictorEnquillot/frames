(** {3 The functionalities for a Symbol for a Atom_zerotied_anion.} *)

let nam_cod = "atom_zerotied_anion_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_zerotied_anion_symbol_t.Atom_zerotied_anion_minusone_symbol sym_0a1 ->
      Atom_zerotied_anion_minusone_symbol_v.name sym_0a1
  | Atom_zerotied_anion_symbol_t.Atom_zerotied_anion_minustwo_symbol sym_0a2 ->
      Atom_zerotied_anion_minustwo_symbol_v.name sym_0a2
;;


(** {6 Upgrading} *)


let atom_zerotied_anion_symbol_of_atom_zerotied_anion_minusone_symbol sym_0a1 = 
  Atom_zerotied_anion_symbol_t.Atom_zerotied_anion_minusone_symbol sym_0a1
;;

let atom_zerotied_anion_symbol_of_atom_zerotied_anion_minustwo_symbol sym_0a2 = 
  Atom_zerotied_anion_symbol_t.Atom_zerotied_anion_minustwo_symbol sym_0a2
;;


(** {6 Abbreviating} *)


let fm1 = atom_zerotied_anion_symbol_of_atom_zerotied_anion_minusone_symbol Atom_zerotied_anion_minusone_symbol_v.fm1;;

let hm1 = atom_zerotied_anion_symbol_of_atom_zerotied_anion_minusone_symbol Atom_zerotied_anion_minusone_symbol_v.hm1;;

let clm1 = atom_zerotied_anion_symbol_of_atom_zerotied_anion_minusone_symbol Atom_zerotied_anion_minusone_symbol_v.clm1;;

let brm1 = atom_zerotied_anion_symbol_of_atom_zerotied_anion_minusone_symbol Atom_zerotied_anion_minusone_symbol_v.brm1;;

let im1 = atom_zerotied_anion_symbol_of_atom_zerotied_anion_minusone_symbol Atom_zerotied_anion_minusone_symbol_v.im1;;

let om2 = atom_zerotied_anion_symbol_of_atom_zerotied_anion_minustwo_symbol Atom_zerotied_anion_minustwo_symbol_v.om2;;

let sm2 = atom_zerotied_anion_symbol_of_atom_zerotied_anion_minustwo_symbol Atom_zerotied_anion_minustwo_symbol_v.sm2;;


(** {6 Making} *)


let make s = function
  | "fm1" -> fm1
  | "hm1" -> hm1
  | "clm1" -> clm1
  | "brm1" -> brm1
  | "im1" -> im1
  | "om2" -> om2
  | "sm2" -> sm2
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let atom_zerotied_anion_minusone_symbol_off_atom_zerotied_anion_symbol = function
  | Atom_zerotied_anion_symbol_t.Atom_zerotied_anion_minusone_symbol sym_0a1 -> sym_0a1
  | sym_a0a -> Error_messages_v.print_fatal_error
      nam_cod "atom_zerotied_anion_minusone_symbol_off_atom_zerotied_anion_symbol"
      "Atom_zerotied_anion_minusone_symbol"
      (name sym_a0a) "check"
;;

let atom_zerotied_anion_minustwo_symbol_off_atom_zerotied_anion_symbol = function
  | Atom_zerotied_anion_symbol_t.Atom_zerotied_anion_minustwo_symbol sym_0a2 -> sym_0a2
  | sym_a0a -> Error_messages_v.print_fatal_error
      nam_cod "atom_zerotied_anion_minustwo_symbol_off_atom_zerotied_anion_symbol"
      "Atom_zerotied_anion_minustwo_symbol"
      (name sym_a0a) "check"
;;


(** {6 Querying} *)


let is_atom_zerotied_anion_minusone_symbol_off_atom_zerotied_anion_symbol = function
  | Atom_zerotied_anion_symbol_t.Atom_zerotied_anion_minusone_symbol _ -> true
  | _ -> false
;;

let is_atom_zerotied_anion_minustwo_symbol_off_atom_zerotied_anion_symbol = function
  | Atom_zerotied_anion_symbol_t.Atom_zerotied_anion_minustwo_symbol _ -> true
  | _ -> false
;;


(** created by ./generator atom_zerotied_anion implementation symbol at 15:4 13 Mar 2012. *)



