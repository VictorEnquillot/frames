(** {3 This_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FMMM:This_container_v";
   "Needs : FMMM:Conee_1_tag_v";
   "Needs : DMMM:Maint_any_category_by_sole_index_extractor_v";
   "Needs : DMMM:Maint_fence_by_maint_tag_provider_v";
   "Needed-by: ";
   "Definition : a Builder (for an Entity of a Domain) is a son of its Builder-Subtree";
   "Definition : a Containee is a Builder expressed in the lowest subtype compatible with the Datastructure of the Container";
   "Definition : a Container is the Datastructure of the Containee of an Entity";
   "Definition : a Containee is an element of the Datastructure of the Container of an Entity";
   "Definition : a Building is the Datastructure of the Builders of an Entity (Container with Builders)"; 
   "Definition : a Stalk is a type with only one constructor of nothing";
   "Definition : a Bud type is a type with only one constructor of string";
   "Definition : a Stem type has only constructor of string";
   "Definition : a Branch type has only constructors of nothing";
   "Definition : a Trunc type has only constructors of constructor";
   "What-is-it: it is a container of a Fence Stalk Type as a Uno of its own Tag";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

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

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_ttt =
  Tag_v.map_entity 
    Maint_symbol_v.maint_symbol_of_this_symbol 
    tag_ttt
;;

(** {6 Coercing Up Containee} *)

let builder_tag_of_containee_tag tag_cnn =
  Tag_v.map_entity 
    Maint_symbol_v.maint_symbol_of_conee_1_symbol 
    tag_cnn
;;

(** {6 Coercing Down Containee} *)

let containee_tag_off_builder_tag tag_mmm =
  Tag_v.map_entity
    Maint_symbol_v.conee_1_symbol_off_maint_symbol
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

let builder_tag_list tag_ttt =
  let tag_mmm = builder_tag_of_containee_tag tag_ttt in
  [tag_mmm]
;;

let builder_tag_tuple tag_ttt =
  let bug = building_of_tag tag_ttt in
  Tuple_v.tuple_of_uno bug
;;

(** {6 Container_of_tag : Containee Datastructure} *)

let container_of_tag tag_ttt =
  Uno_v.make tag_ttt
;;

(** {6 Border *)

let border_as_list tag_ttt =
  let tag_ele = coerce_up_tag tag_ttt in
  Maint_border_by_maint_tag_provider_v.provide tag_ele
;;

let border_as_duo tag_ttt =
  let bor_ttt = border_as_list tag_ttt in
  Duo_v.duo_of_list bor_ttt
;;

let border_as_tuple tag_ttt =
  let bor_l = border_as_list tag_ttt in
  Tuple_v.tuple_of_list bor_l
;;

let border_as_tuple_list tag_ttt =
  let bor_l = border_as_list tag_ttt in
  Tuple_list_v.make bor_l
;;

(** {6 Fence list *)

let fence_as_list tag_ttt =
  let tag_mmm = builder_tag_of_containee_tag tag_ttt in
  Maint_fence_by_maint_tag_provider_v.provide tag_mmm
;;

let fence_as_tuple tag_ttt =
  let fen_l = fence_as_list tag_ttt in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list tag_ttt =
  let fen_l = fence_as_list tag_ttt in
  Tuple_list_v.make fen_l
;;

