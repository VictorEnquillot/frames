(** {3 The functionalities for a Symbol for a Atom_onetied_single.} *)

let nam_cod = "atom_onetied_single_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_onetied_single_symbol_t.H_s -> "h_s"
  | Atom_onetied_single_symbol_t.F_s -> "f_s"
  | Atom_onetied_single_symbol_t.S_s -> "s_s"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let h_s = Atom_onetied_single_symbol_t.H_s;;

let f_s = Atom_onetied_single_symbol_t.F_s;;

let s_s = Atom_onetied_single_symbol_t.S_s;;


(** {6 Making} *)


let make s = function
  | "h_s" -> h_s
  | "f_s" -> f_s
  | "s_s" -> s_s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator atom_onetied_single implementation symbol at 15:1 13 Mar 2012. *)



