(** {3 The functionalities for a Symbol for a Atom_zerotied_cation.} *)

let nam_cod = "atom_zerotied_cation_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_zerotied_cation_symbol_t.Atom_zerotied_cation_plusone_symbol sym_0c1 ->
      Atom_zerotied_cation_plusone_symbol_v.name sym_0c1
  | Atom_zerotied_cation_symbol_t.Atom_zerotied_cation_plustwo_symbol sym_0c2 ->
      Atom_zerotied_cation_plustwo_symbol_v.name sym_0c2
  | Atom_zerotied_cation_symbol_t.Atom_zerotied_cation_plusthree_symbol sym_0c3 ->
      Atom_zerotied_cation_plusthree_symbol_v.name sym_0c3
;;


(** {6 Upgrading} *)


let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plusone_symbol sym_0c1 = 
  Atom_zerotied_cation_symbol_t.Atom_zerotied_cation_plusone_symbol sym_0c1
;;

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plustwo_symbol sym_0c2 = 
  Atom_zerotied_cation_symbol_t.Atom_zerotied_cation_plustwo_symbol sym_0c2
;;

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0c3 = 
  Atom_zerotied_cation_symbol_t.Atom_zerotied_cation_plusthree_symbol sym_0c3
;;


(** {6 Abbreviating} *)


let hp1 = atom_zerotied_cation_symbol_of_atom_zerotied_cation_plusone_symbol Atom_zerotied_cation_plusone_symbol_v.hp1;;

let kp1 = atom_zerotied_cation_symbol_of_atom_zerotied_cation_plusone_symbol Atom_zerotied_cation_plusone_symbol_v.kp1;;

let lip1 = atom_zerotied_cation_symbol_of_atom_zerotied_cation_plusone_symbol Atom_zerotied_cation_plusone_symbol_v.lip1;;

let nap1 = atom_zerotied_cation_symbol_of_atom_zerotied_cation_plusone_symbol Atom_zerotied_cation_plusone_symbol_v.nap1;;

let nip1 = atom_zerotied_cation_symbol_of_atom_zerotied_cation_plusone_symbol Atom_zerotied_cation_plusone_symbol_v.nip1;;

let cup1 = atom_zerotied_cation_symbol_of_atom_zerotied_cation_plusone_symbol Atom_zerotied_cation_plusone_symbol_v.cup1;;

let mgp2 = atom_zerotied_cation_symbol_of_atom_zerotied_cation_plustwo_symbol Atom_zerotied_cation_plustwo_symbol_v.mgp2;;

let cap2 = atom_zerotied_cation_symbol_of_atom_zerotied_cation_plustwo_symbol Atom_zerotied_cation_plustwo_symbol_v.cap2;;

let fep2 = atom_zerotied_cation_symbol_of_atom_zerotied_cation_plustwo_symbol Atom_zerotied_cation_plustwo_symbol_v.fep2;;

let znp2 = atom_zerotied_cation_symbol_of_atom_zerotied_cation_plustwo_symbol Atom_zerotied_cation_plustwo_symbol_v.znp2;;

let cup2 = atom_zerotied_cation_symbol_of_atom_zerotied_cation_plustwo_symbol Atom_zerotied_cation_plustwo_symbol_v.cup2;;

let fep3 = atom_zerotied_cation_symbol_of_atom_zerotied_cation_plusthree_symbol Atom_zerotied_cation_plusthree_symbol_v.fep3;;

let nip3 = atom_zerotied_cation_symbol_of_atom_zerotied_cation_plusthree_symbol Atom_zerotied_cation_plusthree_symbol_v.nip3;;


(** {6 Making} *)


let make s = function
  | "hp1" -> hp1
  | "kp1" -> kp1
  | "lip1" -> lip1
  | "nap1" -> nap1
  | "nip1" -> nip1
  | "cup1" -> cup1
  | "mgp2" -> mgp2
  | "cap2" -> cap2
  | "fep2" -> fep2
  | "znp2" -> znp2
  | "cup2" -> cup2
  | "fep3" -> fep3
  | "nip3" -> nip3
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let atom_zerotied_cation_plusone_symbol_off_atom_zerotied_cation_symbol = function
  | Atom_zerotied_cation_symbol_t.Atom_zerotied_cation_plusone_symbol sym_0c1 -> sym_0c1
  | sym_a0c -> Error_messages_v.print_fatal_error
      nam_cod "atom_zerotied_cation_plusone_symbol_off_atom_zerotied_cation_symbol"
      "Atom_zerotied_cation_plusone_symbol"
      (name sym_a0c) "check"
;;

let atom_zerotied_cation_plustwo_symbol_off_atom_zerotied_cation_symbol = function
  | Atom_zerotied_cation_symbol_t.Atom_zerotied_cation_plustwo_symbol sym_0c2 -> sym_0c2
  | sym_a0c -> Error_messages_v.print_fatal_error
      nam_cod "atom_zerotied_cation_plustwo_symbol_off_atom_zerotied_cation_symbol"
      "Atom_zerotied_cation_plustwo_symbol"
      (name sym_a0c) "check"
;;

let atom_zerotied_cation_plusthree_symbol_off_atom_zerotied_cation_symbol = function
  | Atom_zerotied_cation_symbol_t.Atom_zerotied_cation_plusthree_symbol sym_0c3 -> sym_0c3
  | sym_a0c -> Error_messages_v.print_fatal_error
      nam_cod "atom_zerotied_cation_plusthree_symbol_off_atom_zerotied_cation_symbol"
      "Atom_zerotied_cation_plusthree_symbol"
      (name sym_a0c) "check"
;;


(** {6 Querying} *)


let is_atom_zerotied_cation_plusone_symbol_off_atom_zerotied_cation_symbol = function
  | Atom_zerotied_cation_symbol_t.Atom_zerotied_cation_plusone_symbol _ -> true
  | _ -> false
;;

let is_atom_zerotied_cation_plustwo_symbol_off_atom_zerotied_cation_symbol = function
  | Atom_zerotied_cation_symbol_t.Atom_zerotied_cation_plustwo_symbol _ -> true
  | _ -> false
;;

let is_atom_zerotied_cation_plusthree_symbol_off_atom_zerotied_cation_symbol = function
  | Atom_zerotied_cation_symbol_t.Atom_zerotied_cation_plusthree_symbol _ -> true
  | _ -> false
;;


(** created by ./generator atom_zerotied_cation implementation symbol at 15:4 13 Mar 2012. *)



