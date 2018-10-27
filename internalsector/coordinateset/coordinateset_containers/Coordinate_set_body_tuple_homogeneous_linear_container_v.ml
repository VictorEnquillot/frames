(** {3 Coordinate_set_body_tuple_homogeneous_linear_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FCOO:Coordinate_set_body_tuple_homogeneous_linear_container_v";
   "Needs : FCOO:Coordinate_set_fence_homogeneous_linear_x_tag_v";
   "Needs : FCOO:Coordinate_set_fence_homogeneous_linear : for son list predicate";
   "Needs : FCOO:Coordinate_son_tag_list_by_coordinate_father_tag_provider_v";
   "Needs : BCOO:Coordinate_fence_by_coordinate_tag_provider_v";
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
   "What-is-it : it is a Body Bud container of Border sub-Types and thus a Singlet of Coordinate_set_fence_homogeneous_linear_x_tag";
   "Author : François Colonna 16 décembre 2016 at 10:00:44+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name con_chl =
  Singlet_v.name 
    Coordinate_set_fence_homogeneous_linear_x_tag_v.name
    con_chl
;;

let string_off con_chl =
  Singlet_v.name 
    Coordinate_set_fence_homogeneous_linear_x_tag_v.string_off
    con_chl
;;

let longname con_chl =
  Singlet_v.name 
    Coordinate_set_fence_homogeneous_linear_x_tag_v.longname
    con_chl
;;

let fullname con_chl =
  Singlet_v.name 
    Coordinate_set_fence_homogeneous_linear_x_tag_v.fullname
    con_chl
;;

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_chl =
  Tag_v.map_entity 
    Coordinate_symbol_v.coordinate_symbol_of_coordinate_set_body_tuple_homogeneous_linear_symbol 
    tag_chl
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_chl =
  let tag_coo = coerce_up_tag tag_chl in
  Coordinate_son_tag_list_by_coordinate_father_tag_provider_v.provide
    tag_coo
;;

(** {9 Builder Tag Datastructures} *)

let builder_tag_uno_of_tag tag_chl =
  let tag_bui_l = builder_tag_list_of_tag tag_chl in
  Uno_v.uno_of_list tag_bui_l
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple_of_tag tag_chl =
  let tag_bui_d = builder_tag_uno_of_tag tag_chl in
  Tuple_v.tuple_of_uno tag_bui_d
;;

(** {9 Building as Builder Tag uno} *)

let building_of_tag tag_chl =
  builder_tag_uno_of_tag tag_chl
;;

(** {6 Container} *)

(** {9 Coercing Up Containee_up Tag to Builder Tag} *)

let builder_tag_of_containee_up_tag tag_cnu =
  Tag_v.map_entity 
    Coordinate_symbol_v.coordinate_symbol_of_coordinate_set_fence_homogeneous_linear_symbol
    tag_cnu
;;

(** {9 Coercing Down Builder Tag to Containee_up Tag} *)

let containee_up_tag_off_builder_tag tag_bui =
  Tag_v.map_entity 
    Coordinate_symbol_v.coordinate_set_fence_homogeneous_linear_symbol_off_coordinate_symbol
    tag_bui
;;

(** {9 Containee_up Tag list} *)

let containee_up_tag_list tag_chl =
  let tag_bui_l = builder_tag_list_of_tag tag_chl in
  List.map containee_up_tag_off_builder_tag tag_bui_l 
;;

(** {9 Containee_up Tag Uno} *)

let containee_up_tag_uno tag_chl =
  let tag_cnu_l = containee_up_tag_list tag_chl in
  Uno_v.uno_of_list tag_cnu_l
;;

(** {9 Extracting Containees off Containee_up} *)

let first_containee_tag_off_containee_up_tag tag_cnu =
  let (sym_cnu, soi_cnu) = tag_cnu in
  match sym_cnu with 
  | Coordinate_set_fence_homogeneous_linear_symbol_t.Coordinate_set_fence_homogeneous_linear_x_symbol sym_clx ->
      Tag_v.make sym_clx soi_cnu
;;

(** {9 Container_of_tag : Containee Datastructure} *)

let container_of_tag tag_chl =
  let tag_cnu = containee_up_tag_uno tag_chl in
  let con_chl = first_containee_tag_off_containee_up_tag tag_cnu in
  Singlet_v.make con_chl 
;;

(** {9 Extracting Containees off Tag} *)

let first_containee_tag tag_chl =
  let con_chl = container_of_tag tag_chl in
  Singlet_v.first_off_singlet con_chl
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_chl =
  let tag_coo = coerce_up_tag tag_chl in
  Coordinate_fence_by_coordinate_tag_provider_v.provide tag_coo
;;

let fence_as_uno_of_tag tag_chl =
  let fen_chl = fence_as_list_of_tag tag_chl in
  Uno_v.uno_of_list fen_chl
;;

let fence_as_tuple_of_tag tag_chl =
  let fen_l = fence_as_list_of_tag tag_chl in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_chl =
  let fen_l = fence_as_list_of_tag tag_chl in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_singlet_body_bud_1containee_v.sh coordinate_set_body_tuple_homogeneous_linear chl coordinate_set_fence_homogeneous_linear_x clx coordinate_set_fence_homogeneous_linear *)
(* using template_container_as_singlet_body_bud_1containee_v.ml *)
(* Done on dimanche 18 décembre 2016, 17:16:37 (UTC+0100) *)

