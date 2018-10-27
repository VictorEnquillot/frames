(** {3 Id3v2_3_tag_specific_symbol_t} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Id3v2_3_tag_specific_symbol_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type id3v2_3_tag_specific_symbol =
  | Equa
  | Ipls
  | Rvad
  | Tdat
  | Time
  | Tory
  | Trda
  | Tyer
  | Tsiz
;;


(** created by ./generator id3v2_3_tag_specific implementation symbol at 9:23 14 Jul 2012. *)



