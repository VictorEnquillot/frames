(** {3 Coordinate_set_fence_heterogeneous_spherical_tag_v} *)

let documentation () = 
[
  "Current : TCOO:Coordinate_set_fence_heterogeneous_spherical_tag_v";
  "Needs: ";
  "Needed-by: ";
  "What-is-it: the couple (Coordinate_set_fence_heterogeneous_spherical_symbol, Sole_index)";
  "How-is-it-done: ";
]
;;

(** {6 Naming} *)

let name_as_symbol tag_ttt =
  Tag_v.name_as_entity Coordinate_set_fence_heterogeneous_spherical_symbol_v.name tag_ttt
;;

let as_string tag_ttt =
  Tag_v.as_string Coordinate_set_fence_heterogeneous_spherical_symbol_v.name tag_ttt
;;

let name tag_ttt =
  Tag_v.name Coordinate_set_fence_heterogeneous_spherical_symbol_v.name tag_ttt
;;

let string_off tag_ttt =
  Tag_v.string_off Coordinate_set_fence_heterogeneous_spherical_symbol_v.string_off tag_ttt
;;

let longname tag_ttt =
  Tag_v.longname Coordinate_set_fence_heterogeneous_spherical_symbol_v.longname tag_ttt
;;

let fullname tag_ttt =
  Tag_v.fullname Coordinate_set_fence_heterogeneous_spherical_symbol_v.fullname tag_ttt
;;

(** {6 Making} *)

let make soi_ttt nam_ttt s =
  let sym_ttt = Coordinate_set_fence_heterogeneous_spherical_symbol_v.make nam_ttt s in
  Tag_v.make sym_ttt soi_ttt
;;

(** {6 Coercing} *)

let coordinate_tag_of_coordinate_set_fence_heterogeneous_spherical_tag tag_ttt =
  Tag_v.map_entity (* Coerce Up *)
     Coordinate_symbol_v.coordinate_symbol_of_coordinate_set_fence_heterogeneous_spherical_symbol
    tag_ttt
;;

let coordinate_set_fence_heterogeneous_spherical_tag_off_coordinate_tag tag_coo =
  Tag_v.map_entity (* Coerce Down *)
     Coordinate_symbol_v.coordinate_set_fence_heterogeneous_spherical_symbol_off_coordinate_symbol
    tag_coo
;;


(* Done by generator/./do_tag_v.sh coordinate_set_fence_heterogeneous_spherical *)
(* using generator/template_tag_v.ml *)
(* Done on mercredi 14 décembre 2016, 11:34:20 (UTC+0100) *)

