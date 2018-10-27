(** {3 The functionalities for a Symbol for a Cterminal_subunit.} *)

let nam_cod = "cterminal_subunit_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Cterminal_subunit_symbol_t.Carboxyl_leftextended -> "carboxyl_leftextended"
  | Cterminal_subunit_symbol_t.Carboxylate_leftextended -> "carboxylate_leftextended"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let carboxyl_leftextended = Cterminal_subunit_symbol_t.Carboxyl_leftextended;;

let carboxylate_leftextended = Cterminal_subunit_symbol_t.Carboxylate_leftextended;;


(** {6 Making} *)


let make = function
  | "carboxyl_leftextended" -> carboxyl_leftextended
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "carboxylate_leftextended" -> carboxylate_leftextended
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator cterminal_subunit implementation symbol at 17:26 1 Mar 2012. *)



