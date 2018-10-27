(** {3 Usagefile_symbol_v} *)


let documentation () = 
[
  "Needs: ";
  "Current : CDOS:Usagefile_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name = function
  | Usagefile_symbol_t.Usagefile_for_symbol_symbol sym_ufs ->
      Usagefile_for_symbol_symbol_v.name sym_ufs
  | Usagefile_symbol_t.Usagefile_for_formula_symbol sym_uff ->
      Usagefile_for_formula_symbol_v.name sym_uff
;;

let string_off = function
  | Usagefile_symbol_t.Usagefile_for_symbol_symbol sym_ufs ->
      Usagefile_for_symbol_symbol_v.string_off sym_ufs
  | Usagefile_symbol_t.Usagefile_for_formula_symbol sym_uff ->
      Usagefile_for_formula_symbol_v.string_off sym_uff
;;


(** {6 Extracting_topson} *)

let usagefile_for_symbol_symbol_off_usagefile_symbol = function
  | Usagefile_symbol_t.Usagefile_for_symbol_symbol sym_ufs -> sym_ufs
  | sym_usa -> Error_messages_v.print_fatal_error
      nam_cod "usagefile_for_symbol_symbol_off_usagefile_symbol"
      "Usagefile_for_symbol_symbol"
      (name sym_usa) "check"
;;

let usagefile_for_formula_symbol_off_usagefile_symbol = function
  | Usagefile_symbol_t.Usagefile_for_formula_symbol sym_uff -> sym_uff
  | sym_usa -> Error_messages_v.print_fatal_error
      nam_cod "usagefile_for_formula_symbol_off_usagefile_symbol"
      "Usagefile_for_formula_symbol"
      (name sym_usa) "check"
;;


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)

let is_usagefile_for_symbol_symbol_off_usagefile_symbol = function
  | Usagefile_symbol_t.Usagefile_for_symbol_symbol _ -> true
  | _ -> false
;;

let is_usagefile_for_formula_symbol_off_usagefile_symbol = function
  | Usagefile_symbol_t.Usagefile_for_formula_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)

let usagefile_symbol_of_usagefile_for_symbol_symbol sym_ufs = 
  Usagefile_symbol_t.Usagefile_for_symbol_symbol sym_ufs
;;

let usagefile_symbol_of_usagefile_for_formula_symbol sym_uff = 
  Usagefile_symbol_t.Usagefile_for_formula_symbol sym_uff
;;


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_topson} *)


(** {6 Abbreviating_grandson} *)

let implementation_for_symbol = usagefile_symbol_of_usagefile_for_symbol_symbol Usagefile_for_symbol_symbol_v.implementation_for_symbol;;

let interface_for_symbol = usagefile_symbol_of_usagefile_for_symbol_symbol Usagefile_for_symbol_symbol_v.interface_for_symbol;;

let implementation_for_formula = usagefile_symbol_of_usagefile_for_formula_symbol Usagefile_for_formula_symbol_v.implementation_for_formula;;

let interface_for_formula = usagefile_symbol_of_usagefile_for_formula_symbol Usagefile_for_formula_symbol_v.interface_for_formula;;


(** {6 Making} *)

let make nam s =
  try usagefile_symbol_of_usagefile_for_symbol_symbol
      (Usagefile_for_symbol_symbol_v.make nam s)
  with Failure "Not_Usagefile_for_symbol_symbol:Usagefile_for_symbol_symbol_v:make" ->
  try usagefile_symbol_of_usagefile_for_formula_symbol
      (Usagefile_for_formula_symbol_v.make nam s)
  with Failure "Not_Usagefile_for_formula_symbol:Usagefile_for_formula_symbol_v:make" ->
    Error_messages_v.print_fatal_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Usagefile subtype" nam s)
      "it does not exists"
      "Check file usagefile_symbol_v.ml" 
;;


(** created by ./generator usagefile implementation symbol at 9:54 18 Feb 2013. *)

