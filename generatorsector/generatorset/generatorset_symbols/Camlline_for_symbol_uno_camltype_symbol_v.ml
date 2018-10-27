(** {3 Camlline_for_symbol_uno_camltype_symbol_v} *)


let documentation () = 
[
  "Needs: ";
  "Current : CDOS:Camlline_for_symbol_uno_camltype_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name = function
  | Camlline_for_symbol_uno_camltype_symbol_t.Pipe_es -> "Pipe_es"
;;


(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_topson} *)

let pipe_es = Camlline_for_symbol_uno_camltype_symbol_t.Pipe_es;;


(** {6 Abbreviating_grandson} *)


(** {6 Making} *)

let make nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "pipe_es" -> pipe_es
  | _ ->
    failwith "Not_Camlline_for_symbol_uno_camltype_symbol:Camlline_for_symbol_uno_camltype_symbol_v:make"
;;


(** created by ./generator camlline_for_symbol_uno_camltype implementation symbol at 13:54 14 Feb 2013. *)



