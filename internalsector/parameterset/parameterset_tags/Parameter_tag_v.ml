(** {3 Parameter_tag_v} *)

let documentation () = 
[
  "Current : TPAR:Parameter_tag_v";
  "Needs: ";
  "Needed-by: ";
  "What-is-it: the couple (Parameter_symbol, Sole_index)";
  "How-is-it-done: ";
]
;;

(** {6 Naming} *)

let name_as_symbol tag_ttt =
  Tag_v.name_as_entity Parameter_symbol_v.name tag_ttt
;;

let as_string tag_ttt =
  Tag_v.as_string Parameter_symbol_v.name tag_ttt
;;

let name tag_ttt =
  Tag_v.name Parameter_symbol_v.name tag_ttt
;;

let string_off tag_ttt =
  Tag_v.string_off Parameter_symbol_v.string_off tag_ttt
;;

let longname tag_ttt =
  Tag_v.longname Parameter_symbol_v.longname tag_ttt
;;

let fullname tag_ttt =
  Tag_v.fullname Parameter_symbol_v.fullname tag_ttt
;;

(** {6 Making} *)

let make soi_ttt nam_ttt s =
  let sym_ttt = Parameter_symbol_v.make nam_ttt s in
  Tag_v.make sym_ttt soi_ttt
;;

