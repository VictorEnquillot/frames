(** {3 Elementary_body_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FELE:Elementary_body_container_v";
   "Needs : FELE:Elementary_body_tag_v";
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
   "What-is-it : it is a Trunc container of Border sub-Types and thus a Tuple of its Elementary_body Tag";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name = function
  | Elementary_body_container_t.Elementary_body_coordinate_tuple_container con_ect ->
      (Elementary_body_coordinate_tuple_container_v.name con_ect)
        
  | Elementary_body_container_t.Elementary_body_parameter_tuple_container con_ept ->
      (Elementary_body_parameter_tuple_container_v.name con_ept)
;;

let string_off = function
  | Elementary_body_container_t.Elementary_body_coordinate_tuple_container con_ect ->
      (Elementary_body_coordinate_tuple_container_v.string_off con_ect)
        
  | Elementary_body_container_t.Elementary_body_parameter_tuple_container con_ept ->
      (Elementary_body_parameter_tuple_container_v.string_off con_ept)
;;

let longname = function
  | Elementary_body_container_t.Elementary_body_coordinate_tuple_container con_ect ->
      (Elementary_body_coordinate_tuple_container_v.longname con_ect)
        
  | Elementary_body_container_t.Elementary_body_parameter_tuple_container con_ept ->
      (Elementary_body_parameter_tuple_container_v.longname con_ept)
;;

let fullname = function
  | Elementary_body_container_t.Elementary_body_coordinate_tuple_container con_ect ->
      (Elementary_body_coordinate_tuple_container_v.fullname con_ect)
        
  | Elementary_body_container_t.Elementary_body_parameter_tuple_container con_ept ->
      (Elementary_body_parameter_tuple_container_v.fullname con_ept)
;;

(** {6 Coercing Tag} *)

(** {9 Coercing Up Tag} *)

let coerce_up_tag tag_ebo =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_symbol_of_elementary_body_symbol 
    tag_ebo
;;

(** {9 Coercing Down Builder to Containee} *)

let containee_up_tag_off_builder_tag tag_ele =
  Tag_v.map_entity
    Elementary_symbol_v.elementary_body_symbol_off_elementary_symbol
    tag_ele
;;

(** {9 Coercing Up Containee_up to Builder} *)

let builder_tag_of_containee_up_tag tag_cnu =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_symbol_of_elementary_body_symbol
    tag_cnu
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list tag_ebo =
  let (sym_ebo, soi_ebo) = tag_ebo in
  match sym_ebo with
  | Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol sym_ect ->
      let tag_ect = Tag_v.make sym_ect soi_ebo in
      Elementary_body_coordinate_tuple_container_v.builder_tag_list tag_ect

  | Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol sym_ept ->
      let tag_ept = Tag_v.make sym_ept soi_ebo in
      Elementary_body_parameter_tuple_container_v.builder_tag_list tag_ept
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple tag_ebo =
  let (sym_ebo, soi_ebo) = tag_ebo in
  match sym_ebo with
  | Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol sym_ect ->
      let tag_ect = Tag_v.make sym_ect soi_ebo in
      Elementary_body_coordinate_tuple_container_v.builder_tag_tuple tag_ect

  | Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol sym_ept ->
      let tag_ept = Tag_v.make sym_ept soi_ebo in
      Elementary_body_parameter_tuple_container_v.builder_tag_tuple tag_ept
;;

(** {9 Building as Builder Tag tuple} *)

let building_of_tag tag_ebo =
  builder_tag_tuple tag_ebo
;;

(** {6 Container} *)

let containee_up_tag_list tag_ebo =
  let tag_bui_l = builder_tag_list tag_ebo in
  List.map containee_up_tag_off_builder_tag tag_bui_l
;;

(** {6 Border *)

let border_as_list tag_ebo =
  let tag_ele = coerce_up_tag tag_ebo in
  Elementary_border_by_elementary_tag_provider_v.provide tag_ele
;;

let border_as_duo tag_ebo =
  let bor_ebo = border_as_list tag_ebo in
  Duo_v.duo_of_list bor_ebo
;;

let border_as_tuple tag_ebo =
  let bor_l = border_as_list tag_ebo in
  Tuple_v.tuple_of_list bor_l
;;

let border_as_tuple_list tag_ebo =
  let bor_l = border_as_list tag_ebo in
  Tuple_list_v.make bor_l
;;

(** {6 Fence *)

let fence_as_list tag_ebo =
  let tag_ele = coerce_up_tag tag_ebo in
  Elementary_fence_by_elementary_tag_provider_v.provide tag_ele
;;

let fence_as_tuple tag_ebo =
  let fen_l = fence_as_list tag_ebo in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list tag_ebo =
  let fen_l = fence_as_list tag_ebo in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_tuple_body_trunc_2sibling_1containee_v.sh elementary_body ebo elementary_body_coordinate_tuple ect elementary_body_parameter_tuple ept elementary_body ebo   *)
(* using ./template_container_as_tuple_body_trunc_2sibling_1containee_v.ml *)
(* Done on mercredi 11 mai 2016, 10:51:55 (UTC+0200) *)

