(** {3 Figure_set_body_segment_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FFIG:Figure_set_body_segment_container_v";
   "Needs : FFIG:Figure_set_fence_point_tag_v";
   "Needs : FFIG:Figure_set_fence_point for son list predicate";
   "Needs : DFIG:Figure_any_category_by_sole_index_extractor_v";
   "Needs : DFIG:Figure_fence_by_figure_tag_provider_v";
   "Definition : a Building is the same Datastructure as a Container but filled with Builders"; 
   "Definition : a Containee is a Builder expressed in the lowest subtype compatible with the Datastructure of the Container";
   "Definition : a Container is the Datastructure of the Containee of an Entity";
   "Definition : a Containee is an element of the Datastructure of the Container of an Entity";
   "Definition : a fence Container contains an Uno of its Tag";
   "Definition : a non-fence Bud Container is a Datastructure of Containee Tag";
   "Definition : a non-fence non-Bud (Node of CT Symbol) Container are Up Coerced from lower Container sub-types";
   "Remark : here Figure_set_fence_point is also Containee_up";
   "What-is-it : it is a Body Bud container as a Duo of Figure_set_fence_point : Figure_set_fence_point fpa and Figure_set_fence_point fpb";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name con_fbs =
  Duo_v.name 
    Figure_set_fence_point_tag_v.name
    con_fbs
;;

let string_off con_fbs =
  Duo_v.name 
    Figure_set_fence_point_tag_v.string_off
    con_fbs
;;

let longname con_fbs =
  Duo_v.name 
    Figure_set_fence_point_tag_v.longname
    con_fbs
;;

let fullname con_fbs =
  Duo_v.name 
    Figure_set_fence_point_tag_v.fullname
    con_fbs
;;

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_fbs =
  Tag_v.map_entity 
    Figure_symbol_v.figure_symbol_of_figure_set_body_segment_symbol 
    tag_fbs
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_fbs =
  let tag_fig = coerce_up_tag tag_fbs in
  Figure_son_tag_list_by_figure_father_tag_provider_v.provide tag_fig
;;

(** {9 Builder Tag Datastructures} *)

let builder_tag_duo tag_fbs =
  let tag_bui_l = builder_tag_list_of_tag tag_fbs in
  Duo_v.duo_of_list tag_bui_l
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple tag_fbs =
  let tag_bui_d = builder_tag_duo tag_fbs in
  Tuple_v.tuple_of_duo tag_bui_d
;;

(** {9 Building as Builder Tag duo} *)

let building_of_tag tag_fbs =
  builder_tag_duo tag_fbs
;;

(** {6 Container} *)

(** {9 Coercing Up Containee_up Tag to Builder Tag} *)

let builder_tag_of_containee_tag tag_cnu =
  Tag_v.map_entity 
    Figure_symbol_v.figure_symbol_of_figure_set_fence_point_symbol
    tag_cnu
;;

(** {9 Coercing Down Builder Tag to Containee_up Tag} *)

let containee_tag_off_builder_tag tag_bui =
  Tag_v.map_entity 
    Figure_symbol_v.figure_set_fence_point_symbol_off_figure_symbol
    tag_bui
;;

(** {9 Containee_up Tag list} *)

let containee_tag_list_of_tag tag_fbs =
  let tag_bui_l = builder_tag_list_of_tag tag_fbs in
  List.map containee_tag_off_builder_tag tag_bui_l 
;;

(** {9 Containee_up Tag Duo} *)

let containee_tag_duo tag_fbs =
  let tag_cnu_l = containee_tag_list_of_tag tag_fbs in
  Duo_v.duo_of_list tag_cnu_l
;;

(** {9 Extracting Containees off Containee_up} *)

(* No matter here *)

(** {9 Container_of_tag : Containee Datastructure} *)

let container_of_tag tag_fbs =
  containee_tag_duo tag_fbs 
;;

(** {9 Extracting Containees off Tag} *)

let first_containee_tag tag_fbs =
  let con_fbs = container_of_tag tag_fbs in
  Duo_v.first_off_duo con_fbs
;;

let second_containee_tag tag_fbs =
  let con_fbs = container_of_tag tag_fbs in
  Duo_v.second_off_duo con_fbs
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_fbs =
  let tag_fig = coerce_up_tag tag_fbs in
  Figure_fence_by_figure_tag_provider_v.provide tag_fig
;;

let fence_as_duo tag_fbs =
  let fen_fbs = fence_as_list_of_tag tag_fbs in
  Duo_v.duo_of_list fen_fbs
;;

let fence_as_tuple_of_tag tag_fbs =
  let fen_l = fence_as_list_of_tag tag_fbs in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_fbs =
  let fen_l = fence_as_list_of_tag tag_fbs in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_duo_body_bud_1containee_v.sh figure_set_body_segment fbs figure_set_fence_point fpa fpb *)
(* using ./template_container_as_duo_body_bud_1containee_v.ml *)
(* done on vendredi 2 décembre 2016, 14:43:50 (UTC+0100) *)

