(** {3 Id3v1_tag_227_symbol_t} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Id3v1_tag_227_symbol_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type id3v1_tag_227_symbol =
  | Header_4
  | Title_60
  | Artist_60
  | Album_60
  | Speed_1
  | Genre_30
  | Start_time_6
  | End_time_6
;;


(** created by ./generator id3v1_tag_227 implementation symbol at 9:23 14 Jul 2012. *)



