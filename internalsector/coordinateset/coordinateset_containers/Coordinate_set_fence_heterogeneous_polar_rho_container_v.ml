(** {3 Coordinate_set_fence_heterogeneous_polar_rho_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FCOO:Coordinate_set_fence_heterogeneous_polar_rho_container_v";
   "Needs : TCOO:Coordinate_set_fence_heterogeneous_polar_rho_tag_v.coordinate_set_fence_heterogeneous_polar_rho_tag_off_coordinate_tag";
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

let name con_cpr =
  Uno_v.name 
    Coordinate_set_fence_heterogeneous_polar_rho_tag_v.name
    con_cpr
;;

let string_off con_cpr =
  Uno_v.name 
    Coordinate_set_fence_heterogeneous_polar_rho_tag_v.string_off
    con_cpr
;;

let longname con_cpr =
  Uno_v.name 
    Coordinate_set_fence_heterogeneous_polar_rho_tag_v.longname
    con_cpr
;;

let fullname con_cpr =
  Uno_v.name 
    Coordinate_set_fence_heterogeneous_polar_rho_tag_v.fullname
    con_cpr
;;

(** {6 Coercing Up Coordinate_set_fence_heterogeneous_polar_rho Tag} *)

let coerce_up_tag tag_cpr =
  Coordinate_set_fence_heterogeneous_polar_rho_tag_v.coordinate_tag_of_coordinate_set_fence_heterogeneous_polar_rho_tag
    tag_cpr
;;

(** {6 Coercing Down Coordinate Tag to Coordinate_set_fence_heterogeneous_polar_rho Tag} *)

let coerce_down_tag tag_coo =
  Coordinate_set_fence_heterogeneous_polar_rho_tag_v.coordinate_set_fence_heterogeneous_polar_rho_tag_off_coordinate_tag
    tag_coo
;;

(** {6 Builder Tag list : itself list for a fence entity} *)

let builder_tag_list_of_tag tag_cpr =
  let tag_coo = coerce_up_tag tag_cpr in
  [tag_coo]
;;

(** {6 Builder Tag Datastructure} *)

let builder_tag_uno_of_tag tag_cpr =
  let tag_coo = coerce_up_tag tag_cpr in
  Uno_v.make tag_coo
;;

(** {6 Builder Tag tuple} *)

let builder_tag_tuple_of_tag tag_cpr =
  let tag_bui_u = builder_tag_uno_of_tag tag_cpr in
  Tuple_v.tuple_of_uno tag_bui_u
;;

(** {6 Building as Builder Tag uno} *)

let building_of_tag tag_cpr =
  builder_tag_uno_of_tag tag_cpr
;;

(** {6 Builder Tag} *)

let builder_tag_of_tag tag_cpr =
  coerce_up_tag tag_cpr
;;

(** {6 Coercing Down Containee} *)

let containee_tag_off_builder_tag tag_coo =
    coerce_down_tag tag_coo
;;

(** {6 Container_of_tag : Containee Datastructure} *)

let container_of_tag tag_cpr =
  let bug = building_of_tag tag_cpr in
  Uno_v.map (* Coerce Down *)
    containee_tag_off_builder_tag
    bug
;;

(** {6 Coercing Down Builder Tag to Containee Tag} *)

let containee_tag_off_builder_tag tag_bui =
  coerce_down_tag tag_bui
;;

(** {6 Containee Tag Datastructures} *)

let containee_tag_uno_of_tag tag_cpr =
  container_of_tag tag_cpr
;;

let containee_tag_tuple_of_tag tag_cpr =
  let tag_cne_u = containee_tag_uno_of_tag tag_cpr in
  Tuple_v.tuple_of_uno tag_cne_u
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_cpr =
  let tag_coo = coerce_up_tag tag_cpr in
  [tag_coo]
;;

let fence_as_uno_of_tag tag_cpr =
  let fen_cpr = fence_as_list_of_tag tag_cpr in
  Uno_v.uno_of_list fen_cpr
;;

let fence_as_tuple_of_tag tag_cpr =
  let fen_l = fence_as_list_of_tag tag_cpr in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_cpr =
  let fen_l = fence_as_list_of_tag tag_cpr in
  Tuple_list_v.make fen_l
;;



(* generated by ./do_container_as_uno_fence_bud_1containee_v.sh coordinate_set_fence_heterogeneous_polar_rho cpr *)
(* using template_container_as_uno_fence_bud_1containee_v.ml *)
(* Done on dimanche 18 décembre 2016, 17:16:32 (UTC+0100) *)

