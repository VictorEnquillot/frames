(** {3 Coordinate_set_body_tuple_homogeneous_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FCOO:Coordinate_set_body_tuple_homogeneous_container_v";
   "Needs : FCOO:Coordinate_set_fence_tag_v";
   "Needs : FCOO:Coordinate_set_body_tuple_homogeneous_cartesian_container_v";
   "Needs : FCOO:Coordinate_set_body_tuple_homogeneous_planar_container_v";
   "Needs : FCOO:Coordinate_set_body_tuple_homogeneous_linear_container_v";
   "Needs : DCOO:Coordinate_fence_by_coordinate_tag_provider_v";
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
   "What-is-it : it is a Trunc container of Border sub-Types and thus a Tuple of its Coordinate_set_fence Tag";
   "Author : François Colonna 14 décembre 2016 at 17:18:55+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)
let name = function
  | Coordinate_set_body_tuple_homogeneous_container_t.Coordinate_set_body_tuple_homogeneous_cartesian_container con_chc ->
      (Coordinate_set_body_tuple_homogeneous_cartesian_container_v.name con_chc)
        
  | Coordinate_set_body_tuple_homogeneous_container_t.Coordinate_set_body_tuple_homogeneous_planar_container con_chp ->
      (Coordinate_set_body_tuple_homogeneous_planar_container_v.name con_chp)
        
  | Coordinate_set_body_tuple_homogeneous_container_t.Coordinate_set_body_tuple_homogeneous_linear_container con_chl ->
      (Coordinate_set_body_tuple_homogeneous_linear_container_v.name con_chl)
;;

let string_off = function
  | Coordinate_set_body_tuple_homogeneous_container_t.Coordinate_set_body_tuple_homogeneous_cartesian_container con_chc ->
      (Coordinate_set_body_tuple_homogeneous_cartesian_container_v.string_off con_chc)
        
  | Coordinate_set_body_tuple_homogeneous_container_t.Coordinate_set_body_tuple_homogeneous_planar_container con_chp ->
      (Coordinate_set_body_tuple_homogeneous_planar_container_v.string_off con_chp)

  | Coordinate_set_body_tuple_homogeneous_container_t.Coordinate_set_body_tuple_homogeneous_linear_container con_chl ->
      (Coordinate_set_body_tuple_homogeneous_linear_container_v.string_off con_chl)
;;

let longname = function
  | Coordinate_set_body_tuple_homogeneous_container_t.Coordinate_set_body_tuple_homogeneous_cartesian_container con_chc ->
      (Coordinate_set_body_tuple_homogeneous_cartesian_container_v.longname con_chc)
        
  | Coordinate_set_body_tuple_homogeneous_container_t.Coordinate_set_body_tuple_homogeneous_planar_container con_chp ->
      (Coordinate_set_body_tuple_homogeneous_planar_container_v.longname con_chp)

  | Coordinate_set_body_tuple_homogeneous_container_t.Coordinate_set_body_tuple_homogeneous_linear_container con_chl ->
      (Coordinate_set_body_tuple_homogeneous_linear_container_v.longname con_chl)
;;

let fullname = function
  | Coordinate_set_body_tuple_homogeneous_container_t.Coordinate_set_body_tuple_homogeneous_cartesian_container con_chc ->
      (Coordinate_set_body_tuple_homogeneous_cartesian_container_v.fullname con_chc)
        
  | Coordinate_set_body_tuple_homogeneous_container_t.Coordinate_set_body_tuple_homogeneous_planar_container con_chp ->
      (Coordinate_set_body_tuple_homogeneous_planar_container_v.fullname con_chp)

  | Coordinate_set_body_tuple_homogeneous_container_t.Coordinate_set_body_tuple_homogeneous_linear_container con_chl ->
      (Coordinate_set_body_tuple_homogeneous_linear_container_v.fullname con_chl)
;;


(** {6 Coercing Tag} *)

(** {9 Coercing Up Tag} *)

let coerce_up_tag tag_cth =
  Tag_v.map_entity 
    Coordinate_symbol_v.coordinate_symbol_of_coordinate_set_body_tuple_homogeneous_symbol 
    tag_cth
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

let builder_tag_list_of_tag tag_cth =
  let (sym_cth, soi_cth) = tag_cth in
  match sym_cth with
  | Coordinate_set_body_tuple_homogeneous_symbol_t.Coordinate_set_body_tuple_homogeneous_cartesian_symbol sym_chc ->
      let tag_chc = Tag_v.make sym_chc soi_cth in
      Coordinate_set_body_tuple_homogeneous_cartesian_container_v.builder_tag_list_of_tag tag_chc

  | Coordinate_set_body_tuple_homogeneous_symbol_t.Coordinate_set_body_tuple_homogeneous_planar_symbol sym_chp ->
      let tag_chp = Tag_v.make sym_chp soi_cth in
      Coordinate_set_body_tuple_homogeneous_planar_container_v.builder_tag_list_of_tag tag_chp

  | Coordinate_set_body_tuple_homogeneous_symbol_t.Coordinate_set_body_tuple_homogeneous_linear_symbol sym_chl ->
      let tag_chl = Tag_v.make sym_chl soi_cth in
      Coordinate_set_body_tuple_homogeneous_linear_container_v.builder_tag_list_of_tag tag_chl
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple_of_tag tag_cth =
  let (sym_cth, soi_cth) = tag_cth in
  match sym_cth with
  | Coordinate_set_body_tuple_homogeneous_symbol_t.Coordinate_set_body_tuple_homogeneous_cartesian_symbol sym_chc ->
      let tag_chc = Tag_v.make sym_chc soi_cth in
      Coordinate_set_body_tuple_homogeneous_cartesian_container_v.builder_tag_tuple_of_tag tag_chc

  | Coordinate_set_body_tuple_homogeneous_symbol_t.Coordinate_set_body_tuple_homogeneous_planar_symbol sym_chp ->
      let tag_chp = Tag_v.make sym_chp soi_cth in
      Coordinate_set_body_tuple_homogeneous_planar_container_v.builder_tag_tuple_of_tag tag_chp

  | Coordinate_set_body_tuple_homogeneous_symbol_t.Coordinate_set_body_tuple_homogeneous_linear_symbol sym_chl ->
      let tag_chl = Tag_v.make sym_chl soi_cth in
      Coordinate_set_body_tuple_homogeneous_linear_container_v.builder_tag_tuple_of_tag tag_chl
;;

(** {9 Building as Builder Tag tuple} *)

let building_of_tag tag_cth =
  builder_tag_tuple_of_tag tag_cth
;;

(** {6 Container} *)

(** {6 Container_of_tag : Pattern Matching} *)

let container_of_tag tag_cth =
  let (sym_cth, soi_cth) = tag_cth in
  match sym_cth with
  | Coordinate_set_body_tuple_homogeneous_symbol_t.Coordinate_set_body_tuple_homogeneous_cartesian_symbol sym_chc ->
      let tag_chc = Tag_v.make sym_chc soi_cth in
      let con_chc = Coordinate_set_body_tuple_homogeneous_cartesian_container_v.container_of_tag tag_chc in
      Coordinate_set_body_tuple_homogeneous_container_t.Coordinate_set_body_tuple_homogeneous_cartesian_container con_chc

  | Coordinate_set_body_tuple_homogeneous_symbol_t.Coordinate_set_body_tuple_homogeneous_planar_symbol sym_chp ->
      let tag_chp = Tag_v.make sym_chp soi_cth in
      let con_chp = Coordinate_set_body_tuple_homogeneous_planar_container_v.container_of_tag tag_chp in
      Coordinate_set_body_tuple_homogeneous_container_t.Coordinate_set_body_tuple_homogeneous_planar_container con_chp

  | Coordinate_set_body_tuple_homogeneous_symbol_t.Coordinate_set_body_tuple_homogeneous_linear_symbol sym_chl ->
      let tag_chl = Tag_v.make sym_chl soi_cth in
      let con_chl = Coordinate_set_body_tuple_homogeneous_linear_container_v.container_of_tag tag_chl in
      Coordinate_set_body_tuple_homogeneous_container_t.Coordinate_set_body_tuple_homogeneous_linear_container con_chl
;;

let containee_up_tag_list tag_cth =
  let tag_bui_l = builder_tag_list_of_tag tag_cth in
  List.map containee_up_tag_off_builder_tag tag_bui_l
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_cth =
  let tag_coo = coerce_up_tag tag_cth in
  Coordinate_fence_by_coordinate_tag_provider_v.provide tag_coo
;;

let fence_as_tuple_of_tag tag_cth =
  let fen_l = fence_as_list_of_tag tag_cth in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_cth =
  let fen_l = fence_as_list_of_tag tag_cth in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_tuple_body_trunc_3sibling_upcontainee_v.sh coordinate_set_body_tuple_homogeneous cth coordinate_set_body_tuple_homogeneous_cartesian chc coordinate_set_body_tuple_homogeneous_planar chp coordinate_set_body_tuple_homogeneous_linear chl coordinate_set_fence csf *)
(* using ./template_container_as_tuple_body_trunc_3sibling_upcontainee_v.ml *)
(* Done on dimanche 18 décembre 2016, 17:16:38 (UTC+0100) *)

