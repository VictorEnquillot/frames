(** {3 The functionalities for a Symbol for a Peptideca_nterminal_fragmented.} *)

let nam_cod = "peptideca_nterminal_fragmented_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Peptideca_nterminal_fragmented_symbol_t.Peptideca_nterminal_proline -> "peptideca_nterminal_proline"
  | Peptideca_nterminal_fragmented_symbol_t.Peptideca_nterminal_regular -> "peptideca_nterminal_regular"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let peptideca_nterminal_proline = Peptideca_nterminal_fragmented_symbol_t.Peptideca_nterminal_proline;;

let peptideca_nterminal_regular = Peptideca_nterminal_fragmented_symbol_t.Peptideca_nterminal_regular;;


(** {6 Making} *)


let make = function
  | "peptideca_nterminal_proline" -> peptideca_nterminal_proline
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "peptideca_nterminal_regular" -> peptideca_nterminal_regular
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator peptideca_nterminal_fragmented implementation symbol at 17:29 1 Mar 2012. *)



