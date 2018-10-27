(** {3 Elementary_border_coordinate_homogeneous_planar_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FELE:Elementary_border_coordinate_homogeneous_planar_container_v";
   "Needs : FELE:Elementary_fence_units_actual_length_tag_v";
   "Needs : DELE:Elementary_any_category_by_sole_index_extractor_v";
   "Needs : DELE:Elementary_fence_by_elementary_tag_provider_v";
   "Needed-by: ";
   "Definition : for any Entity its B-Tree is the Tree of the Entity Tags necessary to build its value";
   "Definition : the Context gathers entities at the top of the B-Tree of a Domain (Domain, Database, Databox)";
   "Definition : the Body gathers entities of the B-Tree of a Domain being neither Context nor Fence";
   "Definition : the Fence is the Tag list of the Leaf entities of the B-Tree of a Domain";
   "Definition : the Border is the Tag list of the father entities of the Fence of the Elementary Domain";
   "Definition : a Builder (for an Entity of a Domain) is a son of its Builder-Subtree";
   "Definition : a Containee is a Builder expressed in the lowest subtype compatible with the Datastructure of the Container";
   "Definition : a Container is the Datastructure of the Containee of an Entity";
   "Definition : a Containee is an element of the Datastructure of the Container of an Entity";
   "Definition : a Building is the same Datastructure as Container filled with Builders"; 
   "Definition : a Stalk is a type with only one constructor of nothing";
   "Definition : a Bud type is a type with only one constructor of string";
   "Definition : a Stem type has only constructor of string";
   "Definition : a Branch type has only constructors of nothing";
   "Definition : a Trunc type has only constructors of constructor";
   "What-is-it : Up_coercion of Container type as Symbol type up_coercion";
   "What-is-it : it is a Trunc container of Border sub-Types and thus a Uno of its Elementary_fence_units_actual_length Tag";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name = function
  | Elementary_border_coordinate_homogeneous_planar_container_t.Elementary_border_coordinate_homogeneous_planar_x_container con_epx ->
      (Elementary_border_coordinate_homogeneous_planar_x_container_v.name con_epx)
        
  | Elementary_border_coordinate_homogeneous_planar_container_t.Elementary_border_coordinate_homogeneous_planar_y_container con_epx ->
      (Elementary_border_coordinate_homogeneous_planar_y_container_v.name con_epx)
;;

let string_off = function
  | Elementary_border_coordinate_homogeneous_planar_container_t.Elementary_border_coordinate_homogeneous_planar_x_container con_epx ->
      (Elementary_border_coordinate_homogeneous_planar_x_container_v.string_off con_epx)
        
  | Elementary_border_coordinate_homogeneous_planar_container_t.Elementary_border_coordinate_homogeneous_planar_y_container con_epx ->
      (Elementary_border_coordinate_homogeneous_planar_y_container_v.string_off con_epx)
;;

let longname = function
  | Elementary_border_coordinate_homogeneous_planar_container_t.Elementary_border_coordinate_homogeneous_planar_x_container con_epx ->
      (Elementary_border_coordinate_homogeneous_planar_x_container_v.longname con_epx)
        
  | Elementary_border_coordinate_homogeneous_planar_container_t.Elementary_border_coordinate_homogeneous_planar_y_container con_epx ->
      (Elementary_border_coordinate_homogeneous_planar_y_container_v.longname con_epx)
;;

let fullname = function
  | Elementary_border_coordinate_homogeneous_planar_container_t.Elementary_border_coordinate_homogeneous_planar_x_container con_epx ->
      (Elementary_border_coordinate_homogeneous_planar_x_container_v.fullname con_epx)
        
  | Elementary_border_coordinate_homogeneous_planar_container_t.Elementary_border_coordinate_homogeneous_planar_y_container con_epx ->
      (Elementary_border_coordinate_homogeneous_planar_y_container_v.fullname con_epx)
;;

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_chp =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_symbol_of_elementary_border_coordinate_homogeneous_planar_symbol 
    tag_chp
;;

(** {6 Coercing Up Containee} *)

let builder_tag_of_containee_tag tag_eal =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_symbol_of_elementary_fence_units_actual_length_symbol 
    tag_eal
;;

(** {6 Coercing Down Containee} *)

let containee_tag_off_builder_tag tag_ele =
  Tag_v.map_entity
    Elementary_symbol_v.elementary_fence_units_actual_length_symbol_off_elementary_symbol
    tag_ele
;;

(** {6 Builder Tag list} *)

let builder_tag_list tag_chp =
  let tag_ele = coerce_up_tag tag_chp in
  Son_elementary_tag_list_by_father_elementary_tag_provider_v.provide 
    tag_ele
;;

(** {6 Builder Tag Datastructures} *)

let builder_tag_uno tag_chp =
  let tag_bui_l = builder_tag_list tag_chp in
  Uno_v.uno_of_list tag_bui_l
;;

(** {6 Builder Tag Tuple} *)

let builder_tag_tuple tag_chp =
  let tag_bui_u = builder_tag_uno tag_chp in
  Tuple_v.tuple_of_uno tag_bui_u
;;

(** {6 Building as Builder Tag uno} *)

let building_of_tag tag_chp =
  builder_tag_uno tag_chp
;;

(** {6 Container_of_tag : Containee Datastructure} *)

let container_of_tag tag_chp =
  let bug = building_of_tag tag_chp in
  Uno_v.map (* Coerce Down *)
    containee_tag_off_builder_tag
    bug
;;

(** {6 Containee Tag Datastructure} *)

let containee_tag_uno tag_chp =
  container_of_tag tag_chp
;;

(** {6 Containee Tag Tuple} *)

let containee_tag_tuple tag_chp =
  let tag_cne_u = containee_tag_uno tag_chp in
  Tuple_v.tuple_of_uno tag_cne_u
;;

(** {6 Border *)

let border_as_list tag_chp =
  let tag_ele = coerce_up_tag tag_chp in
  Elementary_border_by_elementary_tag_provider_v.provide tag_ele
;;

let border_as_duo tag_chp =
  let bor_chp = border_as_list tag_chp in
  Duo_v.duo_of_list bor_chp
;;

let border_as_tuple tag_chp =
  let bor_l = border_as_list tag_chp in
  Tuple_v.tuple_of_list bor_l
;;

let border_as_tuple_list tag_chp =
  let bor_l = border_as_list tag_chp in
  Tuple_list_v.make bor_l
;;

(** {6 Fence *)

let fence_as_list tag_chp =
  let tag_ele = coerce_up_tag tag_chp in
  Elementary_fence_by_elementary_tag_provider_v.provide tag_ele
;;

let fence_as_uno tag_chp =
  let fen_chp = fence_as_list tag_chp in
  Uno_v.uno_of_list fen_chp
;;

let fence_as_tuple tag_chp =
  let fen_l = fence_as_list tag_chp in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list tag_chp =
  let fen_l = fence_as_list tag_chp in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_uno_border_trunc_2sibling_1containee_v.sh elementary_border_coordinate_homogeneous_planar chp elementary_border_coordinate_homogeneous_planar_x epx elementary_border_coordinate_homogeneous_planar_y epx elementary_fence_units_actual_length eal   *)
(* using ./template_container_as_uno_border_trunc_2sibling_1containee_v.ml *)
(* Done on mercredi 11 mai 2016, 10:51:50 (UTC+0200) *)

