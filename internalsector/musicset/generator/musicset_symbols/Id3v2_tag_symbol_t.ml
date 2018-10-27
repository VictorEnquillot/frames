(** {3 Id3v2_tag_symbol_t} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Id3v2_tag_symbol_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type id3v2_tag_symbol =
  | Id3v2_base_tag_symbol of Id3v2_base_tag_symbol_t.id3v2_base_tag_symbol
  | Id3v2_tag_specific_symbol of Id3v2_tag_specific_symbol_t.id3v2_tag_specific_symbol
;;


(** created by ./generator id3v2_tag implementation symbol at 9:23 14 Jul 2012. *)



