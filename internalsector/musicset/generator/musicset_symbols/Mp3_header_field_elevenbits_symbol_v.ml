(** {3 Mp3_header_field_elevenbits_symbol_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Mp3_header_field_elevenbits_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name = function
  | Mp3_header_field_elevenbits_symbol_t.Sync_word -> "Sync_word"
;;


(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_topson} *)

let sync_word = Mp3_header_field_elevenbits_symbol_t.Sync_word;;


(** {6 Abbreviating_grandson} *)


(** {6 Making} *)

let make nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "sync_word" -> sync_word
  | _ ->
    failwith "Not_Mp3_header_field_elevenbits_symbol:Mp3_header_field_elevenbits_symbol_v:make"
;;


(** created by ./generator mp3_header_field_elevenbits implementation symbol at 9:23 14 Jul 2012. *)



