(** {3 This_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FMMM:This_container_v";
   "Needs : FMMM:Conee_1_tag_v";
   "Needs : FMMM:Maint_son_tag_list_by_maint_father_tag_provider_v";
   "Needs : BMMM:Maint_fence_by_maint_tag_provider_v";
   "Remark : Container is Conee_1_tag Duo";
   "Remark : Containee_1 is Conee_1 is also Containee_up";
   "Remark : Builders are Maint";
   "Definition : a Builder (for an Entity of a Domain) is a son of its Builder-Subtree";
   "Definition : a Containee is a Builder expressed in the lowest subtype compatible with the Datastructure of the Container";
   "Definition : a Container is the Datastructure of the Containee of an Entity";
   "Definition : a Containee is an element of the Datastructure of the Container of an Entity";
   "Definition : a Building is the same Datastructure as Container filled with Builders"; 
   "What-is-it : it is a Body Bud Duo of Conee_1_tag";
   "Author : François Colonna 21 mai 2017 at 08:24:27+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name con_ttt =
  Duo_v.name 
    Conee_1_tag_v.name
    con_ttt
;;

let string_off con_ttt =
  Duo_v.name 
    Conee_1_tag_v.string_off
    con_ttt
;;

let longname con_ttt =
  Duo_v.name 
    Conee_1_tag_v.longname
    con_ttt
;;

let fullname con_ttt =
  Duo_v.name 
    Conee_1_tag_v.fullname
    con_ttt
;;

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_ttt =
  Tag_v.map_entity 
    Maint_symbol_v.maint_symbol_of_this_symbol 
    tag_ttt
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_ttt =
  let tag_mmm = coerce_up_tag tag_ttt in
  Maint_son_tag_list_by_maint_father_tag_provider_v.provide
    tag_mmm
;;

(** {9 Builder Tag Datastructures} *)

let builder_tag_duo_of_tag tag_ttt =
  let tag_bui_l = builder_tag_list_of_tag tag_ttt in
  Duo_v.duo_of_list tag_bui_l
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple_of_tag tag_ttt =
  let tag_bui_d = builder_tag_duo_of_tag tag_ttt in
  Tuple_v.tuple_of_duo tag_bui_d
;;

(** {9 Building as Builder Tag duo} *)

let building_of_tag tag_ttt =
  builder_tag_duo_of_tag tag_ttt
;;

(** {6 Container} *)

(** {9 Coercing Up Containee_up Tag to Builder Tag} *)

let builder_tag_of_containee_1_tag tag_cnn_1 =
  Tag_v.map_entity 
    Maint_symbol_v.maint_symbol_of_conee_1_symbol
    tag_cnn_1
;;

(** {9 Coercing Down Builder Tag to Containee_1 Tag} *)

let containee_1_tag_off_builder_tag tag_bui =
  Tag_v.map_entity 
    Maint_symbol_v.conee_1_symbol_off_maint_symbol
    tag_bui
;;

(** {9 Containee_1 Tag list} *)

let containee_1_tag_list_of_tag tag_ttt =
  let tag_bui_l = builder_tag_list_of_tag tag_ttt in
  List.map containee_1_tag_off_builder_tag tag_bui_l 
;;

(** {9 Containee_1 Tag Duo} *)

let containee_1_tag_duo_of_tag tag_ttt =
  let tag_cnn_1_l = containee_1_tag_list_of_tag tag_ttt in
  Duo_v.duo_of_list tag_cnn_1_l
;;

(** {9 Container_of_tag : Containee Datastructure} *)

let container_of_tag tag_ttt =
  let tag_mmm_l = builder_tag_list_of_tag tag_ttt in
  let tag_cnn_1_l = List.map containee_1_tag_off_builder_tag tag_mmm_l in
  Duo_v.duo_of_list tag_cnn_1_l
;;

(** {9 Extracting Containees off Tag} *)

let containee_as_operator_tag tag_ttt =
  let con_ttt = container_of_tag tag_ttt in
  Duo_v.first_off_duo con_ttt
;;

let containee_as_operand_tag tag_ttt =
  let con_ttt = container_of_tag tag_ttt in
  Duo_v.second_off_duo con_ttt
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_ttt =
  let tag_mmm = coerce_up_tag tag_ttt in
  Maint_fence_by_maint_tag_provider_v.provide tag_mmm
;;

let fence_as_duo_of_tag tag_ttt =
  let fen_ttt = fence_as_list_of_tag tag_ttt in
  Duo_v.duo_of_list fen_ttt
;;

let fence_as_tuple_of_tag tag_ttt =
  let fen_l = fence_as_list_of_tag tag_ttt in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_ttt =
  let fen_l = fence_as_list_of_tag tag_ttt in
  Tuple_list_v.make fen_l
;;
