(** {3 The functionalities for a Symbol for a Atom_zerotied_raregas.} *)

let nam_cod = "atom_zerotied_raregas_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_zerotied_raregas_symbol_t.Ar -> "ar"
  | Atom_zerotied_raregas_symbol_t.He -> "he"
  | Atom_zerotied_raregas_symbol_t.Kr -> "kr"
  | Atom_zerotied_raregas_symbol_t.Ne -> "ne"
  | Atom_zerotied_raregas_symbol_t.Xe -> "xe"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let ar = Atom_zerotied_raregas_symbol_t.Ar;;

let he = Atom_zerotied_raregas_symbol_t.He;;

let kr = Atom_zerotied_raregas_symbol_t.Kr;;

let ne = Atom_zerotied_raregas_symbol_t.Ne;;

let xe = Atom_zerotied_raregas_symbol_t.Xe;;


(** {6 Making} *)


let make s = function
  | "ar" -> ar
  | "he" -> he
  | "kr" -> kr
  | "ne" -> ne
  | "xe" -> xe
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator atom_zerotied_raregas implementation symbol at 15:4 13 Mar 2012. *)



