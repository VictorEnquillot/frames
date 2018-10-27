(** {3 This_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FMMM:This_container_v";
   "Needs : FMMM:Conee_1_tag_v";
   "Needs : FMMM:Maint_son_tag_list_by_maint_father_tag_provider_v";
   "Needs : BMMM:Maint_fence_by_maint_tag_provider_v";
   "Remark : Container is Conee_1_tag Singlet";
   "Remark : Containee_1 is Conee_1 is also Containee_up";
   "Remark : Builders are Maint";
   "Definition : a Builder (for an Entity of a Domain) is a son of its Builder-Subtree";
   "Definition : a Containee is a Builder expressed in the lowest subtype compatible with the Datastructure of the Container";
   "Definition : a Container is the Datastructure of the Containee of an Entity";
   "Definition : a Containee is an element of the Datastructure of the Container of an Entity";
   "Definition : a Building is the same Datastructure as Container filled with Builders"; 
   "What-is-it : it is a Body Bud Singlet of Conee_1_tag";
   "Author : François Colonna 21 mai 2017 at 08:24:27+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name con_ttt =
  Singlet_v.name 
    Conee_1_tag_v.name
    con_ttt
;;

let string_off con_ttt =
  Singlet_v.name 
    Conee_1_tag_v.string_off
    con_ttt
;;

let longname con_ttt =
  Singlet_v.name 
    Conee_1_tag_v.longname
    con_ttt
;;

let fullname con_ttt =
  Singlet_v.name 
    Conee_1_tag_v.fullname
    con_ttt
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_ttt =
  let tag_mmm = This_tag_v.maint_tag_of_this_tag tag_ttt in
  Maint_son_tag_list_by_maint_father_tag_provider_v.provide
    tag_mmm
;;

(** {9 Builder Tag Datastructures} *)

let builder_tag_uno_of_tag tag_ttt =
  let tag_mmm_l = builder_tag_list_of_tag tag_ttt in
  Uno_v.uno_of_list tag_mmm_l
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple_of_tag tag_ttt =
  let tag_mmm_u = builder_tag_uno_of_tag tag_ttt in
  Tuple_v.tuple_of_uno tag_mmm_u
;;

(** {9 Building as Builder Tag uno} *)

let building_of_tag tag_ttt =
  builder_tag_uno_of_tag tag_ttt
;;

(** {6 Container} *)

(** {9 Coercing Up Containee_up Tag to Builder Tag} *)

let builder_tag_of_containee_1_tag tag_cnn_1 =
  Tag_v.map_entity 
    Maint_symbol_v.maint_symbol_of_conee_1_symbol
    tag_cnn_1
;;

(** {9 Coercing Down Builder Tag to Containee_1 Tag} *)

let containee_1_tag_off_builder_tag tag_mmm =
  Tag_v.map_entity 
    Maint_symbol_v.conee_1_symbol_off_maint_symbol
    tag_mmm
;;

(** {9 Containee_1 Tag list} *)

let containee_1_tag_list_of_tag tag_ttt =
  let tag_mmm_l = builder_tag_list_of_tag tag_ttt in
  List.map containee_1_tag_off_builder_tag tag_mmm_l 
;;

(** {9 Containee_1 Tag Uno} *)

let containee_1_tag_uno_of_tag tag_ttt =
  let tag_mmm_u = builder_tag_uno_of_tag tag_ttt in
  Uno_v.map containee_1_tag_off_builder_tag tag_mmm_u
;;

(** {9 Container_of_tag : Containee Datastructure} *)

let containee_1_of_tag tag_ttt =
  let tag_cnn_1_u = containee_1_tag_uno_of_tag tag_ttt in
  Uno_v.element_off_uno tag_cnn_1_u
;;

let container_of_tag tag_ttt =
  let tag_cnn_1 = containee_1_of_tag tag_ttt in
  Singlet_v.make tag_cnn_1
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_ttt =
  let tag_mmm = This_tag_v.maint_tag_of_this_tag tag_ttt in
  Maint_fence_by_maint_tag_provider_v.provide tag_mmm
;;

let fence_as_uno_of_tag tag_ttt =
  let fen_ttt = fence_as_list_of_tag tag_ttt in
  Uno_v.uno_of_list fen_ttt
;;

let fence_as_tuple_of_tag tag_ttt =
  let fen_l = fence_as_list_of_tag tag_ttt in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_ttt =
  let fen_l = fence_as_list_of_tag tag_ttt in
  Tuple_list_v.make fen_l
;;
