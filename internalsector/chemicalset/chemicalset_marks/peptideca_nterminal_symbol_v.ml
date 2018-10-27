(** {3 The functionalities for a Symbol for a Peptideca_nterminal.} *)

let nam_cod = "peptideca_nterminal_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Peptideca_nterminal_symbol_t.Peptideca_nterminal_glycine -> "peptideca_nterminal_glycine"
  | Peptideca_nterminal_symbol_t.Peptideca_nterminal_fragmented_symbol sym_pnf ->
      Peptideca_nterminal_fragmented_symbol_v.name sym_pnf
;;


(** {6 Upgrading} *)


let peptideca_nterminal_symbol_of_peptideca_nterminal_fragmented_symbol sym_pnf = 
  Peptideca_nterminal_symbol_t.Peptideca_nterminal_fragmented_symbol sym_pnf
;;


(** {6 Abbreviating} *)


let peptideca_nterminal_glycine = Peptideca_nterminal_symbol_t.Peptideca_nterminal_glycine;;

let peptideca_nterminal_proline = peptideca_nterminal_symbol_of_peptideca_nterminal_fragmented_symbol Peptideca_nterminal_fragmented_symbol_v.peptideca_nterminal_proline;;

let peptideca_nterminal_regular = peptideca_nterminal_symbol_of_peptideca_nterminal_fragmented_symbol Peptideca_nterminal_fragmented_symbol_v.peptideca_nterminal_regular;;


(** {6 Making} *)


let make = function
  | "peptideca_nterminal_glycine" -> peptideca_nterminal_glycine
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
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


let peptideca_nterminal_fragmented_symbol_off_peptideca_nterminal_symbol = function
  | Peptideca_nterminal_symbol_t.Peptideca_nterminal_fragmented_symbol sym_pnf -> sym_pnf
  | sym_pen -> Error_messages_v.print_fatal_error
      nam_cod "peptideca_nterminal_fragmented_symbol_off_peptideca_nterminal_symbol"
      "Peptideca_nterminal_fragmented_symbol"
      (name sym_pen) "check"
;;


(** {6 Querying} *)


let is_peptideca_nterminal_fragmented_symbol_off_peptideca_nterminal_symbol = function
  | Peptideca_nterminal_symbol_t.Peptideca_nterminal_fragmented_symbol _ -> true
  | _ -> false
;;


(** created by ./generator peptideca_nterminal implementation symbol at 17:29 1 Mar 2012. *)



