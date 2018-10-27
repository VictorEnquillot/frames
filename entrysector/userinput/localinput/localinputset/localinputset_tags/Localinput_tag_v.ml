(** {3 Localinput_tag_v} *)

let documentation () = 
[
  "Current : TLOC:Localinput_tag_v";
  "Needs: ";
  "Needed-by: ";
  "What-is-it: the couple (Localinput_symbol, Sole_index)";
  "How-is-it-done: ";
]
;;

(** {6 Naming} *)

let name_as_symbol tag_ttt =
  Tag_v.name_as_entity Localinput_symbol_v.name tag_ttt
;;

let as_string tag_ttt =
  Tag_v.as_string Localinput_symbol_v.name tag_ttt
;;

let name tag_ttt =
  Tag_v.name Localinput_symbol_v.name tag_ttt
;;

let string_off tag_ttt =
  Tag_v.string_off Localinput_symbol_v.string_off tag_ttt
;;

let longname tag_ttt =
  Tag_v.longname Localinput_symbol_v.longname tag_ttt
;;

let fullname tag_ttt =
  Tag_v.fullname Localinput_symbol_v.fullname tag_ttt
;;

(** {6 Making} *)

let make soi_ttt nam_ttt s =
  let sym_ttt = Localinput_symbol_v.make nam_ttt s in
  Tag_v.make sym_ttt soi_ttt
;;

