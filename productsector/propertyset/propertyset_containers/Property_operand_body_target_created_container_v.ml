(** {3 Property_operand_body_target_created_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FPRO:Property_operand_body_target_created_container_v";
   "Needs : FPRO:Property_operator_fence_creation_toentity_tag_v";
   "Needs : FPRO:Property_operand_tag_v";
   "Needs : FPRO: : for son list predicate";
   "Needs : FPRO:Property_son_tag_list_by_property_father_tag_provider_v";
   "Needs : BPRO:Property_fence_by_property_tag_provider_v";
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
   "What-is-it : it is a Body Bud container of Border sub-Types and thus a Doublet of (Property_operator_fence_creation_toentity_tag, Property_operand_tag)";
   "Author : François Colonna 21 mai 2017 at 12:24:03+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name con_ptc =
  Doublet_v.name 
    Property_operator_fence_creation_toentity_tag_v.name
    Property_operand_tag_v.name
    con_ptc
;;

let string_off con_ptc =
  Doublet_v.name 
    Property_operator_fence_creation_toentity_tag_v.string_off
    Property_operand_tag_v.string_off
    con_ptc
;;

let longname con_ptc =
  Doublet_v.name 
    Property_operator_fence_creation_toentity_tag_v.longname
    Property_operand_tag_v.longname
    con_ptc
;;

let fullname con_ptc =
  Doublet_v.name 
    Property_operator_fence_creation_toentity_tag_v.fullname
    Property_operand_tag_v.fullname
    con_ptc
;;

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_ptc =
  Tag_v.map_entity 
    Property_symbol_v.property_symbol_of_property_operand_body_target_created_symbol 
    tag_ptc
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_ptc =
  let tag_pro = coerce_up_tag tag_ptc in
  Property_son_tag_list_by_property_father_tag_provider_v.provide
    tag_pro
;;

(** {9 Builder Tag Datastructures} *)

let builder_tag_duo_of_tag tag_ptc =
  let tag_bui_l = builder_tag_list_of_tag tag_ptc in
  Duo_v.duo_of_list tag_bui_l
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple_of_tag tag_ptc =
  let tag_bui_d = builder_tag_duo_of_tag tag_ptc in
  Tuple_v.tuple_of_duo tag_bui_d
;;

(** {9 Building as Builder Tag duo} *)

let building_of_tag tag_ptc =
  builder_tag_duo_of_tag tag_ptc
;;

(** {6 Container} *)

(** {9 Container_of_tag : Containee Datastructure} *)

let container_of_tag tag_ptc =
  let tag_pro_l = builder_tag_list_of_tag tag_ptc in
  Doublet_v.doublet_of_list
    (Tag_v.map_entity (* Coerce Down *) 
       Property_symbol_v.property_operator_fence_creation_toentity_symbol_off_property_symbol)
    (Tag_v.map_entity (* Coerce Down *) 
       Property_symbol_v.property_operand_symbol_off_property_symbol)
    tag_pro_l
;;

(** {9 Extracting Containees off Tag} *)

let property_operator_fence_creation_toentity_tag_of_tag tag_ptc =
  let con_ptc = container_of_tag tag_ptc in
  Doublet_v.first_off_doublet con_ptc
;;

let property_operand_tag_of_tag tag_ptc =
  let con_ptc = container_of_tag tag_ptc in
  Doublet_v.second_off_doublet con_ptc
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_ptc =
  let tag_pro = coerce_up_tag tag_ptc in
  Property_fence_by_property_tag_provider_v.provide tag_pro
;;

let fence_as_tuple_of_tag tag_ptc =
  let fen_l = fence_as_list_of_tag tag_ptc in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_ptc =
  let fen_l = fence_as_list_of_tag tag_ptc in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_doublet_body_bud_2containee_v.sh property_operand_body_target_created ptc property_operator_fence_creation_toentity pct property_operand pop *)
(* using template_container_as_doublet_body_bud_2containee_v.ml *)
(* Done on dimanche 21 mai 2017, 11:00:00 (UTC+0200) *)