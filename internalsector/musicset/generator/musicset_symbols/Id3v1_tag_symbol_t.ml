(** {3 Id3v1_tag_symbol_t} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Id3v1_tag_symbol_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type id3v1_tag_symbol =
  | Id3v1_tag_128_symbol of Id3v1_tag_128_symbol_t.id3v1_tag_128_symbol
  | Id3v1_tag_227_symbol of Id3v1_tag_227_symbol_t.id3v1_tag_227_symbol
;;


(** created by ./generator id3v1_tag implementation symbol at 9:23 14 Jul 2012. *)



