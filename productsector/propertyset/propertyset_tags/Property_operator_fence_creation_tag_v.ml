(** {3 Property_operator_fence_creation_tag_v} *)

let documentation () = 
[
  "Current : TPRO:Property_operator_fence_creation_tag_v";
  "Needs: ";
  "Needed-by: ";
  "What-is-it: the couple (Property_operator_fence_creation_symbol, Sole_index)";
  "How-is-it-done: ";
]
;;

(** {6 Naming} *)

let name_as_symbol tag_ttt =
  Tag_v.name_as_entity Property_operator_fence_creation_symbol_v.name tag_ttt
;;

let as_string tag_ttt =
  Tag_v.as_string Property_operator_fence_creation_symbol_v.name tag_ttt
;;

let name tag_ttt =
  Tag_v.name Property_operator_fence_creation_symbol_v.name tag_ttt
;;

let string_off tag_ttt =
  Tag_v.string_off Property_operator_fence_creation_symbol_v.string_off tag_ttt
;;

let longname tag_ttt =
  Tag_v.longname Property_operator_fence_creation_symbol_v.longname tag_ttt
;;

let fullname tag_ttt =
  Tag_v.fullname Property_operator_fence_creation_symbol_v.fullname tag_ttt
;;

(** {6 Making} *)

let make soi_ttt nam_ttt s =
  let sym_ttt = Property_operator_fence_creation_symbol_v.make nam_ttt s in
  Tag_v.make sym_ttt soi_ttt
;;

(** {6 Coercing} *)

let property_tag_of_property_operator_fence_creation_tag tag_ttt =
  Tag_v.map_entity (* Coerce Up *)
     Property_symbol_v.property_symbol_of_property_operator_fence_creation_symbol
    tag_ttt
;;

let property_operator_fence_creation_tag_off_property_tag tag_pro =
  Tag_v.map_entity (* Coerce Down *)
     Property_symbol_v.property_operator_fence_creation_symbol_off_property_symbol
    tag_pro
;;


(* Done by generator/./do_tag_v.sh property_operator_fence_creation *)
(* using generator/template_tag_v.ml *)
(* Done on dimanche 19 mars 2017, 10:50:05 (UTC+0100) *)

