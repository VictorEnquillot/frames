(** {3 The functionalities for a Symbol for a Atom_zerotied_halfbridge.} *)

let nam_cod = "atom_zerotied_halfbridge_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_zerotied_halfbridge_symbol_t.Hb_s -> "hb_s"
  | Atom_zerotied_halfbridge_symbol_t.Hb_c -> "hb_c"
  | Atom_zerotied_halfbridge_symbol_t.Hb_d -> "hb_d"
  | Atom_zerotied_halfbridge_symbol_t.Hb_t -> "hb_t"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let hb_s = Atom_zerotied_halfbridge_symbol_t.Hb_s;;

let hb_c = Atom_zerotied_halfbridge_symbol_t.Hb_c;;

let hb_d = Atom_zerotied_halfbridge_symbol_t.Hb_d;;

let hb_t = Atom_zerotied_halfbridge_symbol_t.Hb_t;;


(** {6 Making} *)


let make s = function
  | "hb_s" -> hb_s
  | "hb_c" -> hb_c
  | "hb_d" -> hb_d
  | "hb_t" -> hb_t
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator atom_zerotied_halfbridge implementation symbol at 15:4 13 Mar 2012. *)



