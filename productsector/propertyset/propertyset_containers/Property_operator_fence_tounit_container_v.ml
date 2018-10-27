(** {3 Property_operator_fence_tounit_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FCOO:Property_operator_fence_tounit_container_v";
   "Needs : FCOO:Property_operator_fence_tounit_print_tag_v";
   "Needs : FCOO:Property_operator_fence_tounit_write_tag_v";
   "Needs : FCOO:_tag_v";
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
   "Author : François Colonna 21 mai 2017 at 16:36:35+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_pot =
  Tag_v.map_entity 
    Property_symbol_v.property_symbol_of_property_operator_fence_tounit_symbol
    tag_pot
;;

(** {6 Coercing Down Tag} *)

let coerce_down_tag tag_pro =
  Tag_v.map_entity 
    Property_symbol_v.property_operator_fence_tounit_symbol_off_property_symbol
    tag_pro
;;

(** {6 Builder Tag} *)

let builder_tag_of_tag tag_pot =
  coerce_up_tag tag_pot
;;

(** {6 Builder Tag list is empty} *)

let builder_tag_list_of_tag tag_pot =
  let tag_pro = coerce_up_tag tag_pot in
    [tag_pro]
;;

(** {6 Builder Tag Datastructures} *)

let builder_tag_uno_of_tag tag_pot =
  let tag_bui_l = builder_tag_list_of_tag tag_pot in
  Uno_v.uno_of_list tag_bui_l
;;

(** {6 Builder Tag Tuple} *)

let builder_tag_tuple_of_tag tag_pot =
  let tag_bui_u = builder_tag_uno_of_tag tag_pot in
  Tuple_v.tuple_of_uno tag_bui_u
;;

(** {6 Building as Builder Tag uno} *)

let building_of_tag tag_pot =
  builder_tag_uno_of_tag tag_pot
;;

(** {6 Coercing Down Containee} *)

let containee_tag_off_builder_tag tag_pro =
  coerce_down_tag tag_pro 
;;

(** {6 Container_of_tag : Pattern Matching} *)

let container_of_tag tag_pot =
  let (sym_pot, soi_pot) = tag_pot in
  match sym_pot with
  | Property_operator_fence_tounit_symbol_t.Property_operator_fence_tounit_print_symbol sym_ptp ->
      let tag_ptp = Tag_v.make sym_ptp soi_pot in
      let con_ptp = Property_operator_fence_tounit_print_container_v.container_of_tag tag_ptp in
      Property_operator_fence_tounit_container_t.Property_operator_fence_tounit_print_container con_ptp

  | Property_operator_fence_tounit_symbol_t.Property_operator_fence_tounit_write_symbol sym_ptw ->
      let tag_ptw = Tag_v.make sym_ptw soi_pot in
      let con_ptw = Property_operator_fence_tounit_write_container_v.container_of_tag tag_ptw in
      Property_operator_fence_tounit_container_t.Property_operator_fence_tounit_write_container con_ptw
;;

(** {6 Containee Tag Datastructure} *)

let containee_tag_uno_of_tag tag_pot =
  container_of_tag tag_pot
;;

(** {6 Containee Tag Tuple} *)

let containee_tag_tuple_of_tag tag_pot =
  let tag_cne_u = containee_tag_uno_of_tag tag_pot in
  Tuple_v.tuple_of_uno tag_cne_u
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_pot =
  let tag_pro = coerce_up_tag tag_pot in
  [tag_pro]
;;

let fence_as_uno_of_tag tag_pot =
  let fen_pot = fence_as_list_of_tag tag_pot in
  Uno_v.uno_of_list fen_pot
;;

let fence_as_tuple_of_tag tag_pot =
  let fen_l = fence_as_list_of_tag tag_pot in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_pot =
  let fen_l = fence_as_list_of_tag tag_pot in
  Tuple_list_v.make fen_l
;;

(** {6 Naming_for_container} *)

let name = function
  | Property_operator_fence_tounit_container_t.Property_operator_fence_tounit_print_container con_ptp ->
      (Property_operator_fence_tounit_print_container_v.name con_ptp)
        
  | Property_operator_fence_tounit_container_t.Property_operator_fence_tounit_write_container con_ptw ->
      (Property_operator_fence_tounit_write_container_v.name con_ptw)
;;

let string_off = function
  | Property_operator_fence_tounit_container_t.Property_operator_fence_tounit_print_container con_ptp ->
      (Property_operator_fence_tounit_print_container_v.string_off con_ptp)
        
  | Property_operator_fence_tounit_container_t.Property_operator_fence_tounit_write_container con_ptw ->
      (Property_operator_fence_tounit_write_container_v.string_off con_ptw)
;;

let longname = function
  | Property_operator_fence_tounit_container_t.Property_operator_fence_tounit_print_container con_ptp ->
      (Property_operator_fence_tounit_print_container_v.longname con_ptp)
        
  | Property_operator_fence_tounit_container_t.Property_operator_fence_tounit_write_container con_ptw ->
      (Property_operator_fence_tounit_write_container_v.longname con_ptw)
;;

let fullname = function
  | Property_operator_fence_tounit_container_t.Property_operator_fence_tounit_print_container con_ptp ->
      (Property_operator_fence_tounit_print_container_v.fullname con_ptp)
        
  | Property_operator_fence_tounit_container_t.Property_operator_fence_tounit_write_container con_ptw ->
      (Property_operator_fence_tounit_write_container_v.fullname con_ptw)
;;


(* generated by ./do_container_as_uno_fence_trunc_2sibling_0containee_v.sh property_operator_fence_tounit pot property_operator_fence_tounit_print ptp property_operator_fence_tounit_write ptw *)
(* using template_container_as_uno_fence_trunc_2sibling_0containee_v.ml *)
(* Done on dimanche 21 mai 2017, 11:00:01 (UTC+0200) *)
