(** {3 Usagefile_for_symbol_symbol_v} *)


let documentation () = 
[
  "Needs: ";
  "Current : CDOS:Usagefile_for_symbol_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name = function
  | Usagefile_for_symbol_symbol_t.Implementation_for_symbol -> "implementation_for_symbol"
  | Usagefile_for_symbol_symbol_t.Interface_for_symbol -> "interface_for_symbol"
;;

let string_off sym_ufs = "";;

(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_topson} *)

let implementation_for_symbol = Usagefile_for_symbol_symbol_t.Implementation_for_symbol;;

let interface_for_symbol = Usagefile_for_symbol_symbol_t.Interface_for_symbol;;


(** {6 Abbreviating_grandson} *)


(** {6 Making} *)

let make nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "implementation_for_symbol" -> implementation_for_symbol
  | "interface_for_symbol" -> interface_for_symbol
  | _ ->
    failwith "Not_Usagefile_for_symbol_symbol:Usagefile_for_symbol_symbol_v:make"
;;


(** created by ./generator usagefile_for_symbol implementation symbol at 9:54 18 Feb 2013. *)



