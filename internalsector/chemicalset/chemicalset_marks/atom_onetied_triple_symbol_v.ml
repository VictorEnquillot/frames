(** {3 The functionalities for a Symbol for a Atom_onetied_triple.} *)

let nam_cod = "atom_onetied_triple_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_onetied_triple_symbol_t.C_t -> "c_t"
  | Atom_onetied_triple_symbol_t.N_t -> "n_t"
  | Atom_onetied_triple_symbol_t.O_t -> "o_t"
  | Atom_onetied_triple_symbol_t.S_t -> "s_t"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let c_t = Atom_onetied_triple_symbol_t.C_t;;

let n_t = Atom_onetied_triple_symbol_t.N_t;;

let o_t = Atom_onetied_triple_symbol_t.O_t;;

let s_t = Atom_onetied_triple_symbol_t.S_t;;


(** {6 Making} *)


let make s = function
  | "c_t" -> c_t
  | "n_t" -> n_t
  | "o_t" -> o_t
  | "s_t" -> s_t
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator atom_onetied_triple implementation symbol at 15:1 13 Mar 2012. *)



