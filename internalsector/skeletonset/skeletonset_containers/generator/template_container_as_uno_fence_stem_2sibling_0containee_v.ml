(** {3 This_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FMMM:This_container_v";
   "Needs : FMMM:Sibling_1_container_v";
   "Needs : FMMM:Sibling_2_container_v";
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
   "What-is-it : Up_coercion of Container type as Symbol type up_coercion";
   "What-is-it : it is a Stem container of its own Tag Uno Tag";
   "Author : François Colonna 04 janvier 2017 at 13:47:53+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Coercing Tag} *)

(** {9 Coercing Up Tag} *)

let coerce_up_tag tag_ttt =
  Tag_v.map_entity 
    Maint_symbol_v.maint_symbol_of_this_symbol 
    tag_ttt
;;

(** {9 Coercing Down Builder to Containee} *)

let containee_tag_off_builder_tag tag_mmm =
  Tag_v.map_entity
    Maint_symbol_v.this_symbol_off_maint_symbol
    tag_mmm
;;

(** {9 Coercing Up Containee to Builder} *)

let builder_tag_of_containee_tag tag_cee =
  Tag_v.map_entity 
    Maint_symbol_v.maint_symbol_of_this_symbol
    tag_cee
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_ttt =
  let tag_bui = builder_tag_of_containee_tag tag_ttt in
  [tag_bui]
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple tag_ttt =
  let tag_bui_l = builder_tag_list_of_tag tag_ttt in
  Tuple_v.tuple_of_list tag_bui_l
;;

(** {9 Building as Builder Tag tuple} *)

let building_of_tag tag_ttt =
  builder_tag_list_of_tag tag_ttt
;;

(** {6 Container} *)

let containee_tag_list_of_tag tag_ttt =
  let tag_bui_l = builder_tag_list_of_tag tag_ttt in
  List.map containee_tag_off_builder_tag tag_bui_l
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_ttt =
  let tag_mmm = coerce_up_tag tag_ttt in
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

let name = function
  | This_container_t.Sibling_1_container con_sib_1 ->
      (Sibling_1_container_v.name con_sib_1)
        
  | This_container_t.Sibling_2_container con_sib_2 ->
      (Sibling_2_container_v.name con_sib_2)
;;

let string_off = function
  | This_container_t.Sibling_1_container con_sib_1 ->
      (Sibling_1_container_v.string_off con_sib_1)
        
  | This_container_t.Sibling_2_container con_sib_2 ->
      (Sibling_2_container_v.string_off con_sib_2)
;;

let longname = function
  | This_container_t.Sibling_1_container con_sib_1 ->
      (Sibling_1_container_v.longname con_sib_1)
        
  | This_container_t.Sibling_2_container con_sib_2 ->
      (Sibling_2_container_v.longname con_sib_2)
;;

let fullname = function
  | This_container_t.Sibling_1_container con_sib_1 ->
      (Sibling_1_container_v.fullname con_sib_1)
        
  | This_container_t.Sibling_2_container con_sib_2 ->
      (Sibling_2_container_v.fullname con_sib_2)
;;

