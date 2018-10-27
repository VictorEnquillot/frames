(** {3 Property_operator_fence_creation_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FCOO:Property_operator_fence_creation_container_v";
   "Needs : FCOO:Property_operator_fence_creation_tobasic_tag_v";
   "Needs : FCOO:Property_operator_fence_creation_tomeasure_tag_v";
   "Needs : FCOO:Property_operator_fence_creation_toentity_tag_v";
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
   "Author : François Colonna 21 mai 2017 at 16:37:06+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_poc =
  Tag_v.map_entity 
    Property_symbol_v.property_symbol_of_property_operator_fence_creation_symbol
    tag_poc
;;

(** {6 Coercing Down Tag} *)

let coerce_down_tag tag_pro =
  Tag_v.map_entity 
    Property_symbol_v.property_operator_fence_creation_symbol_off_property_symbol
    tag_pro
;;

(** {6 Builder Tag} *)

let builder_tag_of_tag tag_poc =
  coerce_up_tag tag_poc
;;

(** {6 Builder Tag list is empty} *)

let builder_tag_list_of_tag tag_poc =
  let tag_pro = coerce_up_tag tag_poc in
    [tag_pro]
;;

(** {6 Builder Tag Datastructures} *)

let builder_tag_uno_of_tag tag_poc =
  let tag_bui_l = builder_tag_list_of_tag tag_poc in
  Uno_v.uno_of_list tag_bui_l
;;

(** {6 Builder Tag Tuple} *)

let builder_tag_tuple_of_tag tag_poc =
  let tag_bui_u = builder_tag_uno_of_tag tag_poc in
  Tuple_v.tuple_of_uno tag_bui_u
;;

(** {6 Building as Builder Tag uno} *)

let building_of_tag tag_poc =
  builder_tag_uno_of_tag tag_poc
;;

(** {6 Coercing Down Containee} *)

let containee_tag_off_builder_tag tag_pro =
  coerce_down_tag tag_pro 
;;

(** {6 Container_of_tag : Pattern Matching} *)

let container_of_tag tag_poc =
  let (sym_poc, soi_poc) = tag_poc in
  match sym_poc with
  | Property_operator_fence_creation_symbol_t.Property_operator_fence_creation_tobasic_symbol sym_pcb ->
      let tag_pcb = Tag_v.make sym_pcb soi_poc in
      let con_pcb = Property_operator_fence_creation_tobasic_container_v.container_of_tag tag_pcb in
      Property_operator_fence_creation_container_t.Property_operator_fence_creation_tobasic_container con_pcb

  | Property_operator_fence_creation_symbol_t.Property_operator_fence_creation_tomeasure_symbol sym_pcm ->
      let tag_pcm = Tag_v.make sym_pcm soi_poc in
      let con_pcm = Property_operator_fence_creation_tomeasure_container_v.container_of_tag tag_pcm in
      Property_operator_fence_creation_container_t.Property_operator_fence_creation_tomeasure_container con_pcm

  | Property_operator_fence_creation_symbol_t.Property_operator_fence_creation_toentity_symbol sym_pce ->
      let tag_pce = Tag_v.make sym_pce soi_poc in
      let con_pce = Property_operator_fence_creation_toentity_container_v.container_of_tag tag_pce in
      Property_operator_fence_creation_container_t.Property_operator_fence_creation_toentity_container con_pce
;;

(** {6 Containee Tag Datastructure} *)

let containee_tag_uno_of_tag tag_poc =
  container_of_tag tag_poc
;;

(** {6 Containee Tag Tuple} *)

let containee_tag_tuple_of_tag tag_poc =
  let tag_cne_u = containee_tag_uno_of_tag tag_poc in
  Tuple_v.tuple_of_uno tag_cne_u
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_poc =
  let tag_pro = coerce_up_tag tag_poc in
  [tag_pro]
;;

let fence_as_uno_of_tag tag_poc =
  let fen_poc = fence_as_list_of_tag tag_poc in
  Uno_v.uno_of_list fen_poc
;;

let fence_as_tuple_of_tag tag_poc =
  let fen_l = fence_as_list_of_tag tag_poc in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_poc =
  let fen_l = fence_as_list_of_tag tag_poc in
  Tuple_list_v.make fen_l
;;

(** {6 Naming_for_container} *)

let name = function
  | Property_operator_fence_creation_container_t.Property_operator_fence_creation_tobasic_container con_pcb ->
      (Property_operator_fence_creation_tobasic_container_v.name con_pcb)
        
  | Property_operator_fence_creation_container_t.Property_operator_fence_creation_tomeasure_container con_pcm ->
      (Property_operator_fence_creation_tomeasure_container_v.name con_pcm)
        
  | Property_operator_fence_creation_container_t.Property_operator_fence_creation_toentity_container con_pce ->
      (Property_operator_fence_creation_toentity_container_v.name con_pce)
;;

let string_off = function
  | Property_operator_fence_creation_container_t.Property_operator_fence_creation_tobasic_container con_pcb ->
      (Property_operator_fence_creation_tobasic_container_v.string_off con_pcb)
        
  | Property_operator_fence_creation_container_t.Property_operator_fence_creation_tomeasure_container con_pcm ->
      (Property_operator_fence_creation_tomeasure_container_v.string_off con_pcm)

  | Property_operator_fence_creation_container_t.Property_operator_fence_creation_toentity_container con_pce ->
      (Property_operator_fence_creation_toentity_container_v.string_off con_pce)
;;

let longname = function
  | Property_operator_fence_creation_container_t.Property_operator_fence_creation_tobasic_container con_pcb ->
      (Property_operator_fence_creation_tobasic_container_v.longname con_pcb)
        
  | Property_operator_fence_creation_container_t.Property_operator_fence_creation_tomeasure_container con_pcm ->
      (Property_operator_fence_creation_tomeasure_container_v.longname con_pcm)

  | Property_operator_fence_creation_container_t.Property_operator_fence_creation_toentity_container con_pce ->
      (Property_operator_fence_creation_toentity_container_v.longname con_pce)
;;

let fullname = function
  | Property_operator_fence_creation_container_t.Property_operator_fence_creation_tobasic_container con_pcb ->
      (Property_operator_fence_creation_tobasic_container_v.fullname con_pcb)
        
  | Property_operator_fence_creation_container_t.Property_operator_fence_creation_tomeasure_container con_pcm ->
      (Property_operator_fence_creation_tomeasure_container_v.fullname con_pcm)

  | Property_operator_fence_creation_container_t.Property_operator_fence_creation_toentity_container con_pce ->
      (Property_operator_fence_creation_toentity_container_v.fullname con_pce)
;;


(* generated by ./do_container_as_uno_fence_trunc_3sibling_0containee_v.sh property_operator_fence_creation poc property_operator_fence_creation_tobasic pcb property_operator_fence_creation_tomeasure pcm property_operator_fence_creation_toentity pce *)
(* using template_container_as_uno_fence_trunc_3sibling_0containee_v.ml *)
(* Done on dimanche 21 mai 2017, 11:00:00 (UTC+0200) *)
