(** {3 Parameter_set_fence_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FPAR:Parameter_set_fence_container_v";
   "Needs : BPAR:Parameter_son_tag_list_by_parameter_father_tag_provider_v";
   "Needs : FPAR:Parameter_set_fence_aopef_tag_v";
   "Needs : FPAR:Parameter_set_fence_ecppef_tag_v";
   "Needed-by: ";
   "Definition : a Building is the same Datastructure as a Container but filled with Builders"; 
   "Definition : a Containee is a Builder expressed in the lowest subtype compatible with the Datastructure of the Container";
   "Definition : a Container is the Datastructure of the Containee of an Entity";
   "Definition : a Containee is an element of the Datastructure of the Container of an Entity";
   "Definition : a Builder (for an Entity of a Domain) is a son of its B-Tree i.e. Coerced Up";
   "Definition : a Builder of a fence Container is its own Tag or None ??? ";
   "Definition : the Builder list of a fence Container is empty";
   "Definition : a Building is the same Datastructure as a Container but filled with Builders"; 
   "Definition : a Containee is a Builder expressed in the lowest subtype compatible with the Datastructure of the Container";
   "Definition : the Containee of a fence Container is its own Tag";
   "Definition : a fence Container contains an Uno of its Tag";
   "Definition : a non-fence Bud Container is a Datastructure of Containee Tag";
   "Definition : a Bud is a type with only one constructor of string";
   "Definition : a Trunc is a type with only constructors of constructor";
   "What-is-it : Up_coercion of Container type as Symbol type up_coercion";
   "What-is-it : it is a Trunc container of Border sub-Types and thus a Uno of its Elementary_fence_units_actual_length Tag";
   "Improve : Does a Containee has a meaning here ?";
   "Author : François Colonna 30 novembre 2016 at 19:30:13+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name = function
  | Parameter_set_fence_container_t.Parameter_set_fence_aopef_container con_pfa ->
      (Parameter_set_fence_aopef_container_v.name con_pfa)
        
  | Parameter_set_fence_container_t.Parameter_set_fence_ecppef_container con_pfe ->
      (Parameter_set_fence_ecppef_container_v.name con_pfe)
;;

let string_off = function
  | Parameter_set_fence_container_t.Parameter_set_fence_aopef_container con_pfa ->
      (Parameter_set_fence_aopef_container_v.string_off con_pfa)
        
  | Parameter_set_fence_container_t.Parameter_set_fence_ecppef_container con_pfe ->
      (Parameter_set_fence_ecppef_container_v.string_off con_pfe)
;;

let longname = function
  | Parameter_set_fence_container_t.Parameter_set_fence_aopef_container con_pfa ->
      (Parameter_set_fence_aopef_container_v.longname con_pfa)
        
  | Parameter_set_fence_container_t.Parameter_set_fence_ecppef_container con_pfe ->
      (Parameter_set_fence_ecppef_container_v.longname con_pfe)
;;

let fullname = function
  | Parameter_set_fence_container_t.Parameter_set_fence_aopef_container con_pfa ->
      (Parameter_set_fence_aopef_container_v.fullname con_pfa)
        
  | Parameter_set_fence_container_t.Parameter_set_fence_ecppef_container con_pfe ->
      (Parameter_set_fence_ecppef_container_v.fullname con_pfe)
;;

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_pfe =
  Tag_v.map_entity 
    Parameter_symbol_v.parameter_symbol_of_parameter_set_fence_symbol
    tag_pfe
;;

(** {6 Coercing Down Tag} *)

let coerce_down_tag tag_par =
  Tag_v.map_entity 
    Parameter_symbol_v.parameter_set_fence_symbol_off_parameter_symbol
    tag_par
;;

(** {6 Coercing Up Containee} *)

let builder_tag_of_containee_tag tag_pfe =
  Tag_v.map_entity 
    Parameter_symbol_v.parameter_symbol_of_parameter_set_fence_symbol 
    tag_pfe
;;

(** {6 Builder Tag list is empty} *)

let builder_tag_list_of_tag tag_pfe =
  let tag_par = coerce_up_tag tag_pfe in
  Parameter_son_tag_list_by_parameter_father_tag_provider_v.provide 
    tag_par
;;

(** {6 Builder Tag Datastructures} *)

let builder_tag_uno_of_tag tag_pfe =
  let tag_bui_l = builder_tag_list_of_tag tag_pfe in
  Uno_v.uno_of_list tag_bui_l
;;

(** {6 Builder Tag Tuple} *)

let builder_tag_tuple_of_tag tag_pfe =
  let tag_bui_u = builder_tag_uno_of_tag tag_pfe in
  Tuple_v.tuple_of_uno tag_bui_u
;;

(** {6 Building as Builder Tag uno} *)

let building_of_tag tag_pfe =
  builder_tag_uno_of_tag tag_pfe
;;

(** {6 Coercing Up Containee Tag} *)

let builder_tag_of_containee_tag tag_con =
  coerce_up_tag tag_con
;;

(** {6 Coercing Down Containee} *)

let containee_tag_off_builder_tag tag_par =
  Tag_v.map_entity
    Parameter_symbol_v.parameter_set_fence_symbol_off_parameter_symbol
    tag_par
;;

(** {6 Container_of_tag : Containee Datastructure} *)

let container_of_tag tag_pfe =
  let bug = building_of_tag tag_pfe in
  Uno_v.map (* Coerce Down *)
    containee_tag_off_builder_tag
    bug
;;

(** {6 Containee Tag Datastructure} *)

let containee_tag_uno_of_tag tag_pfe =
  container_of_tag tag_pfe
;;

(** {6 Containee Tag Tuple} *)

let containee_tag_tuple_of_tag tag_pfe =
  let tag_cne_u = containee_tag_uno_of_tag tag_pfe in
  Tuple_v.tuple_of_uno tag_cne_u
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_pfe =
  let tag_par = coerce_up_tag tag_pfe in
  [tag_par]
;;

let fence_as_uno_of_tag tag_pfe =
  let fen_pfe = fence_as_list_of_tag tag_pfe in
  Uno_v.uno_of_list fen_pfe
;;

let fence_as_tuple_of_tag tag_pfe =
  let fen_l = fence_as_list_of_tag tag_pfe in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_pfe =
  let fen_l = fence_as_list_of_tag tag_pfe in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_uno_fence_trunc_2sibling_1containee_v.sh parameter_set_fence pfe parameter_set_fence_aopef pfa parameter_set_fence_ecppef pfe *)
(* using template_container_as_uno_fence_trunc_2sibling_1containee_v.ml *)
(* Done on mercredi 14 décembre 2016, 16:07:04 (UTC+0100) *)

