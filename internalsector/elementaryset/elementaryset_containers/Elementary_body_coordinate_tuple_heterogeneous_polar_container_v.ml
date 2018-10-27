(** {3 Elementary_body_coordinate_tuple_heterogeneous_polar_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FELE:Elementary_body_coordinate_tuple_heterogeneous_polar_container_v";
   "Needs : FELE:Elementary_border_coordinate_heterogeneous_polar_rho_tag_v";
   "Needs : FELE:Elementary_border_coordinate_heterogeneous_polar_theta_tag_v";
   "Needs : FELE:Elementary_border_coordinate_heterogeneous_polar for son list predicate";
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
   "What-is-it : it is a Body Bud container of Border sub-Types and thus a Doublet of (Elementary_border_coordinate_heterogeneous_polar_rho_tag, Elementary_border_coordinate_heterogeneous_polar_theta_tag)";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name con_ehp =
  Doublet_v.name 
    Elementary_border_coordinate_heterogeneous_polar_rho_tag_v.name
    Elementary_border_coordinate_heterogeneous_polar_theta_tag_v.name
    con_ehp
;;

let string_off con_ehp =
  Doublet_v.name 
    Elementary_border_coordinate_heterogeneous_polar_rho_tag_v.string_off
    Elementary_border_coordinate_heterogeneous_polar_theta_tag_v.string_off
    con_ehp
;;

let longname con_ehp =
  Doublet_v.name 
    Elementary_border_coordinate_heterogeneous_polar_rho_tag_v.longname
    Elementary_border_coordinate_heterogeneous_polar_theta_tag_v.longname
    con_ehp
;;

let fullname con_ehp =
  Doublet_v.name 
    Elementary_border_coordinate_heterogeneous_polar_rho_tag_v.fullname
    Elementary_border_coordinate_heterogeneous_polar_theta_tag_v.fullname
    con_ehp
;;

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_ehp =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_symbol_of_elementary_body_coordinate_tuple_heterogeneous_polar_symbol 
    tag_ehp
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list tag_ehp =
  let tag_ele = coerce_up_tag tag_ehp in
  Son_elementary_tag_list_by_father_elementary_tag_provider_v.provide 
    tag_ele
;;

(** {9 Builder Tag Datastructures} *)

let builder_tag_duo tag_ehp =
  let tag_bui_l = builder_tag_list tag_ehp in
  Duo_v.duo_of_list tag_bui_l
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple tag_ehp =
  let tag_bui_d = builder_tag_duo tag_ehp in
  Tuple_v.tuple_of_duo tag_bui_d
;;

(** {9 Building as Builder Tag duo} *)

let building_of_tag tag_ehp =
  builder_tag_duo tag_ehp
;;

(** {6 Container} *)

(** {9 Coercing Up Containee_up Tag to Builder Tag} *)

let builder_tag_of_containee_up_tag tag_cnu =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_symbol_of_elementary_border_coordinate_heterogeneous_polar_symbol
    tag_cnu
;;

(** {9 Coercing Down Builder Tag to Containee_up Tag} *)

let containee_up_tag_off_builder_tag tag_bui =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_border_coordinate_heterogeneous_polar_symbol_off_elementary_symbol
    tag_bui
;;

(** {9 Containee_up Tag list} *)

let containee_up_tag_list tag_ehp =
  let tag_bui_l = builder_tag_list tag_ehp in
  List.map containee_up_tag_off_builder_tag tag_bui_l 
;;

(** {9 Containee_up Tag Duo} *)

let containee_up_tag_duo tag_ehp =
  let tag_cnu_l = containee_up_tag_list tag_ehp in
  Duo_v.duo_of_list tag_cnu_l
;;

(** {9 Extracting Containees off Containee_up} *)

let first_containee_tag_off_containee_up_tag tag_cnu =
  let (sym_cnu, soi_cnu) = tag_cnu in
  match sym_cnu with 
  | Elementary_border_coordinate_heterogeneous_polar_symbol_t.Elementary_border_coordinate_heterogeneous_polar_rho_symbol sym_epr ->
      Tag_v.make sym_epr soi_cnu
	
  | _ -> 
      failwith "Not_a_Elementary_border_coordinate_heterogeneous_polar_rho_symbol:Elementary_border_coordinate_heterogeneous_polar_container_v.first_containee_tag_off_containee_up_tag"
;;

let second_containee_tag_off_containee_up_tag tag_cnu =
  let (sym_cnu, soi_cnu) = tag_cnu in
  match sym_cnu with 
  | Elementary_border_coordinate_heterogeneous_polar_symbol_t.Elementary_border_coordinate_heterogeneous_polar_theta_symbol sym_ept ->
      Tag_v.make sym_ept soi_cnu
	
  | _ -> 
      failwith "Not_a_Elementary_border_coordinate_heterogeneous_polar_theta_symbol:Elementary_border_coordinate_heterogeneous_polar_container_v.seond_containee_tag_off_containee_up_tag"
;;

(** {9 Container_of_tag : Containee Datastructure} *)

let container_of_tag tag_ehp =
  let tag_cnu_d = containee_up_tag_duo tag_ehp in
  Duo_v.doublet_of_duo
    first_containee_tag_off_containee_up_tag
    second_containee_tag_off_containee_up_tag
    tag_cnu_d
;;

(** {9 Extracting Containees off Tag} *)

let first_containee_tag tag_ehp =
  let con_ehp = container_of_tag tag_ehp in
  Doublet_v.first_off_doublet con_ehp
;;

let second_containee_tag tag_ehp =
  let con_ehp = container_of_tag tag_ehp in
  Doublet_v.second_off_doublet con_ehp
;;

(** {6 Border *)

let border_as_list tag_ehp =
  let tag_ele = coerce_up_tag tag_ehp in
  Elementary_border_by_elementary_tag_provider_v.provide tag_ele
;;

let border_as_duo tag_ehp =
  let bor_ehp = border_as_list tag_ehp in
  Duo_v.duo_of_list bor_ehp
;;

let border_as_tuple tag_ehp =
  let bor_l = border_as_list tag_ehp in
  Tuple_v.tuple_of_list bor_l
;;

let border_as_tuple_list tag_ehp =
  let bor_l = border_as_list tag_ehp in
  Tuple_list_v.make bor_l
;;

(** {6 Fence *)

let fence_as_list tag_ehp =
  let tag_ele = coerce_up_tag tag_ehp in
  Elementary_fence_by_elementary_tag_provider_v.provide tag_ele
;;

let fence_as_duo tag_ehp =
  let fen_ehp = fence_as_list tag_ehp in
  Duo_v.duo_of_list fen_ehp
;;

let fence_as_tuple tag_ehp =
  let fen_l = fence_as_list tag_ehp in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list tag_ehp =
  let fen_l = fence_as_list tag_ehp in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_doublet_body_bud_2containee_v.sh elementary_body_coordinate_tuple_heterogeneous_polar ehp elementary_border_coordinate_heterogeneous_polar_rho epr elementary_border_coordinate_heterogeneous_polar_theta ept elementary_border_coordinate_heterogeneous_polar *)
(* using ./template_container_as_doublet_body_bud_2containee_v.ml *)
(* Done on mercredi 11 mai 2016, 10:51:55 (UTC+0200) *)

