(** {3 Property_operand_body_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FPRO:Property_operand_body_container_v";
   "Needs : FPRO:Property_operand_body_target_container_v";
   "Needs : DPRO:Property_fence_by_property_tag_provider_v";
   "Needed-by: ";
   "Remark : Container is _tag Singlet";
   "Remark : Containee_1 is  is also Containee_up";
   "Remark : Builders are Property";
   "Definition : a Builder (for an Entity of a Domain) is a son of its Builder-Subtree";
   "Definition : a Containee is a Builder expressed in the lowest subtype compatible with the Datastructure of the Container";
   "Definition : a Container is the Datastructure of the Containee of an Entity";
   "Definition : a Containee is an element of the Datastructure of the Container of an Entity";
   "Definition : a Building is the same Datastructure as Container filled with Builders"; 
   "Author : François Colonna 21 mai 2017 at 10:14:15+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name = function
  | Property_operand_body_container_t.Property_operand_body_target_container con_pot ->
      (Property_operand_body_target_container_v.name con_pot)
;;

let string_off = function
  | Property_operand_body_container_t.Property_operand_body_target_container con_pot ->
      (Property_operand_body_target_container_v.string_off con_pot)
;;

let longname = function
  | Property_operand_body_container_t.Property_operand_body_target_container con_pot ->
      (Property_operand_body_target_container_v.longname con_pot)
;;

let fullname = function
  | Property_operand_body_container_t.Property_operand_body_target_container con_pot ->
      (Property_operand_body_target_container_v.fullname con_pot)
;;

(** {6 Coercing Tag} *)

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_pbo =
  let (sym_pbo, soi_pbo) = tag_pbo in
  match sym_pbo with
  | Property_operand_body_symbol_t.Property_operand_body_target_symbol sym_pot ->
      let tag_pot = Tag_v.make sym_pot soi_pbo in
      Property_operand_body_target_container_v.builder_tag_list_of_tag tag_pot
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple_of_tag tag_pbo =
  let (sym_pbo, soi_pbo) = tag_pbo in
  match sym_pbo with
  | Property_operand_body_symbol_t.Property_operand_body_target_symbol sym_pot ->
      let tag_pot = Tag_v.make sym_pot soi_pbo in
      Property_operand_body_target_container_v.builder_tag_tuple_of_tag tag_pot
;;

(** {9 Building as Builder Tag tuple} *)

let building_of_tag tag_pbo =
  builder_tag_tuple_of_tag tag_pbo
;;

(** {6 Container} *)

let container_of_tag tag_pbo =
  let (sym_pbo, soi_pbo) = tag_pbo in
  match sym_pbo with
  | Property_operand_body_symbol_t.Property_operand_body_target_symbol sym_pot ->
      let tag_pot = Tag_v.make sym_pot soi_pbo in
      let con_pot = Property_operand_body_target_container_v.container_of_tag tag_pot in
      Property_operand_body_container_t.Property_operand_body_target_container con_pot
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_pbo =
  let tag_pro = Property_operand_body_tag_v.property_tag_of_property_operand_body_tag tag_pbo in
  Property_fence_by_property_tag_provider_v.provide tag_pro
;;

let fence_as_tuple_of_tag tag_pbo =
  let fen_l = fence_as_list_of_tag tag_pbo in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_pbo =
  let fen_l = fence_as_list_of_tag tag_pbo in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_tuple_body_trunc_1sibling_0containee_v.sh property_operand_body pbo property_operand_body_target pot *)
(* using template_container_as_tuple_body_trunc_1sibling_0containee_v.ml *)
(* Done on dimanche 21 mai 2017, 11:00:02 (UTC+0200) *)
