(** {3 Property_operand_body_target_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FPRO:Property_operand_body_target_container_v";
   "Needs : FPRO:Property_operand_body_target_calculated_container_v";
   "Needs : FPRO:Property_operand_body_target_created_container_v";
   "Needs : FPRO:Property_operand_body_target_measured_container_v";
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
   "Author : François Colonna 21 mai 2017 at 17:18:55+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name = function
  | Property_operand_body_target_container_t.Property_operand_body_target_calculated_container con_pca ->
      (Property_operand_body_target_calculated_container_v.name con_pca)
        
  | Property_operand_body_target_container_t.Property_operand_body_target_created_container con_pcr ->
      (Property_operand_body_target_created_container_v.name con_pcr)
        
  | Property_operand_body_target_container_t.Property_operand_body_target_measured_container con_ptm ->
      (Property_operand_body_target_measured_container_v.name con_ptm)
;;

let string_off = function
  | Property_operand_body_target_container_t.Property_operand_body_target_calculated_container con_pca ->
      (Property_operand_body_target_calculated_container_v.string_off con_pca)
        
  | Property_operand_body_target_container_t.Property_operand_body_target_created_container con_pcr ->
      (Property_operand_body_target_created_container_v.string_off con_pcr)

  | Property_operand_body_target_container_t.Property_operand_body_target_measured_container con_ptm ->
      (Property_operand_body_target_measured_container_v.string_off con_ptm)
;;

let longname = function
  | Property_operand_body_target_container_t.Property_operand_body_target_calculated_container con_pca ->
      (Property_operand_body_target_calculated_container_v.longname con_pca)
        
  | Property_operand_body_target_container_t.Property_operand_body_target_created_container con_pcr ->
      (Property_operand_body_target_created_container_v.longname con_pcr)

  | Property_operand_body_target_container_t.Property_operand_body_target_measured_container con_ptm ->
      (Property_operand_body_target_measured_container_v.longname con_ptm)
;;

let fullname = function
  | Property_operand_body_target_container_t.Property_operand_body_target_calculated_container con_pca ->
      (Property_operand_body_target_calculated_container_v.fullname con_pca)
        
  | Property_operand_body_target_container_t.Property_operand_body_target_created_container con_pcr ->
      (Property_operand_body_target_created_container_v.fullname con_pcr)

  | Property_operand_body_target_container_t.Property_operand_body_target_measured_container con_ptm ->
      (Property_operand_body_target_measured_container_v.fullname con_ptm)
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_pot =
  let (sym_pot, soi_pot) = tag_pot in
  match sym_pot with
  | Property_operand_body_target_symbol_t.Property_operand_body_target_calculated_symbol sym_pca ->
      let tag_pca = Tag_v.make sym_pca soi_pot in
      Property_operand_body_target_calculated_container_v.builder_tag_list_of_tag tag_pca

  | Property_operand_body_target_symbol_t.Property_operand_body_target_created_symbol sym_pcr ->
      let tag_pcr = Tag_v.make sym_pcr soi_pot in
      Property_operand_body_target_created_container_v.builder_tag_list_of_tag tag_pcr

  | Property_operand_body_target_symbol_t.Property_operand_body_target_measured_symbol sym_ptm ->
      let tag_ptm = Tag_v.make sym_ptm soi_pot in
      Property_operand_body_target_measured_container_v.builder_tag_list_of_tag tag_ptm
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple_of_tag tag_pot =
  let (sym_pot, soi_pot) = tag_pot in
  match sym_pot with
  | Property_operand_body_target_symbol_t.Property_operand_body_target_calculated_symbol sym_pca ->
      let tag_pca = Tag_v.make sym_pca soi_pot in
      Property_operand_body_target_calculated_container_v.builder_tag_tuple_of_tag tag_pca

  | Property_operand_body_target_symbol_t.Property_operand_body_target_created_symbol sym_pcr ->
      let tag_pcr = Tag_v.make sym_pcr soi_pot in
      Property_operand_body_target_created_container_v.builder_tag_tuple_of_tag tag_pcr

  | Property_operand_body_target_symbol_t.Property_operand_body_target_measured_symbol sym_ptm ->
      let tag_ptm = Tag_v.make sym_ptm soi_pot in
      Property_operand_body_target_measured_container_v.builder_tag_tuple_of_tag tag_ptm
;;

(** {9 Building as Builder Tag tuple} *)

let building_of_tag tag_pot =
  builder_tag_tuple_of_tag tag_pot
;;

(** {6 Container} *)

(** {6 Container_of_tag : Pattern Matching} *)

let container_of_tag tag_pot =
  let (sym_pot, soi_pot) = tag_pot in
  match sym_pot with
  | Property_operand_body_target_symbol_t.Property_operand_body_target_calculated_symbol sym_pca ->
      let tag_pca = Tag_v.make sym_pca soi_pot in
      let con_pca = Property_operand_body_target_calculated_container_v.container_of_tag tag_pca in
      Property_operand_body_target_container_t.Property_operand_body_target_calculated_container con_pca

  | Property_operand_body_target_symbol_t.Property_operand_body_target_created_symbol sym_pcr ->
      let tag_pcr = Tag_v.make sym_pcr soi_pot in
      let con_pcr = Property_operand_body_target_created_container_v.container_of_tag tag_pcr in
      Property_operand_body_target_container_t.Property_operand_body_target_created_container con_pcr

  | Property_operand_body_target_symbol_t.Property_operand_body_target_measured_symbol sym_ptm ->
      let tag_ptm = Tag_v.make sym_ptm soi_pot in
      let con_ptm = Property_operand_body_target_measured_container_v.container_of_tag tag_ptm in
      Property_operand_body_target_container_t.Property_operand_body_target_measured_container con_ptm
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_pot =
  let tag_pro = Property_operand_body_target_tag_v.property_tag_of_property_operand_body_target_tag tag_pot in
  Property_fence_by_property_tag_provider_v.provide tag_pro
;;

let fence_as_tuple_of_tag tag_pot =
  let fen_l = fence_as_list_of_tag tag_pot in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_pot =
  let fen_l = fence_as_list_of_tag tag_pot in
  Tuple_list_v.make fen_l
;;

(* generated by /home/colonna/sources/ocaml_top/setup/utilities/do_container_as_tuple_body_trunc_3sibling_0containee_v.sh property_operand_body_target pot property_operand_body_target_calculated pca property_operand_body_target_created pcr property_operand_body_target_measured ptm *)
(* using template_container_as_tuple_body_trunc_3sibling_0containee_v.ml *)
(* Done on dimanche 21 mai 2017, 11:00:02 (UTC+0200) *)
