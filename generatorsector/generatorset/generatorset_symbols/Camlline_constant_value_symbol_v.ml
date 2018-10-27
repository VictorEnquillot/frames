(** {3 Camlline_constant_value_symbol_v} *)


let documentation () = 
[
  "Needs: ";
  "Current : CDOS:Camlline_constant_value_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name = function
  | Camlline_constant_value_symbol_t.Format_formatter_arrow -> "Format_formatter_arrow"
  | Camlline_constant_value_symbol_t.Val_name_colon -> "Val_name_colon"
  | Camlline_constant_value_symbol_t.Val_print_colon -> "Val_print_colon"
;;


(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_topson} *)

let format_formatter_arrow = Camlline_constant_value_symbol_t.Format_formatter_arrow;;

let val_name_colon = Camlline_constant_value_symbol_t.Val_name_colon;;

let val_print_colon = Camlline_constant_value_symbol_t.Val_print_colon;;


(** {6 Abbreviating_grandson} *)


(** {6 Making} *)

let make nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "format_formatter_arrow" -> format_formatter_arrow
  | "val_name_colon" -> val_name_colon
  | "val_print_colon" -> val_print_colon
  | _ ->
    failwith "Not_Camlline_constant_value_symbol:Camlline_constant_value_symbol_v:make"
;;


(** created by ./generator camlline_constant_value implementation symbol at 10:11 30 Jan 2013. *)



