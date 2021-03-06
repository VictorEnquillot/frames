(** {3 Elementary_fence_units_actual_none_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FELE:Elementary_fence_units_actual_none_container_v";
   "Needs : FELE:Elementary_fence_units_actual_none_tag_v";
   "Needs : DELE:Elementary_any_category_by_sole_index_extractor_v";
   "Needs : DELE:Elementary_fence_by_elementary_tag_provider_v";
   "Needed-by: ";
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
   "What-is-it: it is a container of a Fence Branch Type as a Uno of its own Tag";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name con_ean =
  Uno_v.name 
    Elementary_fence_units_actual_none_tag_v.name
    con_ean
;;

let string_off con_ean =
  Uno_v.name 
    Elementary_fence_units_actual_none_tag_v.string_off
    con_ean
;;

let longname con_ean =
  Uno_v.name 
    Elementary_fence_units_actual_none_tag_v.longname
    con_ean
;;

let fullname con_ean =
  Uno_v.name 
    Elementary_fence_units_actual_none_tag_v.fullname
    con_ean
;;

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_ean =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_symbol_of_elementary_fence_units_actual_none_symbol 
    tag_ean
;;

(** {6 Coercing Up Containee} *)

let builder_tag_of_containee_tag tag_ean =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_symbol_of_elementary_fence_units_actual_none_symbol 
    tag_ean
;;

(** {6 Coercing Down Containee} *)

let containee_tag_off_builder_tag tag_ele =
  Tag_v.map_entity
    Elementary_symbol_v.elementary_fence_units_actual_none_symbol_off_elementary_symbol
    tag_ele
;;


(** {6 Builder Tag Datastructures : Building} *)

let building_of_tag tag_ean =
  let tag_ele = builder_tag_of_containee_tag tag_ean in
  Uno_v.make tag_ele
;;

let builder_tag_uno tag_ean =
  building_of_tag tag_ean
;;

let builder_tag_list tag_ean =
  let tag_ele = builder_tag_of_containee_tag tag_ean in
  [tag_ele]
;;

let builder_tag_tuple tag_ean =
  let bug = building_of_tag tag_ean in
  Tuple_v.tuple_of_uno bug
;;

(** {6 Container_of_tag : Containee Datastructure} *)

let container_of_tag tag_ean =
  Uno_v.make tag_ean
;;

(** {6 Border *)

let border_as_list tag_ean =
  let tag_ele = coerce_up_tag tag_ean in
  Elementary_border_by_elementary_tag_provider_v.provide tag_ele
;;

let border_as_duo tag_ean =
  let bor_ean = border_as_list tag_ean in
  Duo_v.duo_of_list bor_ean
;;

let border_as_tuple tag_ean =
  let bor_l = border_as_list tag_ean in
  Tuple_v.tuple_of_list bor_l
;;

let border_as_tuple_list tag_ean =
  let bor_l = border_as_list tag_ean in
  Tuple_list_v.make bor_l
;;

(** {6 Fence list is list itself as builder *)

let fence_as_list tag_ean =
  builder_tag_list tag_ean
;;

let fence_as_tuple tag_ean =
  builder_tag_tuple tag_ean 
;;

let fence_as_tuple_list tag_ean =
  let fen_l = fence_as_list tag_ean in
  Tuple_list_v.make fen_l
;;


(* generated by ./do_container_as_uno_fence_branch_v.sh elementary_fence_units_actual_none *)
(* using ./template_container_as_uno_fence_branch_v.ml *)
(* Done on mercredi 11 mai 2016, 10:51:47 (UTC+0200) *)

