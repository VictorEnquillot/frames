(** {3 This_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FMMM:This_container_v";
   "Needs : BMMM:Maint_son_tag_list_by_maint_father_tag_provider_v";
   "Needs : BMMM:Maint_any_category_by_sole_index_extractor_v";
   "Needs : BMMM:Maint_fence_by_maint_tag_provider_v";
   "Needed-by: ";
   "Definition : a Builder (for an Entity of a Domain) is a son of its B-Tree i.e. Coerced Up";
   "Definition : a Builder of a fence Container is its own Tag Coerced Up";
   "Builder_tag : Maint_tag";
   "Definition : a Building is the same Datastructure as a Container but filled with Builders"; 
   "Definition : a Containee is a Builder expressed in the lowest subtype compatible with the Datastructure of the Container";
   "Definition : a Containee is an element of the Datastructure of the Container of an Entity";
   "Definition : the Containee Tag of a fence Container is its own Tag";
   "Containee_tag : Conee_tag";
   "Definition : the Fence is the Tag list (Coerced Up) of the Leaf Entities of the B-Tree of any Entity";
   "Fence : Maint_tag list";
   "What-is-it : Up_coercion of Container type as Symbol type up_coercion";
   "What-is-it : it is a Stem container of its own Tag Uno Tag";
   "Definition : a Bud type is a Stem type with only one constructor of string";
   "What-is-it : it is a container of a Bud Type as a List of Conee_tag";
   "Author : François Colonna 21 mai 2017 at 15:30:41+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name con_ttt =
  List_v.name 
    Conee_tag_v.name
    con_ttt
;;

let string_off con_ttt =
  List_v.name 
    Conee_tag_v.string_off
    con_ttt
;;

let longname con_ttt =
  List_v.name 
    Conee_tag_v.longname
    con_ttt
;;

let fullname con_ttt =
  List_v.name 
    Conee_tag_v.fullname
    con_ttt
;;

(** {6 Coercing Up Tag} *)

let coerce_up_of_tag tag_ttt =
  Tag_v.map_entity 
    Maint_symbol_v.maint_symbol_of_this_symbol 
    tag_ttt
;;

(** {6 Coercing Down Containee} *)

let containee_tag_off_builder_tag tag_mmm =
  Tag_v.map_entity
    Maint_symbol_v.conee_symbol_off_maint_symbol
    tag_mmm
;;

(** {6 Building as Builder Tag list} *)

let building_of_tag tag_ttt =
  let tag_mmm = coerce_up_of_tag tag_ttt in
  Maint_son_tag_list_by_maint_father_tag_provider_v.provide tag_mmm
;;

(** {6 Builder Tag Datastructures} *)

let builder_tag_list_of_tag tag_ttt =
  building_of_tag tag_ttt
;;

let builder_tag_tuple_of_tag tag_ttt =
  let tag_bui_l = builder_tag_list_of_tag tag_ttt in
  Tuple_v.tuple_of_list tag_bui_l
;;

(** {6 Container_of_tag : Containee Datastructure} *)

let container_of_tag tag_ttt =
  let bug = building_of_tag tag_ttt in
  List.map (* Coerce Down *)
    containee_tag_off_builder_tag
    bug
;;

(** {6 Containee Tag Datastructures} *)

let containee_tag_list_of_tag tag_ttt =
  container_of_tag tag_ttt
;;

let containee_tag_tuple tag_ttt =
  let tag_cne_l = containee_tag_list_of_tag tag_ttt in
  Tuple_v.tuple_of_list tag_cne_l
;;

(** {6 Fence list *)

let fence_as_list_of_tag tag_ttt =
  let tag_mmm = coerce_up_of_tag tag_ttt in
  Maint_fence_by_maint_tag_provider_v.provide tag_mmm
;;

let fence_as_tuple_of_tag tag_ttt =
  let tag_cne_t = containee_tag_tuple tag_ttt in
  Tuple_v.map
    Conee_container_v.fence_as_list_of_tag
    tag_cne_t
;;

let fence_as_tuple_list_of_tag tag_ttt =
  let tag_cne_l = containee_tag_list_of_tag tag_ttt in
  List_v.map
    Conee_container_v.fence_as_tuple_of_tag
    tag_cne_l
;;

