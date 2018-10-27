(** {3 This_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FMMM:This_container_v";
   "Needs : FMMM:Sibling_1_container_v";
   "Needs : FMMM:Sibling_2_container_v";
   "Needs : FMMM:Conee_up for son list predicate";
   "Needs : DMMM:Maint_any_category_by_sole_index_extractor_v";
   "Needs : DMMM:Maint_fence_by_maint_tag_provider_v";
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
   "What-is-it : it is a Body Trunc container of Border sub-Types and thus a Tuple of its Containees Tag";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

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

(** {6 Builder Tag list} *)

let builder_tag_list tag_ttt =
  let tag_mmm = coerce_up_tag tag_ttt in
  Son_elementary_tag_list_by_father_elementary_tag_provider_v.provide 
    tag_mmm
;;

(** {6 Builder Tag Datastructures} *)

let builder_tag_uno tag_ttt =
  let tag_bui_l = builder_tag_list tag_ttt in
  Uno_v.uno_of_list tag_bui_l
;;

(** {6 Builder Tag Tuple} *)

let builder_tag_tuple tag_ttt =
  let tag_bui_u = builder_tag_uno tag_ttt in
  Tuple_v.tuple_of_uno tag_bui_u
;;

(** {6 Building as Builder Tag uno} *)

let building_of_tag tag_ttt =
  builder_tag_uno tag_ttt
;;

(** {6 Container_of_tag : Containee Datastructure} *)

let container_of_tag tag_ttt =
  let bug = building_of_tag tag_ttt in
  Uno_v.map (* Coerce Down *)
    containee_tag_off_builder_tag
    bug
;;

(** {6 Containee Tag Datastructure} *)

let containee_tag_uno tag_ttt =
  container_of_tag tag_ttt
;;

(** {6 Containee Tag Tuple} *)

let containee_tag_tuple tag_ttt =
  let tag_cne_u = containee_tag_uno tag_ttt in
  Tuple_v.tuple_of_uno tag_cne_u
;;

(** {6 Fence *)

let fence_as_list tag_ttt =
  let tag_mmm = coerce_up_tag tag_ttt in
  Maint_fence_by_maint_tag_provider_v.provide tag_mmm
;;

let fence_as_uno tag_ttt =
  let fen_ttt = fence_as_list tag_ttt in
  Uno_v.uno_of_list fen_ttt
;;

let fence_as_tuple tag_ttt =
  let fen_l = fence_as_list tag_ttt in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list tag_ttt =
  let fen_l = fence_as_list tag_ttt in
  Tuple_list_v.make fen_l
;;
