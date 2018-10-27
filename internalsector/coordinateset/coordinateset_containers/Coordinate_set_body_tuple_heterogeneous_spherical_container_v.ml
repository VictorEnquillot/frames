(** {3 Coordinate_set_body_tuple_heterogeneous_spherical_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FCOO:Coordinate_set_body_tuple_heterogeneous_spherical_container_v";
   "Needs : FCOO:Coordinate_set_fence_heterogeneous_spherical_rho_tag_v";
   "Needs : FCOO:Coordinate_set_fence_heterogeneous_spherical_phi_tag_v";
   "Needs : FCOO:Coordinate_set_fence_heterogeneous_spherical_theta_tag_v";
   "Needs : FCOO:Coordinate_set_fence_heterogeneous_spherical for son list predicate";
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
   "What-is-it : it is a Body Bud container of Border sub-Types and thus a Triplet of (Coordinate_set_fence_heterogeneous_spherical_rho_tag, Coordinate_set_fence_heterogeneous_spherical_phi_tag, Conee3_tag )";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name con_chs =
  Triplet_v.name 
    Coordinate_set_fence_heterogeneous_spherical_rho_tag_v.name
    Coordinate_set_fence_heterogeneous_spherical_phi_tag_v.name
    Coordinate_set_fence_heterogeneous_spherical_theta_tag_v.name
    con_chs
;;

let string_off con_chs =
  Triplet_v.name 
    Coordinate_set_fence_heterogeneous_spherical_rho_tag_v.string_off
    Coordinate_set_fence_heterogeneous_spherical_phi_tag_v.string_off
    Coordinate_set_fence_heterogeneous_spherical_theta_tag_v.string_off
    con_chs
;;

let longname con_chs =
  Triplet_v.name 
    Coordinate_set_fence_heterogeneous_spherical_rho_tag_v.longname
    Coordinate_set_fence_heterogeneous_spherical_phi_tag_v.longname
    Coordinate_set_fence_heterogeneous_spherical_theta_tag_v.longname
    con_chs
;;

let fullname con_chs =
  Triplet_v.name 
    Coordinate_set_fence_heterogeneous_spherical_rho_tag_v.fullname
    Coordinate_set_fence_heterogeneous_spherical_phi_tag_v.fullname
    Coordinate_set_fence_heterogeneous_spherical_theta_tag_v.fullname
    con_chs
;;

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_chs =
  Tag_v.map_entity 
    Coordinate_symbol_v.coordinate_symbol_of_coordinate_set_body_tuple_heterogeneous_spherical_symbol 
    tag_chs
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_chs =
  let tag_coo = coerce_up_tag tag_chs in
  Coordinate_son_tag_list_by_coordinate_father_tag_provider_v.provide
    tag_coo
;;

(** {9 Builder Tag Datastructures} *)

let builder_tag_trio tag_chs =
  let tag_bui_l = builder_tag_list_of_tag tag_chs in
  Trio_v.trio_of_list tag_bui_l
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple_of_tag tag_chs =
  let tag_bui_d = builder_tag_trio tag_chs in
  Tuple_v.tuple_of_trio tag_bui_d
;;

(** {9 Building as Builder Tag trio} *)

let building_of_tag tag_chs =
  builder_tag_trio tag_chs
;;

(** {6 Container} *)

(** {9 Coercing Up Containee_up Tag to Builder Tag} *)

let builder_tag_of_containee_up_tag tag_cnu =
  Tag_v.map_entity 
    Coordinate_symbol_v.coordinate_symbol_of_coordinate_set_fence_heterogeneous_spherical_symbol
    tag_cnu
;;

(** {9 Coercing Down Builder Tag to Containee_up Tag} *)

let containee_up_tag_off_builder_tag tag_bui =
  Tag_v.map_entity 
    Coordinate_symbol_v.coordinate_set_fence_heterogeneous_spherical_symbol_off_coordinate_symbol
    tag_bui
;;

(** {9 Containee_up Tag list} *)

let containee_up_tag_list tag_chs =
  let tag_bui_l = builder_tag_list_of_tag tag_chs in
  List.map containee_up_tag_off_builder_tag tag_bui_l 
;;

(** {9 Containee_up Tag Trio} *)

let containee_up_tag_trio tag_chs =
  let tag_cnu_l = containee_up_tag_list tag_chs in
  Trio_v.trio_of_list tag_cnu_l
;;

(** {9 Extracting Containees off Containee_up} *)

let first_containee_tag_off_containee_up_tag tag_cnu =
  let (sym_cnu, soi_cnu) = tag_cnu in
  match sym_cnu with 
  | Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol sym_csr ->
      Tag_v.make sym_csr soi_cnu
	
  | _ -> 
      failwith "Not_a_Coordinate_set_fence_heterogeneous_spherical_rho_symbol:Coordinate_set_fence_heterogeneous_spherical_container_v.first_containee_tag_off_containee_up_tag"
;;

let second_containee_tag_off_containee_up_tag tag_cnu =
  let (sym_cnu, soi_cnu) = tag_cnu in
  match sym_cnu with 
  | Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_phi_symbol sym_csp ->
      Tag_v.make sym_csp soi_cnu
	
  | _ -> 
      failwith "Not_a_Coordinate_set_fence_heterogeneous_spherical_phi_symbol:Coordinate_set_fence_heterogeneous_spherical_container_v.seond_containee_tag_off_containee_up_tag"
;;

let third_containee_tag_off_containee_up_tag tag_cnu =
  let (sym_cnu, soi_cnu) = tag_cnu in
  match sym_cnu with 
  | Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_symbol sym_cst ->
      Tag_v.make sym_cst soi_cnu
	
  | _ -> 
      failwith "Not_a_Coordinate_set_fence_heterogeneous_spherical_theta_symbol:Coordinate_set_fence_heterogeneous_spherical_container_v.third_containee_tag_off_containee_up_tag"
;;

(** {9 Container_of_tag : Containee Datastructure} *)

let container_of_tag tag_chs =
  let tag_cnu_t = containee_up_tag_trio tag_chs in
  Trio_v.triplet_of_trio
    first_containee_tag_off_containee_up_tag
    second_containee_tag_off_containee_up_tag
    third_containee_tag_off_containee_up_tag
    tag_cnu_t
;;

(** {9 Extracting Containees off Tag} *)

let first_containee_tag tag_chs =
  let con_chs = container_of_tag tag_chs in
  Triplet_v.first_off_triplet con_chs
;;

let second_containee_tag tag_chs =
  let con_chs = container_of_tag tag_chs in
  Triplet_v.second_off_triplet con_chs
;;

let third_containee_tag tag_chs =
  let con_chs = container_of_tag tag_chs in
  Triplet_v.third_off_triplet con_chs
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_chs =
  let tag_ele = coerce_up_tag tag_chs in
  Coordinate_fence_by_coordinate_tag_provider_v.provide tag_ele
;;

let fence_as_trio tag_chs =
  let fen_chs = fence_as_list_of_tag tag_chs in
  Trio_v.trio_of_list fen_chs
;;

let fence_as_tuple_of_tag tag_chs =
  let fen_l = fence_as_list_of_tag tag_chs in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_chs =
  let fen_l = fence_as_list_of_tag tag_chs in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_triplet_body_bud_3containee_v.sh coordinate_set_body_tuple_heterogeneous_spherical chs coordinate_set_fence_heterogeneous_spherical_rho csr coordinate_set_fence_heterogeneous_spherical_phi csp coordinate_set_fence_heterogeneous_spherical_theta cst coordinate_set_fence_heterogeneous_spherical *)
(* using template_container_as_triplet_body_bud_3containee_v.ml *)
(* Done on dimanche 18 décembre 2016, 17:16:38 (UTC+0100) *)

