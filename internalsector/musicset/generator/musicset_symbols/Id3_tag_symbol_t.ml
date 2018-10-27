(** {3 Id3_tag_symbol_t} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Id3_tag_symbol_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type id3_tag_symbol =
  | Id3v1_tag_symbol of Id3v1_tag_symbol_t.id3v1_tag_symbol
  | Id3v1_1_tag
  | Id3v2_tag_symbol of Id3v2_tag_symbol_t.id3v2_tag_symbol
;;


(** created by ./generator id3_tag implementation symbol at 9:23 14 Jul 2012. *)



