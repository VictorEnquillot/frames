(** {3 Property_operator_fence_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FCOO:Property_operator_fence_container_v";
   "Needs : FCOO:Property_operator_fence_creation_tag_v";
   "Needs : FCOO:Property_operator_fence_tounit_tag_v";
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

let coerce_up_tag tag_pfo =
  Tag_v.map_entity 
    Property_symbol_v.property_symbol_of_property_operator_fence_symbol
    tag_pfo
;;

(** {6 Coercing Down Tag} *)

let coerce_down_tag tag_pro =
  Tag_v.map_entity 
    Property_symbol_v.property_operator_fence_symbol_off_property_symbol
    tag_pro
;;

(** {6 Builder Tag} *)

let builder_tag_of_tag tag_pfo =
  coerce_up_tag tag_pfo
;;

(** {6 Builder Tag list is empty} *)

let builder_tag_list_of_tag tag_pfo =
  let tag_pro = coerce_up_tag tag_pfo in
    [tag_pro]
;;

(** {6 Builder Tag Datastructures} *)

let builder_tag_uno_of_tag tag_pfo =
  let tag_bui_l = builder_tag_list_of_tag tag_pfo in
  Uno_v.uno_of_list tag_bui_l
;;

(** {6 Builder Tag Tuple} *)

let builder_tag_tuple_of_tag tag_pfo =
  let tag_bui_u = builder_tag_uno_of_tag tag_pfo in
  Tuple_v.tuple_of_uno tag_bui_u
;;

(** {6 Building as Builder Tag uno} *)

let building_of_tag tag_pfo =
  builder_tag_uno_of_tag tag_pfo
;;

(** {6 Coercing Down Containee} *)

let containee_tag_off_builder_tag tag_pro =
  coerce_down_tag tag_pro 
;;

(** {6 Container_of_tag : Pattern Matching} *)

let container_of_tag tag_pfo =
  let (sym_pfo, soi_pfo) = tag_pfo in
  match sym_pfo with
  | Property_operator_fence_symbol_t.Property_operator_fence_creation_symbol sym_poc ->
      let tag_poc = Tag_v.make sym_poc soi_pfo in
      let con_poc = Property_operator_fence_creation_container_v.container_of_tag tag_poc in
      Property_operator_fence_container_t.Property_operator_fence_creation_container con_poc

  | Property_operator_fence_symbol_t.Property_operator_fence_tounit_symbol sym_pot ->
      let tag_pot = Tag_v.make sym_pot soi_pfo in
      let con_pot = Property_operator_fence_tounit_container_v.container_of_tag tag_pot in
      Property_operator_fence_container_t.Property_operator_fence_tounit_container con_pot
;;

(** {6 Containee Tag Datastructure} *)

let containee_tag_uno_of_tag tag_pfo =
  container_of_tag tag_pfo
;;

(** {6 Containee Tag Tuple} *)

let containee_tag_tuple_of_tag tag_pfo =
  let tag_cne_u = containee_tag_uno_of_tag tag_pfo in
  Tuple_v.tuple_of_uno tag_cne_u
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_pfo =
  let tag_pro = coerce_up_tag tag_pfo in
  [tag_pro]
;;

let fence_as_uno_of_tag tag_pfo =
  let fen_pfo = fence_as_list_of_tag tag_pfo in
  Uno_v.uno_of_list fen_pfo
;;

let fence_as_tuple_of_tag tag_pfo =
  let fen_l = fence_as_list_of_tag tag_pfo in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_pfo =
  let fen_l = fence_as_list_of_tag tag_pfo in
  Tuple_list_v.make fen_l
;;

(** {6 Naming_for_container} *)

let name = function
  | Property_operator_fence_container_t.Property_operator_fence_creation_container con_poc ->
      (Property_operator_fence_creation_container_v.name con_poc)
        
  | Property_operator_fence_container_t.Property_operator_fence_tounit_container con_pot ->
      (Property_operator_fence_tounit_container_v.name con_pot)
;;

let string_off = function
  | Property_operator_fence_container_t.Property_operator_fence_creation_container con_poc ->
      (Property_operator_fence_creation_container_v.string_off con_poc)
        
  | Property_operator_fence_container_t.Property_operator_fence_tounit_container con_pot ->
      (Property_operator_fence_tounit_container_v.string_off con_pot)
;;

let longname = function
  | Property_operator_fence_container_t.Property_operator_fence_creation_container con_poc ->
      (Property_operator_fence_creation_container_v.longname con_poc)
        
  | Property_operator_fence_container_t.Property_operator_fence_tounit_container con_pot ->
      (Property_operator_fence_tounit_container_v.longname con_pot)
;;

let fullname = function
  | Property_operator_fence_container_t.Property_operator_fence_creation_container con_poc ->
      (Property_operator_fence_creation_container_v.fullname con_poc)
        
  | Property_operator_fence_container_t.Property_operator_fence_tounit_container con_pot ->
      (Property_operator_fence_tounit_container_v.fullname con_pot)
;;


(* generated by ./do_container_as_uno_fence_trunc_2sibling_0containee_v.sh property_operator_fence pfo property_operator_fence_creation poc property_operator_fence_tounit pot *)
(* using template_container_as_uno_fence_trunc_2sibling_0containee_v.ml *)
(* Done on dimanche 21 mai 2017, 11:00:01 (UTC+0200) *)
