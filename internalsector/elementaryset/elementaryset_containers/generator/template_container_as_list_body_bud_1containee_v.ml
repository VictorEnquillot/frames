(** {3 This_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FMMM:This_container_v";
   "Needs : FMMM:Conee_1_tag_v";
   "Needs : DMMM:Maint_any_category_by_sole_index_extractor_v";
   "Needs : DMMM:Maint_fence_by_maint_tag_provider_v";
   "Needed-by: ";
   "Definition : a Builder (for an Entity of a Domain) is a son its Builder-Subtree";
   "Definition : a Containee is a Builder expressed in the lowest subtype compatible with the Datastructure of the Container";
   "Definition : a Container is the Datastructure of the Containee of an Entity";
   "Definition : a Containee is an element of the Datastructure of the Container of an Entity";
   "Definition : a Building is the Datastructure of the Builders of an Entity (Container with Builders)"; 
   "Definition : a Trunc type has only constructors of constructor";
   "Definition : a Branch type has only constructors of nothing";
   "Definition : a Stem type has only constructor of string";
   "Definition : a Bud type is a Stem type with only one constructor of string";
   "What-is-it : it is a container of a Bud Type as a List of Conee_1_tag";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name con_ttt =
  List_v.name 
    Conee_1_tag_v.name
    con_ttt
;;

let string_off con_ttt =
  List_v.name 
    Conee_1_tag_v.string_off
    con_ttt
;;

let longname con_ttt =
  List_v.name 
    Conee_1_tag_v.longname
    con_ttt
;;

let fullname con_ttt =
  List_v.name 
    Conee_1_tag_v.fullname
    con_ttt
;;

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_ttt =
  Tag_v.map_entity 
    Maint_symbol_v.maint_symbol_of_this_symbol 
    tag_ttt
;;

(** {6 Coercing Down Containee} *)

let containee_tag_off_builder_tag tag_mmm =
  Tag_v.map_entity
    Maint_symbol_v.conee_1_symbol_off_maint_symbol
    tag_mmm
;;

(** {6 Building as Builder Tag list} *)

let building_of_tag tag_ttt =
  let tag_mmm = coerce_up_tag tag_ttt in
  Son_elementary_tag_list_by_father_elementary_tag_provider_v.provide 
    tag_mmm
;;

(** {6 Builder Tag Datastructures} *)

let builder_tag_list tag_ttt =
  building_of_tag tag_ttt
;;

let builder_tag_tuple tag_ttt =
  let tag_bui_l = builder_tag_list tag_ttt in
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

let containee_tag_list tag_ttt =
  container_of_tag tag_ttt
;;

let containee_tag_tuple tag_ttt =
  let tag_cne_l = containee_tag_list tag_ttt in
  Tuple_v.tuple_of_list tag_cne_l
;;

(** {6 Fence list *)

let fence_as_list tag_ttt =
  let tag_mmm = coerce_up_tag tag_ttt in
  Maint_fence_by_maint_tag_provider_v.provide tag_mmm
;;

let fence_as_tuple tag_ttt =
  let tag_cne_t = containee_tag_tuple tag_ttt in
  Tuple_v.map
    Conee_1_container_v.fence_as_list
    tag_cne_t
;;

let fence_as_tuple_list tag_ttt =
  let tag_cne_l = containee_tag_list tag_ttt in
  List_v.map
    Conee_1_container_v.fence_as_tuple
    tag_cne_l
;;

