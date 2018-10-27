(** {3 Figure_tag_v} *)

let documentation () = 
[
  "Current : TFIG:Figure_tag_v";
  "Needs: ";
  "Needed-by: ";
  "What-is-it: the couple (Figure_symbol, Sole_index)";
  "How-is-it-done: ";
]
;;

(** {6 Naming} *)

let name_as_symbol tag_ttt =
  Tag_v.name_as_entity Figure_symbol_v.name tag_ttt
;;

let as_string tag_ttt =
  Tag_v.as_string Figure_symbol_v.name tag_ttt
;;

let name tag_ttt =
  Tag_v.name Figure_symbol_v.name tag_ttt
;;

let string_off tag_ttt =
  Tag_v.string_off Figure_symbol_v.string_off tag_ttt
;;

let longname tag_ttt =
  Tag_v.longname Figure_symbol_v.longname tag_ttt
;;

let fullname tag_ttt =
  Tag_v.fullname Figure_symbol_v.fullname tag_ttt
;;

(** {6 Making} *)

let make soi_ttt nam_ttt s =
  let sym_ttt = Figure_symbol_v.make nam_ttt s in
  Tag_v.make sym_ttt soi_ttt
;;

