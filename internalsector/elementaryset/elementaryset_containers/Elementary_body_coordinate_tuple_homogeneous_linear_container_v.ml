(** {3 Elementary_body_coordinate_tuple_homogeneous_linear_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FELE:Elementary_body_coordinate_tuple_homogeneous_linear_container_v";
   "Needs : FELE:Elementary_border_coordinate_homogeneous_linear_x_tag_v";
   "Needs : DELE:Elementary_any_category_by_sole_index_extractor_v";
   "Needs : DELE:Elementary_fence_by_elementary_tag_provider_v";
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
   "What-is-it : it is a Body Bud container of Border sub-Types and thus a Singlet of (Elementary_border_coordinate_homogeneous_linear_x_tag, Conee_2_tag)";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name con_ehl =
  Singlet_v.name 
    Elementary_border_coordinate_homogeneous_linear_x_tag_v.name
    con_ehl
;;

let string_off con_ehl =
  Singlet_v.name 
    Elementary_border_coordinate_homogeneous_linear_x_tag_v.string_off
    con_ehl
;;

let longname con_ehl =
  Singlet_v.name 
    Elementary_border_coordinate_homogeneous_linear_x_tag_v.longname
    con_ehl
;;

let fullname con_ehl =
  Singlet_v.name 
    Elementary_border_coordinate_homogeneous_linear_x_tag_v.fullname
    con_ehl
;;

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_ehl =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_symbol_of_elementary_body_coordinate_tuple_homogeneous_linear_symbol 
    tag_ehl
;;

(** {6 Coercing Up Containee} *)

let builder_tag_of_containee_tag tag_cnn =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_symbol_of_elementary_border_coordinate_homogeneous_linear_x_symbol 
    tag_cnn
;;

(** {6 Coercing Down Containee} *)

let containee_tag_off_builder_tag tag_ele =
  Tag_v.map_entity
    Elementary_symbol_v.elementary_border_coordinate_homogeneous_linear_x_symbol_off_elementary_symbol
    tag_ele
;;

(** {6 Builder Tag list} *)

let builder_tag_list tag_ehl =
  let tag_ele = coerce_up_tag tag_ehl in
  Son_elementary_tag_list_by_father_elementary_tag_provider_v.provide 
    tag_ele
;;

(** {6 Builder Tag Datastructures} *)

let builder_tag_uno tag_ehl =
  let tag_bui_l = builder_tag_list tag_ehl in
  Uno_v.uno_of_list tag_bui_l
;;

(** {6 Builder Tag Tuple} *)

let builder_tag_tuple tag_ehl =
  let tag_bui_u = builder_tag_uno tag_ehl in
  Tuple_v.tuple_of_uno tag_bui_u
;;

(** {6 Building as Builder Tag uno} *)

let building_of_tag tag_ehl =
  builder_tag_uno tag_ehl
;;

(** {6 Container_of_tag : Containee Datastructure} *)

let container_of_tag tag_ehl =
  let bug = building_of_tag tag_ehl in
  Uno_v.map (* Coerce Down *)
    containee_tag_off_builder_tag
    bug
;;

(** {6 Containee Tag Datastructure} *)

let containee_tag_uno tag_ehl =
  container_of_tag tag_ehl
;;

(** {6 Containee Tag Tuple} *)

let containee_tag_tuple tag_ehl =
  let tag_cne_u = containee_tag_uno tag_ehl in
  Tuple_v.tuple_of_uno tag_cne_u
;;

(** {6 Border *)

let border_as_list tag_ehl =
  let tag_ele = coerce_up_tag tag_ehl in
  Elementary_border_by_elementary_tag_provider_v.provide tag_ele
;;

let border_as_duo tag_ehl =
  let bor_ehl = border_as_list tag_ehl in
  Duo_v.duo_of_list bor_ehl
;;

let border_as_tuple tag_ehl =
  let bor_l = border_as_list tag_ehl in
  Tuple_v.tuple_of_list bor_l
;;

let border_as_tuple_list tag_ehl =
  let bor_l = border_as_list tag_ehl in
  Tuple_list_v.make bor_l
;;

(** {6 Fence *)

let fence_as_list tag_ehl =
  let tag_ele = coerce_up_tag tag_ehl in
  Elementary_fence_by_elementary_tag_provider_v.provide tag_ele
;;

let fence_as_uno tag_ehl =
  let fen_ehl = fence_as_list tag_ehl in
  Uno_v.uno_of_list fen_ehl
;;

let fence_as_tuple tag_ehl =
  let fen_l = fence_as_list tag_ehl in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list tag_ehl =
  let fen_l = fence_as_list tag_ehl in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_singlet_body_bud_1containee_v.sh elementary_body_coordinate_tuple_homogeneous_linear ehl elementary_border_coordinate_homogeneous_linear_x elx *)
(* using ./template_container_as_singlet_body_bud_1containee_v.ml *)
(* Done on mercredi 11 mai 2016, 10:51:54 (UTC+0200) *)

