(** {3 Property_operand_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FPRO:Property_operand_container_v";
   "Needs : FPRO:Property_operand_body_container_v";
   "Needs : FPRO:Property_operand_fence_container_v";
   "Needs : DPRO:Property_fence_by_property_tag_provider_v";
   "Needed-by: ";
   "Definition : for any Entity its B-Tree is the Tree of the Entity Tags necessary to build its value";
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
   "What-is-it : it is a Trunc container of Border sub-Types and thus a Tuple of its  Tag";
   "Author : François Colonna 21 mai 2017 at 16:44:39+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name = function
  | Property_operand_container_t.Property_operand_body_container con_pob ->
      (Property_operand_body_container_v.name con_pob)
        
  | Property_operand_container_t.Property_operand_fence_container con_pof ->
      (Property_operand_fence_container_v.name con_pof)
;;

let string_off = function
  | Property_operand_container_t.Property_operand_body_container con_pob ->
      (Property_operand_body_container_v.string_off con_pob)
        
  | Property_operand_container_t.Property_operand_fence_container con_pof ->
      (Property_operand_fence_container_v.string_off con_pof)
;;

let longname = function
  | Property_operand_container_t.Property_operand_body_container con_pob ->
      (Property_operand_body_container_v.longname con_pob)
        
  | Property_operand_container_t.Property_operand_fence_container con_pof ->
      (Property_operand_fence_container_v.longname con_pof)
;;

let fullname = function
  | Property_operand_container_t.Property_operand_body_container con_pob ->
      (Property_operand_body_container_v.fullname con_pob)
        
  | Property_operand_container_t.Property_operand_fence_container con_pof ->
      (Property_operand_fence_container_v.fullname con_pof)
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_pop =
  let (sym_pop, soi_pop) = tag_pop in
  match sym_pop with
  | Property_operand_symbol_t.Property_operand_body_symbol sym_pob ->
      let tag_pob = Tag_v.make sym_pob soi_pop in
      Property_operand_body_container_v.builder_tag_list_of_tag tag_pob

  | Property_operand_symbol_t.Property_operand_fence_symbol sym_pof ->
      let tag_pof = Tag_v.make sym_pof soi_pop in
      Property_operand_fence_container_v.builder_tag_list_of_tag tag_pof
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple_of_tag tag_pop =
  let (sym_pop, soi_pop) = tag_pop in
  match sym_pop with
  | Property_operand_symbol_t.Property_operand_body_symbol sym_pob ->
      let tag_pob = Tag_v.make sym_pob soi_pop in
      Property_operand_body_container_v.builder_tag_tuple_of_tag tag_pob

  | Property_operand_symbol_t.Property_operand_fence_symbol sym_pof ->
      let tag_pof = Tag_v.make sym_pof soi_pop in
      Property_operand_fence_container_v.builder_tag_tuple_of_tag tag_pof
;;

(** {9 Building as Builder Tag tuple} *)

let building_of_tag tag_pop =
  builder_tag_tuple_of_tag tag_pop
;;

(** {6 Container} *)

(** {6 Container_of_tag : Pattern Matching} *)

let container_of_tag tag_pop =
  let (sym_pop, soi_pop) = tag_pop in
  match sym_pop with
  | Property_operand_symbol_t.Property_operand_body_symbol sym_pob ->
      let tag_pob = Tag_v.make sym_pob soi_pop in
      let con_pob = Property_operand_body_container_v.container_of_tag tag_pob in
      Property_operand_container_t.Property_operand_body_container con_pob

  | Property_operand_symbol_t.Property_operand_fence_symbol sym_pof ->
      let tag_pof = Tag_v.make sym_pof soi_pop in
      let con_pof = Property_operand_fence_container_v.container_of_tag tag_pof in
      Property_operand_container_t.Property_operand_fence_container con_pof
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_pop =
  let tag_pro = Property_operand_tag_v.property_tag_of_property_operand_tag tag_pop in
  Property_fence_by_property_tag_provider_v.provide tag_pro
;;

let fence_as_tuple_of_tag tag_pop =
  let fen_l = fence_as_list_of_tag tag_pop in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_pop =
  let fen_l = fence_as_list_of_tag tag_pop in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_tuple_body_trunc_2sibling_0containee_v.sh property_operand pop property_operand_body pob property_operand_fence pof *)
(* using template_container_as_tuple_body_trunc_2sibling_0containee_v.ml *)
(* Done on dimanche 21 mai 2017, 11:00:03 (UTC+0200) *)
