(** {3 Parameter_fence_ecppef_exponent_tag_v} *)

let documentation () = 
[
  "Current : TPAR:Parameter_fence_ecppef_exponent_tag_v";
  "Needs: ";
  "Needed-by: ";
  "What-is-it: the couple (Parameter_fence_ecppef_exponent_symbol, Sole_index)";
  "How-is-it-done: ";
]
;;

(** {6 Naming} *)

let name_as_symbol tag_ttt =
  Tag_v.name_as_entity Parameter_fence_ecppef_exponent_symbol_v.name tag_ttt
;;

let as_string tag_ttt =
  Tag_v.as_string Parameter_fence_ecppef_exponent_symbol_v.name tag_ttt
;;

let name tag_ttt =
  Tag_v.name Parameter_fence_ecppef_exponent_symbol_v.name tag_ttt
;;

let string_off tag_ttt =
  Tag_v.string_off Parameter_fence_ecppef_exponent_symbol_v.string_off tag_ttt
;;

let longname tag_ttt =
  Tag_v.longname Parameter_fence_ecppef_exponent_symbol_v.longname tag_ttt
;;

let fullname tag_ttt =
  Tag_v.fullname Parameter_fence_ecppef_exponent_symbol_v.fullname tag_ttt
;;

(** {6 Making} *)

let make soi_ttt nam_ttt s =
  let sym_ttt = Parameter_fence_ecppef_exponent_symbol_v.make nam_ttt s in
  Tag_v.make sym_ttt soi_ttt
;;

(** {6 Coercing} *)

let parameter_tag_of_parameter_fence_ecppef_exponent_tag tag_ttt =
  Tag_v.map_entity (* Coerce Up *)
     Parameter_symbol_v.parameter_symbol_of_parameter_fence_ecppef_exponent_symbol
    tag_ttt
;;

let parameter_fence_ecppef_exponent_tag_off_parameter_tag tag_par =
  Tag_v.map_entity (* Coerce Down *)
     Parameter_symbol_v.parameter_fence_ecppef_exponent_symbol_off_parameter_symbol
    tag_par
;;


(* Done by generator/./do_tag_v.sh parameter_fence_ecppef_exponent *)
(* using generator/template_tag_v.ml *)
(* Done on vendredi 2 décembre 2016, 16:29:48 (UTC+0100) *)

