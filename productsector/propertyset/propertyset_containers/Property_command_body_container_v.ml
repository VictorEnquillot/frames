(** {3 Property_command_body_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FPRO:Property_command_body_container_v";
   "Needs : FPRO:Property_command_body_debug_container_v";
   "Needs : FPRO:Property_command_body_set_container_v";
   "Needs : FPRO:Property_command_body_trace_container_v";
   "Needs : FPRO:Property_command_body_title_container_v";
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
   "What-is-it : it is a Trunc container of Border sub-Types";
   "Author : François Colonna 21 mai 2017 at 16:14:21+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name = function
  | Property_command_body_container_t.Property_command_body_debug_container con_pcd ->
      (Property_command_body_debug_container_v.name con_pcd)
        
  | Property_command_body_container_t.Property_command_body_set_container con_pcs ->
      (Property_command_body_set_container_v.name con_pcs)
        
  | Property_command_body_container_t.Property_command_body_trace_container con_ptr ->
      (Property_command_body_trace_container_v.name con_ptr)

  | Property_command_body_container_t.Property_command_body_title_container con_pti ->
      (Property_command_body_title_container_v.name con_pti)
;;

let string_off = function
  | Property_command_body_container_t.Property_command_body_debug_container con_pcd ->
      (Property_command_body_debug_container_v.string_off con_pcd)
        
  | Property_command_body_container_t.Property_command_body_set_container con_pcs ->
      (Property_command_body_set_container_v.string_off con_pcs)

  | Property_command_body_container_t.Property_command_body_trace_container con_ptr ->
      (Property_command_body_trace_container_v.string_off con_ptr)

  | Property_command_body_container_t.Property_command_body_title_container con_pti ->
      (Property_command_body_title_container_v.string_off con_pti)
;;

let longname = function
  | Property_command_body_container_t.Property_command_body_debug_container con_pcd ->
      (Property_command_body_debug_container_v.longname con_pcd)
        
  | Property_command_body_container_t.Property_command_body_set_container con_pcs ->
      (Property_command_body_set_container_v.longname con_pcs)

  | Property_command_body_container_t.Property_command_body_trace_container con_ptr ->
      (Property_command_body_trace_container_v.longname con_ptr)

  | Property_command_body_container_t.Property_command_body_title_container con_pti ->
      (Property_command_body_title_container_v.longname con_pti)
;;

let fullname = function
  | Property_command_body_container_t.Property_command_body_debug_container con_pcd ->
      (Property_command_body_debug_container_v.fullname con_pcd)
        
  | Property_command_body_container_t.Property_command_body_set_container con_pcs ->
      (Property_command_body_set_container_v.fullname con_pcs)

  | Property_command_body_container_t.Property_command_body_trace_container con_ptr ->
      (Property_command_body_trace_container_v.fullname con_ptr)

  | Property_command_body_container_t.Property_command_body_title_container con_pti ->
      (Property_command_body_title_container_v.fullname con_pti)
;;


(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_pbc =
  let (sym_pbc, soi_pbc) = tag_pbc in
  match sym_pbc with
  | Property_command_body_symbol_t.Property_command_body_debug_symbol sym_pcd ->
      let tag_pcd = Tag_v.make sym_pcd soi_pbc in
      Property_command_body_debug_container_v.builder_tag_list_of_tag tag_pcd

  | Property_command_body_symbol_t.Property_command_body_set_symbol sym_pcs ->
      let tag_pcs = Tag_v.make sym_pcs soi_pbc in
      Property_command_body_set_container_v.builder_tag_list_of_tag tag_pcs

  | Property_command_body_symbol_t.Property_command_body_trace_symbol sym_ptr ->
      let tag_ptr = Tag_v.make sym_ptr soi_pbc in
      Property_command_body_trace_container_v.builder_tag_list_of_tag tag_ptr

  | Property_command_body_symbol_t.Property_command_body_title_symbol sym_pti ->
      let tag_pti = Tag_v.make sym_pti soi_pbc in
      Property_command_body_title_container_v.builder_tag_list_of_tag tag_pti
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple_of_tag tag_pbc =
  let (sym_pbc, soi_pbc) = tag_pbc in
  match sym_pbc with
  | Property_command_body_symbol_t.Property_command_body_debug_symbol sym_pcd ->
      let tag_pcd = Tag_v.make sym_pcd soi_pbc in
      Property_command_body_debug_container_v.builder_tag_tuple_of_tag tag_pcd

  | Property_command_body_symbol_t.Property_command_body_set_symbol sym_pcs ->
      let tag_pcs = Tag_v.make sym_pcs soi_pbc in
      Property_command_body_set_container_v.builder_tag_tuple_of_tag tag_pcs

  | Property_command_body_symbol_t.Property_command_body_trace_symbol sym_ptr ->
      let tag_ptr = Tag_v.make sym_ptr soi_pbc in
      Property_command_body_trace_container_v.builder_tag_tuple_of_tag tag_ptr

  | Property_command_body_symbol_t.Property_command_body_title_symbol sym_pti ->
      let tag_pti = Tag_v.make sym_pti soi_pbc in
      Property_command_body_title_container_v.builder_tag_tuple_of_tag tag_pti
;;

(** {9 Building as Builder Tag tuple} *)

let building_of_tag tag_pbc =
  builder_tag_tuple_of_tag tag_pbc
;;

(** {6 Container} *)

(** {6 Container_of_tag : Pattern Matching} *)

let container_of_tag tag_pbc =
  let (sym_pbc, soi_pbc) = tag_pbc in
  match sym_pbc with
  | Property_command_body_symbol_t.Property_command_body_debug_symbol sym_pcd ->
      let tag_pcd = Tag_v.make sym_pcd soi_pbc in
      let con_pcd = Property_command_body_debug_container_v.container_of_tag tag_pcd in
      Property_command_body_container_t.Property_command_body_debug_container con_pcd

  | Property_command_body_symbol_t.Property_command_body_set_symbol sym_pcs ->
      let tag_pcs = Tag_v.make sym_pcs soi_pbc in
      let con_pcs = Property_command_body_set_container_v.container_of_tag tag_pcs in
      Property_command_body_container_t.Property_command_body_set_container con_pcs

  | Property_command_body_symbol_t.Property_command_body_trace_symbol sym_ptr ->
      let tag_ptr = Tag_v.make sym_ptr soi_pbc in
      let con_ptr = Property_command_body_trace_container_v.container_of_tag tag_ptr in
      Property_command_body_container_t.Property_command_body_trace_container con_ptr

  | Property_command_body_symbol_t.Property_command_body_title_symbol sym_pti ->
      let tag_pti = Tag_v.make sym_pti soi_pbc in
      let con_pti = Property_command_body_title_container_v.container_of_tag tag_pti in
      Property_command_body_container_t.Property_command_body_title_container con_pti
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_pbc =
  let tag_pro = Property_command_body_tag_v.property_tag_of_property_command_body_tag tag_pbc in
  Property_fence_by_property_tag_provider_v.provide tag_pro
;;

let fence_as_tuple_of_tag tag_pbc =
  let fen_l = fence_as_list_of_tag tag_pbc in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_pbc =
  let fen_l = fence_as_list_of_tag tag_pbc in
  Tuple_list_v.make fen_l
;;

(* generated by /home/colonna/sources/ocaml_top/setup/utilities/do_container_as_tuple_body_trunc_4sibling_0containee_v.sh property_command_body pbc property_command_body_debug pcd property_command_body_set pcs property_command_body_trace ptr property_command_body_title pti *)
(* using template_container_as_tuple_body_trunc_4sibling_0containee_v.ml *)
(* Done on dimanche 21 mai 2017, 11:00:03 (UTC+0200) *)
