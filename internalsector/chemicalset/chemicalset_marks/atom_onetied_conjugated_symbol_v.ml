(** {3 The functionalities for a Symbol for a Atom_onetied_conjugated.} *)

let nam_cod = "atom_onetied_conjugated_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_onetied_conjugated_symbol_t.O_c -> "o_c"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let o_c = Atom_onetied_conjugated_symbol_t.O_c;;


(** {6 Making} *)


let make s = function
  | "o_c" -> o_c
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator atom_onetied_conjugated implementation symbol at 15:1 13 Mar 2012. *)



