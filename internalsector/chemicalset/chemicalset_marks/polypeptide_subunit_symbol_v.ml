(** {3 The functionalities for a Symbol for a Polypeptide_subunit.} *)

let nam_cod = "polypeptide_subunit_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Polypeptide_subunit_symbol_t.Polypeptide_subunit_proline _ -> "polypeptide_subunit_proline"
  | Polypeptide_subunit_symbol_t.Polypeptide_subunit_regular_leftextended -> "polypeptide_subunit_regular_leftextended"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let polypeptide_subunit_proline s = Polypeptide_subunit_symbol_t.Polypeptide_subunit_proline s;;

let polypeptide_subunit_regular_leftextended = Polypeptide_subunit_symbol_t.Polypeptide_subunit_regular_leftextended;;


(** {6 Making} *)


let make s = function
  | "polypeptide_subunit_proline" -> polypeptide_subunit_proline s
  | "polypeptide_subunit_regular_leftextended" -> polypeptide_subunit_regular_leftextended
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator polypeptide_subunit implementation symbol at 15:4 13 Mar 2012. *)



