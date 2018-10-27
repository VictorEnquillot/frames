(** {3 Elementary_body_coordinate_tuple_homogeneous_cartesian_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FELE:Elementary_body_coordinate_tuple_homogeneous_cartesian_container_v";
   "Needs : FELE:Elementary_border_coordinate_homogeneous_cartesian_x_tag_v";
   "Needs : FELE:Elementary_border_coordinate_homogeneous_cartesian_y_tag_v";
   "Needs : FELE:Elementary_border_coordinate_homogeneous_cartesian_z_tag_v";
   "Needs : FELE:Elementary_border_coordinate_homogeneous_cartesian for son list predicate";
   "Needs : DELE:Elementary_any_category_by_sole_index_extractor_v";
   "Needs : DELE:Elementary_fence_by_elementary_tag_provider_v";
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
   "What-is-it : it is a Body Bud container of Border sub-Types and thus a Triplet of (Elementary_border_coordinate_homogeneous_cartesian_x_tag, Elementary_border_coordinate_homogeneous_cartesian_y_tag, Conee3_tag )";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name con_ehc =
  Triplet_v.name 
    Elementary_border_coordinate_homogeneous_cartesian_x_tag_v.name
    Elementary_border_coordinate_homogeneous_cartesian_y_tag_v.name
    Elementary_border_coordinate_homogeneous_cartesian_z_tag_v.name
    con_ehc
;;

let string_off con_ehc =
  Triplet_v.name 
    Elementary_border_coordinate_homogeneous_cartesian_x_tag_v.string_off
    Elementary_border_coordinate_homogeneous_cartesian_y_tag_v.string_off
    Elementary_border_coordinate_homogeneous_cartesian_z_tag_v.string_off
    con_ehc
;;

let longname con_ehc =
  Triplet_v.name 
    Elementary_border_coordinate_homogeneous_cartesian_x_tag_v.longname
    Elementary_border_coordinate_homogeneous_cartesian_y_tag_v.longname
    Elementary_border_coordinate_homogeneous_cartesian_z_tag_v.longname
    con_ehc
;;

let fullname con_ehc =
  Triplet_v.name 
    Elementary_border_coordinate_homogeneous_cartesian_x_tag_v.fullname
    Elementary_border_coordinate_homogeneous_cartesian_y_tag_v.fullname
    Elementary_border_coordinate_homogeneous_cartesian_z_tag_v.fullname
    con_ehc
;;

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_ehc =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_symbol_of_elementary_body_coordinate_tuple_homogeneous_cartesian_symbol 
    tag_ehc
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list tag_ehc =
  let tag_ele = coerce_up_tag tag_ehc in
  Son_elementary_tag_list_by_father_elementary_tag_provider_v.provide 
    tag_ele
;;

(** {9 Builder Tag Datastructures} *)

let builder_tag_trio tag_ehc =
  let tag_bui_l = builder_tag_list tag_ehc in
  Trio_v.trio_of_list tag_bui_l
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple tag_ehc =
  let tag_bui_d = builder_tag_trio tag_ehc in
  Tuple_v.tuple_of_trio tag_bui_d
;;

(** {9 Building as Builder Tag trio} *)

let building_of_tag tag_ehc =
  builder_tag_trio tag_ehc
;;

(** {6 Container} *)

(** {9 Coercing Up Containee_up Tag to Builder Tag} *)

let builder_tag_of_containee_up_tag tag_cnu =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_symbol_of_elementary_border_coordinate_homogeneous_cartesian_symbol
    tag_cnu
;;

(** {9 Coercing Down Builder Tag to Containee_up Tag} *)

let containee_up_tag_off_builder_tag tag_bui =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_symbol
    tag_bui
;;

(** {9 Containee_up Tag list} *)

let containee_up_tag_list tag_ehc =
  let tag_bui_l = builder_tag_list tag_ehc in
  List.map containee_up_tag_off_builder_tag tag_bui_l 
;;

(** {9 Containee_up Tag Trio} *)

let containee_up_tag_trio tag_ehc =
  let tag_cnu_l = containee_up_tag_list tag_ehc in
  Trio_v.trio_of_list tag_cnu_l
;;

(** {9 Extracting Containees off Containee_up} *)

let first_containee_tag_off_containee_up_tag tag_cnu =
  let (sym_cnu, soi_cnu) = tag_cnu in
  match sym_cnu with 
  | Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_symbol sym_ecx ->
      Tag_v.make sym_ecx soi_cnu
	
  | _ -> 
      failwith "Not_a_Elementary_border_coordinate_homogeneous_cartesian_x_symbol:Elementary_border_coordinate_homogeneous_cartesian_container_v.first_containee_tag_off_containee_up_tag"
;;

let second_containee_tag_off_containee_up_tag tag_cnu =
  let (sym_cnu, soi_cnu) = tag_cnu in
  match sym_cnu with 
  | Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_y_symbol sym_ecy ->
      Tag_v.make sym_ecy soi_cnu
	
  | _ -> 
      failwith "Not_a_Elementary_border_coordinate_homogeneous_cartesian_y_symbol:Elementary_border_coordinate_homogeneous_cartesian_container_v.seond_containee_tag_off_containee_up_tag"
;;

let third_containee_tag_off_containee_up_tag tag_cnu =
  let (sym_cnu, soi_cnu) = tag_cnu in
  match sym_cnu with 
  | Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_z_symbol sym_ecz ->
      Tag_v.make sym_ecz soi_cnu
	
  | _ -> 
      failwith "Not_a_Elementary_border_coordinate_homogeneous_cartesian_z_symbol:Elementary_border_coordinate_homogeneous_cartesian_container_v.third_containee_tag_off_containee_up_tag"
;;

(** {9 Container_of_tag : Containee Datastructure} *)

let container_of_tag tag_ehc =
  let tag_cnu_t = containee_up_tag_trio tag_ehc in
  Trio_v.triplet_of_trio
    first_containee_tag_off_containee_up_tag
    second_containee_tag_off_containee_up_tag
    third_containee_tag_off_containee_up_tag
    tag_cnu_t
;;

(** {9 Extracting Containees off Tag} *)

let first_containee_tag tag_ehc =
  let con_ehc = container_of_tag tag_ehc in
  Triplet_v.first_off_triplet con_ehc
;;

let second_containee_tag tag_ehc =
  let con_ehc = container_of_tag tag_ehc in
  Triplet_v.second_off_triplet con_ehc
;;

let third_containee_tag tag_ehc =
  let con_ehc = container_of_tag tag_ehc in
  Triplet_v.third_off_triplet con_ehc
;;

(** {6 Border *)

let border_as_list tag_ehc =
  let tag_ele = coerce_up_tag tag_ehc in
  Elementary_border_by_elementary_tag_provider_v.provide tag_ele
;;

let border_as_duo tag_ehc =
  let bor_ehc = border_as_list tag_ehc in
  Duo_v.duo_of_list bor_ehc
;;

let border_as_tuple tag_ehc =
  let bor_l = border_as_list tag_ehc in
  Tuple_v.tuple_of_list bor_l
;;

let border_as_tuple_list tag_ehc =
  let bor_l = border_as_list tag_ehc in
  Tuple_list_v.make bor_l
;;

(** {6 Fence *)

let fence_as_list tag_ehc =
  let tag_ele = coerce_up_tag tag_ehc in
  Elementary_fence_by_elementary_tag_provider_v.provide tag_ele
;;

let fence_as_trio tag_ehc =
  let fen_ehc = fence_as_list tag_ehc in
  Trio_v.trio_of_list fen_ehc
;;

let fence_as_tuple tag_ehc =
  let fen_l = fence_as_list tag_ehc in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list tag_ehc =
  let fen_l = fence_as_list tag_ehc in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_triplet_body_bud_3containee_v.sh elementary_body_coordinate_tuple_homogeneous_cartesian ehc elementary_border_coordinate_homogeneous_cartesian_x ecx elementary_border_coordinate_homogeneous_cartesian_y ecy elementary_border_coordinate_homogeneous_cartesian_z ecz *)
(* using ./template_container_as_triplet_body_bud_3containee_v.ml *)
(* Done on mercredi 11 mai 2016, 10:51:54 (UTC+0200) *)

