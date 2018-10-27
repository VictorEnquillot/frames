(** {3 Figure_fence_point_tag_v} *)

let documentation () = 
[
  "Current : TFIG:Figure_fence_point_tag_v";
  "Needs: ";
  "Needed-by: ";
  "What-is-it: the couple (Figure_fence_point_symbol, Sole_index)";
  "How-is-it-done: ";
]
;;

(** {6 Naming} *)

let name_as_symbol tag_ttt =
  Tag_v.name_as_entity Figure_fence_point_symbol_v.name tag_ttt
;;

let as_string tag_ttt =
  Tag_v.as_string Figure_fence_point_symbol_v.name tag_ttt
;;

let name tag_ttt =
  Tag_v.name Figure_fence_point_symbol_v.name tag_ttt
;;

let string_off tag_ttt =
  Tag_v.string_off Figure_fence_point_symbol_v.string_off tag_ttt
;;

let longname tag_ttt =
  Tag_v.longname Figure_fence_point_symbol_v.longname tag_ttt
;;

let fullname tag_ttt =
  Tag_v.fullname Figure_fence_point_symbol_v.fullname tag_ttt
;;

(** {6 Making} *)

let make soi_ttt nam_ttt s =
  let sym_ttt = Figure_fence_point_symbol_v.make nam_ttt s in
  Tag_v.make sym_ttt soi_ttt
;;

(** {6 Coercing} *)

let figure_tag_of_figure_fence_point_tag tag_ttt =
  Tag_v.map_entity (* Coerce Up *)
     Figure_symbol_v.figure_symbol_of_figure_fence_point_symbol
    tag_ttt
;;

let figure_fence_point_tag_off_figure_tag tag_fig =
  Tag_v.map_entity (* Coerce Down *)
     Figure_symbol_v.figure_fence_point_symbol_off_figure_symbol
    tag_fig
;;


(* Done by generator/./do_tag_v.sh figure_fence_point *)
(* using generator/template_tag_v.ml *)
(* Done on jeudi 13 octobre 2016, 18:14:42 (UTC+0200) *)

