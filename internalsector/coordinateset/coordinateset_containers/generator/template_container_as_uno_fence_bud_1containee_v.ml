(** {3 This_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FCOO:This_container_v";
   "Needs : TCOO:This_tag_v.this_tag_off_maint_tag";
   "Needed-by: ";
   "Definition : a Building is the same Datastructure as a Container but filled with Builders"; 
   "Definition : a Containee is a Builder expressed in the lowest subtype compatible with the Datastructure of the Container";
   "Definition : a Container is the Datastructure of the Containee of an Entity";
   "Definition : a Containee is an element of the Datastructure of the Container of an Entity";
   "Definition : a fence Container contains an Uno of its Tag";
   "Definition : a non-fence Bud Container is a Datastructure of Containee Tag";
   "Definition : a Bud is a type with only one constructor of string";
   "What-is-it : it is a container of a Fence Bud type i.e. itself Tag Uno";
   "Author : François Colonna 17 décembre 2016 at 13:04:23+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name con_ttt =
  Uno_v.name 
    This_tag_v.name
    con_ttt
;;

let string_off con_ttt =
  Uno_v.name 
    This_tag_v.string_off
    con_ttt
;;

let longname con_ttt =
  Uno_v.name 
    This_tag_v.longname
    con_ttt
;;

let fullname con_ttt =
  Uno_v.name 
    This_tag_v.fullname
    con_ttt
;;

(** {6 Coercing Up This Tag} *)

let coerce_up_tag tag_ttt =
  This_tag_v.maint_tag_of_this_tag
    tag_ttt
;;

(** {6 Coercing Down Coordinate Tag to This Tag} *)

let coerce_down_tag tag_mmm =
  This_tag_v.this_tag_off_maint_tag
    tag_mmm
;;

(** {6 Builder Tag list : itself list for a fence entity} *)

let builder_tag_list_of_tag tag_ttt =
  let tag_mmm = coerce_up_tag tag_ttt in
  [tag_mmm]
;;

(** {6 Builder Tag Datastructure} *)

let builder_tag_uno_of_tag tag_ttt =
  let tag_mmm = coerce_up_tag tag_ttt in
  Uno_v.make tag_mmm
;;

(** {6 Builder Tag tuple} *)

let builder_tag_tuple_of_tag tag_ttt =
  let tag_bui_u = builder_tag_uno_of_tag tag_ttt in
  Tuple_v.tuple_of_uno tag_bui_u
;;

(** {6 Building as Builder Tag uno} *)

let building_of_tag tag_ttt =
  builder_tag_uno_of_tag tag_ttt
;;

(** {6 Builder Tag} *)

let builder_tag_of_tag tag_ttt =
  coerce_up_tag tag_ttt
;;

(** {6 Coercing Down Containee} *)

let containee_tag_off_builder_tag tag_mmm =
    coerce_down_tag tag_mmm
;;

(** {6 Container_of_tag : Containee Datastructure} *)

let container_of_tag tag_ttt =
  let bug = building_of_tag tag_ttt in
  Uno_v.map (* Coerce Down *)
    containee_tag_off_builder_tag
    bug
;;

(** {6 Coercing Down Builder Tag to Containee Tag} *)

let containee_tag_off_builder_tag tag_bui =
  coerce_down_tag tag_bui
;;

(** {6 Containee Tag Datastructures} *)

let containee_tag_uno_of_tag tag_ttt =
  container_of_tag tag_ttt
;;

let containee_tag_tuple_of_tag tag_ttt =
  let tag_cne_u = containee_tag_uno_of_tag tag_ttt in
  Tuple_v.tuple_of_uno tag_cne_u
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_ttt =
  let tag_mmm = coerce_up_tag tag_ttt in
  [tag_mmm]
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


