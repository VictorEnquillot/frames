(** {3 Coordinate_set_body_tuple_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FCOO:Coordinate_set_body_tuple_container_v";
   "Needs : FCOO:Coordinate_set_fence_tag_v";
   "Needs : FCOO:Coordinate_set_body_tuple_heterogeneous_container_v";
   "Needs : FCOO:Coordinate_set_body_tuple_homogeneous_container_v";
   "Needs : DCOO:Coordinate_fence_by_coordinate_tag_provider_v";
   "Needed-by: ";
   "Definition : the Fence is the Tag list of the Leaf entities of the B-Tree of a Domain";
   "Definition : a Builder (for an Entity of a Domain) is a son of its Builder-Subtree";
   "Definition : a Containee is a Builder expressed in the lowest subtype compatible with the Datastructure of the Container";
   "Definition : a Container is the Datastructure of the Containee of an Entity";
   "Definition : a Containee is an element of the Datastructure of the Container of an Entity";
   "Definition : a Building is the same Datastructure as Container filled with Builders"; 
   "Definition : a Bud type is a type with only one constructor of string";
   "Definition : a Trunc type has only constructors of constructor";
   "What-is-it : Up_coercion of Container type as Symbol type up_coercion";
   "What-is-it : it is a Trunc container of Fence sub-Types and thus a Tuple of its Coordinate_set_fence Tag";
   "Author : François Colonna 16 décembre 2016 at 16:21:37+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name = function
  | Coordinate_set_body_tuple_container_t.Coordinate_set_body_tuple_heterogeneous_container con_che ->
      (Coordinate_set_body_tuple_heterogeneous_container_v.name con_che)
        
  | Coordinate_set_body_tuple_container_t.Coordinate_set_body_tuple_homogeneous_container con_cho ->
      (Coordinate_set_body_tuple_homogeneous_container_v.name con_cho)
;;

let string_off = function
  | Coordinate_set_body_tuple_container_t.Coordinate_set_body_tuple_heterogeneous_container con_che ->
      (Coordinate_set_body_tuple_heterogeneous_container_v.string_off con_che)
        
  | Coordinate_set_body_tuple_container_t.Coordinate_set_body_tuple_homogeneous_container con_cho ->
      (Coordinate_set_body_tuple_homogeneous_container_v.string_off con_cho)
;;

let longname = function
  | Coordinate_set_body_tuple_container_t.Coordinate_set_body_tuple_heterogeneous_container con_che ->
      (Coordinate_set_body_tuple_heterogeneous_container_v.longname con_che)
        
  | Coordinate_set_body_tuple_container_t.Coordinate_set_body_tuple_homogeneous_container con_cho ->
      (Coordinate_set_body_tuple_homogeneous_container_v.longname con_cho)
;;

let fullname = function
  | Coordinate_set_body_tuple_container_t.Coordinate_set_body_tuple_heterogeneous_container con_che ->
      (Coordinate_set_body_tuple_heterogeneous_container_v.fullname con_che)
        
  | Coordinate_set_body_tuple_container_t.Coordinate_set_body_tuple_homogeneous_container con_cho ->
      (Coordinate_set_body_tuple_homogeneous_container_v.fullname con_cho)
;;

(** {6 Coercing Tag} *)

(** {9 Coercing Up Tag} *)

let coerce_up_tag tag_cbt =
  Tag_v.map_entity 
    Coordinate_symbol_v.coordinate_symbol_of_coordinate_set_body_tuple_symbol 
    tag_cbt
;;

(** {9 Coercing Down Builder to Containee} *)

let containee_up_tag_off_builder_tag tag_coo =
  Tag_v.map_entity
    Coordinate_symbol_v.coordinate_set_fence_symbol_off_coordinate_symbol
    tag_coo
;;

(** {9 Coercing Up Containee_up to Builder} *)

let builder_tag_of_containee_up_tag tag_cnu =
  Tag_v.map_entity 
    Coordinate_symbol_v.coordinate_symbol_of_coordinate_set_fence_symbol
    tag_cnu
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_cbt =
  let (sym_cbt, soi_cbt) = tag_cbt in
  match sym_cbt with
  | Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_heterogeneous_symbol sym_che ->
      let tag_che = Tag_v.make sym_che soi_cbt in
      Coordinate_set_body_tuple_heterogeneous_container_v.builder_tag_list_of_tag tag_che

  | Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_homogeneous_symbol sym_cho ->
      let tag_cho = Tag_v.make sym_cho soi_cbt in
      Coordinate_set_body_tuple_homogeneous_container_v.builder_tag_list_of_tag tag_cho
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple_of_tag tag_cbt =
  let (sym_cbt, soi_cbt) = tag_cbt in
  match sym_cbt with
  | Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_heterogeneous_symbol sym_che ->
      let tag_che = Tag_v.make sym_che soi_cbt in
      Coordinate_set_body_tuple_heterogeneous_container_v.builder_tag_tuple_of_tag tag_che

  | Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_homogeneous_symbol sym_cho ->
      let tag_cho = Tag_v.make sym_cho soi_cbt in
      Coordinate_set_body_tuple_homogeneous_container_v.builder_tag_tuple_of_tag tag_cho
;;

(** {9 Building as Builder Tag tuple} *)

let building_of_tag tag_cbt =
  builder_tag_tuple_of_tag tag_cbt
;;

(** {6 Container} *)

let containee_up_tag_list tag_cbt =
  let tag_bui_l = builder_tag_list_of_tag tag_cbt in
  List.map containee_up_tag_off_builder_tag tag_bui_l
;;

(** {6 Container_of_tag : Pattern Matching} *)

let container_of_tag tag_cbt =
  let (sym_cbt, soi_cbt) = tag_cbt in
  match sym_cbt with
  | Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_heterogeneous_symbol sym_che ->
      let tag_che = Tag_v.make sym_che soi_cbt in
      let con_che = Coordinate_set_body_tuple_heterogeneous_container_v.container_of_tag tag_che in
      Coordinate_set_body_tuple_container_t.Coordinate_set_body_tuple_heterogeneous_container con_che

  | Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_homogeneous_symbol sym_cho ->
      let tag_cho = Tag_v.make sym_cho soi_cbt in
      let con_cho = Coordinate_set_body_tuple_homogeneous_container_v.container_of_tag tag_cho in
      Coordinate_set_body_tuple_container_t.Coordinate_set_body_tuple_homogeneous_container con_cho
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_cbt =
  let tag_coo = coerce_up_tag tag_cbt in
  Coordinate_fence_by_coordinate_tag_provider_v.provide tag_coo
;;

let fence_as_tuple_of_tag tag_cbt =
  let fen_l = fence_as_list_of_tag tag_cbt in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_cbt =
  let fen_l = fence_as_list_of_tag tag_cbt in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_tuple_body_trunc_2sibling_upcontainee_v.sh coordinate_set_body_tuple cbt coordinate_set_body_tuple_heterogeneous che coordinate_set_body_tuple_homogeneous cho coordinate_set_fence csf *)
(* using ./template_container_as_tuple_body_trunc_2sibling_upcontainee_v.ml *)
(* Done on dimanche 18 décembre 2016, 17:16:39 (UTC+0100) *)

