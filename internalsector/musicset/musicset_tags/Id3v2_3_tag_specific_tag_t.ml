(** {3 Id3v2_3_tag_specific_tag_t} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Id3v2_3_tag_specific_tag_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type id3v2_3_tag_specific_tag = Id3v2_3_tag_specific_symbol_t.id3v2_3_tag_specific_symbol Tag_t.tag
;;


(** created by ./generator id3v2_3_tag_specific implementation tag at 11:9 14 Jul 2012. *)


