(** {3 The functionalities for a Symbol for a Atom_onetied_double.} *)

let nam_cod = "atom_onetied_double_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_onetied_double_symbol_t.O_d -> "o_d"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let o_d = Atom_onetied_double_symbol_t.O_d;;


(** {6 Making} *)


let make s = function
  | "o_d" -> o_d
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator atom_onetied_double implementation symbol at 15:1 13 Mar 2012. *)



