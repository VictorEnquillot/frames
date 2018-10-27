(** {3 Elementary_fence_coordinate_heterogeneous_cylindrical_rho_tag_v} *)

let documentation () = 
[
  "Current : TELE:Elementary_fence_coordinate_heterogeneous_cylindrical_rho_tag_v";
  "Needs: ";
  "Needed-by: ";
  "What-is-it: the couple (Elementary_fence_coordinate_heterogeneous_cylindrical_rho_symbol, Sole_index)";
  "How-is-it-done: ";
]
;;

(** {6 Naming} *)

let name_as_symbol tag_ttt =
  Tag_v.name_as_entity Elementary_fence_coordinate_heterogeneous_cylindrical_rho_symbol_v.name tag_ttt
;;

let as_string tag_ttt =
  Tag_v.as_string Elementary_fence_coordinate_heterogeneous_cylindrical_rho_symbol_v.name tag_ttt
;;

let name tag_ttt =
  Tag_v.name Elementary_fence_coordinate_heterogeneous_cylindrical_rho_symbol_v.name tag_ttt
;;

let string_off tag_ttt =
  Tag_v.string_off Elementary_fence_coordinate_heterogeneous_cylindrical_rho_symbol_v.string_off tag_ttt
;;

let longname tag_ttt =
  Tag_v.longname Elementary_fence_coordinate_heterogeneous_cylindrical_rho_symbol_v.longname tag_ttt
;;

let fullname tag_ttt =
  Tag_v.fullname Elementary_fence_coordinate_heterogeneous_cylindrical_rho_symbol_v.fullname tag_ttt
;;

(** {6 Making} *)

let make soi_ttt nam_ttt s =
  let sym_ttt = Elementary_fence_coordinate_heterogeneous_cylindrical_rho_symbol_v.make nam_ttt s in
  Tag_v.make sym_ttt soi_ttt
;;

(** {6 Coercing} *)

let elementary_tag_of_elementary_fence_coordinate_heterogeneous_cylindrical_rho_tag tag_ttt =
  Tag_v.map_entity (* Coerce Up *)
     Elementary_symbol_v.elementary_symbol_of_elementary_fence_coordinate_heterogeneous_cylindrical_rho_symbol
    tag_ttt
;;

let elementary_fence_coordinate_heterogeneous_cylindrical_rho_tag_off_elementary_tag tag_ele =
  Tag_v.map_entity (* Coerce Down *)
     Elementary_symbol_v.elementary_fence_coordinate_heterogeneous_cylindrical_rho_symbol_off_elementary_symbol
    tag_ele
;;


(* Done by generator/./do_tag_v.sh elementary_fence_coordinate_heterogeneous_cylindrical_rho *)
(* using generator/template_tag_v.ml *)
(* Done on mardi 27 septembre 2016, 09:54:53 (UTC+0200) *)

