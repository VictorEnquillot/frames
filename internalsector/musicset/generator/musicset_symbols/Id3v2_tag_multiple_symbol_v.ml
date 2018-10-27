(** {3 Id3v2_tag_multiple_symbol_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Id3v2_tag_multiple_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name = function
  | Id3v2_tag_multiple_symbol_t.Tpe1 -> "Tpe1"
  | Id3v2_tag_multiple_symbol_t.Tcom -> "Tcom"
  | Id3v2_tag_multiple_symbol_t.Text -> "Text"
  | Id3v2_tag_multiple_symbol_t.Toly -> "Toly"
  | Id3v2_tag_multiple_symbol_t.Tope -> "Tope"
;;


(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_topson} *)

let tpe1 = Id3v2_tag_multiple_symbol_t.Tpe1;;

let tcom = Id3v2_tag_multiple_symbol_t.Tcom;;

let text = Id3v2_tag_multiple_symbol_t.Text;;

let toly = Id3v2_tag_multiple_symbol_t.Toly;;

let tope = Id3v2_tag_multiple_symbol_t.Tope;;


(** {6 Abbreviating_grandson} *)


(** {6 Making} *)

let make nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "tpe1" -> tpe1
  | "tcom" -> tcom
  | "text" -> text
  | "toly" -> toly
  | "tope" -> tope
  | _ ->
    failwith "Not_Id3v2_tag_multiple_symbol:Id3v2_tag_multiple_symbol_v:make"
;;


(** created by ./generator id3v2_tag_multiple implementation symbol at 9:23 14 Jul 2012. *)



