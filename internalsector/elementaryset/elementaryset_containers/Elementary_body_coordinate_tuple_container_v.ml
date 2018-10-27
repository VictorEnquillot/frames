(** {3 Elementary_body_coordinate_tuple_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FELE:Elementary_body_coordinate_tuple_container_v";
   "Needs : FELE:Elementary_body_coordinate_tuple_tag_v";
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
   "What-is-it : it is a Trunc container of Border sub-Types and thus a Tuple of its Elementary_body_coordinate_tuple Tag";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name = function
  | Elementary_body_coordinate_tuple_container_t.Elementary_body_coordinate_tuple_heterogeneous_container con_ehe ->
      (Elementary_body_coordinate_tuple_heterogeneous_container_v.name con_ehe)
        
  | Elementary_body_coordinate_tuple_container_t.Elementary_body_coordinate_tuple_homogeneous_container con_eho ->
      (Elementary_body_coordinate_tuple_homogeneous_container_v.name con_eho)
;;

let string_off = function
  | Elementary_body_coordinate_tuple_container_t.Elementary_body_coordinate_tuple_heterogeneous_container con_ehe ->
      (Elementary_body_coordinate_tuple_heterogeneous_container_v.string_off con_ehe)
        
  | Elementary_body_coordinate_tuple_container_t.Elementary_body_coordinate_tuple_homogeneous_container con_eho ->
      (Elementary_body_coordinate_tuple_homogeneous_container_v.string_off con_eho)
;;

let longname = function
  | Elementary_body_coordinate_tuple_container_t.Elementary_body_coordinate_tuple_heterogeneous_container con_ehe ->
      (Elementary_body_coordinate_tuple_heterogeneous_container_v.longname con_ehe)
        
  | Elementary_body_coordinate_tuple_container_t.Elementary_body_coordinate_tuple_homogeneous_container con_eho ->
      (Elementary_body_coordinate_tuple_homogeneous_container_v.longname con_eho)
;;

let fullname = function
  | Elementary_body_coordinate_tuple_container_t.Elementary_body_coordinate_tuple_heterogeneous_container con_ehe ->
      (Elementary_body_coordinate_tuple_heterogeneous_container_v.fullname con_ehe)
        
  | Elementary_body_coordinate_tuple_container_t.Elementary_body_coordinate_tuple_homogeneous_container con_eho ->
      (Elementary_body_coordinate_tuple_homogeneous_container_v.fullname con_eho)
;;

(** {6 Coercing Tag} *)

(** {9 Coercing Up Tag} *)

let coerce_up_tag tag_ect =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_symbol_of_elementary_body_coordinate_tuple_symbol 
    tag_ect
;;

(** {9 Coercing Down Builder to Containee} *)

let containee_up_tag_off_builder_tag tag_ele =
  Tag_v.map_entity
    Elementary_symbol_v.elementary_body_coordinate_tuple_symbol_off_elementary_symbol
    tag_ele
;;

(** {9 Coercing Up Containee_up to Builder} *)

let builder_tag_of_containee_up_tag tag_cnu =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_symbol_of_elementary_body_coordinate_tuple_symbol
    tag_cnu
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list tag_ect =
  let (sym_ect, soi_ect) = tag_ect in
  match sym_ect with
  | Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_symbol sym_ehe ->
      let tag_ehe = Tag_v.make sym_ehe soi_ect in
      Elementary_body_coordinate_tuple_heterogeneous_container_v.builder_tag_list tag_ehe

  | Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol sym_eho ->
      let tag_eho = Tag_v.make sym_eho soi_ect in
      Elementary_body_coordinate_tuple_homogeneous_container_v.builder_tag_list tag_eho
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple tag_ect =
  let (sym_ect, soi_ect) = tag_ect in
  match sym_ect with
  | Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_symbol sym_ehe ->
      let tag_ehe = Tag_v.make sym_ehe soi_ect in
      Elementary_body_coordinate_tuple_heterogeneous_container_v.builder_tag_tuple tag_ehe

  | Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol sym_eho ->
      let tag_eho = Tag_v.make sym_eho soi_ect in
      Elementary_body_coordinate_tuple_homogeneous_container_v.builder_tag_tuple tag_eho
;;

(** {9 Building as Builder Tag tuple} *)

let building_of_tag tag_ect =
  builder_tag_tuple tag_ect
;;

(** {6 Container} *)

let containee_up_tag_list tag_ect =
  let tag_bui_l = builder_tag_list tag_ect in
  List.map containee_up_tag_off_builder_tag tag_bui_l
;;

(** {6 Border *)

let border_as_list tag_ect =
  let tag_ele = coerce_up_tag tag_ect in
  Elementary_border_by_elementary_tag_provider_v.provide tag_ele
;;

let border_as_duo tag_ect =
  let bor_ect = border_as_list tag_ect in
  Duo_v.duo_of_list bor_ect
;;

let border_as_tuple tag_ect =
  let bor_l = border_as_list tag_ect in
  Tuple_v.tuple_of_list bor_l
;;

let border_as_tuple_list tag_ect =
  let bor_l = border_as_list tag_ect in
  Tuple_list_v.make bor_l
;;

(** {6 Fence *)

let fence_as_list tag_ect =
  let tag_ele = coerce_up_tag tag_ect in
  Elementary_fence_by_elementary_tag_provider_v.provide tag_ele
;;

let fence_as_tuple tag_ect =
  let fen_l = fence_as_list tag_ect in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list tag_ect =
  let fen_l = fence_as_list tag_ect in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_tuple_body_trunc_2sibling_1containee_v.sh elementary_body_coordinate_tuple ect elementary_body_coordinate_tuple_heterogeneous ehe elementary_body_coordinate_tuple_homogeneous eho elementary_body_coordinate_tuple ect   *)
(* using ./template_container_as_tuple_body_trunc_2sibling_1containee_v.ml *)
(* Done on mercredi 11 mai 2016, 10:51:55 (UTC+0200) *)

