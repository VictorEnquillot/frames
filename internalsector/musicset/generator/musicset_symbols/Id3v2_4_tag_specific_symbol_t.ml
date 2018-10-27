(** {3 Id3v2_4_tag_specific_symbol_t} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Id3v2_4_tag_specific_symbol_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type id3v2_4_tag_specific_symbol =
  | Aspi
  | Equ2
  | Rva2
  | Seek
  | Sign
  | Tden
  | Tdor
  | Tdrc
  | Tdrl
  | Tdtg
  | Tipl
  | Tmcl
  | Tmoo
  | Tpro
  | Tsoa
  | Tsop
  | Tsot
  | Tsst
;;


(** created by ./generator id3v2_4_tag_specific implementation symbol at 9:23 14 Jul 2012. *)



