(** {3 Parameter_set_body_tuple_ecppef_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FPAR:Parameter_set_body_tuple_ecppef_container_v";
   "Needs : FPAR:Parameter_set_fence_ecppef_exponent_tag_v";
   "Needs : FPAR:Parameter_set_fence_ecppef_coefficient_tag_v";
   "Needs : FPAR:Parameter_set_fence_ecppef_coefficient_tag_v";
   "Needs : FPAR:Parameter_set_fence_ecppef for son list predicate";
   "Needs : FPAR:Parameter_son_tag_list_by_parameter_father_tag_provider_v";
   "Needs : BPAR:Parameter_fence_by_parameter_tag_provider_v";
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
   "What-is-it : it is a Body Bud container of Border sub-Types and thus a Triplet of (Parameter_set_fence_ecppef_exponent_tag, Parameter_set_fence_ecppef_coefficient_tag, Conee3_tag )";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name con_pte =
  Triplet_v.name 
    Parameter_set_fence_ecppef_exponent_tag_v.name
    Parameter_set_fence_ecppef_coefficient_tag_v.name
    Parameter_set_fence_ecppef_coefficient_tag_v.name
    con_pte
;;

let string_off con_pte =
  Triplet_v.name 
    Parameter_set_fence_ecppef_exponent_tag_v.string_off
    Parameter_set_fence_ecppef_coefficient_tag_v.string_off
    Parameter_set_fence_ecppef_coefficient_tag_v.string_off
    con_pte
;;

let longname con_pte =
  Triplet_v.name 
    Parameter_set_fence_ecppef_exponent_tag_v.longname
    Parameter_set_fence_ecppef_coefficient_tag_v.longname
    Parameter_set_fence_ecppef_coefficient_tag_v.longname
    con_pte
;;

let fullname con_pte =
  Triplet_v.name 
    Parameter_set_fence_ecppef_exponent_tag_v.fullname
    Parameter_set_fence_ecppef_coefficient_tag_v.fullname
    Parameter_set_fence_ecppef_coefficient_tag_v.fullname
    con_pte
;;

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_pte =
  Tag_v.map_entity 
    Parameter_symbol_v.parameter_symbol_of_parameter_set_body_tuple_ecppef_symbol 
    tag_pte
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_pte =
  let tag_par = coerce_up_tag tag_pte in
  Parameter_son_tag_list_by_parameter_father_tag_provider_v.provide
    tag_par
;;

(** {9 Builder Tag Datastructures} *)

let builder_tag_trio tag_pte =
  let tag_bui_l = builder_tag_list_of_tag tag_pte in
  Trio_v.trio_of_list tag_bui_l
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple_of_tag tag_pte =
  let tag_bui_d = builder_tag_trio tag_pte in
  Tuple_v.tuple_of_trio tag_bui_d
;;

(** {9 Building as Builder Tag trio} *)

let building_of_tag tag_pte =
  builder_tag_trio tag_pte
;;

(** {6 Container} *)

(** {9 Coercing Up Containee_up Tag to Builder Tag} *)

let builder_tag_of_containee_up_tag tag_cnu =
  Tag_v.map_entity 
    Parameter_symbol_v.parameter_symbol_of_parameter_set_fence_ecppef_symbol
    tag_cnu
;;

(** {9 Coercing Down Builder Tag to Containee_up Tag} *)

let containee_up_tag_off_builder_tag tag_bui =
  Tag_v.map_entity 
    Parameter_symbol_v.parameter_set_fence_ecppef_symbol_off_parameter_symbol
    tag_bui
;;

(** {9 Containee_up Tag list} *)

let containee_up_tag_list tag_pte =
  let tag_bui_l = builder_tag_list_of_tag tag_pte in
  List.map containee_up_tag_off_builder_tag tag_bui_l 
;;

(** {9 Containee_up Tag Trio} *)

let containee_up_tag_trio tag_pte =
  let tag_cnu_l = containee_up_tag_list tag_pte in
  Trio_v.trio_of_list tag_cnu_l
;;

(** {9 Extracting Containees off Containee_up} *)

let first_containee_tag_off_containee_up_tag tag_cnu =
  let (sym_cnu, soi_cnu) = tag_cnu in
  match sym_cnu with 
  | Parameter_set_fence_ecppef_symbol_t.Parameter_set_fence_ecppef_exponent_symbol sym_pee ->
      Tag_v.make sym_pee soi_cnu
	
  | _ -> 
      failwith "Not_a_Parameter_set_fence_ecppef_exponent_symbol:Parameter_set_fence_ecppef_container_v.first_containee_tag_off_containee_up_tag"
;;

let second_containee_tag_off_containee_up_tag tag_cnu =
  let (sym_cnu, soi_cnu) = tag_cnu in
  match sym_cnu with 
  | Parameter_set_fence_ecppef_symbol_t.Parameter_set_fence_ecppef_coefficient_symbol sym_pec ->
      Tag_v.make sym_pec soi_cnu
	
  | _ -> 
      failwith "Not_a_Parameter_set_fence_ecppef_coefficient_symbol:Parameter_set_fence_ecppef_container_v.seond_containee_tag_off_containee_up_tag"
;;

let third_containee_tag_off_containee_up_tag tag_cnu =
  let (sym_cnu, soi_cnu) = tag_cnu in
  match sym_cnu with 
  | Parameter_set_fence_ecppef_symbol_t.Parameter_set_fence_ecppef_coefficient_symbol sym_pec ->
      Tag_v.make sym_pec soi_cnu
	
  | _ -> 
      failwith "Not_a_Parameter_set_fence_ecppef_coefficient_symbol:Parameter_set_fence_ecppef_container_v.third_containee_tag_off_containee_up_tag"
;;

(** {9 Container_of_tag : Containee Datastructure} *)

let container_of_tag tag_pte =
  let tag_cnu_t = containee_up_tag_trio tag_pte in
  Trio_v.triplet_of_trio
    first_containee_tag_off_containee_up_tag
    second_containee_tag_off_containee_up_tag
    third_containee_tag_off_containee_up_tag
    tag_cnu_t
;;

(** {9 Extracting Containees off Tag} *)

let first_containee_tag tag_pte =
  let con_pte = container_of_tag tag_pte in
  Triplet_v.first_off_triplet con_pte
;;

let second_containee_tag tag_pte =
  let con_pte = container_of_tag tag_pte in
  Triplet_v.second_off_triplet con_pte
;;

let third_containee_tag tag_pte =
  let con_pte = container_of_tag tag_pte in
  Triplet_v.third_off_triplet con_pte
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_pte =
  let tag_ele = coerce_up_tag tag_pte in
  Parameter_fence_by_parameter_tag_provider_v.provide tag_ele
;;

let fence_as_trio tag_pte =
  let fen_pte = fence_as_list_of_tag tag_pte in
  Trio_v.trio_of_list fen_pte
;;

let fence_as_tuple_of_tag tag_pte =
  let fen_l = fence_as_list_of_tag tag_pte in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_pte =
  let fen_l = fence_as_list_of_tag tag_pte in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_triplet_body_bud_3containee_v.sh parameter_set_body_tuple_ecppef pte parameter_set_fence_ecppef_exponent pee parameter_set_fence_ecppef_coefficient pec parameter_set_fence_ecppef_coefficient pec *)
(* using template_container_as_triplet_body_bud_3containee_v.ml *)
(* Done on mercredi 14 décembre 2016, 16:07:05 (UTC+0100) *)

