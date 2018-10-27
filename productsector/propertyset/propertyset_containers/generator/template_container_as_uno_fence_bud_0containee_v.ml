(** {3 This_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FMMM:This_container_v";
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
   "Containee_tag : This_tag";
   "Definition : the Fence is the Tag list (Coerced Up) of the Leaf Entities of the B-Tree of any Entity";
   "Fence : Maint_tag list";
   "Definition : a Bud type is a Stem type with only one constructor of string";
   "What-is-it: it is a container of a Fence Bud Type as a Uno of This_tag (i.e. This_tag)";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Coercing Up Tag} *)

let builder_tag_of_containee_tag tag_cnn =
  Tag_v.map_entity 
    Maint_symbol_v.maint_symbol_of_this_symbol 
    tag_cnn
;;

(** {6 Coercing Down Tag} *)

let containee_tag_off_builder_tag tag_mmm =
  Tag_v.map_entity
    Maint_symbol_v.this_symbol_off_maint_symbol
    tag_mmm
;;

(** {6 Builder Tag Datastructures : Building} *)

let building_of_tag tag_ttt =
  let tag_mmm = builder_tag_of_containee_tag tag_ttt in
  Uno_v.make tag_mmm
;;

let builder_tag_uno tag_ttt =
  building_of_tag tag_ttt
;;

let builder_tag_list_of_tag tag_ttt =
  let tag_mmm = builder_tag_of_containee_tag tag_ttt in
  [tag_mmm]
;;

let builder_tag_tuple_of_tag tag_ttt =
  let bug = building_of_tag tag_ttt in
  Tuple_v.tuple_of_uno bug
;;

(** {6 Container_of_tag : Containee Datastructure} *)

let container_of_tag tag_ttt =
  Uno_v.make tag_ttt
;;

(** {6 Fence list *)

let fence_as_list_of_tag tag_ttt =
  let tag_mmm = builder_tag_of_containee_tag tag_ttt in
  Maint_fence_by_maint_tag_provider_v.provide tag_mmm
;;

let fence_as_tuple_of_tag tag_ttt =
  let fen_l = fence_as_list_of_tag tag_ttt in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_ttt =
  let fen_l = fence_as_list_of_tag tag_ttt in
  Tuple_list_v.make fen_l
;;

(** {6 Naming_for_container} *)

let name con_ttt =
  Uno_v.name 
    This_tag_v.name
    con_ttt
;;

let string_off con_ttt =
  Uno_v.name 
    This_tag_v.string_off
    con_ttt
;;

let longname con_ttt =
  Uno_v.name 
    This_tag_v.longname
    con_ttt
;;

let fullname con_ttt =
  Uno_v.name 
    This_tag_v.fullname
    con_ttt
;;

