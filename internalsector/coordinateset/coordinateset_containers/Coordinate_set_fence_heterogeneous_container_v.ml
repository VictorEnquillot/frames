(** {3 Coordinate_set_fence_heterogeneous_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FCOO:Coordinate_set_fence_heterogeneous_container_v";
   "Needs : FCOO:Coordinate_set_fence_heterogeneous_cylindrical_tag_v";
   "Needs : FCOO:Coordinate_set_fence_heterogeneous_polar_tag_v";
   "Needs : FCOO:Coordinate_set_fence_heterogeneous_spherical_tag_v";
   "Needed-by: ";
   "Definition : a Building is the same Datastructure as a Container but filled with Builders"; 
   "Definition : a Containee is a Builder expressed in the lowest subtype compatible with the Datastructure of the Container";
   "Definition : a Container is the Datastructure of the Containee of an Entity";
   "Definition : a Containee is an element of the Datastructure of the Container of an Entity";
   "Definition : a Builder (for an Entity of a Domain) is a son of its B-Tree i.e. Coerced Up";
   "Definition : a Builder of a fence Container is its own Tag Coerced Up";
   "Definition : the Builder list of a fence Container is empty";
   "Definition : a Building is the same Datastructure as a Container but filled with Builders"; 
   "Definition : a Containee is a Builder expressed in the lowest subtype compatible with the Datastructure of the Container";
   "Definition : the Containee Tag of a fence Container is its own Tag";
   "Definition : a fence Container contains an Uno of its Tag";
   "Definition : a non-fence Bud Container is a Datastructure of Containee Tag";
   "Definition : a Bud is a type with only one constructor of string";
   "Definition : a Trunc is a type with only constructors of constructor";
   "What-is-it : Up_coercion of Container type as Symbol type up_coercion";
   "What-is-it : it is a Trunc container of Border sub-Types and thus a Uno of its Elementary_fence_units_actual_length Tag";
   "Improve : Does a Containee has a meaning here ?";
   "Author : François Colonna 18 décembre 2016 at 16:37:06+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_cfh =
  Tag_v.map_entity 
    Coordinate_symbol_v.coordinate_symbol_of_coordinate_set_fence_heterogeneous_symbol
    tag_cfh
;;

(** {6 Coercing Down Tag} *)

let coerce_down_tag tag_coo =
  Tag_v.map_entity 
    Coordinate_symbol_v.coordinate_set_fence_heterogeneous_symbol_off_coordinate_symbol
    tag_coo
;;

(** {6 Builder Tag} *)

let builder_tag_of_tag tag_cfh =
  coerce_up_tag tag_cfh
;;

(** {6 Builder Tag list is empty} *)

let builder_tag_list_of_tag tag_cfh =
  let tag_coo = coerce_up_tag tag_cfh in
    [tag_coo]
;;

(** {6 Builder Tag Datastructures} *)

let builder_tag_uno_of_tag tag_cfh =
  let tag_bui_l = builder_tag_list_of_tag tag_cfh in
  Uno_v.uno_of_list tag_bui_l
;;

(** {6 Builder Tag Tuple} *)

let builder_tag_tuple_of_tag tag_cfh =
  let tag_bui_u = builder_tag_uno_of_tag tag_cfh in
  Tuple_v.tuple_of_uno tag_bui_u
;;

(** {6 Building as Builder Tag uno} *)

let building_of_tag tag_cfh =
  builder_tag_uno_of_tag tag_cfh
;;

(** {6 Coercing Down Containee} *)

let containee_tag_off_builder_tag tag_coo =
  coerce_down_tag tag_coo 
;;

(** {6 Container_of_tag : Pattern Matching} *)

let container_of_tag tag_cfh =
  let (sym_cfh, soi_cfh) = tag_cfh in
  match sym_cfh with
  | Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol sym_chc ->
      let tag_chc = Tag_v.make sym_chc soi_cfh in
      let con_chc = Coordinate_set_fence_heterogeneous_cylindrical_container_v.container_of_tag tag_chc in
      Coordinate_set_fence_heterogeneous_container_t.Coordinate_set_fence_heterogeneous_cylindrical_container con_chc

  | Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_polar_symbol sym_chp ->
      let tag_chp = Tag_v.make sym_chp soi_cfh in
      let con_chp = Coordinate_set_fence_heterogeneous_polar_container_v.container_of_tag tag_chp in
      Coordinate_set_fence_heterogeneous_container_t.Coordinate_set_fence_heterogeneous_polar_container con_chp

  | Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol sym_chs ->
      let tag_chs = Tag_v.make sym_chs soi_cfh in
      let con_chs = Coordinate_set_fence_heterogeneous_spherical_container_v.container_of_tag tag_chs in
      Coordinate_set_fence_heterogeneous_container_t.Coordinate_set_fence_heterogeneous_spherical_container con_chs
;;

(** {6 Containee Tag Datastructure} *)

let containee_tag_uno_of_tag tag_cfh =
  container_of_tag tag_cfh
;;

(** {6 Containee Tag Tuple} *)

let containee_tag_tuple_of_tag tag_cfh =
  let tag_cne_u = containee_tag_uno_of_tag tag_cfh in
  Tuple_v.tuple_of_uno tag_cne_u
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_cfh =
  let tag_coo = coerce_up_tag tag_cfh in
  [tag_coo]
;;

let fence_as_uno_of_tag tag_cfh =
  let fen_cfh = fence_as_list_of_tag tag_cfh in
  Uno_v.uno_of_list fen_cfh
;;

let fence_as_tuple_of_tag tag_cfh =
  let fen_l = fence_as_list_of_tag tag_cfh in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_cfh =
  let fen_l = fence_as_list_of_tag tag_cfh in
  Tuple_list_v.make fen_l
;;

(** {6 Naming_for_container} *)

let name = function
  | Coordinate_set_fence_heterogeneous_container_t.Coordinate_set_fence_heterogeneous_cylindrical_container con_chc ->
      (Coordinate_set_fence_heterogeneous_cylindrical_container_v.name con_chc)
        
  | Coordinate_set_fence_heterogeneous_container_t.Coordinate_set_fence_heterogeneous_polar_container con_chp ->
      (Coordinate_set_fence_heterogeneous_polar_container_v.name con_chp)
        
  | Coordinate_set_fence_heterogeneous_container_t.Coordinate_set_fence_heterogeneous_spherical_container con_chs ->
      (Coordinate_set_fence_heterogeneous_spherical_container_v.name con_chs)
;;

let string_off = function
  | Coordinate_set_fence_heterogeneous_container_t.Coordinate_set_fence_heterogeneous_cylindrical_container con_chc ->
      (Coordinate_set_fence_heterogeneous_cylindrical_container_v.string_off con_chc)
        
  | Coordinate_set_fence_heterogeneous_container_t.Coordinate_set_fence_heterogeneous_polar_container con_chp ->
      (Coordinate_set_fence_heterogeneous_polar_container_v.string_off con_chp)

  | Coordinate_set_fence_heterogeneous_container_t.Coordinate_set_fence_heterogeneous_spherical_container con_chs ->
      (Coordinate_set_fence_heterogeneous_spherical_container_v.string_off con_chs)
;;

let longname = function
  | Coordinate_set_fence_heterogeneous_container_t.Coordinate_set_fence_heterogeneous_cylindrical_container con_chc ->
      (Coordinate_set_fence_heterogeneous_cylindrical_container_v.longname con_chc)
        
  | Coordinate_set_fence_heterogeneous_container_t.Coordinate_set_fence_heterogeneous_polar_container con_chp ->
      (Coordinate_set_fence_heterogeneous_polar_container_v.longname con_chp)

  | Coordinate_set_fence_heterogeneous_container_t.Coordinate_set_fence_heterogeneous_spherical_container con_chs ->
      (Coordinate_set_fence_heterogeneous_spherical_container_v.longname con_chs)
;;

let fullname = function
  | Coordinate_set_fence_heterogeneous_container_t.Coordinate_set_fence_heterogeneous_cylindrical_container con_chc ->
      (Coordinate_set_fence_heterogeneous_cylindrical_container_v.fullname con_chc)
        
  | Coordinate_set_fence_heterogeneous_container_t.Coordinate_set_fence_heterogeneous_polar_container con_chp ->
      (Coordinate_set_fence_heterogeneous_polar_container_v.fullname con_chp)

  | Coordinate_set_fence_heterogeneous_container_t.Coordinate_set_fence_heterogeneous_spherical_container con_chs ->
      (Coordinate_set_fence_heterogeneous_spherical_container_v.fullname con_chs)
;;


(* generated by ./do_container_as_uno_fence_trunc_3sibling_1containee_v.sh coordinate_set_fence_heterogeneous cfh coordinate_set_fence_heterogeneous_cylindrical chc coordinate_set_fence_heterogeneous_polar chp coordinate_set_fence_heterogeneous_spherical chs *)
(* using template_container_as_uno_fence_trunc_3sibling_1containee_v.ml *)
(* Done on dimanche 18 décembre 2016, 17:16:35 (UTC+0100) *)

