(** {3 This_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FMMM:This_container_v";
   "Needs : FMMM:Conee_1_tag_v";
   "Needs : FMMM:Conee_2_tag_v";
   "Needs : FMMM:Conee_up : for son list predicate";
   "Needs : FMMM:Maint_son_tag_list_by_maint_father_tag_provider_v";
   "Needs : BMMM:Maint_fence_by_maint_tag_provider_v";
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
   "What-is-it : it is a Body Bud container of Border sub-Types and thus a Doublet of (Conee_1_tag, Conee_2_tag)";
   "Author : François Colonna 21 mai 2017 at 12:24:03+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name con_ttt =
  Doublet_v.name 
    Conee_1_tag_v.name
    Conee_2_tag_v.name
    con_ttt
;;

let string_off con_ttt =
  Doublet_v.name 
    Conee_1_tag_v.string_off
    Conee_2_tag_v.string_off
    con_ttt
;;

let longname con_ttt =
  Doublet_v.name 
    Conee_1_tag_v.longname
    Conee_2_tag_v.longname
    con_ttt
;;

let fullname con_ttt =
  Doublet_v.name 
    Conee_1_tag_v.fullname
    Conee_2_tag_v.fullname
    con_ttt
;;

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_ttt =
  Tag_v.map_entity 
    Maint_symbol_v.maint_symbol_of_this_symbol 
    tag_ttt
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_ttt =
  let tag_mmm = coerce_up_tag tag_ttt in
  Maint_son_tag_list_by_maint_father_tag_provider_v.provide
    tag_mmm
;;

(** {9 Builder Tag Datastructures} *)

let builder_tag_duo_of_tag tag_ttt =
  let tag_bui_l = builder_tag_list_of_tag tag_ttt in
  Duo_v.duo_of_list tag_bui_l
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple_of_tag tag_ttt =
  let tag_bui_d = builder_tag_duo_of_tag tag_ttt in
  Tuple_v.tuple_of_duo tag_bui_d
;;

(** {9 Building as Builder Tag duo} *)

let building_of_tag tag_ttt =
  builder_tag_duo_of_tag tag_ttt
;;

(** {6 Container} *)

(** {9 Container_of_tag : Containee Datastructure} *)

let container_of_tag tag_ttt =
  let tag_mmm_l = builder_tag_list_of_tag tag_ttt in
  Doublet_v.doublet_of_list
    (Tag_v.map_entity (* Coerce Down *) 
       Maint_symbol_v.conee_1_symbol_off_maint_symbol)
    (Tag_v.map_entity (* Coerce Down *) 
       Maint_symbol_v.conee_2_symbol_off_maint_symbol)
    tag_mmm_l
;;

(** {9 Extracting Containees off Tag} *)

let conee_1_tag_of_tag tag_ttt =
  let con_ttt = container_of_tag tag_ttt in
  Doublet_v.first_off_doublet con_ttt
;;

let conee_2_tag_of_tag tag_ttt =
  let con_ttt = container_of_tag tag_ttt in
  Doublet_v.second_off_doublet con_ttt
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
