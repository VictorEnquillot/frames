(** {3 Id3v1_tag_128_symbol_t} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Id3v1_tag_128_symbol_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type id3v1_tag_128_symbol =
  | Header_3
  | Title_30
  | Artist_30
  | Album_30
  | Year_4
  | Comment_28
  | Comment_30
  | Zero_byte_1
  | Track_1
  | Genre_1
;;


(** created by ./generator id3v1_tag_128 implementation symbol at 9:23 14 Jul 2012. *)



