(** {3 Id3v2_tag_multiple_symbol_t} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Id3v2_tag_multiple_symbol_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type id3v2_tag_multiple_symbol =
  | Tpe1
  | Tcom
  | Text
  | Toly
  | Tope
;;


(** created by ./generator id3v2_tag_multiple implementation symbol at 9:23 14 Jul 2012. *)



