(** {3 Skeleton_tag_v} *)

let documentation () = 
[
  "Current : TSKE:Skeleton_tag_v";
  "Needs: ";
  "Needed-by: ";
  "What-is-it: the couple (Skeleton_symbol, Sole_index)";
  "How-is-it-done: ";
]
;;

(** {6 Naming} *)

let name_as_symbol tag_ttt =
  Tag_v.name_as_entity Skeleton_symbol_v.name tag_ttt
;;

let as_string tag_ttt =
  Tag_v.as_string Skeleton_symbol_v.name tag_ttt
;;

let name tag_ttt =
  Tag_v.name Skeleton_symbol_v.name tag_ttt
;;

let string_off tag_ttt =
  Tag_v.string_off Skeleton_symbol_v.string_off tag_ttt
;;

let longname tag_ttt =
  Tag_v.longname Skeleton_symbol_v.longname tag_ttt
;;

let fullname tag_ttt =
  Tag_v.fullname Skeleton_symbol_v.fullname tag_ttt
;;

(** {6 Making} *)

let make soi_ttt nam_ttt s =
  let sym_ttt = Skeleton_symbol_v.make nam_ttt s in
  Tag_v.make sym_ttt soi_ttt
;;

