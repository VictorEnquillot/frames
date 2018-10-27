(** {3 Usagefile_for_formula_symbol_v} *)


let documentation () = 
[
  "Needs: ";
  "Current : CDOS:Usagefile_for_formula_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name = function
  | Usagefile_for_formula_symbol_t.Implementation_for_formula -> "implementation_for_formula"
  | Usagefile_for_formula_symbol_t.Interface_for_formula -> "interface_for_formula"
;;

let string_off sym_uff = "";;

(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_topson} *)

let implementation_for_formula = Usagefile_for_formula_symbol_t.Implementation_for_formula;;

let interface_for_formula = Usagefile_for_formula_symbol_t.Interface_for_formula;;


(** {6 Abbreviating_grandson} *)


(** {6 Making} *)

let make nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "implementation_for_formula" -> implementation_for_formula
  | "interface_for_formula" -> interface_for_formula
  | _ ->
    failwith "Not_Usagefile_for_formula_symbol:Usagefile_for_formula_symbol_v:make"
;;


(** created by ./generator usagefile_for_formula implementation symbol at 9:54 18 Feb 2013. *)



