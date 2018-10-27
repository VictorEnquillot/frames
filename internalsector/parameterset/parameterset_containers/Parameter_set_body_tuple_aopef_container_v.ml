(** {3 Parameter_set_body_tuple_aopef_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FPAR:Parameter_set_body_tuple_aopef_container_v";
   "Needs : FPAR:Parameter_set_fence_aopef_exponent_tag_v";
   "Needs : FPAR:Parameter_set_fence_aopef_coefficient_tag_v";
   "Needs : FPAR:Parameter_set_fence_aopef : for son list predicate";
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
   "What-is-it : it is a Body Bud container of Border sub-Types and thus a Doublet of (Parameter_set_fence_aopef_exponent_tag, Parameter_set_fence_aopef_coefficient_tag)";
   "Author : François Colonna 01 décembre 2016 at 10:37:06+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name con_pta =
  Doublet_v.name 
    Parameter_set_fence_aopef_exponent_tag_v.name
    Parameter_set_fence_aopef_coefficient_tag_v.name
    con_pta
;;

let string_off con_pta =
  Doublet_v.name 
    Parameter_set_fence_aopef_exponent_tag_v.string_off
    Parameter_set_fence_aopef_coefficient_tag_v.string_off
    con_pta
;;

let longname con_pta =
  Doublet_v.name 
    Parameter_set_fence_aopef_exponent_tag_v.longname
    Parameter_set_fence_aopef_coefficient_tag_v.longname
    con_pta
;;

let fullname con_pta =
  Doublet_v.name 
    Parameter_set_fence_aopef_exponent_tag_v.fullname
    Parameter_set_fence_aopef_coefficient_tag_v.fullname
    con_pta
;;

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_pta =
  Tag_v.map_entity 
    Parameter_symbol_v.parameter_symbol_of_parameter_set_body_tuple_aopef_symbol 
    tag_pta
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_pta =
  let tag_par = coerce_up_tag tag_pta in
  Parameter_son_tag_list_by_parameter_father_tag_provider_v.provide
    tag_par
;;

(** {9 Builder Tag Datastructures} *)

let builder_tag_duo tag_pta =
  let tag_bui_l = builder_tag_list_of_tag tag_pta in
  Duo_v.duo_of_list tag_bui_l
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple_of_tag tag_pta =
  let tag_bui_d = builder_tag_duo tag_pta in
  Tuple_v.tuple_of_duo tag_bui_d
;;

(** {9 Building as Builder Tag duo} *)

let building_of_tag tag_pta =
  builder_tag_duo tag_pta
;;

(** {6 Container} *)

(** {9 Coercing Up Containee_up Tag to Builder Tag} *)

let builder_tag_of_containee_up_tag tag_cnu =
  Tag_v.map_entity 
    Parameter_symbol_v.parameter_symbol_of_parameter_set_fence_aopef_symbol
    tag_cnu
;;

(** {9 Coercing Down Builder Tag to Containee_up Tag} *)

let containee_up_tag_off_builder_tag tag_bui =
  Tag_v.map_entity 
    Parameter_symbol_v.parameter_set_fence_aopef_symbol_off_parameter_symbol
    tag_bui
;;

(** {9 Containee_up Tag list} *)

let containee_up_tag_list tag_pta =
  let tag_bui_l = builder_tag_list_of_tag tag_pta in
  List.map containee_up_tag_off_builder_tag tag_bui_l 
;;

(** {9 Containee_up Tag Duo} *)

let containee_up_tag_duo tag_pta =
  let tag_cnu_l = containee_up_tag_list tag_pta in
  Duo_v.duo_of_list tag_cnu_l
;;

(** {9 Extracting Containees off Containee_up} *)

let first_containee_tag_off_containee_up_tag tag_cnu =
  let (sym_cnu, soi_cnu) = tag_cnu in
  match sym_cnu with 
  | Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol sym_pae ->
      Tag_v.make sym_pae soi_cnu
	
  | _ -> 
      failwith "Not_a_Parameter_set_fence_aopef_exponent_symbol:Parameter_set_fence_aopef_container_v.first_containee_tag_off_containee_up_tag"
;;

let second_containee_tag_off_containee_up_tag tag_cnu =
  let (sym_cnu, soi_cnu) = tag_cnu in
  match sym_cnu with 
  | Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol sym_pac ->
      Tag_v.make sym_pac soi_cnu
	
  | _ -> 
      failwith "Not_a_Parameter_set_fence_aopef_coefficient_symbol:Parameter_set_fence_aopef_container_v.seond_containee_tag_off_containee_up_tag"
;;

(** {9 Container_of_tag : Containee Datastructure} *)

let container_of_tag tag_pta =
  let tag_cnu_d = containee_up_tag_duo tag_pta in
  Duo_v.doublet_of_duo
    first_containee_tag_off_containee_up_tag
    second_containee_tag_off_containee_up_tag
    tag_cnu_d
;;

(** {9 Extracting Containees off Tag} *)

let first_containee_tag tag_pta =
  let con_pta = container_of_tag tag_pta in
  Doublet_v.first_off_doublet con_pta
;;

let second_containee_tag tag_pta =
  let con_pta = container_of_tag tag_pta in
  Doublet_v.second_off_doublet con_pta
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_pta =
  let tag_par = coerce_up_tag tag_pta in
  Parameter_fence_by_parameter_tag_provider_v.provide tag_par
;;

let fence_as_duo tag_pta =
  let fen_pta = fence_as_list_of_tag tag_pta in
  Duo_v.duo_of_list fen_pta
;;

let fence_as_tuple_of_tag tag_pta =
  let fen_l = fence_as_list_of_tag tag_pta in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_pta =
  let fen_l = fence_as_list_of_tag tag_pta in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_doublet_body_bud_2containee_v.sh parameter_set_body_tuple_aopef pta parameter_set_fence_aopef_exponent pae parameter_set_fence_aopef_coefficient pac parameter_set_fence_aopef *)
(* using template_container_as_doublet_body_bud_2containee_v.ml *)
(* Done on mercredi 14 décembre 2016, 16:07:04 (UTC+0100) *)

