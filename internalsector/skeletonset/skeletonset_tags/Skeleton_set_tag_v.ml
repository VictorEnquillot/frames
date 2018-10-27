(** {3 Skeleton_set_tag_v} *)

let documentation () = 
[
  "Current : TSKE:Skeleton_set_tag_v";
  "Needs: ";
  "Needed-by: ";
  "What-is-it: the couple (Skeleton_set_symbol, Sole_index)";
  "How-is-it-done: ";
]
;;

(** {6 Naming} *)

let name_as_symbol tag_ttt =
  Tag_v.name_as_entity Skeleton_set_symbol_v.name tag_ttt
;;

let as_string tag_ttt =
  Tag_v.as_string Skeleton_set_symbol_v.name tag_ttt
;;

let name tag_ttt =
  Tag_v.name Skeleton_set_symbol_v.name tag_ttt
;;

let string_off tag_ttt =
  Tag_v.string_off Skeleton_set_symbol_v.string_off tag_ttt
;;

let longname tag_ttt =
  Tag_v.longname Skeleton_set_symbol_v.longname tag_ttt
;;

let fullname tag_ttt =
  Tag_v.fullname Skeleton_set_symbol_v.fullname tag_ttt
;;

(** {6 Making} *)

let make soi_ttt nam_ttt s =
  let sym_ttt = Skeleton_set_symbol_v.make nam_ttt s in
  Tag_v.make sym_ttt soi_ttt
;;

(** {6 Coercing} *)

let skeleton_tag_of_skeleton_set_tag tag_ttt =
  Tag_v.map_entity (* Coerce Up *)
     Skeleton_symbol_v.skeleton_symbol_of_skeleton_set_symbol
    tag_ttt
;;

let skeleton_set_tag_off_skeleton_tag tag_ske =
  Tag_v.map_entity (* Coerce Down *)
     Skeleton_symbol_v.skeleton_set_symbol_off_skeleton_symbol
    tag_ske
;;


(* Done by generator/./do_tag_v.sh skeleton_set *)
(* using generator/template_tag_v.ml *)
(* Done on jeudi 5 janvier 2017, 14:14:32 (UTC+0100) *)

