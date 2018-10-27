(** {3 Parameter_context_databox_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FPAR:Parameter_context_databox_container_v";
   "Needs : FPAR:Parameter_set_body_tuple_tag_v";
   "Needs : BPAR:Parameter_son_tag_list_by_parameter_father_tag_provider_v";
   "Needs : BPAR:Parameter_fence_by_parameter_tag_provider_v";
   "Needed-by: ";
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
   "What-is-it : Up_coercion of Container type as Symbol type up_coercion";
   "What-is-it : it is a Bud container of Context sub-Types and thus a List of its Parameter_set_body_tuple Tag";
   "Author : François Colonna 01 décembre 2016 at 11:13:10+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name con_pbo =
  List_v.name 
    Parameter_set_body_tuple_tag_v.name
    con_pbo
;;

let string_off con_pbo =
  List_v.name 
    Parameter_set_body_tuple_tag_v.string_off
    con_pbo
;;

let longname con_pbo =
  List_v.name 
    Parameter_set_body_tuple_tag_v.longname
    con_pbo
;;

let fullname con_pbo =
  List_v.name 
    Parameter_set_body_tuple_tag_v.fullname
    con_pbo
;;

(** {6 Coercing Tag} *)

(** {9 Coercing Up Tag} *)

let coerce_up_tag tag_pbo =
  Tag_v.map_entity 
    Parameter_symbol_v.parameter_symbol_of_parameter_context_databox_symbol 
    tag_pbo
;;

(** {9 Coercing Down Builder to Containee} *)

let containee_up_tag_off_builder_tag tag_par =
  Tag_v.map_entity
    Parameter_symbol_v.parameter_set_body_tuple_symbol_off_parameter_symbol
    tag_par
;;

(** {9 Coercing Up Containee_up to Builder} *)

let builder_tag_of_containee_up_tag tag_cnu =
  Tag_v.map_entity 
    Parameter_symbol_v.parameter_symbol_of_parameter_set_body_tuple_symbol
    tag_cnu
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_pbo =
  let tag_par = coerce_up_tag tag_pbo in
  Parameter_son_tag_list_by_parameter_father_tag_provider_v.provide
    tag_par
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple_of_tag tag_pbo =
  let tag_bui_l = builder_tag_list_of_tag tag_pbo in
  Tuple_v.tuple_of_list tag_bui_l
;;

(** {9 Building as Builder Tag tuple} *)

let building_of_tag tag_pbo =
  builder_tag_list_of_tag tag_pbo
;;

(** {6 Container} *)

let containee_up_tag_list tag_pbo =
  let tag_bui_l = builder_tag_list_of_tag tag_pbo in
  List.map containee_up_tag_off_builder_tag tag_bui_l
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_pbo =
  let tag_par = coerce_up_tag tag_pbo in
  Parameter_fence_by_parameter_tag_provider_v.provide tag_par
;;

let fence_as_tuple_of_tag tag_pbo =
  let fen_l = fence_as_list_of_tag tag_pbo in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_pbo =
  let fen_l = fence_as_list_of_tag tag_pbo in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_list_context_bud_1containee_v.sh parameter_context_databox pbo parameter_set_body_tuple *)
(* using template_container_as_list_context_bud_1containee_v.ml *)
(* Done on mercredi 14 décembre 2016, 16:07:05 (UTC+0100) *)

